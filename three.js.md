# Three.js

- [Manual](https://threejs.org/docs/index.html#manual/en/)
- [Editor](https://threejs.org/editor/)

## Coordinates

Right-hand system:

- X is positive right (red)
- Y is positive up (green)
- Z is positive towards us (blue)

(Use AxesHelper to show axes)

### Environment map from y up to z up, e.g. three.js to AGX

If you use environment maps for three.js, but have z up `THREE.Object3D.DefaultUp.set(0, 0, 1)`
this is the scheme to create a working environment map:

px → px 90 deg rot CCW
nx → nx 90 deg rot CW
py → nz
ny → pz 180 deg rot
pz → py
nz → ny 180 deg rot

If rotating images and keeping names, load with:

```javascript
const environmentMap = cubeTextureLoader.load([
'/static/textures/environmentMaps/1/px.jpg',
'/static/textures/environmentMaps/1/nx.jpg',
'/static/textures/environmentMaps/1/nz.jpg',
'/static/textures/environmentMaps/1/pz.jpg',
'/static/textures/environmentMaps/1/py.jpg',
'/static/textures/environmentMaps/1/ny.jpg',
])
```

instead of

```javascript
const environmentMap = cubeTextureLoader.load([
'/static/textures/environmentMaps/1/px.jpg',
'/static/textures/environmentMaps/1/nx.jpg',
'/static/textures/environmentMaps/1/py.jpg',
'/static/textures/environmentMaps/1/ny.jpg',
'/static/textures/environmentMaps/1/pz.jpg',
'/static/textures/environmentMaps/1/nz.jpg',
])
```


## Camera

<https://threejs.org/docs/#api/en/cameras/PerspectiveCamera>

```javascript
const camera = new THREE.PerspectiveCamera(75, sizes.width / sizes.height, nearPlane, farPlane)
```

## Animation

<https://threejs.org/docs/?q=clock#api/en/core/Clock>

```javascript
const clock = new THREE.Clock()
const elapsedTime = clock.getElapsedTime()
```

<https://greensock.com/gsap/> - Professional-grade JavaScript animation for the modern web

```javascript
npm install --save gsap
import gsap from 'gsap'
gsap.to(mesh.position, { duration: 1, delay: 1, x: 2})
gsap.to(mesh.position, { duration: 1, delay: 2, x: 0})
```

## Controls

<https://threejs.org/docs/?q=controls#examples/en/controls>

- E.g. OrbitControls, TransformControls and DragControls can be very convenient.

## Debug UI tools

- [lil-gui](https://lil-gui.georgealways.com/)
- [control-panel](https://github.com/freeman-lab/control-panel)
- [ControlKit](https://github.com/automat/controlkit.js)
- [Uil](https://github.com/lo-th/uil)
- [Tweakpane](https://cocopon.github.io/tweakpane/)
- [Guify](https://github.com/colejd/guify)
- [Oui](https://github.com/wearekuva/oui)

```javascript
npm install --save lil-gui
import * as dat from 'lil-gui'
const gui = new dat.GUI({width: 300})
gui.add(material, 'wireframe')
gui.addColor(material, 'color')
// For slider:
gui.add(material, 'metalness').min(0).max(1).step(0.0001)
```

## Textures

- [Free seamless PBR textures OCC license](https://3dtextures.me/)
- [More Free seamless PBR textures OCC license](https://polyhaven.com/)
- https://www.spacespheremaps.com/galactic-plane-spheremaps/
- [Buy textures at poliigon.com](https://poliigon.com)
- [Buy Textures at arroway-textures.ch](https://arroway-textures.ch)
- [TextureLoader](https://threejs.org/docs/?q=textureloader#api/en/loaders/TextureLoader)
- [Adobe Substance Designer for creating your own](https://www.adobe.com/products/substance3d-designer.html)

```javascript
const textureLoader = new THREE.TextureLoader()
const texture = textureLoader.load('/textures/door/color.jpg')

// If we are loading "seen" (PBR) textures manually we should set sRGBEncoding
// (as opposed to textures loaded by GLTFLoader) or normalmap kind of textures
texture.encoding = THREE.sRGBEncoding
```

## Environment Textures

- [CubeTextureLoader](https://threejs.org/docs/index.html#api/en/loaders/CubeTextureLoader)
- [Haven - HDRIs, textures, models](https://polyhaven.com/)
- [Convert HDRI to CubeMap](https://matheowis.github.io/HDRI-to-CubeMap/)

## Materials

- <https://threejs.org/docs/?q=material>
- [MeshStandardMaterial](https://threejs.org/docs/#api/en/materials/MeshStandardMaterial) - Standard PBR Material

```javascript
const material = new THREE.MeshStandardMaterial()
material.map = colorTexture
plane.geometry.setAttribute('uv2',
    new THREE.BufferAttribute(plane.geometry.attributes.uv.array, 2)
)
material.aoMap = ambientOcclusionTexture
material.aoMapIntensity = 1
material.displacementMap = heightTexture
material.displacementScale = 0.01
material.metalnessTexture = metalnessTexture
material.roughnessMap = roughnessTexture
material.normalMap = normalTexture
material.normalScale.set(2,2,2)
material.alphaMap = alphaTexture
material.transparent = true
```

- <https://threejs.org/docs/#api/en/materials/MeshBasicMaterial>

```javascript
const material = new THREE.MeshBasicMaterial({
    map: colorTexture,
    color: 'blue',
    wireframe: true
})
material.alphaMap = alphaTexture
material.transparent = true
material.side = THREE.DoubleSide
```

- <https://threejs.org/docs/#api/en/materials/MeshNormalMaterial> - maps the normal vectors to RGB colors
- <https://threejs.org/docs/#api/en/materials/MeshMatcapMaterial> - Material Capture / LitSphere
  - simulate light without lighting, baked lightning, non-photoreal image rendering
  - Find free at <https://github.com/nidorx/matcaps>

```javascript
const material = new THREE.MeshMatcapMaterial()
material.matcap = matcapTexture
```

- <https://threejs.org/docs/index.html#api/en/materials/MeshDepthMaterial>
  - Depth is based off of the camera near and far plane, e.g. get far away objects to darken
- <https://threejs.org/docs/#api/en/materials/MeshPhongMaterial> - for shiny surfaces with specular highlights

```javascript
const material = new THREE.MeshPhongMaterial()
material.shininess = 100
material.specular.set('blue')
```

- <https://threejs.org/docs/?q=toon#api/en/materials/MeshToonMaterial> - toon shading

### Deployment suggestions

- [Vercel](https://vercel.com/)
    - `npm install vercel`
    - configure
    - `npm run deploy` - deployed on <project>-.vercel.app
- [Netlify](https://www.netlify.com/)
- [GitHub Pages](https://pages.github.com/)

### Lights

#### Minimal cost

- [Ambient light](https://threejs.org/docs/index.html?q=light#api/en/lights/AmbientLight) comes from everywhere
- [Hemisphere light](https://threejs.org/docs/index.html?q=light#api/en/lights/HemisphereLight) A light source positioned directly above the scene, with color fading from the sky color to the ground color

#### Moderate cost

- [Directional light](https://threejs.org/docs/index.html?q=light#api/en/lights/DirectionalLight) comes from one direction but is parallell, simulating daylight
- Point Light

#### High cost

- Spot Light
- Rect Area Light

#### Baking

Done in 3D software, but we cannot move light.

#### Helpers

Shows where and how lights are.

- DirectionalLightHelper
- HemisphereLightHelper
- PointLightHelper
- SpotLightHelper
- RectAreaLightHelper

### Physics

- [Ammo.js](http://schteppe.github.io/ammo.js-demos/)
  - Ported from C++ Bullet.
- [Cannon.js](https://schteppe.github.io/cannon.js/)
  - Written in JS from scratch
- [OimoPhysics](https://github.com/saharan/OimoPhysics/)
  - Written in Haxe, exported as JS
  - More lightweight
- [Oimo.js](https://lo-th.github.io/Oimo.js/)
  - JS conversion of old OimoPhysics version (from ActionScript)
- [Physijs](https://chandlerprall.github.io/Physijs/)
  - Integrates Ammo.js and Three.js

### 3D Graphics formats

- <https://en.wikipedia.org/wiki/List_of_file_formats#3D_graphics>
- GLTF - GL Transmission Format - very popular in recent years
  - Geometries, materials, cameras, lights, scene graph, animations, skeletons, morphing, etc.
  - json, binary, embed texture
  - Widely supported by 3D softwares, games, etc.
  - Decide when to use - sometimes other formats are better, smaller, faster, ...

### Models

- [KhronosGroup example models](https://github.com/KhronosGroup/glTF-Sample-Models)

### Realistic rendering

```javascript
// Make values between different softwares easier to exchange
renderer.physicallyCorrectLights = true

// Output encoding is also in order to get software transfer and as physically correct lighting as possible:
// It's a way to get more out of the 8 bits per color since the human eye percieves steps in dark areas more significant than in light areas.
renderer.outputEncoding = THREE.sRGBEncoding
```

For more info on Output Encoding, see

- <https://www.donmccurdy.com/2020/06/17/color-management-in-threejs/>
- <https://medium.com/@tomforsyth/the-srgb-learning-curve-773b7f68cf7a>

### Shaders

- Vertex Shader - position the geometry vertices on a 2D space, called once per vertex
- Fragment Shader - Color each visible pixel of the geometry, called once per fragment (i.e. at least once per pixel)

#### Vertex Shaders

- Attributes - different for each vertex
- Uniforms - same for each vertex

#### Fragment Shaders

- Uniforms - same for each vertex
- Varying - data from the vertex shader, interpolated between the vertices

#### GLSL

Documentation links:

- <https://www.khronos.org/opengl/wiki/GLSL_:_recommendations>
- <https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/indexflat.php>
- <https://shaderific.com/glsl.html>
- <https://thebookofshaders.com/>

```GLSL
// Types
int
float
boolean
vec2
vec3
vec4


// Typecasting
float x = float(1)

// Swizzle
vec foo = vec3(1.0, 2.0, 3.0);
vec2 bar = foo.zx; // Will contain vec2(3.0, 1.0)
vec2 bar = foo.rg; // Will contain vec2(1.0, 2.0)

// function
float add(float a, float b) {
  return a + b
}

```
