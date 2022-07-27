# Three.js

- [Manual](https://threejs.org/docs/index.html#manual/en/)
- [Editor](https://threejs.org/editor/)

## Coordinates

Right-hand system:

- X is positive right (red)
- Y is positive up (green)
- Z is positive towards us (blue)

(Use AzesHelper to show axes)

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

- [Free seamless PBR textures](https://3dtextures.me/)
- [Textures at poliigon.com](https://poliigon.com)
- [Textures at arroway-textures.ch](https://arroway-textures.ch)
- [TextureLoader](https://threejs.org/docs/?q=textureloader#api/en/loaders/TextureLoader)
- [Adobe Substance Designer for creating your own](https://www.adobe.com/products/substance3d-designer.html)

```javascript
const textureLoader = new THREE.TextureLoader()
const texture = textureLoader.load('/textures/door/color.jpg')
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
- [Oimo.js](https://lo-th.github.io/Oimo.js/)
  - More lightweight
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
