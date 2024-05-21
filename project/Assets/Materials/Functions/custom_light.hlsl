#ifndef CUSTOM_LIGHT_HLSL
#define CUSTOM_LIGHT_HLSL

fixed4 CustomFunction (float3 WorldPosition)
{
    fixed3 diffuse = 0;

    // Access properties from Shader Graph
    fixed4 _MainLightDir;
    fixed4 _MainLightColor;
    float _NumAdditionalLights;
    fixed4_Array _AdditionalLightDir;
    fixed4_Array _AdditionalLightColor;

    // Calculate diffuse lighting from main light
    diffuse += max(dot(WorldPosition, _MainLightDir.xyz), 0) * _MainLightColor.rgb;

    // Loop through additional lights (up to specified number)
    for (int i = 0; i < _NumAdditionalLights; ++i) {
        diffuse += max(dot(WorldPosition, _AdditionalLightDir[i].xyz), 0) * _AdditionalLightColor[i].rgb;
    }

    // Access posterization level from Shader Graph
    float _PosterizeLevels;

    // Apply posterization to diffuse lighting
    fixed3 posterizedDiffuse = floor(diffuse * _PosterizeLevels) / _PosterizeLevels;

    // Return combined result (diffuse lighting with posterization)
    return fixed4(posterizedDiffuse, 1.0);
}