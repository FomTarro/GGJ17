// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:False,qofs:0,qpre:3,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2865,x:32719,y:32712,varname:node_2865,prsc:2|diff-7882-OUT,spec-358-OUT,gloss-1813-OUT,voffset-8238-OUT;n:type:ShaderForge.SFN_Color,id:6665,x:31278,y:32593,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4233347,c2:0.7570696,c3:0.9926471,c4:1;n:type:ShaderForge.SFN_Slider,id:358,x:32250,y:32780,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:node_358,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:1813,x:32250,y:32882,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Metallic_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_SceneDepth,id:9094,x:31324,y:31446,varname:node_9094,prsc:2;n:type:ShaderForge.SFN_DepthBlend,id:2543,x:31869,y:31766,varname:node_2543,prsc:2|DIST-8503-OUT;n:type:ShaderForge.SFN_Round,id:730,x:32064,y:31842,varname:node_730,prsc:2|IN-2543-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2100,x:31335,y:31697,ptovrint:False,ptlb:Foam Amount,ptin:_FoamAmount,varname:node_2100,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Multiply,id:3607,x:31646,y:32546,varname:node_3607,prsc:2|A-4135-RGB,B-6665-RGB;n:type:ShaderForge.SFN_Clamp01,id:3362,x:31517,y:31511,varname:node_3362,prsc:2|IN-9094-OUT;n:type:ShaderForge.SFN_Multiply,id:8503,x:31700,y:31745,varname:node_8503,prsc:2|A-3362-OUT,B-2903-OUT,C-8426-OUT;n:type:ShaderForge.SFN_Tex2d,id:8728,x:31335,y:31852,varname:node_8728,prsc:2,tex:f1b5e04ab6f752047b80215c310cfdca,ntxv:0,isnm:False|UVIN-4302-OUT,TEX-3813-TEX;n:type:ShaderForge.SFN_Time,id:3846,x:30947,y:31753,varname:node_3846,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:5012,x:30947,y:31881,varname:node_5012,prsc:2,uv:0;n:type:ShaderForge.SFN_Add,id:4302,x:31151,y:31776,varname:node_4302,prsc:2|A-3846-TSL,B-5012-UVOUT;n:type:ShaderForge.SFN_Tex2dAsset,id:3813,x:29098,y:32477,ptovrint:False,ptlb:Foam Noise,ptin:_FoamNoise,varname:node_3813,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:f1b5e04ab6f752047b80215c310cfdca,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Time,id:446,x:30572,y:33740,varname:node_446,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8937,x:31887,y:33757,varname:node_8937,prsc:2|A-3965-OUT,B-8269-OUT;n:type:ShaderForge.SFN_Slider,id:8269,x:31553,y:33828,ptovrint:False,ptlb:Wave Size,ptin:_WaveSize,varname:node_8269,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2,max:1;n:type:ShaderForge.SFN_Multiply,id:5362,x:30751,y:33740,varname:node_5362,prsc:2|A-446-TSL,B-2465-OUT;n:type:ShaderForge.SFN_Slider,id:2465,x:30415,y:33897,ptovrint:False,ptlb:Wave Speed,ptin:_WaveSpeed,varname:node_2465,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:3.169134,max:20;n:type:ShaderForge.SFN_Tex2d,id:4135,x:30787,y:32505,varname:node_4135,prsc:2,tex:01bec395a8fabee4892fdcdc9c1d246f,ntxv:0,isnm:False|UVIN-6377-OUT,TEX-5598-TEX;n:type:ShaderForge.SFN_Sin,id:8426,x:31516,y:31852,varname:node_8426,prsc:2|IN-8728-RGB;n:type:ShaderForge.SFN_Lerp,id:7409,x:31948,y:32536,varname:node_7409,prsc:2|A-9557-RGB,B-3607-OUT,T-5599-OUT;n:type:ShaderForge.SFN_Color,id:9557,x:31646,y:32382,ptovrint:False,ptlb:Depths Color,ptin:_DepthsColor,varname:node_9557,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07100883,c2:0.03649437,c3:0.3308824,c4:1;n:type:ShaderForge.SFN_Tex2dAsset,id:5598,x:29098,y:32252,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_5598,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:01bec395a8fabee4892fdcdc9c1d246f,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Clamp01,id:128,x:31102,y:32792,varname:node_128,prsc:2|IN-3196-OUT;n:type:ShaderForge.SFN_RemapRange,id:3196,x:30896,y:32792,varname:node_3196,prsc:2,frmn:0.92,frmx:1,tomn:0,tomx:1|IN-4135-RGB;n:type:ShaderForge.SFN_Add,id:7890,x:31685,y:32783,varname:node_7890,prsc:2|A-1852-B,B-9035-OUT;n:type:ShaderForge.SFN_ComponentMask,id:1852,x:31264,y:32792,varname:node_1852,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-128-OUT;n:type:ShaderForge.SFN_Clamp01,id:5599,x:31864,y:32783,varname:node_5599,prsc:2|IN-7890-OUT;n:type:ShaderForge.SFN_Depth,id:119,x:30896,y:33092,varname:node_119,prsc:2;n:type:ShaderForge.SFN_SceneDepth,id:203,x:30896,y:32969,varname:node_203,prsc:2;n:type:ShaderForge.SFN_Subtract,id:6790,x:31102,y:33038,varname:node_6790,prsc:2|A-203-OUT,B-119-OUT;n:type:ShaderForge.SFN_Clamp01,id:9035,x:31503,y:33037,varname:node_9035,prsc:2|IN-7951-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:7951,x:31315,y:33134,varname:node_7951,prsc:2|IN-6790-OUT,IMIN-4074-OUT,IMAX-3183-OUT,OMIN-4074-OUT,OMAX-3316-OUT;n:type:ShaderForge.SFN_Vector1,id:4074,x:31102,y:33168,varname:node_4074,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:3183,x:31102,y:33223,varname:node_3183,prsc:2,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:650,x:30716,y:33229,ptovrint:False,ptlb:Depth Murkiness,ptin:_DepthMurkiness,cmnt:2 to 100,varname:node_650,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_ConstantClamp,id:1459,x:30896,y:33229,varname:node_1459,prsc:2,min:3,max:100|IN-650-OUT;n:type:ShaderForge.SFN_Multiply,id:3316,x:31102,y:33283,varname:node_3316,prsc:2|A-1459-OUT,B-1177-OUT;n:type:ShaderForge.SFN_Vector1,id:1177,x:30896,y:33380,varname:node_1177,prsc:2,v1:0.01;n:type:ShaderForge.SFN_ConstantClamp,id:2903,x:31516,y:31697,varname:node_2903,prsc:2,min:0,max:50|IN-2100-OUT;n:type:ShaderForge.SFN_Color,id:9435,x:31948,y:32340,ptovrint:False,ptlb:Foam Color,ptin:_FoamColor,varname:node_9435,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:7882,x:32388,y:32507,varname:node_7882,prsc:2|A-9435-RGB,B-7409-OUT,T-730-OUT;n:type:ShaderForge.SFN_TexCoord,id:103,x:30751,y:33877,varname:node_103,prsc:2,uv:0;n:type:ShaderForge.SFN_Add,id:9185,x:30944,y:33740,varname:node_9185,prsc:2|A-5362-OUT,B-103-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:7145,x:31161,y:33633,varname:node_7145,prsc:2,tex:d50b0938dca7e504ab87d08664faa915,ntxv:0,isnm:False|UVIN-9185-OUT,TEX-4866-TEX;n:type:ShaderForge.SFN_RemapRange,id:5937,x:31514,y:33633,varname:node_5937,prsc:2,frmn:0,frmx:1,tomn:-0.5,tomx:0.5|IN-926-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:4866,x:29098,y:32680,ptovrint:False,ptlb:Wave Noise,ptin:_WaveNoise,varname:node_4866,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d50b0938dca7e504ab87d08664faa915,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Clamp01,id:926,x:31346,y:33633,varname:node_926,prsc:2|IN-7145-RGB;n:type:ShaderForge.SFN_Vector3,id:6065,x:31514,y:33540,varname:node_6065,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_Multiply,id:3965,x:31710,y:33633,varname:node_3965,prsc:2|A-6065-OUT,B-5937-OUT;n:type:ShaderForge.SFN_TexCoord,id:7580,x:30471,y:32574,varname:node_7580,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:748,x:29961,y:32574,varname:node_748,prsc:2,tex:f1b5e04ab6f752047b80215c310cfdca,ntxv:0,isnm:False|TEX-3813-TEX;n:type:ShaderForge.SFN_RemapRange,id:474,x:30471,y:32424,varname:node_474,prsc:2,frmn:0,frmx:1,tomn:-0.1,tomx:0.1|IN-9297-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6710,x:30132,y:32574,varname:node_6710,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-748-RGB;n:type:ShaderForge.SFN_Time,id:5679,x:29961,y:32424,varname:node_5679,prsc:2;n:type:ShaderForge.SFN_Add,id:9297,x:30315,y:32424,varname:node_9297,prsc:2|A-8121-OUT,B-6710-OUT;n:type:ShaderForge.SFN_Add,id:6377,x:30629,y:32424,varname:node_6377,prsc:2|A-474-OUT,B-7580-UVOUT;n:type:ShaderForge.SFN_Multiply,id:8121,x:30132,y:32424,varname:node_8121,prsc:2|A-319-OUT,B-5679-TSL;n:type:ShaderForge.SFN_Slider,id:319,x:29804,y:32321,ptovrint:False,ptlb:Surface Speed,ptin:_SurfaceSpeed,varname:node_319,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:1,max:1;n:type:ShaderForge.SFN_Vector4Property,id:7240,x:29847,y:34893,ptovrint:False,ptlb:Impact 1,ptin:_Impact1,varname:node_7240,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Add,id:8238,x:32609,y:33844,varname:node_8238,prsc:2|A-8937-OUT,B-7519-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:7948,x:30030,y:34893,cmnt:Time,varname:node_7948,prsc:2,min:0,max:1|IN-7240-W;n:type:ShaderForge.SFN_Distance,id:2844,x:30030,y:34725,varname:node_2844,prsc:2|A-6839-XYZ,B-7240-XYZ;n:type:ShaderForge.SFN_ValueProperty,id:2271,x:29187,y:34444,ptovrint:False,ptlb:Splash Distance,ptin:_SplashDistance,varname:node_2271,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:20;n:type:ShaderForge.SFN_Negate,id:478,x:30207,y:34725,varname:node_478,prsc:2|IN-2844-OUT;n:type:ShaderForge.SFN_Add,id:1962,x:30439,y:34725,varname:node_1962,prsc:2|A-36-OUT,B-478-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:6839,x:29847,y:34725,varname:node_6839,prsc:2;n:type:ShaderForge.SFN_ConstantClamp,id:2359,x:30629,y:34728,varname:node_2359,prsc:2,min:0,max:100|IN-1962-OUT;n:type:ShaderForge.SFN_Vector1,id:1017,x:31534,y:34438,varname:node_1017,prsc:2,v1:0;n:type:ShaderForge.SFN_Append,id:9178,x:31844,y:34510,varname:node_9178,prsc:2|A-1017-OUT,B-9313-OUT,C-1017-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9039,x:29187,y:34609,ptovrint:False,ptlb:Splash Amplitude,ptin:_SplashAmplitude,varname:node_9039,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:20;n:type:ShaderForge.SFN_Lerp,id:6643,x:31422,y:34715,varname:node_6643,prsc:2|A-5978-OUT,B-2839-OUT,T-7948-OUT;n:type:ShaderForge.SFN_Vector1,id:5978,x:31145,y:34649,varname:node_5978,prsc:2,v1:0;n:type:ShaderForge.SFN_Relay,id:9313,x:31710,y:34531,varname:node_9313,prsc:2|IN-6643-OUT;n:type:ShaderForge.SFN_Lerp,id:36,x:30207,y:34569,cmnt:Distance increases over time,varname:node_36,prsc:2|A-6488-OUT,B-9757-OUT,T-7948-OUT;n:type:ShaderForge.SFN_Vector1,id:9757,x:30030,y:34562,varname:node_9757,prsc:2,v1:0;n:type:ShaderForge.SFN_Sin,id:9490,x:30940,y:34728,varname:node_9490,prsc:2|IN-6985-OUT;n:type:ShaderForge.SFN_Lerp,id:8378,x:30629,y:34496,cmnt:Amplitude decreases over time,varname:node_8378,prsc:2|A-6271-OUT,B-6234-OUT,T-7948-OUT;n:type:ShaderForge.SFN_Vector1,id:6271,x:30433,y:34422,varname:node_6271,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:2839,x:31145,y:34713,varname:node_2839,prsc:2|A-9237-OUT,B-9490-OUT;n:type:ShaderForge.SFN_ValueProperty,id:724,x:29187,y:34522,ptovrint:False,ptlb:Splash Period,ptin:_SplashPeriod,varname:node_724,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:9237,x:30918,y:34505,varname:node_9237,prsc:2|A-8378-OUT,B-8378-OUT;n:type:ShaderForge.SFN_Multiply,id:6985,x:30787,y:34728,varname:node_6985,prsc:2|A-2359-OUT,B-9997-OUT;n:type:ShaderForge.SFN_Lerp,id:9997,x:30629,y:34892,varname:node_9997,prsc:2|A-1034-OUT,B-932-OUT,T-7948-OUT;n:type:ShaderForge.SFN_Vector1,id:1034,x:30441,y:34892,varname:node_1034,prsc:2,v1:0;n:type:ShaderForge.SFN_Relay,id:6332,x:32425,y:35447,varname:node_6332,prsc:2|IN-1811-OUT;n:type:ShaderForge.SFN_Set,id:5962,x:29375,y:34444,cmnt:Setters for all splash variables,varname:SplashDistance,prsc:2|IN-2271-OUT;n:type:ShaderForge.SFN_Set,id:4521,x:29375,y:34609,varname:SplashAmplitude,prsc:2|IN-9039-OUT;n:type:ShaderForge.SFN_Set,id:2716,x:29375,y:34522,varname:SplashPeriod,prsc:2|IN-724-OUT;n:type:ShaderForge.SFN_Get,id:6602,x:30186,y:34496,varname:node_6602,prsc:2|IN-4521-OUT;n:type:ShaderForge.SFN_Get,id:6488,x:30009,y:34637,varname:node_6488,prsc:2|IN-5962-OUT;n:type:ShaderForge.SFN_Get,id:932,x:30417,y:34966,varname:node_932,prsc:2|IN-2716-OUT;n:type:ShaderForge.SFN_Vector4Property,id:9571,x:29841,y:35807,ptovrint:False,ptlb:Impact 2,ptin:_Impact2,varname:_Impact2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_ConstantClamp,id:2467,x:30024,y:35807,cmnt:Time,varname:node_2467,prsc:2,min:0,max:1|IN-9571-W;n:type:ShaderForge.SFN_Distance,id:2034,x:30024,y:35639,varname:node_2034,prsc:2|A-9228-XYZ,B-9571-XYZ;n:type:ShaderForge.SFN_Negate,id:5699,x:30201,y:35639,varname:node_5699,prsc:2|IN-2034-OUT;n:type:ShaderForge.SFN_Add,id:7472,x:30433,y:35639,varname:node_7472,prsc:2|A-4185-OUT,B-5699-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:9228,x:29841,y:35639,varname:node_9228,prsc:2;n:type:ShaderForge.SFN_ConstantClamp,id:8371,x:30623,y:35642,varname:node_8371,prsc:2,min:0,max:100|IN-7472-OUT;n:type:ShaderForge.SFN_Vector1,id:9683,x:31528,y:35352,varname:node_9683,prsc:2,v1:0;n:type:ShaderForge.SFN_Append,id:970,x:31838,y:35424,varname:node_970,prsc:2|A-9683-OUT,B-811-OUT,C-9683-OUT;n:type:ShaderForge.SFN_Lerp,id:440,x:31416,y:35629,varname:node_440,prsc:2|A-5444-OUT,B-9735-OUT,T-2467-OUT;n:type:ShaderForge.SFN_Vector1,id:5444,x:31139,y:35563,varname:node_5444,prsc:2,v1:0;n:type:ShaderForge.SFN_Relay,id:811,x:31704,y:35445,varname:node_811,prsc:2|IN-440-OUT;n:type:ShaderForge.SFN_Lerp,id:4185,x:30201,y:35483,cmnt:Distance increases over time,varname:node_4185,prsc:2|A-469-OUT,B-985-OUT,T-2467-OUT;n:type:ShaderForge.SFN_Vector1,id:985,x:30024,y:35476,varname:node_985,prsc:2,v1:0;n:type:ShaderForge.SFN_Sin,id:3089,x:30934,y:35642,varname:node_3089,prsc:2|IN-2272-OUT;n:type:ShaderForge.SFN_Lerp,id:1987,x:30623,y:35410,cmnt:Amplitude decreases over time,varname:node_1987,prsc:2|A-8218-OUT,B-9736-OUT,T-2467-OUT;n:type:ShaderForge.SFN_Vector1,id:8218,x:30427,y:35336,varname:node_8218,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:9735,x:31139,y:35627,varname:node_9735,prsc:2|A-2677-OUT,B-3089-OUT;n:type:ShaderForge.SFN_Multiply,id:2677,x:30912,y:35419,varname:node_2677,prsc:2|A-1987-OUT,B-1987-OUT;n:type:ShaderForge.SFN_Multiply,id:2272,x:30781,y:35642,varname:node_2272,prsc:2|A-8371-OUT,B-263-OUT;n:type:ShaderForge.SFN_Lerp,id:263,x:30623,y:35806,varname:node_263,prsc:2|A-8903-OUT,B-9718-OUT,T-2467-OUT;n:type:ShaderForge.SFN_Vector1,id:8903,x:30435,y:35806,varname:node_8903,prsc:2,v1:0;n:type:ShaderForge.SFN_Get,id:9682,x:30180,y:35399,varname:node_9682,prsc:2|IN-4521-OUT;n:type:ShaderForge.SFN_Get,id:469,x:30003,y:35551,varname:node_469,prsc:2|IN-5962-OUT;n:type:ShaderForge.SFN_Get,id:9718,x:30411,y:35880,varname:node_9718,prsc:2|IN-2716-OUT;n:type:ShaderForge.SFN_Add,id:1811,x:32231,y:35447,varname:node_1811,prsc:2|A-9178-OUT,B-970-OUT,C-4440-OUT,D-5919-OUT,E-115-OUT;n:type:ShaderForge.SFN_Vector4Property,id:6110,x:29833,y:36692,ptovrint:False,ptlb:Impact 3,ptin:_Impact3,varname:_Impact3,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_ConstantClamp,id:5151,x:30016,y:36692,cmnt:Time,varname:node_5151,prsc:2,min:0,max:1|IN-6110-W;n:type:ShaderForge.SFN_Distance,id:5671,x:30016,y:36524,varname:node_5671,prsc:2|A-8227-XYZ,B-6110-XYZ;n:type:ShaderForge.SFN_Negate,id:5779,x:30193,y:36524,varname:node_5779,prsc:2|IN-5671-OUT;n:type:ShaderForge.SFN_Add,id:130,x:30425,y:36524,varname:node_130,prsc:2|A-9137-OUT,B-5779-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:8227,x:29833,y:36524,varname:node_8227,prsc:2;n:type:ShaderForge.SFN_ConstantClamp,id:8751,x:30615,y:36527,varname:node_8751,prsc:2,min:0,max:100|IN-130-OUT;n:type:ShaderForge.SFN_Vector1,id:9114,x:31520,y:36237,varname:node_9114,prsc:2,v1:0;n:type:ShaderForge.SFN_Append,id:4440,x:31830,y:36309,varname:node_4440,prsc:2|A-9114-OUT,B-2770-OUT,C-9114-OUT;n:type:ShaderForge.SFN_Lerp,id:5689,x:31408,y:36514,varname:node_5689,prsc:2|A-6348-OUT,B-4207-OUT,T-5151-OUT;n:type:ShaderForge.SFN_Vector1,id:6348,x:31131,y:36448,varname:node_6348,prsc:2,v1:0;n:type:ShaderForge.SFN_Relay,id:2770,x:31696,y:36330,varname:node_2770,prsc:2|IN-5689-OUT;n:type:ShaderForge.SFN_Lerp,id:9137,x:30193,y:36368,cmnt:Distance increases over time,varname:node_9137,prsc:2|A-2056-OUT,B-3984-OUT,T-5151-OUT;n:type:ShaderForge.SFN_Vector1,id:3984,x:30016,y:36361,varname:node_3984,prsc:2,v1:0;n:type:ShaderForge.SFN_Sin,id:3924,x:30926,y:36527,varname:node_3924,prsc:2|IN-8800-OUT;n:type:ShaderForge.SFN_Lerp,id:7859,x:30615,y:36295,cmnt:Amplitude decreases over time,varname:node_7859,prsc:2|A-8478-OUT,B-4770-OUT,T-5151-OUT;n:type:ShaderForge.SFN_Vector1,id:8478,x:30419,y:36221,varname:node_8478,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:4207,x:31131,y:36512,varname:node_4207,prsc:2|A-6875-OUT,B-3924-OUT;n:type:ShaderForge.SFN_Multiply,id:6875,x:30904,y:36304,varname:node_6875,prsc:2|A-7859-OUT,B-7859-OUT;n:type:ShaderForge.SFN_Multiply,id:8800,x:30773,y:36527,varname:node_8800,prsc:2|A-8751-OUT,B-6692-OUT;n:type:ShaderForge.SFN_Lerp,id:6692,x:30615,y:36691,varname:node_6692,prsc:2|A-497-OUT,B-8652-OUT,T-5151-OUT;n:type:ShaderForge.SFN_Vector1,id:497,x:30427,y:36691,varname:node_497,prsc:2,v1:0;n:type:ShaderForge.SFN_Get,id:3754,x:30172,y:36295,varname:node_3754,prsc:2|IN-4521-OUT;n:type:ShaderForge.SFN_Get,id:2056,x:29995,y:36436,varname:node_2056,prsc:2|IN-5962-OUT;n:type:ShaderForge.SFN_Get,id:8652,x:30403,y:36765,varname:node_8652,prsc:2|IN-2716-OUT;n:type:ShaderForge.SFN_Relay,id:7519,x:32650,y:34025,varname:node_7519,prsc:2|IN-6332-OUT;n:type:ShaderForge.SFN_Vector4Property,id:8192,x:29825,y:37502,ptovrint:False,ptlb:Impact 4,ptin:_Impact4,varname:_Impact4,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_ConstantClamp,id:1932,x:30008,y:37502,cmnt:Time,varname:node_1932,prsc:2,min:0,max:1|IN-8192-W;n:type:ShaderForge.SFN_Distance,id:8428,x:30008,y:37334,varname:node_8428,prsc:2|A-5440-XYZ,B-8192-XYZ;n:type:ShaderForge.SFN_Negate,id:1155,x:30185,y:37334,varname:node_1155,prsc:2|IN-8428-OUT;n:type:ShaderForge.SFN_Add,id:6585,x:30417,y:37334,varname:node_6585,prsc:2|A-8296-OUT,B-1155-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:5440,x:29825,y:37334,varname:node_5440,prsc:2;n:type:ShaderForge.SFN_ConstantClamp,id:4919,x:30607,y:37337,varname:node_4919,prsc:2,min:0,max:100|IN-6585-OUT;n:type:ShaderForge.SFN_Vector1,id:5748,x:31512,y:37047,varname:node_5748,prsc:2,v1:0;n:type:ShaderForge.SFN_Append,id:5919,x:31822,y:37119,varname:node_5919,prsc:2|A-5748-OUT,B-7941-OUT,C-5748-OUT;n:type:ShaderForge.SFN_Lerp,id:2376,x:31400,y:37324,varname:node_2376,prsc:2|A-2971-OUT,B-2664-OUT,T-1932-OUT;n:type:ShaderForge.SFN_Vector1,id:2971,x:31123,y:37258,varname:node_2971,prsc:2,v1:0;n:type:ShaderForge.SFN_Relay,id:7941,x:31688,y:37140,varname:node_7941,prsc:2|IN-2376-OUT;n:type:ShaderForge.SFN_Lerp,id:8296,x:30185,y:37178,cmnt:Distance increases over time,varname:node_8296,prsc:2|A-2954-OUT,B-9642-OUT,T-1932-OUT;n:type:ShaderForge.SFN_Vector1,id:9642,x:30008,y:37171,varname:node_9642,prsc:2,v1:0;n:type:ShaderForge.SFN_Sin,id:3757,x:30918,y:37337,varname:node_3757,prsc:2|IN-1217-OUT;n:type:ShaderForge.SFN_Lerp,id:7292,x:30607,y:37105,cmnt:Amplitude decreases over time,varname:node_7292,prsc:2|A-866-OUT,B-649-OUT,T-1932-OUT;n:type:ShaderForge.SFN_Vector1,id:866,x:30411,y:37031,varname:node_866,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:2664,x:31123,y:37322,varname:node_2664,prsc:2|A-7748-OUT,B-3757-OUT;n:type:ShaderForge.SFN_Multiply,id:7748,x:30896,y:37114,varname:node_7748,prsc:2|A-7292-OUT,B-7292-OUT;n:type:ShaderForge.SFN_Multiply,id:1217,x:30765,y:37337,varname:node_1217,prsc:2|A-4919-OUT,B-4249-OUT;n:type:ShaderForge.SFN_Lerp,id:4249,x:30607,y:37501,varname:node_4249,prsc:2|A-1207-OUT,B-5242-OUT,T-1932-OUT;n:type:ShaderForge.SFN_Vector1,id:1207,x:30419,y:37501,varname:node_1207,prsc:2,v1:0;n:type:ShaderForge.SFN_Get,id:7768,x:30164,y:37103,varname:node_7768,prsc:2|IN-4521-OUT;n:type:ShaderForge.SFN_Get,id:2954,x:29987,y:37246,varname:node_2954,prsc:2|IN-5962-OUT;n:type:ShaderForge.SFN_Get,id:5242,x:30395,y:37575,varname:node_5242,prsc:2|IN-2716-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9489,x:30207,y:34422,ptovrint:False,ptlb:ImpactForce1,ptin:_ImpactForce1,varname:node_9489,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:6234,x:30433,y:34496,varname:node_6234,prsc:2|A-9489-OUT,B-6602-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6621,x:30201,y:35336,ptovrint:False,ptlb:ImpactForce2,ptin:_ImpactForce2,varname:node_6621,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:9736,x:30427,y:35410,varname:node_9736,prsc:2|A-6621-OUT,B-9682-OUT;n:type:ShaderForge.SFN_Multiply,id:4770,x:30419,y:36295,varname:node_4770,prsc:2|A-2105-OUT,B-3754-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2105,x:30193,y:36221,ptovrint:False,ptlb:ImpactForce3,ptin:_ImpactForce3,varname:node_2105,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:3856,x:30185,y:37031,ptovrint:False,ptlb:ImpactForce4,ptin:_ImpactForce4,varname:node_3856,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:649,x:30411,y:37103,varname:node_649,prsc:2|A-3856-OUT,B-7768-OUT;n:type:ShaderForge.SFN_Vector4Property,id:4277,x:29816,y:38339,ptovrint:False,ptlb:Impact 5,ptin:_Impact5,varname:_Impact5,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_ConstantClamp,id:2108,x:29999,y:38339,cmnt:Time,varname:node_2108,prsc:2,min:0,max:1|IN-4277-W;n:type:ShaderForge.SFN_Distance,id:2504,x:29999,y:38171,varname:node_2504,prsc:2|A-4871-XYZ,B-4277-XYZ;n:type:ShaderForge.SFN_Negate,id:5807,x:30176,y:38171,varname:node_5807,prsc:2|IN-2504-OUT;n:type:ShaderForge.SFN_Add,id:6120,x:30408,y:38171,varname:node_6120,prsc:2|A-7011-OUT,B-5807-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:4871,x:29816,y:38171,varname:node_4871,prsc:2;n:type:ShaderForge.SFN_ConstantClamp,id:8196,x:30598,y:38174,varname:node_8196,prsc:2,min:0,max:100|IN-6120-OUT;n:type:ShaderForge.SFN_Vector1,id:4400,x:31503,y:37884,varname:node_4400,prsc:2,v1:0;n:type:ShaderForge.SFN_Append,id:4020,x:31813,y:37956,varname:node_4020,prsc:2|A-4400-OUT,B-6003-OUT,C-4400-OUT;n:type:ShaderForge.SFN_Lerp,id:6703,x:31391,y:38161,varname:node_6703,prsc:2|A-2544-OUT,B-5586-OUT,T-2108-OUT;n:type:ShaderForge.SFN_Vector1,id:2544,x:31114,y:38095,varname:node_2544,prsc:2,v1:0;n:type:ShaderForge.SFN_Relay,id:6003,x:31679,y:37977,varname:node_6003,prsc:2|IN-6703-OUT;n:type:ShaderForge.SFN_Lerp,id:7011,x:30176,y:38015,cmnt:Distance increases over time,varname:node_7011,prsc:2|A-701-OUT,B-5472-OUT,T-2108-OUT;n:type:ShaderForge.SFN_Vector1,id:5472,x:29999,y:38008,varname:node_5472,prsc:2,v1:0;n:type:ShaderForge.SFN_Sin,id:3240,x:30909,y:38174,varname:node_3240,prsc:2|IN-6997-OUT;n:type:ShaderForge.SFN_Lerp,id:201,x:30598,y:37942,cmnt:Amplitude decreases over time,varname:node_201,prsc:2|A-7828-OUT,B-3956-OUT,T-2108-OUT;n:type:ShaderForge.SFN_Vector1,id:7828,x:30402,y:37868,varname:node_7828,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:5586,x:31114,y:38159,varname:node_5586,prsc:2|A-2622-OUT,B-3240-OUT;n:type:ShaderForge.SFN_Multiply,id:2622,x:30887,y:37951,varname:node_2622,prsc:2|A-201-OUT,B-201-OUT;n:type:ShaderForge.SFN_Multiply,id:6997,x:30756,y:38174,varname:node_6997,prsc:2|A-8196-OUT,B-8475-OUT;n:type:ShaderForge.SFN_Lerp,id:8475,x:30598,y:38338,varname:node_8475,prsc:2|A-6104-OUT,B-4025-OUT,T-2108-OUT;n:type:ShaderForge.SFN_Vector1,id:6104,x:30410,y:38338,varname:node_6104,prsc:2,v1:0;n:type:ShaderForge.SFN_Get,id:9360,x:30155,y:37940,varname:node_9360,prsc:2|IN-4521-OUT;n:type:ShaderForge.SFN_Get,id:701,x:29978,y:38083,varname:node_701,prsc:2|IN-5962-OUT;n:type:ShaderForge.SFN_Get,id:4025,x:30386,y:38412,varname:node_4025,prsc:2|IN-2716-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6837,x:30176,y:37868,ptovrint:False,ptlb:ImpactForce5,ptin:_ImpactForce5,varname:_ImpactForce5,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:3956,x:30402,y:37940,varname:node_3956,prsc:2|A-6837-OUT,B-9360-OUT;n:type:ShaderForge.SFN_Vector4Property,id:9988,x:29806,y:39178,ptovrint:False,ptlb:Impact 6,ptin:_Impact6,varname:_Impact6,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_ConstantClamp,id:7796,x:29989,y:39178,cmnt:Time,varname:node_7796,prsc:2,min:0,max:1|IN-9988-W;n:type:ShaderForge.SFN_Distance,id:3808,x:29989,y:39010,varname:node_3808,prsc:2|A-3171-XYZ,B-9988-XYZ;n:type:ShaderForge.SFN_Negate,id:6806,x:30166,y:39010,varname:node_6806,prsc:2|IN-3808-OUT;n:type:ShaderForge.SFN_Add,id:5740,x:30398,y:39010,varname:node_5740,prsc:2|A-9691-OUT,B-6806-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:3171,x:29806,y:39010,varname:node_3171,prsc:2;n:type:ShaderForge.SFN_ConstantClamp,id:3442,x:30588,y:39013,varname:node_3442,prsc:2,min:0,max:100|IN-5740-OUT;n:type:ShaderForge.SFN_Vector1,id:7825,x:31493,y:38723,varname:node_7825,prsc:2,v1:0;n:type:ShaderForge.SFN_Append,id:5227,x:31803,y:38795,varname:node_5227,prsc:2|A-7825-OUT,B-949-OUT,C-7825-OUT;n:type:ShaderForge.SFN_Lerp,id:8545,x:31381,y:39000,varname:node_8545,prsc:2|A-6006-OUT,B-8635-OUT,T-7796-OUT;n:type:ShaderForge.SFN_Vector1,id:6006,x:31104,y:38934,varname:node_6006,prsc:2,v1:0;n:type:ShaderForge.SFN_Relay,id:949,x:31669,y:38816,varname:node_949,prsc:2|IN-8545-OUT;n:type:ShaderForge.SFN_Lerp,id:9691,x:30166,y:38854,cmnt:Distance increases over time,varname:node_9691,prsc:2|A-5264-OUT,B-5803-OUT,T-7796-OUT;n:type:ShaderForge.SFN_Vector1,id:5803,x:29989,y:38847,varname:node_5803,prsc:2,v1:0;n:type:ShaderForge.SFN_Sin,id:5267,x:30899,y:39013,varname:node_5267,prsc:2|IN-369-OUT;n:type:ShaderForge.SFN_Lerp,id:4435,x:30588,y:38781,cmnt:Amplitude decreases over time,varname:node_4435,prsc:2|A-5514-OUT,B-1280-OUT,T-7796-OUT;n:type:ShaderForge.SFN_Vector1,id:5514,x:30392,y:38707,varname:node_5514,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:8635,x:31104,y:38998,varname:node_8635,prsc:2|A-3244-OUT,B-5267-OUT;n:type:ShaderForge.SFN_Multiply,id:3244,x:30877,y:38790,varname:node_3244,prsc:2|A-4435-OUT,B-4435-OUT;n:type:ShaderForge.SFN_Multiply,id:369,x:30746,y:39013,varname:node_369,prsc:2|A-3442-OUT,B-5701-OUT;n:type:ShaderForge.SFN_Lerp,id:5701,x:30588,y:39177,varname:node_5701,prsc:2|A-7054-OUT,B-8353-OUT,T-7796-OUT;n:type:ShaderForge.SFN_Vector1,id:7054,x:30400,y:39177,varname:node_7054,prsc:2,v1:0;n:type:ShaderForge.SFN_Get,id:612,x:30145,y:38779,varname:node_612,prsc:2|IN-4521-OUT;n:type:ShaderForge.SFN_Get,id:5264,x:29968,y:38922,varname:node_5264,prsc:2|IN-5962-OUT;n:type:ShaderForge.SFN_Get,id:8353,x:30376,y:39251,varname:node_8353,prsc:2|IN-2716-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7093,x:30166,y:38707,ptovrint:False,ptlb:ImpactForce6,ptin:_ImpactForce6,varname:_ImpactForce6,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:1280,x:30392,y:38779,varname:node_1280,prsc:2|A-7093-OUT,B-612-OUT;n:type:ShaderForge.SFN_Vector4Property,id:3050,x:29807,y:39990,ptovrint:False,ptlb:Impact 7,ptin:_Impact7,varname:_Impact7,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_ConstantClamp,id:8867,x:29990,y:39990,cmnt:Time,varname:node_8867,prsc:2,min:0,max:1|IN-3050-W;n:type:ShaderForge.SFN_Distance,id:9432,x:29990,y:39822,varname:node_9432,prsc:2|A-204-XYZ,B-3050-XYZ;n:type:ShaderForge.SFN_Negate,id:2442,x:30167,y:39822,varname:node_2442,prsc:2|IN-9432-OUT;n:type:ShaderForge.SFN_Add,id:4574,x:30399,y:39822,varname:node_4574,prsc:2|A-6780-OUT,B-2442-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:204,x:29807,y:39822,varname:node_204,prsc:2;n:type:ShaderForge.SFN_ConstantClamp,id:6329,x:30589,y:39825,varname:node_6329,prsc:2,min:0,max:100|IN-4574-OUT;n:type:ShaderForge.SFN_Vector1,id:2221,x:31494,y:39535,varname:node_2221,prsc:2,v1:0;n:type:ShaderForge.SFN_Append,id:4056,x:31804,y:39607,varname:node_4056,prsc:2|A-2221-OUT,B-2707-OUT,C-2221-OUT;n:type:ShaderForge.SFN_Lerp,id:8047,x:31382,y:39812,varname:node_8047,prsc:2|A-7406-OUT,B-5785-OUT,T-8867-OUT;n:type:ShaderForge.SFN_Vector1,id:7406,x:31105,y:39746,varname:node_7406,prsc:2,v1:0;n:type:ShaderForge.SFN_Relay,id:2707,x:31670,y:39628,varname:node_2707,prsc:2|IN-8047-OUT;n:type:ShaderForge.SFN_Lerp,id:6780,x:30167,y:39666,cmnt:Distance increases over time,varname:node_6780,prsc:2|A-2213-OUT,B-2722-OUT,T-8867-OUT;n:type:ShaderForge.SFN_Vector1,id:2722,x:29990,y:39659,varname:node_2722,prsc:2,v1:0;n:type:ShaderForge.SFN_Sin,id:3247,x:30900,y:39825,varname:node_3247,prsc:2|IN-2370-OUT;n:type:ShaderForge.SFN_Lerp,id:4567,x:30589,y:39593,cmnt:Amplitude decreases over time,varname:node_4567,prsc:2|A-1018-OUT,B-1193-OUT,T-8867-OUT;n:type:ShaderForge.SFN_Vector1,id:1018,x:30393,y:39519,varname:node_1018,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:5785,x:31105,y:39810,varname:node_5785,prsc:2|A-6795-OUT,B-3247-OUT;n:type:ShaderForge.SFN_Multiply,id:6795,x:30878,y:39602,varname:node_6795,prsc:2|A-4567-OUT,B-4567-OUT;n:type:ShaderForge.SFN_Multiply,id:2370,x:30747,y:39825,varname:node_2370,prsc:2|A-6329-OUT,B-4430-OUT;n:type:ShaderForge.SFN_Lerp,id:4430,x:30589,y:39989,varname:node_4430,prsc:2|A-4954-OUT,B-2503-OUT,T-8867-OUT;n:type:ShaderForge.SFN_Vector1,id:4954,x:30401,y:39989,varname:node_4954,prsc:2,v1:0;n:type:ShaderForge.SFN_Get,id:2318,x:30146,y:39591,varname:node_2318,prsc:2|IN-4521-OUT;n:type:ShaderForge.SFN_Get,id:2213,x:29969,y:39734,varname:node_2213,prsc:2|IN-5962-OUT;n:type:ShaderForge.SFN_Get,id:2503,x:30377,y:40063,varname:node_2503,prsc:2|IN-2716-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7793,x:30167,y:39519,ptovrint:False,ptlb:ImpactForce7,ptin:_ImpactForce7,varname:_ImpactForce7,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:1193,x:30393,y:39591,varname:node_1193,prsc:2|A-7793-OUT,B-2318-OUT;n:type:ShaderForge.SFN_Vector4Property,id:2264,x:29829,y:40873,ptovrint:False,ptlb:Impact 8,ptin:_Impact8,varname:_Impact8,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_ConstantClamp,id:552,x:30012,y:40873,cmnt:Time,varname:node_552,prsc:2,min:0,max:1|IN-2264-W;n:type:ShaderForge.SFN_Distance,id:1894,x:30012,y:40705,varname:node_1894,prsc:2|A-2061-XYZ,B-2264-XYZ;n:type:ShaderForge.SFN_Negate,id:6843,x:30189,y:40705,varname:node_6843,prsc:2|IN-1894-OUT;n:type:ShaderForge.SFN_Add,id:4353,x:30421,y:40705,varname:node_4353,prsc:2|A-7820-OUT,B-6843-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:2061,x:29829,y:40705,varname:node_2061,prsc:2;n:type:ShaderForge.SFN_ConstantClamp,id:7447,x:30611,y:40708,varname:node_7447,prsc:2,min:0,max:100|IN-4353-OUT;n:type:ShaderForge.SFN_Vector1,id:7490,x:31516,y:40418,varname:node_7490,prsc:2,v1:0;n:type:ShaderForge.SFN_Append,id:236,x:31826,y:40490,varname:node_236,prsc:2|A-7490-OUT,B-9829-OUT,C-7490-OUT;n:type:ShaderForge.SFN_Lerp,id:1588,x:31404,y:40695,varname:node_1588,prsc:2|A-5438-OUT,B-8265-OUT,T-552-OUT;n:type:ShaderForge.SFN_Vector1,id:5438,x:31127,y:40629,varname:node_5438,prsc:2,v1:0;n:type:ShaderForge.SFN_Relay,id:9829,x:31692,y:40511,varname:node_9829,prsc:2|IN-1588-OUT;n:type:ShaderForge.SFN_Lerp,id:7820,x:30189,y:40549,cmnt:Distance increases over time,varname:node_7820,prsc:2|A-2680-OUT,B-5751-OUT,T-552-OUT;n:type:ShaderForge.SFN_Vector1,id:5751,x:30012,y:40542,varname:node_5751,prsc:2,v1:0;n:type:ShaderForge.SFN_Sin,id:9062,x:30922,y:40708,varname:node_9062,prsc:2|IN-7608-OUT;n:type:ShaderForge.SFN_Lerp,id:253,x:30611,y:40476,cmnt:Amplitude decreases over time,varname:node_253,prsc:2|A-2340-OUT,B-7647-OUT,T-552-OUT;n:type:ShaderForge.SFN_Vector1,id:2340,x:30415,y:40402,varname:node_2340,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:8265,x:31127,y:40693,varname:node_8265,prsc:2|A-9079-OUT,B-9062-OUT;n:type:ShaderForge.SFN_Multiply,id:9079,x:30900,y:40485,varname:node_9079,prsc:2|A-253-OUT,B-253-OUT;n:type:ShaderForge.SFN_Multiply,id:7608,x:30769,y:40708,varname:node_7608,prsc:2|A-7447-OUT,B-585-OUT;n:type:ShaderForge.SFN_Lerp,id:585,x:30611,y:40872,varname:node_585,prsc:2|A-2915-OUT,B-1798-OUT,T-552-OUT;n:type:ShaderForge.SFN_Vector1,id:2915,x:30423,y:40872,varname:node_2915,prsc:2,v1:0;n:type:ShaderForge.SFN_Get,id:2814,x:30168,y:40474,varname:node_2814,prsc:2|IN-4521-OUT;n:type:ShaderForge.SFN_Get,id:2680,x:29991,y:40617,varname:node_2680,prsc:2|IN-5962-OUT;n:type:ShaderForge.SFN_Get,id:1798,x:30399,y:40946,varname:node_1798,prsc:2|IN-2716-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6022,x:30189,y:40402,ptovrint:False,ptlb:ImpactForce8,ptin:_ImpactForce8,varname:_ImpactForce8,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:7647,x:30415,y:40474,varname:node_7647,prsc:2|A-6022-OUT,B-2814-OUT;n:type:ShaderForge.SFN_Add,id:115,x:32231,y:35608,varname:node_115,prsc:2|A-4020-OUT,B-5227-OUT,C-4056-OUT,D-236-OUT;proporder:6665-5598-3813-9435-2100-4866-8269-2465-9557-650-358-1813-319-2271-9039-724-7240-9571-6110-8192-9489-6621-2105-3856-4277-6837-9988-7093-3050-7793-2264-6022;pass:END;sub:END;*/

