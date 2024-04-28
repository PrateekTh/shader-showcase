Shader "Unlit/lighting_test"
{
    Properties {
        _MainTex ("Texture", 2D) = "white" {}
    }
    SubShader {
        Tags { "RenderType"="Opaque" }

        Pass {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag

            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "AutoLight.cginc"

            struct meshData {
                float4 vertex : POSITION;
                float2 uv : TEXCOORD0;
                float3 normal : NORMAL;
            };

            struct Interpolators
            {
                float2 uv : TEXCOORD0;
                float4 vertex : SV_POSITION;
                float3 normal : TEXCOORD1;
            };

            sampler2D _MainTex;
            float4 _MainTex_ST;

            Interpolators vert (meshData v) {
                Interpolators o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.uv = TRANSFORM_TEX(v.uv, _MainTex);
                o.normal = v.normal;
                return o;
            }

            float4 frag (Interpolators i) : SV_Target {
                // sample the texture
                //fixed4 col = tex2D(_MainTex, i.uv);
                // apply fog
                float3 N = i.normal;
                float3 L = _WorldSpaceLightPos0.xyz;

                float diffuseLight = dot(N,L);
                float x = 0;
                if (diffuseLight > 0.75){
                    x = 1;
                } else if (diffuseLight > 0.5){
                    x = 0.6;
                } else if ( diffuseLight > 0.25){
                    x = 0.3;
                }

                return float4(x.xxx, 1);
            }
            ENDCG
        }
    }
}
