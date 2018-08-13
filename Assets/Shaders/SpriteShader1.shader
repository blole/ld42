// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:1,cusa:True,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:True,tesm:0,olmd:1,culm:2,bsrc:0,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:True,atwp:True,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:1873,x:37058,y:32315,varname:node_1873,prsc:2|emission-4854-OUT,alpha-603-OUT;n:type:ShaderForge.SFN_Tex2d,id:4805,x:33340,y:32340,varname:_MainTex_copy,prsc:2,tex:1ae87205027601340bfa15d5ea493039,ntxv:0,isnm:False|UVIN-8289-UVOUT,TEX-3909-TEX;n:type:ShaderForge.SFN_Multiply,id:1086,x:35050,y:32851,cmnt:RGB,varname:node_1086,prsc:2|A-4283-OUT,B-5983-RGB,C-5376-RGB;n:type:ShaderForge.SFN_Color,id:5983,x:34455,y:33065,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_VertexColor,id:5376,x:32551,y:33079,varname:node_5376,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1749,x:35791,y:32897,cmnt:Premultiply Alpha,varname:node_1749,prsc:2|A-1086-OUT,B-603-OUT;n:type:ShaderForge.SFN_Multiply,id:603,x:35814,y:33230,cmnt:A,varname:node_603,prsc:2|A-2479-OUT,B-5983-A,C-5376-A;n:type:ShaderForge.SFN_Time,id:977,x:30039,y:32484,varname:node_977,prsc:2;n:type:ShaderForge.SFN_UVTile,id:8289,x:32198,y:32633,varname:node_8289,prsc:2|UVIN-3748-UVOUT,WDT-9238-OUT,HGT-5682-OUT,TILE-2918-OUT;n:type:ShaderForge.SFN_TexCoord,id:3748,x:31405,y:32307,varname:node_3748,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Vector1,id:5332,x:31526,y:33109,varname:node_5332,prsc:2,v1:1;n:type:ShaderForge.SFN_Tex2dAsset,id:3909,x:32179,y:32401,ptovrint:False,ptlb:node_3909,ptin:_node_3909,varname:node_3909,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:1ae87205027601340bfa15d5ea493039,ntxv:0,isnm:False;n:type:ShaderForge.SFN_UVTile,id:7561,x:32198,y:32761,varname:node_7561,prsc:2|UVIN-3748-UVOUT,WDT-9238-OUT,HGT-5682-OUT,TILE-3055-OUT;n:type:ShaderForge.SFN_If,id:3055,x:32169,y:32966,varname:node_3055,prsc:2|A-7474-OUT,B-88-OUT,GT-340-OUT,EQ-7474-OUT,LT-7474-OUT;n:type:ShaderForge.SFN_Vector1,id:340,x:31804,y:33306,varname:node_340,prsc:2,v1:0;n:type:ShaderForge.SFN_Add,id:7474,x:31804,y:32978,varname:node_7474,prsc:2|A-2918-OUT,B-5332-OUT;n:type:ShaderForge.SFN_Tex2d,id:1666,x:33322,y:32543,varname:node_1666,prsc:2,tex:1ae87205027601340bfa15d5ea493039,ntxv:0,isnm:False|UVIN-7561-UVOUT,TEX-3909-TEX;n:type:ShaderForge.SFN_Subtract,id:88,x:31814,y:33126,varname:node_88,prsc:2|A-9238-OUT,B-5332-OUT;n:type:ShaderForge.SFN_Trunc,id:2918,x:31469,y:32907,varname:node_2918,prsc:2|IN-715-OUT;n:type:ShaderForge.SFN_Lerp,id:3142,x:35401,y:32586,varname:node_3142,prsc:2|A-4805-RGB,B-1666-RGB;n:type:ShaderForge.SFN_Max,id:9338,x:35401,y:31964,varname:node_9338,prsc:2|A-4805-RGB,B-1666-RGB;n:type:ShaderForge.SFN_Min,id:2952,x:35420,y:32333,varname:node_2952,prsc:2|A-4805-RGB,B-1666-RGB;n:type:ShaderForge.SFN_Lerp,id:9714,x:35788,y:32205,varname:node_9714,prsc:2|A-9338-OUT,B-2952-OUT,T-5600-OUT;n:type:ShaderForge.SFN_Multiply,id:5600,x:35211,y:32189,varname:node_5600,prsc:2;n:type:ShaderForge.SFN_OneMinus,id:64,x:31557,y:30972,varname:node_64,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6692,x:32317,y:33442,varname:node_6692,prsc:2|A-9131-OUT,B-3748-UVOUT;n:type:ShaderForge.SFN_Vector1,id:9131,x:32317,y:33333,varname:node_9131,prsc:2,v1:2;n:type:ShaderForge.SFN_ComponentMask,id:4913,x:32060,y:34126,varname:node_4913,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-2318-RGB;n:type:ShaderForge.SFN_Multiply,id:5533,x:32486,y:34034,varname:node_5533,prsc:2|A-9997-OUT,B-4913-OUT;n:type:ShaderForge.SFN_Vector1,id:9997,x:32306,y:34034,varname:node_9997,prsc:2,v1:2;n:type:ShaderForge.SFN_Subtract,id:1038,x:32885,y:33963,varname:node_1038,prsc:2|A-5533-OUT,B-5019-OUT;n:type:ShaderForge.SFN_Multiply,id:4149,x:33207,y:33703,varname:node_4149,prsc:2|A-7561-UVOUT,B-1038-OUT;n:type:ShaderForge.SFN_Vector1,id:4740,x:32219,y:31961,varname:node_4740,prsc:2,v1:0.005;n:type:ShaderForge.SFN_Multiply,id:1155,x:32798,y:32132,varname:node_1155,prsc:2;n:type:ShaderForge.SFN_Frac,id:3622,x:30722,y:32351,varname:node_3622,prsc:2|IN-3958-OUT;n:type:ShaderForge.SFN_Vector1,id:9389,x:30953,y:33001,varname:node_9389,prsc:2,v1:5;n:type:ShaderForge.SFN_Multiply,id:715,x:31195,y:32860,varname:node_715,prsc:2|A-3622-OUT,B-9389-OUT;n:type:ShaderForge.SFN_Lerp,id:4283,x:33771,y:32156,varname:node_4283,prsc:2|A-4805-RGB,B-1666-RGB,T-590-OUT;n:type:ShaderForge.SFN_Frac,id:590,x:31230,y:32466,varname:node_590,prsc:2|IN-715-OUT;n:type:ShaderForge.SFN_Min,id:2479,x:35452,y:33027,varname:node_2479,prsc:2|A-4805-A,B-1666-A;n:type:ShaderForge.SFN_ValueProperty,id:35,x:30039,y:32690,ptovrint:False,ptlb:TimeScale,ptin:_TimeScale,varname:node_35,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:3958,x:30485,y:32571,varname:node_3958,prsc:2|A-977-T,B-35-OUT;n:type:ShaderForge.SFN_Multiply,id:5443,x:32887,y:33306,varname:node_5443,prsc:2|A-3748-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:2318,x:31844,y:34150,ptovrint:False,ptlb:Warp,ptin:_Warp,varname:node_2318,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:668812df7582d344893d90b4012ed8f8,ntxv:0,isnm:False|UVIN-1290-UVOUT;n:type:ShaderForge.SFN_Panner,id:1290,x:31989,y:33728,varname:node_1290,prsc:2,spu:1,spv:1|UVIN-6692-OUT,DIST-3958-OUT;n:type:ShaderForge.SFN_Tex2d,id:3036,x:33822,y:33438,varname:node_3036,prsc:2,tex:1ae87205027601340bfa15d5ea493039,ntxv:0,isnm:False|UVIN-9783-OUT,TEX-3909-TEX;n:type:ShaderForge.SFN_Tex2d,id:2981,x:33822,y:33626,varname:_node_3036_copy,prsc:2,tex:1ae87205027601340bfa15d5ea493039,ntxv:0,isnm:False|UVIN-7333-OUT,TEX-3909-TEX;n:type:ShaderForge.SFN_Multiply,id:1109,x:33207,y:33545,varname:node_1109,prsc:2|A-8289-UVOUT,B-1038-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1516,x:32848,y:34222,ptovrint:False,ptlb:WarpAmount,ptin:_WarpAmount,varname:node_1516,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.005;n:type:ShaderForge.SFN_Add,id:9783,x:33358,y:33752,varname:node_9783,prsc:2|A-8289-UVOUT,B-9843-OUT;n:type:ShaderForge.SFN_Add,id:7333,x:33358,y:33975,varname:node_7333,prsc:2|A-7561-UVOUT,B-9843-OUT;n:type:ShaderForge.SFN_Vector1,id:5019,x:32619,y:34195,varname:node_5019,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:9843,x:33119,y:34026,varname:node_9843,prsc:2|A-1038-OUT,B-1516-OUT;n:type:ShaderForge.SFN_Blend,id:100,x:35716,y:33696,varname:node_100,prsc:2,blmd:19,clmp:True|SRC-3518-OUT,DST-603-OUT;n:type:ShaderForge.SFN_OneMinus,id:199,x:34230,y:33500,varname:node_199,prsc:2|IN-3036-A;n:type:ShaderForge.SFN_OneMinus,id:5650,x:34230,y:33665,varname:node_5650,prsc:2|IN-2981-A;n:type:ShaderForge.SFN_Max,id:3518,x:34690,y:33598,varname:node_3518,prsc:2|A-3036-A,B-2981-A;n:type:ShaderForge.SFN_Add,id:4854,x:36524,y:33053,varname:node_4854,prsc:2|A-1749-OUT,B-5133-OUT;n:type:ShaderForge.SFN_Vector3,id:880,x:36194,y:33714,varname:node_880,prsc:2,v1:0.6,v2:0.6,v3:0.6;n:type:ShaderForge.SFN_Multiply,id:5133,x:36081,y:33499,varname:node_5133,prsc:2|A-100-OUT,B-880-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9238,x:31488,y:32597,ptovrint:False,ptlb:X,ptin:_X,varname:node_9238,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_ValueProperty,id:5682,x:31488,y:32772,ptovrint:False,ptlb:Y,ptin:_Y,varname:node_5682,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;proporder:5983-3909-35-2318-1516-9238-5682;pass:END;sub:END;*/

