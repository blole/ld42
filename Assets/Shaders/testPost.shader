// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:False,rpth:1,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:6,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:1,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:34317,y:33387,varname:node_2865,prsc:2|emission-1852-OUT;n:type:ShaderForge.SFN_TexCoord,id:4219,x:31938,y:33237,cmnt:Default coordinates,varname:node_4219,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Relay,id:8397,x:32163,y:33237,cmnt:Refract here,varname:node_8397,prsc:2|IN-4219-UVOUT;n:type:ShaderForge.SFN_Relay,id:4676,x:32523,y:33354,cmnt:Modify color here,varname:node_4676,prsc:2|IN-7542-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:4430,x:31938,y:33424,ptovrint:False,ptlb:MainTex,ptin:_MainTex,cmnt:MainTex contains the color of the scene,varname:node_9933,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7542,x:32341,y:33354,varname:node_1672,prsc:2,ntxv:0,isnm:False|UVIN-8397-OUT,TEX-4430-TEX;n:type:ShaderForge.SFN_Multiply,id:4933,x:32732,y:33488,varname:node_4933,prsc:2|A-4676-OUT,B-122-RGB;n:type:ShaderForge.SFN_Color,id:122,x:32400,y:33707,ptovrint:False,ptlb:tint,ptin:_tint,varname:node_122,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2d,id:2837,x:32734,y:33878,ptovrint:False,ptlb:LastFrame,ptin:_LastFrame,varname:node_2837,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:668812df7582d344893d90b4012ed8f8,ntxv:0,isnm:False|UVIN-4057-UVOUT;n:type:ShaderForge.SFN_Add,id:2581,x:33348,y:33601,varname:node_2581,prsc:2|A-4933-OUT,B-3508-OUT;n:type:ShaderForge.SFN_Multiply,id:1733,x:33403,y:34133,varname:node_1733,prsc:2|A-5525-OUT,B-5090-OUT;n:type:ShaderForge.SFN_Vector1,id:4640,x:32621,y:34089,varname:node_4640,prsc:2,v1:0.1;n:type:ShaderForge.SFN_TexCoord,id:4057,x:31825,y:33946,varname:node_4057,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_OneMinus,id:9382,x:32206,y:34299,varname:node_9382,prsc:2|IN-4057-V;n:type:ShaderForge.SFN_Append,id:468,x:32206,y:34118,varname:node_468,prsc:2|A-4057-U,B-9382-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5090,x:32896,y:34346,ptovrint:False,ptlb:blast,ptin:_blast,varname:node_5090,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Power,id:5525,x:33060,y:33925,varname:node_5525,prsc:2|VAL-2837-RGB,EXP-8052-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8052,x:32665,y:34189,ptovrint:False,ptlb:blastexp,ptin:_blastexp,varname:node_8052,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_Clamp01,id:8528,x:33728,y:34059,varname:node_8528,prsc:2|IN-1733-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1808,x:33290,y:33818,ptovrint:False,ptlb:blastf,ptin:_blastf,varname:node_1808,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.9;n:type:ShaderForge.SFN_Multiply,id:3508,x:33697,y:33797,varname:node_3508,prsc:2|A-8528-OUT,B-1808-OUT;n:type:ShaderForge.SFN_Blend,id:1852,x:33776,y:33465,varname:node_1852,prsc:2,blmd:5,clmp:True|SRC-4933-OUT,DST-3508-OUT;proporder:4430-122-2837-5090-8052-1808;pass:END;sub:END;*/

Shader "Klosterliv/testPost" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _tint ("tint", Color) = (0.5,0.5,0.5,1)
        _LastFrame ("LastFrame", 2D) = "white" {}
        _blast ("blast", Float ) = 0
        _blastexp ("blastexp", Float ) = 3
        _blastf ("blastf", Float ) = 0.9
    }
    SubShader {
        Tags {
            "Queue"="Geometry+1"
            "RenderType"="Opaque"
        }
        Pass {
            Name "DEFERRED"
            Tags {
                "LightMode"="Deferred"
            }
            ZTest Always
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_DEFERRED
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile ___ UNITY_HDR_ON
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _tint;
            uniform sampler2D _LastFrame; uniform float4 _LastFrame_ST;
            uniform float _blast;
            uniform float _blastexp;
            uniform float _blastf;
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
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            void frag(
                VertexOutput i,
                out half4 outDiffuse : SV_Target0,
                out half4 outSpecSmoothness : SV_Target1,
                out half4 outNormal : SV_Target2,
                out half4 outEmission : SV_Target3 )
            {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
////// Lighting:
////// Emissive:
                float2 node_8397 = i.uv0; // Refract here
                float4 node_1672 = tex2D(_MainTex,TRANSFORM_TEX(node_8397, _MainTex));
                float3 node_4933 = (node_1672.rgb*_tint.rgb);
                float4 _LastFrame_var = tex2D(_LastFrame,TRANSFORM_TEX(i.uv0, _LastFrame));
                float3 node_3508 = (saturate((pow(_LastFrame_var.rgb,_blastexp)*_blast))*_blastf);
                float3 emissive = saturate(max(node_4933,node_3508));
                float3 finalColor = emissive;
                outDiffuse = half4( 0, 0, 0, 1 );
                outSpecSmoothness = half4(0,0,0,0);
                outNormal = half4( normalDirection * 0.5 + 0.5, 1 );
                outEmission = half4( saturate(max(node_4933,node_3508)), 1 );
                #ifndef UNITY_HDR_ON
                    outEmission.rgb = exp2(-outEmission.rgb);
                #endif
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            ZTest Always
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _tint;
            uniform sampler2D _LastFrame; uniform float4 _LastFrame_ST;
            uniform float _blast;
            uniform float _blastexp;
            uniform float _blastf;
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
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
////// Lighting:
////// Emissive:
                float2 node_8397 = i.uv0; // Refract here
                float4 node_1672 = tex2D(_MainTex,TRANSFORM_TEX(node_8397, _MainTex));
                float3 node_4933 = (node_1672.rgb*_tint.rgb);
                float4 _LastFrame_var = tex2D(_LastFrame,TRANSFORM_TEX(i.uv0, _LastFrame));
                float3 node_3508 = (saturate((pow(_LastFrame_var.rgb,_blastexp)*_blast))*_blastf);
                float3 emissive = saturate(max(node_4933,node_3508));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
