// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:False,qofs:0,qpre:3,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2865,x:32719,y:32712,varname:node_2865,prsc:2|diff-7882-OUT,spec-358-OUT,gloss-1813-OUT,voffset-8937-OUT;n:type:ShaderForge.SFN_Color,id:6665,x:31278,y:32593,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4233347,c2:0.7570696,c3:0.9926471,c4:1;n:type:ShaderForge.SFN_Slider,id:358,x:32250,y:32780,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:node_358,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:1813,x:32250,y:32882,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Metallic_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_SceneDepth,id:9094,x:31324,y:31446,varname:node_9094,prsc:2;n:type:ShaderForge.SFN_DepthBlend,id:2543,x:31869,y:31766,varname:node_2543,prsc:2|DIST-8503-OUT;n:type:ShaderForge.SFN_Round,id:730,x:32064,y:31842,varname:node_730,prsc:2|IN-2543-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2100,x:31335,y:31697,ptovrint:False,ptlb:Foam Amount,ptin:_FoamAmount,varname:node_2100,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Multiply,id:3607,x:31646,y:32546,varname:node_3607,prsc:2|A-4135-RGB,B-6665-RGB;n:type:ShaderForge.SFN_Clamp01,id:3362,x:31517,y:31511,varname:node_3362,prsc:2|IN-9094-OUT;n:type:ShaderForge.SFN_Multiply,id:8503,x:31700,y:31745,varname:node_8503,prsc:2|A-3362-OUT,B-2903-OUT,C-8426-OUT;n:type:ShaderForge.SFN_Tex2d,id:8728,x:31335,y:31852,varname:node_8728,prsc:2,tex:f1b5e04ab6f752047b80215c310cfdca,ntxv:0,isnm:False|UVIN-4302-OUT,TEX-3813-TEX;n:type:ShaderForge.SFN_Time,id:3846,x:30947,y:31753,varname:node_3846,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:5012,x:30947,y:31881,varname:node_5012,prsc:2,uv:0;n:type:ShaderForge.SFN_Add,id:4302,x:31151,y:31776,varname:node_4302,prsc:2|A-3846-TSL,B-5012-UVOUT;n:type:ShaderForge.SFN_Tex2dAsset,id:3813,x:29591,y:32519,ptovrint:False,ptlb:Foam Noise,ptin:_FoamNoise,varname:node_3813,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:f1b5e04ab6f752047b80215c310cfdca,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Time,id:446,x:30486,y:33769,varname:node_446,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8937,x:31863,y:33828,varname:node_8937,prsc:2|A-5937-OUT,B-8269-OUT;n:type:ShaderForge.SFN_Slider,id:8269,x:31224,y:34079,ptovrint:False,ptlb:Wave Size,ptin:_WaveSize,varname:node_8269,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2,max:1;n:type:ShaderForge.SFN_Multiply,id:5362,x:30890,y:33949,varname:node_5362,prsc:2|A-446-TSL,B-2465-OUT;n:type:ShaderForge.SFN_Slider,id:2465,x:30546,y:33979,ptovrint:False,ptlb:Wave Speed,ptin:_WaveSpeed,varname:node_2465,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.06233755,max:20;n:type:ShaderForge.SFN_Tex2d,id:4135,x:30617,y:32510,varname:node_4135,prsc:2,tex:01bec395a8fabee4892fdcdc9c1d246f,ntxv:0,isnm:False|TEX-5598-TEX;n:type:ShaderForge.SFN_Sin,id:8426,x:31516,y:31852,varname:node_8426,prsc:2|IN-8728-RGB;n:type:ShaderForge.SFN_Lerp,id:7409,x:31948,y:32536,varname:node_7409,prsc:2|A-9557-RGB,B-3607-OUT,T-5599-OUT;n:type:ShaderForge.SFN_Color,id:9557,x:31646,y:32382,ptovrint:False,ptlb:Depths Color,ptin:_DepthsColor,varname:node_9557,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07100883,c2:0.03649437,c3:0.3308824,c4:1;n:type:ShaderForge.SFN_Tex2dAsset,id:5598,x:29591,y:32294,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_5598,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:01bec395a8fabee4892fdcdc9c1d246f,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Clamp01,id:128,x:31102,y:32792,varname:node_128,prsc:2|IN-3196-OUT;n:type:ShaderForge.SFN_RemapRange,id:3196,x:30896,y:32792,varname:node_3196,prsc:2,frmn:0.92,frmx:1,tomn:0,tomx:1|IN-4135-RGB;n:type:ShaderForge.SFN_Add,id:7890,x:31685,y:32783,varname:node_7890,prsc:2|A-1852-B,B-9035-OUT;n:type:ShaderForge.SFN_ComponentMask,id:1852,x:31264,y:32792,varname:node_1852,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-128-OUT;n:type:ShaderForge.SFN_Clamp01,id:5599,x:31864,y:32783,varname:node_5599,prsc:2|IN-7890-OUT;n:type:ShaderForge.SFN_Depth,id:119,x:30896,y:33092,varname:node_119,prsc:2;n:type:ShaderForge.SFN_SceneDepth,id:203,x:30896,y:32969,varname:node_203,prsc:2;n:type:ShaderForge.SFN_Subtract,id:6790,x:31102,y:33038,varname:node_6790,prsc:2|A-203-OUT,B-119-OUT;n:type:ShaderForge.SFN_Clamp01,id:9035,x:31503,y:33037,varname:node_9035,prsc:2|IN-7951-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:7951,x:31322,y:33201,varname:node_7951,prsc:2|IN-6790-OUT,IMIN-4074-OUT,IMAX-3183-OUT,OMIN-4074-OUT,OMAX-3316-OUT;n:type:ShaderForge.SFN_Vector1,id:4074,x:31102,y:33168,varname:node_4074,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:3183,x:31102,y:33223,varname:node_3183,prsc:2,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:650,x:30716,y:33229,ptovrint:False,ptlb:Depth Murkiness,ptin:_DepthMurkiness,cmnt:2 to 100,varname:node_650,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_ConstantClamp,id:1459,x:30896,y:33229,varname:node_1459,prsc:2,min:3,max:100|IN-650-OUT;n:type:ShaderForge.SFN_Multiply,id:3316,x:31102,y:33295,varname:node_3316,prsc:2|A-1459-OUT,B-1177-OUT;n:type:ShaderForge.SFN_Vector1,id:1177,x:30896,y:33390,varname:node_1177,prsc:2,v1:0.01;n:type:ShaderForge.SFN_ConstantClamp,id:2903,x:31516,y:31697,varname:node_2903,prsc:2,min:0,max:50|IN-2100-OUT;n:type:ShaderForge.SFN_Color,id:9435,x:31948,y:32340,ptovrint:False,ptlb:Foam Color,ptin:_FoamColor,varname:node_9435,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:7882,x:32388,y:32507,varname:node_7882,prsc:2|A-9435-RGB,B-7409-OUT,T-730-OUT;n:type:ShaderForge.SFN_TexCoord,id:103,x:30914,y:34224,varname:node_103,prsc:2,uv:0;n:type:ShaderForge.SFN_Add,id:9185,x:31083,y:33938,varname:node_9185,prsc:2|A-5362-OUT,B-103-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:7145,x:31267,y:33733,varname:node_7145,prsc:2,tex:d50b0938dca7e504ab87d08664faa915,ntxv:0,isnm:False|UVIN-9185-OUT,TEX-4866-TEX;n:type:ShaderForge.SFN_RemapRange,id:5937,x:31605,y:33733,varname:node_5937,prsc:2,frmn:0,frmx:1,tomn:-0.5,tomx:0.5|IN-926-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:4866,x:29591,y:32722,ptovrint:False,ptlb:Wave Noise,ptin:_WaveNoise,varname:node_4866,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d50b0938dca7e504ab87d08664faa915,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Clamp01,id:926,x:31440,y:33733,varname:node_926,prsc:2|IN-3965-OUT;n:type:ShaderForge.SFN_Vector3,id:6065,x:31267,y:33506,varname:node_6065,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_Multiply,id:3965,x:31440,y:33506,varname:node_3965,prsc:2|A-6065-OUT,B-7145-RGB;proporder:6665-5598-3813-9435-2100-8269-2465-9557-650-358-1813-4866;pass:END;sub:END;*/

