// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33816,y:32985,varname:node_3138,prsc:2|emission-6747-OUT,alpha-5212-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32492,y:32752,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_TexCoord,id:9608,x:32186,y:32816,varname:node_9608,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:2088,x:32693,y:32934,ptovrint:False,ptlb:node_2088,ptin:_node_2088,varname:node_2088,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:55e79b5c0f101a048bc20b8ba30672d8,ntxv:0,isnm:False|UVIN-3635-UVOUT;n:type:ShaderForge.SFN_Panner,id:3635,x:32443,y:32990,varname:node_3635,prsc:2,spu:1,spv:0|UVIN-9608-UVOUT,DIST-6163-OUT;n:type:ShaderForge.SFN_Time,id:1975,x:31948,y:32979,varname:node_1975,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6747,x:32921,y:32837,varname:node_6747,prsc:2|A-7241-RGB,B-2088-RGB;n:type:ShaderForge.SFN_ValueProperty,id:4847,x:31968,y:33202,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:node_4847,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.3;n:type:ShaderForge.SFN_Multiply,id:6163,x:32196,y:33123,varname:node_6163,prsc:2|A-1975-T,B-4847-OUT;n:type:ShaderForge.SFN_Tex2d,id:1250,x:32683,y:33300,ptovrint:False,ptlb:alpha,ptin:_alpha,varname:node_1250,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-7930-UVOUT;n:type:ShaderForge.SFN_ValueProperty,id:554,x:32776,y:33570,ptovrint:False,ptlb:alpha pow,ptin:_alphapow,varname:node_554,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Power,id:8935,x:33310,y:33448,varname:node_8935,prsc:2|VAL-8470-OUT,EXP-554-OUT;n:type:ShaderForge.SFN_ValueProperty,id:510,x:32867,y:33291,ptovrint:False,ptlb:mult,ptin:_mult,varname:node_510,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:8470,x:33042,y:33338,varname:node_8470,prsc:2|A-510-OUT,B-1250-R;n:type:ShaderForge.SFN_Panner,id:7930,x:32470,y:33367,varname:node_7930,prsc:2,spu:1,spv:0|UVIN-9608-UVOUT,DIST-5294-OUT;n:type:ShaderForge.SFN_ValueProperty,id:351,x:32044,y:33478,ptovrint:False,ptlb:SpeedClip,ptin:_SpeedClip,varname:node_351,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:5294,x:32226,y:33377,varname:node_5294,prsc:2|A-1975-T,B-351-OUT;n:type:ShaderForge.SFN_Clamp01,id:5212,x:33566,y:33359,varname:node_5212,prsc:2|IN-8935-OUT;proporder:7241-2088-4847-1250-554-510-351;pass:END;sub:END;*/

Shader "Klosterliv/panner" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _node_2088 ("node_2088", 2D) = "white" {}
        _Speed ("Speed", Float ) = 0.3
        _alpha ("alpha", 2D) = "white" {}
        _alphapow ("alpha pow", Float ) = 1
        _mult ("mult", Float ) = 1
        _SpeedClip ("SpeedClip", Float ) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _node_2088; uniform float4 _node_2088_ST;
            uniform float _Speed;
            uniform sampler2D _alpha; uniform float4 _alpha_ST;
            uniform float _alphapow;
            uniform float _mult;
            uniform float _SpeedClip;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 node_1975 = _Time;
                float2 node_3635 = (i.uv0+(node_1975.g*_Speed)*float2(1,0));
                float4 _node_2088_var = tex2D(_node_2088,TRANSFORM_TEX(node_3635, _node_2088));
                float3 emissive = (_Color.rgb*_node_2088_var.rgb);
                float3 finalColor = emissive;
                float2 node_7930 = (i.uv0+(node_1975.g*_SpeedClip)*float2(1,0));
                float4 _alpha_var = tex2D(_alpha,TRANSFORM_TEX(node_7930, _alpha));
                return fixed4(finalColor,saturate(pow((_mult*_alpha_var.r),_alphapow)));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
