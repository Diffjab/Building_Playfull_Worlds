// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.20 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.20;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:4013,x:33059,y:32700,varname:node_4013,prsc:2|diff-1632-RGB,spec-2207-OUT,gloss-9530-OUT,normal-4544-OUT,amspl-3380-OUT,difocc-2207-OUT,voffset-7486-OUT;n:type:ShaderForge.SFN_Color,id:1632,x:32050,y:32444,ptovrint:False,ptlb:WaterColor,ptin:_WaterColor,varname:node_1632,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2884408,c2:0.4495697,c3:0.7132353,c4:1;n:type:ShaderForge.SFN_TexCoord,id:4345,x:30994,y:32677,varname:node_4345,prsc:2,uv:0;n:type:ShaderForge.SFN_Time,id:632,x:30994,y:32835,varname:node_632,prsc:2;n:type:ShaderForge.SFN_Slider,id:7791,x:30990,y:33386,ptovrint:False,ptlb:WaterSpeed2,ptin:_WaterSpeed2,varname:node_7791,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.03,max:0.1;n:type:ShaderForge.SFN_Tex2d,id:5853,x:31822,y:32678,ptovrint:False,ptlb:WaterNormal1,ptin:_WaterNormal1,varname:node_5853,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:a48da1ded32626c47bcd0066d645df33,ntxv:0,isnm:False|UVIN-6274-OUT;n:type:ShaderForge.SFN_Multiply,id:7287,x:31329,y:32909,varname:node_7287,prsc:2|A-632-T,B-6257-OUT;n:type:ShaderForge.SFN_Slider,id:6257,x:30992,y:32986,ptovrint:False,ptlb:WaterSpeed1,ptin:_WaterSpeed1,varname:node_6257,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.02,max:0.1;n:type:ShaderForge.SFN_Add,id:6274,x:31645,y:32678,varname:node_6274,prsc:2|A-4345-UVOUT,B-3700-OUT;n:type:ShaderForge.SFN_Tex2d,id:7276,x:31826,y:33073,ptovrint:False,ptlb:WaterNormal2,ptin:_WaterNormal2,varname:node_7276,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:6953b8bfbb6a2e04f82cd0bf6fb7183b,ntxv:0,isnm:False|UVIN-260-OUT;n:type:ShaderForge.SFN_Add,id:4544,x:32524,y:33028,varname:node_4544,prsc:2|A-1940-OUT,B-6870-OUT;n:type:ShaderForge.SFN_Time,id:7035,x:30990,y:33211,varname:node_7035,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7630,x:31334,y:33310,varname:node_7630,prsc:2|A-7035-T,B-7791-OUT;n:type:ShaderForge.SFN_TexCoord,id:1341,x:30990,y:33075,varname:node_1341,prsc:2,uv:0;n:type:ShaderForge.SFN_Add,id:260,x:31648,y:33073,varname:node_260,prsc:2|A-1341-UVOUT,B-8711-OUT;n:type:ShaderForge.SFN_Sin,id:1940,x:32226,y:32725,varname:node_1940,prsc:2|IN-9931-OUT;n:type:ShaderForge.SFN_Abs,id:3700,x:31484,y:32909,varname:node_3700,prsc:2|IN-7287-OUT;n:type:ShaderForge.SFN_Clamp01,id:6870,x:32349,y:33028,varname:node_6870,prsc:2|IN-9128-OUT;n:type:ShaderForge.SFN_Fresnel,id:1074,x:32344,y:33160,varname:node_1074,prsc:2|NRM-9128-OUT;n:type:ShaderForge.SFN_Fresnel,id:8047,x:32050,y:32595,varname:node_8047,prsc:2|NRM-5853-RGB;n:type:ShaderForge.SFN_Add,id:7905,x:32524,y:33160,varname:node_7905,prsc:2|A-8047-OUT,B-1074-OUT;n:type:ShaderForge.SFN_Abs,id:8711,x:31492,y:33310,varname:node_8711,prsc:2|IN-7630-OUT;n:type:ShaderForge.SFN_Slider,id:7551,x:32349,y:33306,ptovrint:False,ptlb:Speculair Value,ptin:_SpeculairValue,varname:node_7551,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1623932,max:1;n:type:ShaderForge.SFN_Multiply,id:9530,x:32716,y:33158,varname:node_9530,prsc:2|A-7905-OUT,B-7551-OUT;n:type:ShaderForge.SFN_Multiply,id:9931,x:32050,y:32725,varname:node_9931,prsc:2|A-5853-RGB,B-7936-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7936,x:31822,y:32595,ptovrint:False,ptlb:node_7936,ptin:_node_7936,varname:node_7936,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_Multiply,id:9128,x:32050,y:33028,varname:node_9128,prsc:2|A-7276-RGB,B-1815-OUT;n:type:ShaderForge.SFN_Vector1,id:1815,x:31827,y:33247,varname:node_1815,prsc:2,v1:0.3;n:type:ShaderForge.SFN_Blend,id:2207,x:32050,y:32857,varname:node_2207,prsc:2,blmd:2,clmp:True|SRC-5853-R,DST-7276-R;n:type:ShaderForge.SFN_Tex2d,id:3302,x:32349,y:33500,ptovrint:False,ptlb:node_3302,ptin:_node_3302,varname:node_3302,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:93c0ad60f1d57b444b9675ac2b619dc4,ntxv:0,isnm:False|UVIN-3913-OUT;n:type:ShaderForge.SFN_Time,id:7992,x:31561,y:33642,varname:node_7992,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:3390,x:31561,y:33499,varname:node_3390,prsc:2,uv:0;n:type:ShaderForge.SFN_Slider,id:8740,x:31561,y:33799,ptovrint:False,ptlb:Speed Disp,ptin:_SpeedDisp,varname:node_8740,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.007,max:1;n:type:ShaderForge.SFN_Add,id:3913,x:32056,y:33500,varname:node_3913,prsc:2|A-3390-UVOUT,B-5622-OUT;n:type:ShaderForge.SFN_Multiply,id:5622,x:31889,y:33730,varname:node_5622,prsc:2|A-7992-T,B-8740-OUT;n:type:ShaderForge.SFN_Vector1,id:9403,x:32349,y:33657,varname:node_9403,prsc:2,v1:1;n:type:ShaderForge.SFN_Power,id:3380,x:32638,y:33502,varname:node_3380,prsc:2|VAL-3302-RGB,EXP-9403-OUT;n:type:ShaderForge.SFN_Multiply,id:7486,x:32638,y:33375,varname:node_7486,prsc:2|A-3302-RGB,B-8487-OUT;n:type:ShaderForge.SFN_Slider,id:8487,x:32056,y:33396,ptovrint:False,ptlb:Water Offset,ptin:_WaterOffset,varname:node_8487,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;proporder:1632-7791-5853-6257-7276-7551-7936-3302-8740-8487;pass:END;sub:END;*/