Shader "We Need Bees/Bees Water" {
    Properties {
        _Color ("Color", Color) = (0.4233347,0.7570696,0.9926471,1)
        _Diffuse ("Diffuse", 2D) = "white" {}
        _FoamNoise ("Foam Noise", 2D) = "white" {}
        _FoamColor ("Foam Color", Color) = (1,1,1,1)
        _FoamAmount ("Foam Amount", Float ) = 5
        _WaveSize ("Wave Size", Range(0, 1)) = 0.2
        _WaveSpeed ("Wave Speed", Range(0, 20)) = 0.06233755
        _DepthsColor ("Depths Color", Color) = (0.07100883,0.03649437,0.3308824,1)
        _DepthMurkiness ("Depth Murkiness", Float ) = 10
        _Metallic ("Metallic", Range(0, 1)) = 0
        _Gloss ("Gloss", Range(0, 1)) = 1
        _WaveNoise ("Wave Noise", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "Queue"="Transparent"
            "RenderType"="Opaque"
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
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform float _FoamAmount;
            uniform sampler2D _FoamNoise; uniform float4 _FoamNoise_ST;
            uniform float _WaveSize;
            uniform float _WaveSpeed;
            uniform float4 _DepthsColor;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _DepthMurkiness;
            uniform float4 _FoamColor;
            uniform sampler2D _WaveNoise; uniform float4 _WaveNoise_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 projPos : TEXCOORD7;
                LIGHTING_COORDS(8,9)
                UNITY_FOG_COORDS(10)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD11;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_446 = _Time + _TimeEditor;
                float2 node_9185 = ((node_446.r*_WaveSpeed)+o.uv0);
                float4 node_7145 = tex2Dlod(_WaveNoise,float4(TRANSFORM_TEX(node_9185, _WaveNoise),0.0,0));
                v.vertex.xyz += ((saturate((float3(0,1,0)*node_7145.rgb))*1.0+-0.5)*_WaveSize);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0+1.0);
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                #if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMin[0] = unity_SpecCube0_BoxMin;
                    d.boxMin[1] = unity_SpecCube1_BoxMin;
                #endif
                #if UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMax[0] = unity_SpecCube0_BoxMax;
                    d.boxMax[1] = unity_SpecCube1_BoxMax;
                    d.probePosition[0] = unity_SpecCube0_ProbePosition;
                    d.probePosition[1] = unity_SpecCube1_ProbePosition;
                #endif
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 specularColor = _Metallic;
                float specularMonochrome;
                float4 node_4135 = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float node_4074 = 0.0;
                float4 node_3846 = _Time + _TimeEditor;
                float2 node_4302 = (node_3846.r+i.uv0);
                float4 node_8728 = tex2D(_FoamNoise,TRANSFORM_TEX(node_4302, _FoamNoise));
                float3 diffuseColor = lerp(_FoamColor.rgb,lerp(_DepthsColor.rgb,(node_4135.rgb*_Color.rgb),saturate((saturate((node_4135.rgb*12.5+-11.5)).rgb.b+saturate((node_4074 + ( ((sceneZ-partZ) - node_4074) * ((clamp(_DepthMurkiness,3,100)*0.01) - node_4074) ) / (1.0 - node_4074)))))),round(saturate((sceneZ-partZ)/(saturate(sceneZ)*clamp(_FoamAmount,0,50)*sin(node_8728.rgb))))); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, GGXTerm(NdotH, 1.0-gloss));
                float specularPBL = (NdotL*visTerm*normTerm) * (UNITY_PI / 4);
                if (IsGammaSpace())
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                specularPBL = max(0, specularPBL * NdotL);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz)*specularPBL*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
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
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform float _FoamAmount;
            uniform sampler2D _FoamNoise; uniform float4 _FoamNoise_ST;
            uniform float _WaveSize;
            uniform float _WaveSpeed;
            uniform float4 _DepthsColor;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _DepthMurkiness;
            uniform float4 _FoamColor;
            uniform sampler2D _WaveNoise; uniform float4 _WaveNoise_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 projPos : TEXCOORD7;
                LIGHTING_COORDS(8,9)
                UNITY_FOG_COORDS(10)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_446 = _Time + _TimeEditor;
                float2 node_9185 = ((node_446.r*_WaveSpeed)+o.uv0);
                float4 node_7145 = tex2Dlod(_WaveNoise,float4(TRANSFORM_TEX(node_9185, _WaveNoise),0.0,0));
                v.vertex.xyz += ((saturate((float3(0,1,0)*node_7145.rgb))*1.0+-0.5)*_WaveSize);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 specularColor = _Metallic;
                float specularMonochrome;
                float4 node_4135 = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float node_4074 = 0.0;
                float4 node_3846 = _Time + _TimeEditor;
                float2 node_4302 = (node_3846.r+i.uv0);
                float4 node_8728 = tex2D(_FoamNoise,TRANSFORM_TEX(node_4302, _FoamNoise));
                float3 diffuseColor = lerp(_FoamColor.rgb,lerp(_DepthsColor.rgb,(node_4135.rgb*_Color.rgb),saturate((saturate((node_4135.rgb*12.5+-11.5)).rgb.b+saturate((node_4074 + ( ((sceneZ-partZ) - node_4074) * ((clamp(_DepthMurkiness,3,100)*0.01) - node_4074) ) / (1.0 - node_4074)))))),round(saturate((sceneZ-partZ)/(saturate(sceneZ)*clamp(_FoamAmount,0,50)*sin(node_8728.rgb))))); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, GGXTerm(NdotH, 1.0-gloss));
                float specularPBL = (NdotL*visTerm*normTerm) * (UNITY_PI / 4);
                if (IsGammaSpace())
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                specularPBL = max(0, specularPBL * NdotL);
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
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
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float _WaveSize;
            uniform float _WaveSpeed;
            uniform sampler2D _WaveNoise; uniform float4 _WaveNoise_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float2 uv1 : TEXCOORD2;
                float2 uv2 : TEXCOORD3;
                float4 posWorld : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                float4 node_446 = _Time + _TimeEditor;
                float2 node_9185 = ((node_446.r*_WaveSpeed)+o.uv0);
                float4 node_7145 = tex2Dlod(_WaveNoise,float4(TRANSFORM_TEX(node_9185, _WaveNoise),0.0,0));
                v.vertex.xyz += ((saturate((float3(0,1,0)*node_7145.rgb))*1.0+-0.5)*_WaveSize);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform float _FoamAmount;
            uniform sampler2D _FoamNoise; uniform float4 _FoamNoise_ST;
            uniform float _WaveSize;
            uniform float _WaveSpeed;
            uniform float4 _DepthsColor;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _DepthMurkiness;
            uniform float4 _FoamColor;
            uniform sampler2D _WaveNoise; uniform float4 _WaveNoise_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float4 projPos : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                float4 node_446 = _Time + _TimeEditor;
                float2 node_9185 = ((node_446.r*_WaveSpeed)+o.uv0);
                float4 node_7145 = tex2Dlod(_WaveNoise,float4(TRANSFORM_TEX(node_9185, _WaveNoise),0.0,0));
                v.vertex.xyz += ((saturate((float3(0,1,0)*node_7145.rgb))*1.0+-0.5)*_WaveSize);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float4 node_4135 = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float node_4074 = 0.0;
                float4 node_3846 = _Time + _TimeEditor;
                float2 node_4302 = (node_3846.r+i.uv0);
                float4 node_8728 = tex2D(_FoamNoise,TRANSFORM_TEX(node_4302, _FoamNoise));
                float3 diffColor = lerp(_FoamColor.rgb,lerp(_DepthsColor.rgb,(node_4135.rgb*_Color.rgb),saturate((saturate((node_4135.rgb*12.5+-11.5)).rgb.b+saturate((node_4074 + ( ((sceneZ-partZ) - node_4074) * ((clamp(_DepthMurkiness,3,100)*0.01) - node_4074) ) / (1.0 - node_4074)))))),round(saturate((sceneZ-partZ)/(saturate(sceneZ)*clamp(_FoamAmount,0,50)*sin(node_8728.rgb)))));
                float specularMonochrome;
                float3 specColor;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, _Metallic, specColor, specularMonochrome );
                float roughness = 1.0 - _Gloss;
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
