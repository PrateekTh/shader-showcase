# Shaders for Unity
This project contains various implementations of several different kinds of shaders in Unity.
My main objective as of now is to try and recreate several art styles (from films, games, and all other forms of art) using these shaders, which can be then used to make catchy and impressive visuals.
Thus, until I make a few really good shaders, I'll keep updating this repository with results (and hlsl or shader graph files). 

### Custom Toon shader with multiple bands (HLSL):
![image](https://github.com/PrateekTh/shader-showcase/assets/57175545/beb54e89-93aa-4f33-a199-3f16f2508ddf)

### Postprocessing Outlines & Diffusion based Dithering (Shader Graph):
![shader2](https://github.com/PrateekTh/shader-showcase/assets/57175545/0f2fb719-a267-4b77-99cd-536d94fbc1b5)
↑ Custom texture

![image](https://github.com/PrateekTh/shader-showcase/assets/57175545/48aa16d3-3d74-46a3-8e17-c74d5d464cd7)
↑ Procedural simple noise texture

## ScreenSpace Textures & Custom Light Implementation Shaders, with better URP Outline Implementation:
![image](https://github.com/PrateekTh/shader-showcase/assets/57175545/c1673b1a-94a4-4dd0-9d00-be2e339845cb)
- The 3D scene now looks very unique, and a complete project in this style is bound to stand out, visually. As of now I'll try to create better shaders, and implement more complex aesthetics.


## Brutalist Scene
![brt1](https://github.com/PrateekTh/shader-showcase/assets/57175545/0fa95122-3c40-4c18-8a70-52f1749a9eca)

![brt2](https://github.com/PrateekTh/shader-showcase/assets/57175545/c63d1ec2-2434-4e64-b53f-680e999bb3dd)

- Added another scene, which contains a mix of shaders from the last few times, with a bit of playing around.
- Now I have more assets, and a vaguely traversible scene, which will allow to test things in a better way.
- I need to look into getting more camera based control in the next shader, which gives screen-space textures, but moves along with the camera (to pin a texture to the geometry, kind of like Lucas Pope in Return of the Obra Dinn). Also, I'll try to make the outlines a bit better, the resolution as of now is unbearable.