Shader "Klosterliv/SpriteShader1" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _node_3909 ("node_3909", 2D) = "white" {}
        _TimeScale ("TimeScale", Float ) = 0.5
        _Warp ("Warp", 2D) = "white" {}
        _WarpAmount ("WarpAmount", Float ) = 0.005
        _X ("X", Float ) = 5
        _Y ("Y", Float ) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
        [MaterialToggle] PixelSnap ("Pixel snap", Float) = 0
        _Stencil ("Stencil ID", Float) = 0
        _StencilReadMask ("Stencil Read Mask", Float) = 255
        _StencilWriteMask ("Stencil Write Mask", Float) = 255
        _StencilComp ("Stencil Comparison", Float) = 8
        _StencilOp ("Stencil Operation", Float) = 0
        _StencilOpFail ("Stencil Fail Operation", Float) = 0
        _StencilOpZFail ("Stencil Z-Fail Operation", Float) = 0
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
            "CanUseSpriteAtlas"="True"
            "PreviewType"="Plane"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One OneMinusSrcAlpha
            Cull Off
            ZWrite Off
            
            Stencil {
                Ref [_Stencil]
                ReadMask [_StencilReadMask]
                WriteMask [_StencilWriteMask]
                Comp [_StencilComp]
                Pass [_StencilOp]
                Fail [_StencilOpFail]
                ZFail [_StencilOpZFail]
            }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #pragma multi_compile _ PIXELSNAP_ON
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _node_3909; uniform float4 _node_3909_ST;
            uniform float _TimeScale;
            uniform sampler2D _Warp; uniform float4 _Warp_ST;
            uniform float _WarpAmount;
            uniform float _X;
            uniform float _Y;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos( v.vertex );
                #ifdef PIXELSNAP_ON
                    o.pos = UnityPixelSnap(o.pos);
                #endif
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float4 node_977 = _Time;
                float node_3958 = (node_977.g*_TimeScale);
                float node_715 = (frac(node_3958)*5.0);
                float node_2918 = trunc(node_715);
                float2 node_8289_tc_rcp = float2(1.0,1.0)/float2( _X, _Y );
                float node_8289_ty = floor(node_2918 * node_8289_tc_rcp.x);
                float node_8289_tx = node_2918 - _X * node_8289_ty;
                float2 node_8289 = (i.uv0 + float2(node_8289_tx, node_8289_ty)) * node_8289_tc_rcp;
                float4 _MainTex_copy = tex2D(_node_3909,TRANSFORM_TEX(node_8289, _node_3909));
                float node_5332 = 1.0;
                float node_7474 = (node_2918+node_5332);
                float node_3055_if_leA = step(node_7474,(_X-node_5332));
                float node_3055_if_leB = step((_X-node_5332),node_7474);
                float node_3055 = lerp((node_3055_if_leA*node_7474)+(node_3055_if_leB*0.0),node_7474,node_3055_if_leA*node_3055_if_leB);
                float2 node_7561_tc_rcp = float2(1.0,1.0)/float2( _X, _Y );
                float node_7561_ty = floor(node_3055 * node_7561_tc_rcp.x);
                float node_7561_tx = node_3055 - _X * node_7561_ty;
                float2 node_7561 = (i.uv0 + float2(node_7561_tx, node_7561_ty)) * node_7561_tc_rcp;
                float4 node_1666 = tex2D(_node_3909,TRANSFORM_TEX(node_7561, _node_3909));
                float node_603 = (min(_MainTex_copy.a,node_1666.a)*_Color.a*i.vertexColor.a); // A
                float2 node_1290 = ((2.0*i.uv0)+node_3958*float2(1,1));
                float4 _Warp_var = tex2D(_Warp,TRANSFORM_TEX(node_1290, _Warp));
                float2 node_1038 = ((2.0*_Warp_var.rgb.rg)-1.0);
                float2 node_9843 = (node_1038*_WarpAmount);
                float2 node_9783 = (node_8289+node_9843);
                float4 node_3036 = tex2D(_node_3909,TRANSFORM_TEX(node_9783, _node_3909));
                float2 node_7333 = (node_7561+node_9843);
                float4 _node_3036_copy = tex2D(_node_3909,TRANSFORM_TEX(node_7333, _node_3909));
                float3 emissive = (((lerp(_MainTex_copy.rgb,node_1666.rgb,frac(node_715))*_Color.rgb*i.vertexColor.rgb)*node_603)+(saturate((node_603-max(node_3036.a,_node_3036_copy.a)))*float3(0.6,0.6,0.6)));
                float3 finalColor = emissive;
                return fixed4(finalColor,node_603);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #pragma multi_compile _ PIXELSNAP_ON
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                #ifdef PIXELSNAP_ON
                    o.pos = UnityPixelSnap(o.pos);
                #endif
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