Shader "We Need Bees/Bees Water 8 Collisions" {
    Properties {
        _Color ("Color", Color) = (0.4233347,0.7570696,0.9926471,1)
        _Diffuse ("Diffuse", 2D) = "white" {}
        _FoamNoise ("Foam Noise", 2D) = "white" {}
        _FoamColor ("Foam Color", Color) = (1,1,1,1)
        _FoamAmount ("Foam Amount", Float ) = 5
        _WaveNoise ("Wave Noise", 2D) = "white" {}
        _WaveSize ("Wave Size", Range(0, 1)) = 0.2
        _WaveSpeed ("Wave Speed", Range(0, 20)) = 3.169134
        _DepthsColor ("Depths Color", Color) = (0.07100883,0.03649437,0.3308824,1)
        _DepthMurkiness ("Depth Murkiness", Float ) = 10
        _Metallic ("Metallic", Range(0, 1)) = 0
        _Gloss ("Gloss", Range(0, 1)) = 1
        _SurfaceSpeed ("Surface Speed", Range(-1, 1)) = 1
        _SplashDistance ("Splash Distance", Float ) = 20
        _SplashAmplitude ("Splash Amplitude", Float ) = 20
        _SplashPeriod ("Splash Period", Float ) = 1
        _Impact1 ("Impact 1", Vector) = (0,0,0,0)
        _Impact2 ("Impact 2", Vector) = (0,0,0,0)
        _Impact3 ("Impact 3", Vector) = (0,0,0,0)
        _Impact4 ("Impact 4", Vector) = (0,0,0,0)
        _ImpactForce1 ("ImpactForce1", Float ) = 1
        _ImpactForce2 ("ImpactForce2", Float ) = 1
        _ImpactForce3 ("ImpactForce3", Float ) = 1
        _ImpactForce4 ("ImpactForce4", Float ) = 1
        _Impact5 ("Impact 5", Vector) = (0,0,0,0)
        _ImpactForce5 ("ImpactForce5", Float ) = 1
        _Impact6 ("Impact 6", Vector) = (0,0,0,0)
        _ImpactForce6 ("ImpactForce6", Float ) = 1
        _Impact7 ("Impact 7", Vector) = (0,0,0,0)
        _ImpactForce7 ("ImpactForce7", Float ) = 1
        _Impact8 ("Impact 8", Vector) = (0,0,0,0)
        _ImpactForce8 ("ImpactForce8", Float ) = 1
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
            uniform float _SurfaceSpeed;
            uniform float4 _Impact1;
            uniform float _SplashDistance;
            uniform float _SplashAmplitude;
            uniform float _SplashPeriod;
            uniform float4 _Impact2;
            uniform float4 _Impact3;
            uniform float4 _Impact4;
            uniform float _ImpactForce1;
            uniform float _ImpactForce2;
            uniform float _ImpactForce3;
            uniform float _ImpactForce4;
            uniform float4 _Impact5;
            uniform float _ImpactForce5;
            uniform float4 _Impact6;
            uniform float _ImpactForce6;
            uniform float4 _Impact7;
            uniform float _ImpactForce7;
            uniform float4 _Impact8;
            uniform float _ImpactForce8;
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
                float node_1017 = 0.0;
                float SplashAmplitude = _SplashAmplitude;
                float node_7948 = clamp(_Impact1.a,0,1); // Time
                float node_8378 = lerp(0.0,(_ImpactForce1*SplashAmplitude),node_7948); // Amplitude decreases over time
                float SplashDistance = _SplashDistance; // Setters for all splash variables
                float SplashPeriod = _SplashPeriod;
                float node_9683 = 0.0;
                float node_2467 = clamp(_Impact2.a,0,1); // Time
                float node_1987 = lerp(0.0,(_ImpactForce2*SplashAmplitude),node_2467); // Amplitude decreases over time
                float node_9114 = 0.0;
                float node_5151 = clamp(_Impact3.a,0,1); // Time
                float node_7859 = lerp(0.0,(_ImpactForce3*SplashAmplitude),node_5151); // Amplitude decreases over time
                float node_5748 = 0.0;
                float node_1932 = clamp(_Impact4.a,0,1); // Time
                float node_7292 = lerp(0.0,(_ImpactForce4*SplashAmplitude),node_1932); // Amplitude decreases over time
                float node_4400 = 0.0;
                float node_2108 = clamp(_Impact5.a,0,1); // Time
                float node_201 = lerp(0.0,(_ImpactForce5*SplashAmplitude),node_2108); // Amplitude decreases over time
                float node_7825 = 0.0;
                float node_7796 = clamp(_Impact6.a,0,1); // Time
                float node_4435 = lerp(0.0,(_ImpactForce6*SplashAmplitude),node_7796); // Amplitude decreases over time
                float node_2221 = 0.0;
                float node_8867 = clamp(_Impact7.a,0,1); // Time
                float node_4567 = lerp(0.0,(_ImpactForce7*SplashAmplitude),node_8867); // Amplitude decreases over time
                float node_7490 = 0.0;
                float node_552 = clamp(_Impact8.a,0,1); // Time
                float node_253 = lerp(0.0,(_ImpactForce8*SplashAmplitude),node_552); // Amplitude decreases over time
                v.vertex.xyz += (((float3(0,1,0)*(saturate(node_7145.rgb)*1.0+-0.5))*_WaveSize)+(float3(node_1017,lerp(0.0,((node_8378*node_8378)*sin((clamp((lerp(SplashDistance,0.0,node_7948)+(-1*distance(mul(unity_ObjectToWorld, v.vertex).rgb,_Impact1.rgb))),0,100)*lerp(0.0,SplashPeriod,node_7948)))),node_7948),node_1017)+float3(node_9683,lerp(0.0,((node_1987*node_1987)*sin((clamp((lerp(SplashDistance,0.0,node_2467)+(-1*distance(mul(unity_ObjectToWorld, v.vertex).rgb,_Impact2.rgb))),0,100)*lerp(0.0,SplashPeriod,node_2467)))),node_2467),node_9683)+float3(node_9114,lerp(0.0,((node_7859*node_7859)*sin((clamp((lerp(SplashDistance,0.0,node_5151)+(-1*distance(mul(unity_ObjectToWorld, v.vertex).rgb,_Impact3.rgb))),0,100)*lerp(0.0,SplashPeriod,node_5151)))),node_5151),node_9114)+float3(node_5748,lerp(0.0,((node_7292*node_7292)*sin((clamp((lerp(SplashDistance,0.0,node_1932)+(-1*distance(mul(unity_ObjectToWorld, v.vertex).rgb,_Impact4.rgb))),0,100)*lerp(0.0,SplashPeriod,node_1932)))),node_1932),node_5748)+(float3(node_4400,lerp(0.0,((node_201*node_201)*sin((clamp((lerp(SplashDistance,0.0,node_2108)+(-1*distance(mul(unity_ObjectToWorld, v.vertex).rgb,_Impact5.rgb))),0,100)*lerp(0.0,SplashPeriod,node_2108)))),node_2108),node_4400)+float3(node_7825,lerp(0.0,((node_4435*node_4435)*sin((clamp((lerp(SplashDistance,0.0,node_7796)+(-1*distance(mul(unity_ObjectToWorld, v.vertex).rgb,_Impact6.rgb))),0,100)*lerp(0.0,SplashPeriod,node_7796)))),node_7796),node_7825)+float3(node_2221,lerp(0.0,((node_4567*node_4567)*sin((clamp((lerp(SplashDistance,0.0,node_8867)+(-1*distance(mul(unity_ObjectToWorld, v.vertex).rgb,_Impact7.rgb))),0,100)*lerp(0.0,SplashPeriod,node_8867)))),node_8867),node_2221)+float3(node_7490,lerp(0.0,((node_253*node_253)*sin((clamp((lerp(SplashDistance,0.0,node_552)+(-1*distance(mul(unity_ObjectToWorld, v.vertex).rgb,_Impact8.rgb))),0,100)*lerp(0.0,SplashPeriod,node_552)))),node_552),node_7490))));
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
                float4 node_5679 = _Time + _TimeEditor;
                float4 node_748 = tex2D(_FoamNoise,TRANSFORM_TEX(i.uv0, _FoamNoise));
                float2 node_6377 = ((((_SurfaceSpeed*node_5679.r)+node_748.rgb.rg)*0.2+-0.1)+i.uv0);
                float4 node_4135 = tex2D(_Diffuse,TRANSFORM_TEX(node_6377, _Diffuse));
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
            uniform float _SurfaceSpeed;
            uniform float4 _Impact1;
            uniform float _SplashDistance;
            uniform float _SplashAmplitude;
            uniform float _SplashPeriod;
            uniform float4 _Impact2;
            uniform float4 _Impact3;
            uniform float4 _Impact4;
            uniform float _ImpactForce1;
            uniform float _ImpactForce2;
            uniform float _ImpactForce3;
            uniform float _ImpactForce4;
            uniform float4 _Impact5;
            uniform float _ImpactForce5;
            uniform float4 _Impact6;
            uniform float _ImpactForce6;
            uniform float4 _Impact7;
            uniform float _ImpactForce7;
            uniform float4 _Impact8;
            uniform float _ImpactForce8;
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
                float node_1017 = 0.0;
                float SplashAmplitude = _SplashAmplitude;
                float node_7948 = clamp(_Impact1.a,0,1); // Time
                float node_8378 = lerp(0.0,(_ImpactForce1*SplashAmplitude),node_7948); // Amplitude decreases over time
                float SplashDistance = _SplashDistance; // Setters for all splash variables
                float SplashPeriod = _SplashPeriod;
                float node_9683 = 0.0;
                float node_2467 = clamp(_Impact2.a,0,1); // Time
                float node_1987 = lerp(0.0,(_ImpactForce2*SplashAmplitude),node_2467); // Amplitude decreases over time
                float node_9114 = 0.0;
                float node_5151 = clamp(_Impact3.a,0,1); // Time
                float node_7859 = lerp(0.0,(_ImpactForce3*SplashAmplitude),node_5151); // Amplitude decreases over time
                float node_5748 = 0.0;
                float node_1932 = clamp(_Impact4.a,0,1); // Time
                float node_7292 = lerp(0.0,(_ImpactForce4*SplashAmplitude),node_1932); // Amplitude decreases over time
                float node_4400 = 0.0;
                float node_2108 = clamp(_Impact5.a,0,1); // Time
                float node_201 = lerp(0.0,(_ImpactForce5*SplashAmplitude),node_2108); // Amplitude decreases over time
                float node_7825 = 0.0;
                float node_7796 = clamp(_Impact6.a,0,1); // Time
                float node_4435 = lerp(0.0,(_ImpactForce6*SplashAmplitude),node_7796); // Amplitude decreases over time
                float node_2221 = 0.0;
                float node_8867 = clamp(_Impact7.a,0,1); // Time
                float node_4567 = lerp(0.0,(_ImpactForce7*SplashAmplitude),node_8867); // Amplitude decreases over time
                float node_7490 = 0.0;
                float node_552 = clamp(_Impact8.a,0,1); // Time
                float node_253 = lerp(0.0,(_ImpactForce8*SplashAmplitude),node_552); // Amplitude decreases over time
                v.vertex.xyz += (((float3(0,1,0)*(saturate(node_7145.rgb)*1.0+-0.5))*_WaveSize)+(float3(node_1017,lerp(0.0,((node_8378*node_8378)*sin((clamp((lerp(SplashDistance,0.0,node_7948)+(-1*distance(mul(unity_ObjectToWorld, v.vertex).rgb,_Impact1.rgb))),0,100)*lerp(0.0,SplashPeriod,node_7948)))),node_7948),node_1017)+float3(node_9683,lerp(0.0,((node_1987*node_1987)*sin((clamp((lerp(SplashDistance,0.0,node_2467)+(-1*distance(mul(unity_ObjectToWorld, v.vertex).rgb,_Impact2.rgb))),0,100)*lerp(0.0,SplashPeriod,node_2467)))),node_2467),node_9683)+float3(node_9114,lerp(0.0,((node_7859*node_7859)*sin((clamp((lerp(SplashDistance,0.0,node_5151)+(-1*distance(mul(unity_ObjectToWorld, v.vertex).rgb,_Impact3.rgb))),0,100)*lerp(0.0,SplashPeriod,node_5151)))),node_5151),node_9114)+float3(node_5748,lerp(0.0,((node_7292*node_7292)*sin((clamp((lerp(SplashDistance,0.0,node_1932)+(-1*distance(mul(unity_ObjectToWorld, v.vertex).rgb,_Impact4.rgb))),0,100)*lerp(0.0,SplashPeriod,node_1932)))),node_1932),node_5748)+(float3(node_4400,lerp(0.0,((node_201*node_201)*sin((clamp((lerp(SplashDistance,0.0,node_2108)+(-1*distance(mul(unity_ObjectToWorld, v.vertex).rgb,_Impact5.rgb))),0,100)*lerp(0.0,SplashPeriod,node_2108)))),node_2108),node_4400)+float3(node_7825,lerp(0.0,((node_4435*node_4435)*sin((clamp((lerp(SplashDistance,0.0,node_7796)+(-1*distance(mul(unity_ObjectToWorld, v.vertex).rgb,_Impact6.rgb))),0,100)*lerp(0.0,SplashPeriod,node_7796)))),node_7796),node_7825)+float3(node_2221,lerp(0.0,((node_4567*node_4567)*sin((clamp((lerp(SplashDistance,0.0,node_8867)+(-1*distance(mul(unity_ObjectToWorld, v.vertex).rgb,_Impact7.rgb))),0,100)*lerp(0.0,SplashPeriod,node_8867)))),node_8867),node_2221)+float3(node_7490,lerp(0.0,((node_253*node_253)*sin((clamp((lerp(SplashDistance,0.0,node_552)+(-1*distance(mul(unity_ObjectToWorld, v.vertex).rgb,_Impact8.rgb))),0,100)*lerp(0.0,SplashPeriod,node_552)))),node_552),node_7490))));
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
                float4 node_5679 = _Time + _TimeEditor;
                float4 node_748 = tex2D(_FoamNoise,TRANSFORM_TEX(i.uv0, _FoamNoise));
                float2 node_6377 = ((((_SurfaceSpeed*node_5679.r)+node_748.rgb.rg)*0.2+-0.1)+i.uv0);
                float4 node_4135 = tex2D(_Diffuse,TRANSFORM_TEX(node_6377, _Diffuse));
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
            uniform float4 _Impact1;
            uniform float _SplashDistance;
            uniform float _SplashAmplitude;
            uniform float _SplashPeriod;
            uniform float4 _Impact2;
            uniform float4 _Impact3;
            uniform float4 _Impact4;
            uniform float _ImpactForce1;
            uniform float _ImpactForce2;
            uniform float _ImpactForce3;
            uniform float _ImpactForce4;
            uniform float4 _Impact5;
            uniform float _ImpactForce5;
            uniform float4 _Impact6;
            uniform float _ImpactForce6;
            uniform float4 _Impact7;
            uniform float _ImpactForce7;
            uniform float4 _Impact8;
            uniform float _ImpactForce8;
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
                float node_1017 = 0.0;
                float SplashAmplitude = _SplashAmplitude;
                float node_7948 = clamp(_Impact1.a,0,1); // Time
                float node_8378 = lerp(0.0,(_ImpactForce1*SplashAmplitude),node_7948); // Amplitude decreases over time
                float SplashDistance = _SplashDistance; // Setters for all splash variables
                float SplashPeriod = _SplashPeriod;
                float node_9683 = 0.0;
                float node_2467 = clamp(_Impact2.a,0,1); // Time
                float node_1987 = lerp(0.0,(_ImpactForce2*SplashAmplitude),node_2467); // Amplitude decreases over time
                float node_9114 = 0.0;
                float node_5151 = clamp(_Impact3.a,0,1); // Time
                float node_7859 = lerp(0.0,(_ImpactForce3*SplashAmplitude),node_5151); // Amplitude decreases over time
                float node_5748 = 0.0;
                float node_1932 = clamp(_Impact4.a,0,1); // Time
                float node_7292 = lerp(0.0,(_ImpactForce4*SplashAmplitude),node_1932); // Amplitude decreases over time
                float node_4400 = 0.0;
                float node_2108 = clamp(_Impact5.a,0,1); // Time
                float node_201 = lerp(0.0,(_ImpactForce5*SplashAmplitude),node_2108); // Amplitude decreases over time
                float node_7825 = 0.0;
                float node_7796 = clamp(_Impact6.a,0,1); // Time
                float node_4435 = lerp(0.0,(_ImpactForce6*SplashAmplitude),node_7796); // Amplitude decreases over time
                float node_2221 = 0.0;
                float node_8867 = clamp(_Impact7.a,0,1); // Time
                float node_4567 = lerp(0.0,(_ImpactForce7*SplashAmplitude),node_8867); // Amplitude decreases over time
                float node_7490 = 0.0;
                float node_552 = clamp(_Impact8.a,0,1); // Time
                float node_253 = lerp(0.0,(_ImpactForce8*SplashAmplitude),node_552); // Amplitude decreases over time
                v.vertex.xyz += (((float3(0,1,0)*(saturate(node_7145.rgb)*1.0+-0.5))*_WaveSize)+(float3(node_1017,lerp(0.0,((node_8378*node_8378)*sin((clamp((lerp(SplashDistance,0.0,node_7948)+(-1*distance(mul(unity_ObjectToWorld, v.vertex).rgb,_Impact1.rgb))),0,100)*lerp(0.0,SplashPeriod,node_7948)))),node_7948),node_1017)+float3(node_9683,lerp(0.0,((node_1987*node_1987)*sin((clamp((lerp(SplashDistance,0.0,node_2467)+(-1*distance(mul(unity_ObjectToWorld, v.vertex).rgb,_Impact2.rgb))),0,100)*lerp(0.0,SplashPeriod,node_2467)))),node_2467),node_9683)+float3(node_9114,lerp(0.0,((node_7859*node_7859)*sin((clamp((lerp(SplashDistance,0.0,node_5151)+(-1*distance(mul(unity_ObjectToWorld, v.vertex).rgb,_Impact3.rgb))),0,100)*lerp(0.0,SplashPeriod,node_5151)))),node_5151),node_9114)+float3(node_5748,lerp(0.0,((node_7292*node_7292)*sin((clamp((lerp(SplashDistance,0.0,node_1932)+(-1*distance(mul(unity_ObjectToWorld, v.vertex).rgb,_Impact4.rgb))),0,100)*lerp(0.0,SplashPeriod,node_1932)))),node_1932),node_5748)+(float3(node_4400,lerp(0.0,((node_201*node_201)*sin((clamp((lerp(SplashDistance,0.0,node_2108)+(-1*distance(mul(unity_ObjectToWorld, v.vertex).rgb,_Impact5.rgb))),0,100)*lerp(0.0,SplashPeriod,node_2108)))),node_2108),node_4400)+float3(node_7825,lerp(0.0,((node_4435*node_4435)*sin((clamp((lerp(SplashDistance,0.0,node_7796)+(-1*distance(mul(unity_ObjectToWorld, v.vertex).rgb,_Impact6.rgb))),0,100)*lerp(0.0,SplashPeriod,node_7796)))),node_7796),node_7825)+float3(node_2221,lerp(0.0,((node_4567*node_4567)*sin((clamp((lerp(SplashDistance,0.0,node_8867)+(-1*distance(mul(unity_ObjectToWorld, v.vertex).rgb,_Impact7.rgb))),0,100)*lerp(0.0,SplashPeriod,node_8867)))),node_8867),node_2221)+float3(node_7490,lerp(0.0,((node_253*node_253)*sin((clamp((lerp(SplashDistance,0.0,node_552)+(-1*distance(mul(unity_ObjectToWorld, v.vertex).rgb,_Impact8.rgb))),0,100)*lerp(0.0,SplashPeriod,node_552)))),node_552),node_7490))));
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
            uniform float _SurfaceSpeed;
            uniform float4 _Impact1;
            uniform float _SplashDistance;
            uniform float _SplashAmplitude;
            uniform float _SplashPeriod;
            uniform float4 _Impact2;
            uniform float4 _Impact3;
            uniform float4 _Impact4;
            uniform float _ImpactForce1;
            uniform float _ImpactForce2;
            uniform float _ImpactForce3;
            uniform float _ImpactForce4;
            uniform float4 _Impact5;
            uniform float _ImpactForce5;
            uniform float4 _Impact6;
            uniform float _ImpactForce6;
            uniform float4 _Impact7;
            uniform float _ImpactForce7;
            uniform float4 _Impact8;
            uniform float _ImpactForce8;
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
                float node_1017 = 0.0;
                float SplashAmplitude = _SplashAmplitude;
                float node_7948 = clamp(_Impact1.a,0,1); // Time
                float node_8378 = lerp(0.0,(_ImpactForce1*SplashAmplitude),node_7948); // Amplitude decreases over time
                float SplashDistance = _SplashDistance; // Setters for all splash variables
                float SplashPeriod = _SplashPeriod;
                float node_9683 = 0.0;
                float node_2467 = clamp(_Impact2.a,0,1); // Time
                float node_1987 = lerp(0.0,(_ImpactForce2*SplashAmplitude),node_2467); // Amplitude decreases over time
                float node_9114 = 0.0;
                float node_5151 = clamp(_Impact3.a,0,1); // Time
                float node_7859 = lerp(0.0,(_ImpactForce3*SplashAmplitude),node_5151); // Amplitude decreases over time
                float node_5748 = 0.0;
                float node_1932 = clamp(_Impact4.a,0,1); // Time
                float node_7292 = lerp(0.0,(_ImpactForce4*SplashAmplitude),node_1932); // Amplitude decreases over time
                float node_4400 = 0.0;
                float node_2108 = clamp(_Impact5.a,0,1); // Time
                float node_201 = lerp(0.0,(_ImpactForce5*SplashAmplitude),node_2108); // Amplitude decreases over time
                float node_7825 = 0.0;
                float node_7796 = clamp(_Impact6.a,0,1); // Time
                float node_4435 = lerp(0.0,(_ImpactForce6*SplashAmplitude),node_7796); // Amplitude decreases over time
                float node_2221 = 0.0;
                float node_8867 = clamp(_Impact7.a,0,1); // Time
                float node_4567 = lerp(0.0,(_ImpactForce7*SplashAmplitude),node_8867); // Amplitude decreases over time
                float node_7490 = 0.0;
                float node_552 = clamp(_Impact8.a,0,1); // Time
                float node_253 = lerp(0.0,(_ImpactForce8*SplashAmplitude),node_552); // Amplitude decreases over time
                v.vertex.xyz += (((float3(0,1,0)*(saturate(node_7145.rgb)*1.0+-0.5))*_WaveSize)+(float3(node_1017,lerp(0.0,((node_8378*node_8378)*sin((clamp((lerp(SplashDistance,0.0,node_7948)+(-1*distance(mul(unity_ObjectToWorld, v.vertex).rgb,_Impact1.rgb))),0,100)*lerp(0.0,SplashPeriod,node_7948)))),node_7948),node_1017)+float3(node_9683,lerp(0.0,((node_1987*node_1987)*sin((clamp((lerp(SplashDistance,0.0,node_2467)+(-1*distance(mul(unity_ObjectToWorld, v.vertex).rgb,_Impact2.rgb))),0,100)*lerp(0.0,SplashPeriod,node_2467)))),node_2467),node_9683)+float3(node_9114,lerp(0.0,((node_7859*node_7859)*sin((clamp((lerp(SplashDistance,0.0,node_5151)+(-1*distance(mul(unity_ObjectToWorld, v.vertex).rgb,_Impact3.rgb))),0,100)*lerp(0.0,SplashPeriod,node_5151)))),node_5151),node_9114)+float3(node_5748,lerp(0.0,((node_7292*node_7292)*sin((clamp((lerp(SplashDistance,0.0,node_1932)+(-1*distance(mul(unity_ObjectToWorld, v.vertex).rgb,_Impact4.rgb))),0,100)*lerp(0.0,SplashPeriod,node_1932)))),node_1932),node_5748)+(float3(node_4400,lerp(0.0,((node_201*node_201)*sin((clamp((lerp(SplashDistance,0.0,node_2108)+(-1*distance(mul(unity_ObjectToWorld, v.vertex).rgb,_Impact5.rgb))),0,100)*lerp(0.0,SplashPeriod,node_2108)))),node_2108),node_4400)+float3(node_7825,lerp(0.0,((node_4435*node_4435)*sin((clamp((lerp(SplashDistance,0.0,node_7796)+(-1*distance(mul(unity_ObjectToWorld, v.vertex).rgb,_Impact6.rgb))),0,100)*lerp(0.0,SplashPeriod,node_7796)))),node_7796),node_7825)+float3(node_2221,lerp(0.0,((node_4567*node_4567)*sin((clamp((lerp(SplashDistance,0.0,node_8867)+(-1*distance(mul(unity_ObjectToWorld, v.vertex).rgb,_Impact7.rgb))),0,100)*lerp(0.0,SplashPeriod,node_8867)))),node_8867),node_2221)+float3(node_7490,lerp(0.0,((node_253*node_253)*sin((clamp((lerp(SplashDistance,0.0,node_552)+(-1*distance(mul(unity_ObjectToWorld, v.vertex).rgb,_Impact8.rgb))),0,100)*lerp(0.0,SplashPeriod,node_552)))),node_552),node_7490))));
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
                
                float4 node_5679 = _Time + _TimeEditor;
                float4 node_748 = tex2D(_FoamNoise,TRANSFORM_TEX(i.uv0, _FoamNoise));
                float2 node_6377 = ((((_SurfaceSpeed*node_5679.r)+node_748.rgb.rg)*0.2+-0.1)+i.uv0);
                float4 node_4135 = tex2D(_Diffuse,TRANSFORM_TEX(node_6377, _Diffuse));
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
