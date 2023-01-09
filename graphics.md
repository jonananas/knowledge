# Graphics

## TODO

- Create ["virtual photos" using 3D in browser](https://colorful.app/)
- [Physically-Based Rendering, And You Can Too!](https://marmoset.co/posts/physically-based-rendering-and-you-can-too/)
- [](https://www.a23d.co/blog/pbr-textures-metallic-vs-specular-workflow/)

## Inspirational sofwares

- [Womp](https://www.producthunt.com/posts/womp-alpha) makes 3D easy for anyone, in the browser.

## PBR

PBR - Physically-Based Rendering - renders images using a real world model of light. As opposed to older methods which did not. The intention is to

- Standardize?
- Simplify process of making good-looking materials
- more easily transfer material properties (values) from actual measurements (photos), i.e. making materials look real
- more easily transfer materials between render engines.

[Basic Theory of Physically-Based Rendering](https://marmoset.co/posts/basic-theory-of-physically-based-rendering/) explains at a high level how

- Diffusion
- Reflection
- Translucency & Transparency
- Fresnel effect
- Microsurface

for different materials like water, mud, metals, etc can be rendered in a PBR system.

It also has several links to further in-depth reading.

[PBR Texture Conversion](https://marmoset.co/posts/pbr-texture-conversion/) goes into details of what each map represents in both metalness and specular workflows.

### Metalness vs Specular Workflows

PBR comes in both these workflows, while Metalness workflow is more appropriate for realtime renderers, the specular workflow is more widely supported in render applications.

- [Awesome short video of the difference btw metalness and specular](https://www.youtube.com/watch?v=mrNMpqdNchY&t=154s)
- [The Differences Between Metalness and Specular Workflows](https://help.poliigon.com/en/articles/1712659-the-differences-between-metalness-and-specular-workflows)
  - Metalness workflow uses b/w metalness map, where color comes from basecolor map.
    - Does not have a direct way to control reflectivity
  - Specular workflow uses specular map, which includes color. Metal areas will be completely black.

Metalness workflow maps:

Map              | what
-----------------|----------------------------------------------
Basecolor        | Also called Albedo map or diffuse map. Contains color and reflectivity info in metalness workflow.
Metalness        | White in metal areas, otw black
Roughness        | Microsurfaces, exact opposite of Gloss Map
AmbientOcclusion | Lighting details - only needed for realtime engines. Where to block ambient light, but not direct light.

Other maps:

Bump map - do not use. Replaced by the more modern normal map.
Normal map - Add details like wrinkles, indents, extrusions, etc.
Height map - Same as displacement map, used to modify the geometry of the model.
Environment map - Texture of the surroundings
alpha map - Transparency
light map - 
emissive map - Used to simulate emmissive surfaces like neon lights

### PBR Sources

- [Free seamless PBR textures OCC license](https://3dtextures.me/)
- [More Free seamless PBR textures OCC license](https://polyhaven.com/)
- [Buy textures at poliigon.com](https://poliigon.com)
- [Buy Textures at arroway-textures.ch](https://arroway-textures.ch)
- [PhysicallyBased - a database of physically based values for CG artists](https://physicallybased.info/)
  - Also cameras and light sources
  - <https://80.lv/articles/physically-based-a-database-of-pbr-values-for-real-world-materials/>

## Three.js

3D Library for the browser built on top of WebGL

- [Threejs-journey - "The Best Way to Learn Three.js"](https://threejs-journey.com/#)
  - 45 hours of video
- [Battle damaged scifi helmet](https://threejs.org/examples/webgl_loader_gltf.html)
- [PathTracing Renderer - Ocean and Sky Rendering](https://erichlof.github.io/THREE.js-PathTracing-Renderer/Ocean_And_Sky_Rendering.html)
- [Examples](https://threejs.org/examples/#webgl_animation_keyframes)

## Filament

[](https://google.github.io/filament/Materials.html#materialmodels)