Shader "Shader Forge/WaterStuff" {
    Properties {
        _WaterColor ("WaterColor", Color) = (0.2884408,0.4495697,0.7132353,1)
        _WaterSpeed2 ("WaterSpeed2", Range(0, 0.1)) = 0.03
        _WaterNormal1 ("WaterNormal1", 2D) = "white" {}
        _WaterSpeed1 ("WaterSpeed1", Range(0, 0.1)) = 0.02
        _WaterNormal2 ("WaterNormal2", 2D) = "white" {}
        _SpeculairValue ("Speculair Value", Range(0, 1)) = 0.1623932
        _node_7936 ("node_7936", Float ) = 0.2
        _node_3302 ("node_3302", 2D) = "white" {}
        _SpeedDisp ("Speed Disp", Range(0, 1)) = 0.007
        _WaterOffset ("Water Offset", Range(0, 1)) = 0.5
    }
    SubShader {
        Tags {
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
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform float4 _WaterColor;
            uniform float _WaterSpeed2;
            uniform sampler2D _WaterNormal1; uniform float4 _WaterNormal1_ST;
            uniform float _WaterSpeed1;
            uniform sampler2D _WaterNormal2; uniform float4 _WaterNormal2_ST;
            uniform float _SpeculairValue;
            uniform float _node_7936;
            uniform sampler2D _node_3302; uniform float4 _node_3302_ST;
            uniform float _SpeedDisp;
            uniform float _WaterOffset;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_7992 = _Time + _TimeEditor;
                float2 node_3913 = (o.uv0+(node_7992.g*_SpeedDisp));
                float4 _node_3302_var = tex2Dlod(_node_3302,float4(TRANSFORM_TEX(node_3913, _node_3302),0.0,0));
                v.vertex.xyz += (_node_3302_var.rgb*_WaterOffset);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_632 = _Time + _TimeEditor;
                float2 node_6274 = (i.uv0+abs((node_632.g*_WaterSpeed1)));
                float4 _WaterNormal1_var = tex2D(_WaterNormal1,TRANSFORM_TEX(node_6274, _WaterNormal1));
                float4 node_7035 = _Time + _TimeEditor;
                float2 node_260 = (i.uv0+abs((node_7035.g*_WaterSpeed2)));
                float4 _WaterNormal2_var = tex2D(_WaterNormal2,TRANSFORM_TEX(node_260, _WaterNormal2));
                float3 node_9128 = (_WaterNormal2_var.rgb*0.3);
                float3 normalLocal = (sin((_WaterNormal1_var.rgb*_node_7936))+saturate(node_9128));
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = (((1.0-max(0,dot(_WaterNormal1_var.rgb, viewDirection)))+(1.0-max(0,dot(node_9128, viewDirection))))*_SpeculairValue);
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float4 node_7992 = _Time + _TimeEditor;
                float2 node_3913 = (i.uv0+(node_7992.g*_SpeedDisp));
                float4 _node_3302_var = tex2D(_node_3302,TRANSFORM_TEX(node_3913, _node_3302));
                float node_2207 = saturate((1.0-((1.0-_WaterNormal2_var.r)/_WaterNormal1_var.r)));
                float3 specularColor = float3(node_2207,node_2207,node_2207);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 indirectSpecular = (0 + pow(_node_3302_var.rgb,1.0))*specularColor;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                indirectDiffuse *= node_2207; // Diffuse AO
                float3 diffuseColor = _WaterColor.rgb;
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
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform float4 _WaterColor;
            uniform float _WaterSpeed2;
            uniform sampler2D _WaterNormal1; uniform float4 _WaterNormal1_ST;
            uniform float _WaterSpeed1;
            uniform sampler2D _WaterNormal2; uniform float4 _WaterNormal2_ST;
            uniform float _SpeculairValue;
            uniform float _node_7936;
            uniform sampler2D _node_3302; uniform float4 _node_3302_ST;
            uniform float _SpeedDisp;
            uniform float _WaterOffset;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_7992 = _Time + _TimeEditor;
                float2 node_3913 = (o.uv0+(node_7992.g*_SpeedDisp));
                float4 _node_3302_var = tex2Dlod(_node_3302,float4(TRANSFORM_TEX(node_3913, _node_3302),0.0,0));
                v.vertex.xyz += (_node_3302_var.rgb*_WaterOffset);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_632 = _Time + _TimeEditor;
                float2 node_6274 = (i.uv0+abs((node_632.g*_WaterSpeed1)));
                float4 _WaterNormal1_var = tex2D(_WaterNormal1,TRANSFORM_TEX(node_6274, _WaterNormal1));
                float4 node_7035 = _Time + _TimeEditor;
                float2 node_260 = (i.uv0+abs((node_7035.g*_WaterSpeed2)));
                float4 _WaterNormal2_var = tex2D(_WaterNormal2,TRANSFORM_TEX(node_260, _WaterNormal2));
                float3 node_9128 = (_WaterNormal2_var.rgb*0.3);
                float3 normalLocal = (sin((_WaterNormal1_var.rgb*_node_7936))+saturate(node_9128));
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = (((1.0-max(0,dot(_WaterNormal1_var.rgb, viewDirection)))+(1.0-max(0,dot(node_9128, viewDirection))))*_SpeculairValue);
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float node_2207 = saturate((1.0-((1.0-_WaterNormal2_var.r)/_WaterNormal1_var.r)));
                float3 specularColor = float3(node_2207,node_2207,node_2207);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 diffuseColor = _WaterColor.rgb;
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
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform sampler2D _node_3302; uniform float4 _node_3302_ST;
            uniform float _SpeedDisp;
            uniform float _WaterOffset;
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
                float4 node_7992 = _Time + _TimeEditor;
                float2 node_3913 = (o.uv0+(node_7992.g*_SpeedDisp));
                float4 _node_3302_var = tex2Dlod(_node_3302,float4(TRANSFORM_TEX(node_3913, _node_3302),0.0,0));
                v.vertex.xyz += (_node_3302_var.rgb*_WaterOffset);
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
