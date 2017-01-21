// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:9361,x:32855,y:32793,varname:node_9361,prsc:2|emission-2988-OUT,custl-7473-OUT,clip-2100-OUT;n:type:ShaderForge.SFN_NormalVector,id:8214,x:31179,y:32347,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:1542,x:31178,y:32490,varname:node_1542,prsc:2;n:type:ShaderForge.SFN_Dot,id:3455,x:31366,y:32413,varname:node_3455,prsc:2,dt:4|A-8214-OUT,B-1542-OUT;n:type:ShaderForge.SFN_Append,id:1055,x:31566,y:32471,varname:node_1055,prsc:2|A-3455-OUT,B-2434-OUT;n:type:ShaderForge.SFN_Vector1,id:2434,x:31365,y:32556,varname:node_2434,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:9370,x:31781,y:32683,cmnt:Toon ramped lighting,varname:node_9370,prsc:2,tex:5ef9fd82532f1124b8046094d14deb54,ntxv:3,isnm:False|UVIN-1055-OUT,TEX-3113-TEX;n:type:ShaderForge.SFN_LightColor,id:8134,x:31361,y:33454,varname:node_8134,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2655,x:32251,y:32874,varname:node_2655,prsc:2|A-7412-OUT,B-9370-RGB;n:type:ShaderForge.SFN_Tex2d,id:6453,x:31797,y:32513,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_6453,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:9033,x:31581,y:33371,cmnt:Lighting color and attenuation,varname:node_9033,prsc:2|A-6120-OUT,B-8134-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:3113,x:31374,y:32704,ptovrint:False,ptlb:Light Ramp,ptin:_LightRamp,varname:node_3113,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5ef9fd82532f1124b8046094d14deb54,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Color,id:2062,x:31798,y:32337,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_2062,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:7412,x:31995,y:32426,cmnt:Diffuse colors,varname:node_7412,prsc:2|A-2062-RGB,B-6453-RGB;n:type:ShaderForge.SFN_Multiply,id:7473,x:32461,y:32969,varname:node_7473,prsc:2|A-2655-OUT,B-7929-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:6120,x:31359,y:33285,varname:node_6120,prsc:2;n:type:ShaderForge.SFN_Relay,id:2100,x:32162,y:33104,varname:node_2100,prsc:2|IN-6453-A;n:type:ShaderForge.SFN_Clamp01,id:7929,x:31787,y:33371,varname:node_7929,prsc:2|IN-9033-OUT;n:type:ShaderForge.SFN_AmbientLight,id:9281,x:32299,y:32516,varname:node_9281,prsc:2;n:type:ShaderForge.SFN_Color,id:6729,x:31944,y:32097,ptovrint:False,ptlb:Rim Color,ptin:_RimColor,varname:node_6729,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4117647,c2:0.4117647,c3:0.4117647,c4:1;n:type:ShaderForge.SFN_Fresnel,id:3886,x:31995,y:31912,varname:node_3886,prsc:2|EXP-9538-OUT;n:type:ShaderForge.SFN_Multiply,id:3950,x:32264,y:32136,varname:node_3950,prsc:2|A-3886-OUT,B-6729-RGB,C-6120-OUT;n:type:ShaderForge.SFN_Add,id:2988,x:32777,y:32351,varname:node_2988,prsc:2|A-8165-OUT,B-4705-OUT;n:type:ShaderForge.SFN_Multiply,id:4705,x:32527,y:32502,varname:node_4705,prsc:2|A-7412-OUT,B-9281-RGB;n:type:ShaderForge.SFN_Lerp,id:8165,x:32525,y:32145,varname:node_8165,prsc:2|A-6005-OUT,B-3950-OUT,T-1886-OUT;n:type:ShaderForge.SFN_Vector1,id:6005,x:32504,y:32051,varname:node_6005,prsc:2,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:1886,x:32529,y:32297,ptovrint:False,ptlb:Rim Power,ptin:_RimPower,varname:node_1886,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.8;n:type:ShaderForge.SFN_ValueProperty,id:9538,x:31716,y:31999,ptovrint:False,ptlb:Rim Size,ptin:_RimSize,varname:node_9538,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;proporder:6453-3113-2062-6729-1886-9538;pass:END;sub:END;*/

Shader "Megaman Shader Galaxy" {
    Properties {
        _Diffuse ("Diffuse", 2D) = "white" {}
        _LightRamp ("Light Ramp", 2D) = "black" {}
        _Color ("Color", Color) = (1,1,1,1)
        _RimColor ("Rim Color", Color) = (0.4117647,0.4117647,0.4117647,1)
        _RimPower ("Rim Power", Float ) = 0.8
        _RimSize ("Rim Size", Float ) = 2
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _LightRamp; uniform float4 _LightRamp_ST;
            uniform float4 _Color;
            uniform float4 _RimColor;
            uniform float _RimPower;
            uniform float _RimSize;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                clip(_Diffuse_var.a - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float node_6005 = 0.0;
                float3 node_7412 = (_Color.rgb*_Diffuse_var.rgb); // Diffuse colors
                float3 emissive = (lerp(float3(node_6005,node_6005,node_6005),(pow(1.0-max(0,dot(normalDirection, viewDirection)),_RimSize)*_RimColor.rgb*attenuation),_RimPower)+(node_7412*UNITY_LIGHTMODEL_AMBIENT.rgb));
                float2 node_1055 = float2(0.5*dot(i.normalDir,lightDirection)+0.5,0.0);
                float4 node_9370 = tex2D(_LightRamp,TRANSFORM_TEX(node_1055, _LightRamp)); // Toon ramped lighting
                float3 finalColor = emissive + ((node_7412*node_9370.rgb)*saturate((attenuation*_LightColor0.rgb)));
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _LightRamp; uniform float4 _LightRamp_ST;
            uniform float4 _Color;
            uniform float4 _RimColor;
            uniform float _RimPower;
            uniform float _RimSize;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                clip(_Diffuse_var.a - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 node_7412 = (_Color.rgb*_Diffuse_var.rgb); // Diffuse colors
                float2 node_1055 = float2(0.5*dot(i.normalDir,lightDirection)+0.5,0.0);
                float4 node_9370 = tex2D(_LightRamp,TRANSFORM_TEX(node_1055, _LightRamp)); // Toon ramped lighting
                float3 finalColor = ((node_7412*node_9370.rgb)*saturate((attenuation*_LightColor0.rgb)));
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                clip(_Diffuse_var.a - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
