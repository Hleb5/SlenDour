Shader "Mobile/Transparent/Vertex Color" {
	Properties {
		_Color ("Main Color", Vector) = (1,1,1,1)
		_SpecColor ("Spec Color", Vector) = (1,1,1,0)
		_Emission ("Emmisive Color", Vector) = (0,0,0,0)
		_Shininess ("Shininess", Range(0.1, 1)) = 0.7
		_MainTex ("Base (RGB) Trans (A)", 2D) = "white" {}
	}
	SubShader {
		Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
		Pass {
			Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
			Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
			ZClip Off
			ZWrite Off
			Fog {
				Mode Off
			}
			GpuProgramID 23406
			Program "vp" {
				SubProgram "gles hw_tier00 " {
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesColor;
					attribute vec4 _glesMultiTexCoord0;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 _MainTex_ST;
					varying lowp vec4 xlv_COLOR0;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					void main ()
					{
					  lowp vec4 tmpvar_1;
					  mediump vec4 tmpvar_2;
					  tmpvar_2 = clamp (_glesColor, 0.0, 1.0);
					  tmpvar_1 = tmpvar_2;
					  highp vec4 tmpvar_3;
					  tmpvar_3.w = 1.0;
					  tmpvar_3.xyz = _glesVertex.xyz;
					  xlv_COLOR0 = tmpvar_1;
					  highp vec2 tmpvar_4;
					  tmpvar_4 = (_glesMultiTexCoord0.xy * _MainTex_ST.xy);
					  xlv_TEXCOORD0 = (tmpvar_4 + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = (tmpvar_4 + _MainTex_ST.zw);
					  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform sampler2D _MainTex;
					uniform lowp vec4 _Color;
					varying lowp vec4 xlv_COLOR0;
					varying highp vec2 xlv_TEXCOORD0;
					void main ()
					{
					  lowp vec4 col_1;
					  lowp vec4 tmpvar_2;
					  tmpvar_2 = texture2D (_MainTex, xlv_TEXCOORD0);
					  col_1.xyz = (tmpvar_2 * xlv_COLOR0).xyz;
					  col_1.w = (tmpvar_2.w * xlv_COLOR0.w);
					  col_1.xyz = (col_1 * _Color).xyz;
					  col_1 = (col_1 * 2.0);
					  col_1.w = (col_1.w * _Color.w);
					  if ((col_1.w <= 0.0)) {
					    discard;
					  };
					  gl_FragData[0] = col_1;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier01 " {
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesColor;
					attribute vec4 _glesMultiTexCoord0;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 _MainTex_ST;
					varying lowp vec4 xlv_COLOR0;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					void main ()
					{
					  lowp vec4 tmpvar_1;
					  mediump vec4 tmpvar_2;
					  tmpvar_2 = clamp (_glesColor, 0.0, 1.0);
					  tmpvar_1 = tmpvar_2;
					  highp vec4 tmpvar_3;
					  tmpvar_3.w = 1.0;
					  tmpvar_3.xyz = _glesVertex.xyz;
					  xlv_COLOR0 = tmpvar_1;
					  highp vec2 tmpvar_4;
					  tmpvar_4 = (_glesMultiTexCoord0.xy * _MainTex_ST.xy);
					  xlv_TEXCOORD0 = (tmpvar_4 + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = (tmpvar_4 + _MainTex_ST.zw);
					  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform sampler2D _MainTex;
					uniform lowp vec4 _Color;
					varying lowp vec4 xlv_COLOR0;
					varying highp vec2 xlv_TEXCOORD0;
					void main ()
					{
					  lowp vec4 col_1;
					  lowp vec4 tmpvar_2;
					  tmpvar_2 = texture2D (_MainTex, xlv_TEXCOORD0);
					  col_1.xyz = (tmpvar_2 * xlv_COLOR0).xyz;
					  col_1.w = (tmpvar_2.w * xlv_COLOR0.w);
					  col_1.xyz = (col_1 * _Color).xyz;
					  col_1 = (col_1 * 2.0);
					  col_1.w = (col_1.w * _Color.w);
					  if ((col_1.w <= 0.0)) {
					    discard;
					  };
					  gl_FragData[0] = col_1;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier02 " {
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesColor;
					attribute vec4 _glesMultiTexCoord0;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 _MainTex_ST;
					varying lowp vec4 xlv_COLOR0;
					varying highp vec2 xlv_TEXCOORD0;
					varying highp vec2 xlv_TEXCOORD1;
					void main ()
					{
					  lowp vec4 tmpvar_1;
					  mediump vec4 tmpvar_2;
					  tmpvar_2 = clamp (_glesColor, 0.0, 1.0);
					  tmpvar_1 = tmpvar_2;
					  highp vec4 tmpvar_3;
					  tmpvar_3.w = 1.0;
					  tmpvar_3.xyz = _glesVertex.xyz;
					  xlv_COLOR0 = tmpvar_1;
					  highp vec2 tmpvar_4;
					  tmpvar_4 = (_glesMultiTexCoord0.xy * _MainTex_ST.xy);
					  xlv_TEXCOORD0 = (tmpvar_4 + _MainTex_ST.zw);
					  xlv_TEXCOORD1 = (tmpvar_4 + _MainTex_ST.zw);
					  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform sampler2D _MainTex;
					uniform lowp vec4 _Color;
					varying lowp vec4 xlv_COLOR0;
					varying highp vec2 xlv_TEXCOORD0;
					void main ()
					{
					  lowp vec4 col_1;
					  lowp vec4 tmpvar_2;
					  tmpvar_2 = texture2D (_MainTex, xlv_TEXCOORD0);
					  col_1.xyz = (tmpvar_2 * xlv_COLOR0).xyz;
					  col_1.w = (tmpvar_2.w * xlv_COLOR0.w);
					  col_1.xyz = (col_1 * _Color).xyz;
					  col_1 = (col_1 * 2.0);
					  col_1.w = (col_1.w * _Color.w);
					  if ((col_1.w <= 0.0)) {
					    discard;
					  };
					  gl_FragData[0] = col_1;
					}
					
					
					#endif"
				}
				SubProgram "gles3 hw_tier00 " {
					"!!GLES3
					#ifdef VERTEX
					#version 300 es
					
					uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
					uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
					uniform 	vec4 _MainTex_ST;
					in highp vec3 in_POSITION0;
					in mediump vec4 in_COLOR0;
					in highp vec3 in_TEXCOORD0;
					out mediump vec4 vs_COLOR0;
					out highp vec2 vs_TEXCOORD0;
					highp  vec4 phase0_Output0_1;
					out highp vec2 vs_TEXCOORD1;
					vec4 u_xlat0;
					vec4 u_xlat1;
					void main()
					{
					    vs_COLOR0 = in_COLOR0;
					#ifdef UNITY_ADRENO_ES3
					    vs_COLOR0 = min(max(vs_COLOR0, 0.0), 1.0);
					#else
					    vs_COLOR0 = clamp(vs_COLOR0, 0.0, 1.0);
					#endif
					    phase0_Output0_1 = in_TEXCOORD0.xyxy * _MainTex_ST.xyxy + _MainTex_ST.zwzw;
					    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
					    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
					    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					vs_TEXCOORD0 = phase0_Output0_1.xy;
					vs_TEXCOORD1 = phase0_Output0_1.zw;
					    return;
					}
					
					#endif
					#ifdef FRAGMENT
					#version 300 es
					
					precision highp int;
					uniform 	mediump vec4 _Color;
					uniform lowp sampler2D _MainTex;
					in mediump vec4 vs_COLOR0;
					in highp vec2 vs_TEXCOORD0;
					layout(location = 0) out mediump vec4 SV_Target0;
					mediump vec4 u_xlat16_0;
					lowp vec4 u_xlat10_0;
					mediump vec4 u_xlat16_1;
					bool u_xlatb2;
					void main()
					{
					    u_xlat10_0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat16_0 = u_xlat10_0.wxyz * vs_COLOR0.wxyz;
					    u_xlat16_1 = u_xlat16_0.yzwx * _Color;
					    u_xlat16_1.xyz = u_xlat16_1.xyz * vec3(2.0, 2.0, 2.0);
					#ifdef UNITY_ADRENO_ES3
					    u_xlatb2 = !!(0.0>=u_xlat16_1.w);
					#else
					    u_xlatb2 = 0.0>=u_xlat16_1.w;
					#endif
					    SV_Target0 = u_xlat16_1 * vec4(1.0, 1.0, 1.0, 2.0);
					    if((int(u_xlatb2) * int(0xffffffffu))!=0){discard;}
					    return;
					}
					
					#endif"
				}
				SubProgram "gles3 hw_tier01 " {
					"!!GLES3
					#ifdef VERTEX
					#version 300 es
					
					uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
					uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
					uniform 	vec4 _MainTex_ST;
					in highp vec3 in_POSITION0;
					in mediump vec4 in_COLOR0;
					in highp vec3 in_TEXCOORD0;
					out mediump vec4 vs_COLOR0;
					out highp vec2 vs_TEXCOORD0;
					highp  vec4 phase0_Output0_1;
					out highp vec2 vs_TEXCOORD1;
					vec4 u_xlat0;
					vec4 u_xlat1;
					void main()
					{
					    vs_COLOR0 = in_COLOR0;
					#ifdef UNITY_ADRENO_ES3
					    vs_COLOR0 = min(max(vs_COLOR0, 0.0), 1.0);
					#else
					    vs_COLOR0 = clamp(vs_COLOR0, 0.0, 1.0);
					#endif
					    phase0_Output0_1 = in_TEXCOORD0.xyxy * _MainTex_ST.xyxy + _MainTex_ST.zwzw;
					    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
					    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
					    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					vs_TEXCOORD0 = phase0_Output0_1.xy;
					vs_TEXCOORD1 = phase0_Output0_1.zw;
					    return;
					}
					
					#endif
					#ifdef FRAGMENT
					#version 300 es
					
					precision highp int;
					uniform 	mediump vec4 _Color;
					uniform lowp sampler2D _MainTex;
					in mediump vec4 vs_COLOR0;
					in highp vec2 vs_TEXCOORD0;
					layout(location = 0) out mediump vec4 SV_Target0;
					mediump vec4 u_xlat16_0;
					lowp vec4 u_xlat10_0;
					mediump vec4 u_xlat16_1;
					bool u_xlatb2;
					void main()
					{
					    u_xlat10_0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat16_0 = u_xlat10_0.wxyz * vs_COLOR0.wxyz;
					    u_xlat16_1 = u_xlat16_0.yzwx * _Color;
					    u_xlat16_1.xyz = u_xlat16_1.xyz * vec3(2.0, 2.0, 2.0);
					#ifdef UNITY_ADRENO_ES3
					    u_xlatb2 = !!(0.0>=u_xlat16_1.w);
					#else
					    u_xlatb2 = 0.0>=u_xlat16_1.w;
					#endif
					    SV_Target0 = u_xlat16_1 * vec4(1.0, 1.0, 1.0, 2.0);
					    if((int(u_xlatb2) * int(0xffffffffu))!=0){discard;}
					    return;
					}
					
					#endif"
				}
				SubProgram "gles3 hw_tier02 " {
					"!!GLES3
					#ifdef VERTEX
					#version 300 es
					
					uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
					uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
					uniform 	vec4 _MainTex_ST;
					in highp vec3 in_POSITION0;
					in mediump vec4 in_COLOR0;
					in highp vec3 in_TEXCOORD0;
					out mediump vec4 vs_COLOR0;
					out highp vec2 vs_TEXCOORD0;
					highp  vec4 phase0_Output0_1;
					out highp vec2 vs_TEXCOORD1;
					vec4 u_xlat0;
					vec4 u_xlat1;
					void main()
					{
					    vs_COLOR0 = in_COLOR0;
					#ifdef UNITY_ADRENO_ES3
					    vs_COLOR0 = min(max(vs_COLOR0, 0.0), 1.0);
					#else
					    vs_COLOR0 = clamp(vs_COLOR0, 0.0, 1.0);
					#endif
					    phase0_Output0_1 = in_TEXCOORD0.xyxy * _MainTex_ST.xyxy + _MainTex_ST.zwzw;
					    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
					    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
					    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					vs_TEXCOORD0 = phase0_Output0_1.xy;
					vs_TEXCOORD1 = phase0_Output0_1.zw;
					    return;
					}
					
					#endif
					#ifdef FRAGMENT
					#version 300 es
					
					precision highp int;
					uniform 	mediump vec4 _Color;
					uniform lowp sampler2D _MainTex;
					in mediump vec4 vs_COLOR0;
					in highp vec2 vs_TEXCOORD0;
					layout(location = 0) out mediump vec4 SV_Target0;
					mediump vec4 u_xlat16_0;
					lowp vec4 u_xlat10_0;
					mediump vec4 u_xlat16_1;
					bool u_xlatb2;
					void main()
					{
					    u_xlat10_0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat16_0 = u_xlat10_0.wxyz * vs_COLOR0.wxyz;
					    u_xlat16_1 = u_xlat16_0.yzwx * _Color;
					    u_xlat16_1.xyz = u_xlat16_1.xyz * vec3(2.0, 2.0, 2.0);
					#ifdef UNITY_ADRENO_ES3
					    u_xlatb2 = !!(0.0>=u_xlat16_1.w);
					#else
					    u_xlatb2 = 0.0>=u_xlat16_1.w;
					#endif
					    SV_Target0 = u_xlat16_1 * vec4(1.0, 1.0, 1.0, 2.0);
					    if((int(u_xlatb2) * int(0xffffffffu))!=0){discard;}
					    return;
					}
					
					#endif"
				}
				SubProgram "vulkan hw_tier00 " {
					"spirv
					
					; SPIR-V
					; Version: 1.0
					; Generator: Khronos Glslang Reference Front End; 1
					; Bound: 119
					; Schema: 0
					                                                     OpCapability Shader 
					                                              %1 = OpExtInstImport "GLSL.std.450" 
					                                                     OpMemoryModel Logical GLSL450 
					                                                     OpEntryPoint Vertex %4 "main" %9 %11 %23 %45 %96 %107 %110 
					                                                     OpDecorate %9 RelaxedPrecision 
					                                                     OpDecorate %9 Location 9 
					                                                     OpDecorate %11 RelaxedPrecision 
					                                                     OpDecorate %11 Location 11 
					                                                     OpDecorate %12 RelaxedPrecision 
					                                                     OpDecorate %13 RelaxedPrecision 
					                                                     OpDecorate %16 RelaxedPrecision 
					                                                     OpDecorate %17 RelaxedPrecision 
					                                                     OpDecorate %18 RelaxedPrecision 
					                                                     OpDecorate %23 Location 23 
					                                                     OpDecorate %28 ArrayStride 28 
					                                                     OpDecorate %29 ArrayStride 29 
					                                                     OpMemberDecorate %30 0 Offset 30 
					                                                     OpMemberDecorate %30 1 Offset 30 
					                                                     OpMemberDecorate %30 2 Offset 30 
					                                                     OpDecorate %30 Block 
					                                                     OpDecorate %32 DescriptorSet 32 
					                                                     OpDecorate %32 Binding 32 
					                                                     OpDecorate %45 Location 45 
					                                                     OpMemberDecorate %94 0 BuiltIn 94 
					                                                     OpMemberDecorate %94 1 BuiltIn 94 
					                                                     OpMemberDecorate %94 2 BuiltIn 94 
					                                                     OpDecorate %94 Block 
					                                                     OpDecorate %107 Location 107 
					                                                     OpDecorate %110 Location 110 
					                                              %2 = OpTypeVoid 
					                                              %3 = OpTypeFunction %2 
					                                              %6 = OpTypeFloat 32 
					                                              %7 = OpTypeVector %6 4 
					                                              %8 = OpTypePointer Output %7 
					                                Output f32_4* %9 = OpVariable Output 
					                                             %10 = OpTypePointer Input %7 
					                                Input f32_4* %11 = OpVariable Input 
					                                         f32 %14 = OpConstant 3,674022E-40 
					                                         f32 %15 = OpConstant 3,674022E-40 
					                                             %19 = OpTypePointer Private %7 
					                              Private f32_4* %20 = OpVariable Private 
					                                             %21 = OpTypeVector %6 3 
					                                             %22 = OpTypePointer Input %21 
					                                Input f32_3* %23 = OpVariable Input 
					                                             %26 = OpTypeInt 32 0 
					                                         u32 %27 = OpConstant 4 
					                                             %28 = OpTypeArray %7 %27 
					                                             %29 = OpTypeArray %7 %27 
					                                             %30 = OpTypeStruct %28 %29 %7 
					                                             %31 = OpTypePointer Uniform %30 
					Uniform struct {f32_4[4]; f32_4[4]; f32_4;}* %32 = OpVariable Uniform 
					                                             %33 = OpTypeInt 32 1 
					                                         i32 %34 = OpConstant 2 
					                                             %35 = OpTypePointer Uniform %7 
					                              Private f32_4* %44 = OpVariable Private 
					                                Input f32_3* %45 = OpVariable Input 
					                                         i32 %48 = OpConstant 0 
					                                         i32 %49 = OpConstant 1 
					                                         i32 %68 = OpConstant 3 
					                              Private f32_4* %72 = OpVariable Private 
					                                         u32 %92 = OpConstant 1 
					                                             %93 = OpTypeArray %6 %92 
					                                             %94 = OpTypeStruct %7 %6 %93 
					                                             %95 = OpTypePointer Output %94 
					        Output struct {f32_4; f32; f32[1];}* %96 = OpVariable Output 
					                                            %105 = OpTypeVector %6 2 
					                                            %106 = OpTypePointer Output %105 
					                              Output f32_2* %107 = OpVariable Output 
					                              Output f32_2* %110 = OpVariable Output 
					                                            %113 = OpTypePointer Output %6 
					                                         void %4 = OpFunction None %3 
					                                              %5 = OpLabel 
					                                       f32_4 %12 = OpLoad %11 
					                                                     OpStore %9 %12 
					                                       f32_4 %13 = OpLoad %9 
					                                       f32_4 %16 = OpCompositeConstruct %14 %14 %14 %14 
					                                       f32_4 %17 = OpCompositeConstruct %15 %15 %15 %15 
					                                       f32_4 %18 = OpExtInst %1 43 %13 %16 %17 
					                                                     OpStore %9 %18 
					                                       f32_3 %24 = OpLoad %23 
					                                       f32_4 %25 = OpVectorShuffle %24 %24 0 1 0 1 
					                              Uniform f32_4* %36 = OpAccessChain %32 %34 
					                                       f32_4 %37 = OpLoad %36 
					                                       f32_4 %38 = OpVectorShuffle %37 %37 0 1 0 1 
					                                       f32_4 %39 = OpFMul %25 %38 
					                              Uniform f32_4* %40 = OpAccessChain %32 %34 
					                                       f32_4 %41 = OpLoad %40 
					                                       f32_4 %42 = OpVectorShuffle %41 %41 2 3 2 3 
					                                       f32_4 %43 = OpFAdd %39 %42 
					                                                     OpStore %20 %43 
					                                       f32_3 %46 = OpLoad %45 
					                                       f32_4 %47 = OpVectorShuffle %46 %46 1 1 1 1 
					                              Uniform f32_4* %50 = OpAccessChain %32 %48 %49 
					                                       f32_4 %51 = OpLoad %50 
					                                       f32_4 %52 = OpFMul %47 %51 
					                                                     OpStore %44 %52 
					                              Uniform f32_4* %53 = OpAccessChain %32 %48 %48 
					                                       f32_4 %54 = OpLoad %53 
					                                       f32_3 %55 = OpLoad %45 
					                                       f32_4 %56 = OpVectorShuffle %55 %55 0 0 0 0 
					                                       f32_4 %57 = OpFMul %54 %56 
					                                       f32_4 %58 = OpLoad %44 
					                                       f32_4 %59 = OpFAdd %57 %58 
					                                                     OpStore %44 %59 
					                              Uniform f32_4* %60 = OpAccessChain %32 %48 %34 
					                                       f32_4 %61 = OpLoad %60 
					                                       f32_3 %62 = OpLoad %45 
					                                       f32_4 %63 = OpVectorShuffle %62 %62 2 2 2 2 
					                                       f32_4 %64 = OpFMul %61 %63 
					                                       f32_4 %65 = OpLoad %44 
					                                       f32_4 %66 = OpFAdd %64 %65 
					                                                     OpStore %44 %66 
					                                       f32_4 %67 = OpLoad %44 
					                              Uniform f32_4* %69 = OpAccessChain %32 %48 %68 
					                                       f32_4 %70 = OpLoad %69 
					                                       f32_4 %71 = OpFAdd %67 %70 
					                                                     OpStore %44 %71 
					                                       f32_4 %73 = OpLoad %44 
					                                       f32_4 %74 = OpVectorShuffle %73 %73 1 1 1 1 
					                              Uniform f32_4* %75 = OpAccessChain %32 %49 %49 
					                                       f32_4 %76 = OpLoad %75 
					                                       f32_4 %77 = OpFMul %74 %76 
					                                                     OpStore %72 %77 
					                              Uniform f32_4* %78 = OpAccessChain %32 %49 %48 
					                                       f32_4 %79 = OpLoad %78 
					                                       f32_4 %80 = OpLoad %44 
					                                       f32_4 %81 = OpVectorShuffle %80 %80 0 0 0 0 
					                                       f32_4 %82 = OpFMul %79 %81 
					                                       f32_4 %83 = OpLoad %72 
					                                       f32_4 %84 = OpFAdd %82 %83 
					                                                     OpStore %72 %84 
					                              Uniform f32_4* %85 = OpAccessChain %32 %49 %34 
					                                       f32_4 %86 = OpLoad %85 
					                                       f32_4 %87 = OpLoad %44 
					                                       f32_4 %88 = OpVectorShuffle %87 %87 2 2 2 2 
					                                       f32_4 %89 = OpFMul %86 %88 
					                                       f32_4 %90 = OpLoad %72 
					                                       f32_4 %91 = OpFAdd %89 %90 
					                                                     OpStore %72 %91 
					                              Uniform f32_4* %97 = OpAccessChain %32 %49 %68 
					                                       f32_4 %98 = OpLoad %97 
					                                       f32_4 %99 = OpLoad %44 
					                                      f32_4 %100 = OpVectorShuffle %99 %99 3 3 3 3 
					                                      f32_4 %101 = OpFMul %98 %100 
					                                      f32_4 %102 = OpLoad %72 
					                                      f32_4 %103 = OpFAdd %101 %102 
					                              Output f32_4* %104 = OpAccessChain %96 %48 
					                                                     OpStore %104 %103 
					                                      f32_4 %108 = OpLoad %20 
					                                      f32_2 %109 = OpVectorShuffle %108 %108 0 1 
					                                                     OpStore %107 %109 
					                                      f32_4 %111 = OpLoad %20 
					                                      f32_2 %112 = OpVectorShuffle %111 %111 2 3 
					                                                     OpStore %110 %112 
					                                Output f32* %114 = OpAccessChain %96 %48 %92 
					                                        f32 %115 = OpLoad %114 
					                                        f32 %116 = OpFNegate %115 
					                                Output f32* %117 = OpAccessChain %96 %48 %92 
					                                                     OpStore %117 %116 
					                                                     OpReturn
					                                                     OpFunctionEnd
					; SPIR-V
					; Version: 1.0
					; Generator: Khronos Glslang Reference Front End; 1
					; Bound: 74
					; Schema: 0
					                                                    OpCapability Shader 
					                                             %1 = OpExtInstImport "GLSL.std.450" 
					                                                    OpMemoryModel Logical GLSL450 
					                                                    OpEntryPoint Fragment %4 "main" %17 %24 %59 
					                                                    OpExecutionMode %4 OriginUpperLeft 
					                                                    OpDecorate %9 RelaxedPrecision 
					                                                    OpDecorate %13 RelaxedPrecision 
					                                                    OpDecorate %13 DescriptorSet 13 
					                                                    OpDecorate %13 Binding 13 
					                                                    OpDecorate %14 RelaxedPrecision 
					                                                    OpDecorate %17 Location 17 
					                                                    OpDecorate %20 RelaxedPrecision 
					                                                    OpDecorate %21 RelaxedPrecision 
					                                                    OpDecorate %22 RelaxedPrecision 
					                                                    OpDecorate %24 RelaxedPrecision 
					                                                    OpDecorate %24 Location 24 
					                                                    OpDecorate %25 RelaxedPrecision 
					                                                    OpDecorate %26 RelaxedPrecision 
					                                                    OpDecorate %27 RelaxedPrecision 
					                                                    OpDecorate %28 RelaxedPrecision 
					                                                    OpDecorate %29 RelaxedPrecision 
					                                                    OpDecorate %30 RelaxedPrecision 
					                                                    OpMemberDecorate %31 0 RelaxedPrecision 
					                                                    OpMemberDecorate %31 0 Offset 31 
					                                                    OpDecorate %31 Block 
					                                                    OpDecorate %33 DescriptorSet 33 
					                                                    OpDecorate %33 Binding 33 
					                                                    OpDecorate %38 RelaxedPrecision 
					                                                    OpDecorate %39 RelaxedPrecision 
					                                                    OpDecorate %41 RelaxedPrecision 
					                                                    OpDecorate %42 RelaxedPrecision 
					                                                    OpDecorate %45 RelaxedPrecision 
					                                                    OpDecorate %56 RelaxedPrecision 
					                                                    OpDecorate %59 RelaxedPrecision 
					                                                    OpDecorate %59 Location 59 
					                                                    OpDecorate %60 RelaxedPrecision 
					                                                    OpDecorate %63 RelaxedPrecision 
					                                             %2 = OpTypeVoid 
					                                             %3 = OpTypeFunction %2 
					                                             %6 = OpTypeFloat 32 
					                                             %7 = OpTypeVector %6 4 
					                                             %8 = OpTypePointer Private %7 
					                              Private f32_4* %9 = OpVariable Private 
					                                            %10 = OpTypeImage %6 Dim2D 0 0 0 1 Unknown 
					                                            %11 = OpTypeSampledImage %10 
					                                            %12 = OpTypePointer UniformConstant %11 
					UniformConstant read_only Texture2DSampled* %13 = OpVariable UniformConstant 
					                                            %15 = OpTypeVector %6 2 
					                                            %16 = OpTypePointer Input %15 
					                               Input f32_2* %17 = OpVariable Input 
					                             Private f32_4* %20 = OpVariable Private 
					                                            %23 = OpTypePointer Input %7 
					                               Input f32_4* %24 = OpVariable Input 
					                             Private f32_4* %28 = OpVariable Private 
					                                            %31 = OpTypeStruct %7 
					                                            %32 = OpTypePointer Uniform %31 
					                   Uniform struct {f32_4;}* %33 = OpVariable Uniform 
					                                            %34 = OpTypeInt 32 1 
					                                        i32 %35 = OpConstant 0 
					                                            %36 = OpTypePointer Uniform %7 
					                                            %40 = OpTypeVector %6 3 
					                                        f32 %43 = OpConstant 3,674022E-40 
					                                      f32_3 %44 = OpConstantComposite %43 %43 %43 
					                                            %48 = OpTypeBool 
					                                            %49 = OpTypePointer Private %48 
					                              Private bool* %50 = OpVariable Private 
					                                        f32 %51 = OpConstant 3,674022E-40 
					                                            %52 = OpTypeInt 32 0 
					                                        u32 %53 = OpConstant 3 
					                                            %54 = OpTypePointer Private %6 
					                                            %58 = OpTypePointer Output %7 
					                              Output f32_4* %59 = OpVariable Output 
					                                        f32 %61 = OpConstant 3,674022E-40 
					                                      f32_4 %62 = OpConstantComposite %61 %61 %61 %43 
					                                        i32 %65 = OpConstant 1 
					                                        i32 %67 = OpConstant -1 
					                                        void %4 = OpFunction None %3 
					                                             %5 = OpLabel 
					                 read_only Texture2DSampled %14 = OpLoad %13 
					                                      f32_2 %18 = OpLoad %17 
					                                      f32_4 %19 = OpImageSampleImplicitLod %14 %18 
					                                                    OpStore %9 %19 
					                                      f32_4 %21 = OpLoad %9 
					                                      f32_4 %22 = OpVectorShuffle %21 %21 3 0 1 2 
					                                      f32_4 %25 = OpLoad %24 
					                                      f32_4 %26 = OpVectorShuffle %25 %25 3 0 1 2 
					                                      f32_4 %27 = OpFMul %22 %26 
					                                                    OpStore %20 %27 
					                                      f32_4 %29 = OpLoad %20 
					                                      f32_4 %30 = OpVectorShuffle %29 %29 1 2 3 0 
					                             Uniform f32_4* %37 = OpAccessChain %33 %35 
					                                      f32_4 %38 = OpLoad %37 
					                                      f32_4 %39 = OpFMul %30 %38 
					                                                    OpStore %28 %39 
					                                      f32_4 %41 = OpLoad %28 
					                                      f32_3 %42 = OpVectorShuffle %41 %41 0 1 2 
					                                      f32_3 %45 = OpFMul %42 %44 
					                                      f32_4 %46 = OpLoad %28 
					                                      f32_4 %47 = OpVectorShuffle %46 %45 4 5 6 3 
					                                                    OpStore %28 %47 
					                               Private f32* %55 = OpAccessChain %28 %53 
					                                        f32 %56 = OpLoad %55 
					                                       bool %57 = OpFOrdGreaterThanEqual %51 %56 
					                                                    OpStore %50 %57 
					                                      f32_4 %60 = OpLoad %28 
					                                      f32_4 %63 = OpFMul %60 %62 
					                                                    OpStore %59 %63 
					                                       bool %64 = OpLoad %50 
					                                        i32 %66 = OpSelect %64 %65 %35 
					                                        i32 %68 = OpIMul %66 %67 
					                                       bool %69 = OpINotEqual %68 %35 
					                                                    OpSelectionMerge %71 None 
					                                                    OpBranchConditional %69 %70 %71 
					                                            %70 = OpLabel 
					                                                    OpKill
					                                            %71 = OpLabel 
					                                                    OpReturn
					                                                    OpFunctionEnd"
				}
				SubProgram "vulkan hw_tier01 " {
					"spirv
					
					; SPIR-V
					; Version: 1.0
					; Generator: Khronos Glslang Reference Front End; 1
					; Bound: 119
					; Schema: 0
					                                                     OpCapability Shader 
					                                              %1 = OpExtInstImport "GLSL.std.450" 
					                                                     OpMemoryModel Logical GLSL450 
					                                                     OpEntryPoint Vertex %4 "main" %9 %11 %23 %45 %96 %107 %110 
					                                                     OpDecorate %9 RelaxedPrecision 
					                                                     OpDecorate %9 Location 9 
					                                                     OpDecorate %11 RelaxedPrecision 
					                                                     OpDecorate %11 Location 11 
					                                                     OpDecorate %12 RelaxedPrecision 
					                                                     OpDecorate %13 RelaxedPrecision 
					                                                     OpDecorate %16 RelaxedPrecision 
					                                                     OpDecorate %17 RelaxedPrecision 
					                                                     OpDecorate %18 RelaxedPrecision 
					                                                     OpDecorate %23 Location 23 
					                                                     OpDecorate %28 ArrayStride 28 
					                                                     OpDecorate %29 ArrayStride 29 
					                                                     OpMemberDecorate %30 0 Offset 30 
					                                                     OpMemberDecorate %30 1 Offset 30 
					                                                     OpMemberDecorate %30 2 Offset 30 
					                                                     OpDecorate %30 Block 
					                                                     OpDecorate %32 DescriptorSet 32 
					                                                     OpDecorate %32 Binding 32 
					                                                     OpDecorate %45 Location 45 
					                                                     OpMemberDecorate %94 0 BuiltIn 94 
					                                                     OpMemberDecorate %94 1 BuiltIn 94 
					                                                     OpMemberDecorate %94 2 BuiltIn 94 
					                                                     OpDecorate %94 Block 
					                                                     OpDecorate %107 Location 107 
					                                                     OpDecorate %110 Location 110 
					                                              %2 = OpTypeVoid 
					                                              %3 = OpTypeFunction %2 
					                                              %6 = OpTypeFloat 32 
					                                              %7 = OpTypeVector %6 4 
					                                              %8 = OpTypePointer Output %7 
					                                Output f32_4* %9 = OpVariable Output 
					                                             %10 = OpTypePointer Input %7 
					                                Input f32_4* %11 = OpVariable Input 
					                                         f32 %14 = OpConstant 3,674022E-40 
					                                         f32 %15 = OpConstant 3,674022E-40 
					                                             %19 = OpTypePointer Private %7 
					                              Private f32_4* %20 = OpVariable Private 
					                                             %21 = OpTypeVector %6 3 
					                                             %22 = OpTypePointer Input %21 
					                                Input f32_3* %23 = OpVariable Input 
					                                             %26 = OpTypeInt 32 0 
					                                         u32 %27 = OpConstant 4 
					                                             %28 = OpTypeArray %7 %27 
					                                             %29 = OpTypeArray %7 %27 
					                                             %30 = OpTypeStruct %28 %29 %7 
					                                             %31 = OpTypePointer Uniform %30 
					Uniform struct {f32_4[4]; f32_4[4]; f32_4;}* %32 = OpVariable Uniform 
					                                             %33 = OpTypeInt 32 1 
					                                         i32 %34 = OpConstant 2 
					                                             %35 = OpTypePointer Uniform %7 
					                              Private f32_4* %44 = OpVariable Private 
					                                Input f32_3* %45 = OpVariable Input 
					                                         i32 %48 = OpConstant 0 
					                                         i32 %49 = OpConstant 1 
					                                         i32 %68 = OpConstant 3 
					                              Private f32_4* %72 = OpVariable Private 
					                                         u32 %92 = OpConstant 1 
					                                             %93 = OpTypeArray %6 %92 
					                                             %94 = OpTypeStruct %7 %6 %93 
					                                             %95 = OpTypePointer Output %94 
					        Output struct {f32_4; f32; f32[1];}* %96 = OpVariable Output 
					                                            %105 = OpTypeVector %6 2 
					                                            %106 = OpTypePointer Output %105 
					                              Output f32_2* %107 = OpVariable Output 
					                              Output f32_2* %110 = OpVariable Output 
					                                            %113 = OpTypePointer Output %6 
					                                         void %4 = OpFunction None %3 
					                                              %5 = OpLabel 
					                                       f32_4 %12 = OpLoad %11 
					                                                     OpStore %9 %12 
					                                       f32_4 %13 = OpLoad %9 
					                                       f32_4 %16 = OpCompositeConstruct %14 %14 %14 %14 
					                                       f32_4 %17 = OpCompositeConstruct %15 %15 %15 %15 
					                                       f32_4 %18 = OpExtInst %1 43 %13 %16 %17 
					                                                     OpStore %9 %18 
					                                       f32_3 %24 = OpLoad %23 
					                                       f32_4 %25 = OpVectorShuffle %24 %24 0 1 0 1 
					                              Uniform f32_4* %36 = OpAccessChain %32 %34 
					                                       f32_4 %37 = OpLoad %36 
					                                       f32_4 %38 = OpVectorShuffle %37 %37 0 1 0 1 
					                                       f32_4 %39 = OpFMul %25 %38 
					                              Uniform f32_4* %40 = OpAccessChain %32 %34 
					                                       f32_4 %41 = OpLoad %40 
					                                       f32_4 %42 = OpVectorShuffle %41 %41 2 3 2 3 
					                                       f32_4 %43 = OpFAdd %39 %42 
					                                                     OpStore %20 %43 
					                                       f32_3 %46 = OpLoad %45 
					                                       f32_4 %47 = OpVectorShuffle %46 %46 1 1 1 1 
					                              Uniform f32_4* %50 = OpAccessChain %32 %48 %49 
					                                       f32_4 %51 = OpLoad %50 
					                                       f32_4 %52 = OpFMul %47 %51 
					                                                     OpStore %44 %52 
					                              Uniform f32_4* %53 = OpAccessChain %32 %48 %48 
					                                       f32_4 %54 = OpLoad %53 
					                                       f32_3 %55 = OpLoad %45 
					                                       f32_4 %56 = OpVectorShuffle %55 %55 0 0 0 0 
					                                       f32_4 %57 = OpFMul %54 %56 
					                                       f32_4 %58 = OpLoad %44 
					                                       f32_4 %59 = OpFAdd %57 %58 
					                                                     OpStore %44 %59 
					                              Uniform f32_4* %60 = OpAccessChain %32 %48 %34 
					                                       f32_4 %61 = OpLoad %60 
					                                       f32_3 %62 = OpLoad %45 
					                                       f32_4 %63 = OpVectorShuffle %62 %62 2 2 2 2 
					                                       f32_4 %64 = OpFMul %61 %63 
					                                       f32_4 %65 = OpLoad %44 
					                                       f32_4 %66 = OpFAdd %64 %65 
					                                                     OpStore %44 %66 
					                                       f32_4 %67 = OpLoad %44 
					                              Uniform f32_4* %69 = OpAccessChain %32 %48 %68 
					                                       f32_4 %70 = OpLoad %69 
					                                       f32_4 %71 = OpFAdd %67 %70 
					                                                     OpStore %44 %71 
					                                       f32_4 %73 = OpLoad %44 
					                                       f32_4 %74 = OpVectorShuffle %73 %73 1 1 1 1 
					                              Uniform f32_4* %75 = OpAccessChain %32 %49 %49 
					                                       f32_4 %76 = OpLoad %75 
					                                       f32_4 %77 = OpFMul %74 %76 
					                                                     OpStore %72 %77 
					                              Uniform f32_4* %78 = OpAccessChain %32 %49 %48 
					                                       f32_4 %79 = OpLoad %78 
					                                       f32_4 %80 = OpLoad %44 
					                                       f32_4 %81 = OpVectorShuffle %80 %80 0 0 0 0 
					                                       f32_4 %82 = OpFMul %79 %81 
					                                       f32_4 %83 = OpLoad %72 
					                                       f32_4 %84 = OpFAdd %82 %83 
					                                                     OpStore %72 %84 
					                              Uniform f32_4* %85 = OpAccessChain %32 %49 %34 
					                                       f32_4 %86 = OpLoad %85 
					                                       f32_4 %87 = OpLoad %44 
					                                       f32_4 %88 = OpVectorShuffle %87 %87 2 2 2 2 
					                                       f32_4 %89 = OpFMul %86 %88 
					                                       f32_4 %90 = OpLoad %72 
					                                       f32_4 %91 = OpFAdd %89 %90 
					                                                     OpStore %72 %91 
					                              Uniform f32_4* %97 = OpAccessChain %32 %49 %68 
					                                       f32_4 %98 = OpLoad %97 
					                                       f32_4 %99 = OpLoad %44 
					                                      f32_4 %100 = OpVectorShuffle %99 %99 3 3 3 3 
					                                      f32_4 %101 = OpFMul %98 %100 
					                                      f32_4 %102 = OpLoad %72 
					                                      f32_4 %103 = OpFAdd %101 %102 
					                              Output f32_4* %104 = OpAccessChain %96 %48 
					                                                     OpStore %104 %103 
					                                      f32_4 %108 = OpLoad %20 
					                                      f32_2 %109 = OpVectorShuffle %108 %108 0 1 
					                                                     OpStore %107 %109 
					                                      f32_4 %111 = OpLoad %20 
					                                      f32_2 %112 = OpVectorShuffle %111 %111 2 3 
					                                                     OpStore %110 %112 
					                                Output f32* %114 = OpAccessChain %96 %48 %92 
					                                        f32 %115 = OpLoad %114 
					                                        f32 %116 = OpFNegate %115 
					                                Output f32* %117 = OpAccessChain %96 %48 %92 
					                                                     OpStore %117 %116 
					                                                     OpReturn
					                                                     OpFunctionEnd
					; SPIR-V
					; Version: 1.0
					; Generator: Khronos Glslang Reference Front End; 1
					; Bound: 74
					; Schema: 0
					                                                    OpCapability Shader 
					                                             %1 = OpExtInstImport "GLSL.std.450" 
					                                                    OpMemoryModel Logical GLSL450 
					                                                    OpEntryPoint Fragment %4 "main" %17 %24 %59 
					                                                    OpExecutionMode %4 OriginUpperLeft 
					                                                    OpDecorate %9 RelaxedPrecision 
					                                                    OpDecorate %13 RelaxedPrecision 
					                                                    OpDecorate %13 DescriptorSet 13 
					                                                    OpDecorate %13 Binding 13 
					                                                    OpDecorate %14 RelaxedPrecision 
					                                                    OpDecorate %17 Location 17 
					                                                    OpDecorate %20 RelaxedPrecision 
					                                                    OpDecorate %21 RelaxedPrecision 
					                                                    OpDecorate %22 RelaxedPrecision 
					                                                    OpDecorate %24 RelaxedPrecision 
					                                                    OpDecorate %24 Location 24 
					                                                    OpDecorate %25 RelaxedPrecision 
					                                                    OpDecorate %26 RelaxedPrecision 
					                                                    OpDecorate %27 RelaxedPrecision 
					                                                    OpDecorate %28 RelaxedPrecision 
					                                                    OpDecorate %29 RelaxedPrecision 
					                                                    OpDecorate %30 RelaxedPrecision 
					                                                    OpMemberDecorate %31 0 RelaxedPrecision 
					                                                    OpMemberDecorate %31 0 Offset 31 
					                                                    OpDecorate %31 Block 
					                                                    OpDecorate %33 DescriptorSet 33 
					                                                    OpDecorate %33 Binding 33 
					                                                    OpDecorate %38 RelaxedPrecision 
					                                                    OpDecorate %39 RelaxedPrecision 
					                                                    OpDecorate %41 RelaxedPrecision 
					                                                    OpDecorate %42 RelaxedPrecision 
					                                                    OpDecorate %45 RelaxedPrecision 
					                                                    OpDecorate %56 RelaxedPrecision 
					                                                    OpDecorate %59 RelaxedPrecision 
					                                                    OpDecorate %59 Location 59 
					                                                    OpDecorate %60 RelaxedPrecision 
					                                                    OpDecorate %63 RelaxedPrecision 
					                                             %2 = OpTypeVoid 
					                                             %3 = OpTypeFunction %2 
					                                             %6 = OpTypeFloat 32 
					                                             %7 = OpTypeVector %6 4 
					                                             %8 = OpTypePointer Private %7 
					                              Private f32_4* %9 = OpVariable Private 
					                                            %10 = OpTypeImage %6 Dim2D 0 0 0 1 Unknown 
					                                            %11 = OpTypeSampledImage %10 
					                                            %12 = OpTypePointer UniformConstant %11 
					UniformConstant read_only Texture2DSampled* %13 = OpVariable UniformConstant 
					                                            %15 = OpTypeVector %6 2 
					                                            %16 = OpTypePointer Input %15 
					                               Input f32_2* %17 = OpVariable Input 
					                             Private f32_4* %20 = OpVariable Private 
					                                            %23 = OpTypePointer Input %7 
					                               Input f32_4* %24 = OpVariable Input 
					                             Private f32_4* %28 = OpVariable Private 
					                                            %31 = OpTypeStruct %7 
					                                            %32 = OpTypePointer Uniform %31 
					                   Uniform struct {f32_4;}* %33 = OpVariable Uniform 
					                                            %34 = OpTypeInt 32 1 
					                                        i32 %35 = OpConstant 0 
					                                            %36 = OpTypePointer Uniform %7 
					                                            %40 = OpTypeVector %6 3 
					                                        f32 %43 = OpConstant 3,674022E-40 
					                                      f32_3 %44 = OpConstantComposite %43 %43 %43 
					                                            %48 = OpTypeBool 
					                                            %49 = OpTypePointer Private %48 
					                              Private bool* %50 = OpVariable Private 
					                                        f32 %51 = OpConstant 3,674022E-40 
					                                            %52 = OpTypeInt 32 0 
					                                        u32 %53 = OpConstant 3 
					                                            %54 = OpTypePointer Private %6 
					                                            %58 = OpTypePointer Output %7 
					                              Output f32_4* %59 = OpVariable Output 
					                                        f32 %61 = OpConstant 3,674022E-40 
					                                      f32_4 %62 = OpConstantComposite %61 %61 %61 %43 
					                                        i32 %65 = OpConstant 1 
					                                        i32 %67 = OpConstant -1 
					                                        void %4 = OpFunction None %3 
					                                             %5 = OpLabel 
					                 read_only Texture2DSampled %14 = OpLoad %13 
					                                      f32_2 %18 = OpLoad %17 
					                                      f32_4 %19 = OpImageSampleImplicitLod %14 %18 
					                                                    OpStore %9 %19 
					                                      f32_4 %21 = OpLoad %9 
					                                      f32_4 %22 = OpVectorShuffle %21 %21 3 0 1 2 
					                                      f32_4 %25 = OpLoad %24 
					                                      f32_4 %26 = OpVectorShuffle %25 %25 3 0 1 2 
					                                      f32_4 %27 = OpFMul %22 %26 
					                                                    OpStore %20 %27 
					                                      f32_4 %29 = OpLoad %20 
					                                      f32_4 %30 = OpVectorShuffle %29 %29 1 2 3 0 
					                             Uniform f32_4* %37 = OpAccessChain %33 %35 
					                                      f32_4 %38 = OpLoad %37 
					                                      f32_4 %39 = OpFMul %30 %38 
					                                                    OpStore %28 %39 
					                                      f32_4 %41 = OpLoad %28 
					                                      f32_3 %42 = OpVectorShuffle %41 %41 0 1 2 
					                                      f32_3 %45 = OpFMul %42 %44 
					                                      f32_4 %46 = OpLoad %28 
					                                      f32_4 %47 = OpVectorShuffle %46 %45 4 5 6 3 
					                                                    OpStore %28 %47 
					                               Private f32* %55 = OpAccessChain %28 %53 
					                                        f32 %56 = OpLoad %55 
					                                       bool %57 = OpFOrdGreaterThanEqual %51 %56 
					                                                    OpStore %50 %57 
					                                      f32_4 %60 = OpLoad %28 
					                                      f32_4 %63 = OpFMul %60 %62 
					                                                    OpStore %59 %63 
					                                       bool %64 = OpLoad %50 
					                                        i32 %66 = OpSelect %64 %65 %35 
					                                        i32 %68 = OpIMul %66 %67 
					                                       bool %69 = OpINotEqual %68 %35 
					                                                    OpSelectionMerge %71 None 
					                                                    OpBranchConditional %69 %70 %71 
					                                            %70 = OpLabel 
					                                                    OpKill
					                                            %71 = OpLabel 
					                                                    OpReturn
					                                                    OpFunctionEnd"
				}
				SubProgram "vulkan hw_tier02 " {
					"spirv
					
					; SPIR-V
					; Version: 1.0
					; Generator: Khronos Glslang Reference Front End; 1
					; Bound: 119
					; Schema: 0
					                                                     OpCapability Shader 
					                                              %1 = OpExtInstImport "GLSL.std.450" 
					                                                     OpMemoryModel Logical GLSL450 
					                                                     OpEntryPoint Vertex %4 "main" %9 %11 %23 %45 %96 %107 %110 
					                                                     OpDecorate %9 RelaxedPrecision 
					                                                     OpDecorate %9 Location 9 
					                                                     OpDecorate %11 RelaxedPrecision 
					                                                     OpDecorate %11 Location 11 
					                                                     OpDecorate %12 RelaxedPrecision 
					                                                     OpDecorate %13 RelaxedPrecision 
					                                                     OpDecorate %16 RelaxedPrecision 
					                                                     OpDecorate %17 RelaxedPrecision 
					                                                     OpDecorate %18 RelaxedPrecision 
					                                                     OpDecorate %23 Location 23 
					                                                     OpDecorate %28 ArrayStride 28 
					                                                     OpDecorate %29 ArrayStride 29 
					                                                     OpMemberDecorate %30 0 Offset 30 
					                                                     OpMemberDecorate %30 1 Offset 30 
					                                                     OpMemberDecorate %30 2 Offset 30 
					                                                     OpDecorate %30 Block 
					                                                     OpDecorate %32 DescriptorSet 32 
					                                                     OpDecorate %32 Binding 32 
					                                                     OpDecorate %45 Location 45 
					                                                     OpMemberDecorate %94 0 BuiltIn 94 
					                                                     OpMemberDecorate %94 1 BuiltIn 94 
					                                                     OpMemberDecorate %94 2 BuiltIn 94 
					                                                     OpDecorate %94 Block 
					                                                     OpDecorate %107 Location 107 
					                                                     OpDecorate %110 Location 110 
					                                              %2 = OpTypeVoid 
					                                              %3 = OpTypeFunction %2 
					                                              %6 = OpTypeFloat 32 
					                                              %7 = OpTypeVector %6 4 
					                                              %8 = OpTypePointer Output %7 
					                                Output f32_4* %9 = OpVariable Output 
					                                             %10 = OpTypePointer Input %7 
					                                Input f32_4* %11 = OpVariable Input 
					                                         f32 %14 = OpConstant 3,674022E-40 
					                                         f32 %15 = OpConstant 3,674022E-40 
					                                             %19 = OpTypePointer Private %7 
					                              Private f32_4* %20 = OpVariable Private 
					                                             %21 = OpTypeVector %6 3 
					                                             %22 = OpTypePointer Input %21 
					                                Input f32_3* %23 = OpVariable Input 
					                                             %26 = OpTypeInt 32 0 
					                                         u32 %27 = OpConstant 4 
					                                             %28 = OpTypeArray %7 %27 
					                                             %29 = OpTypeArray %7 %27 
					                                             %30 = OpTypeStruct %28 %29 %7 
					                                             %31 = OpTypePointer Uniform %30 
					Uniform struct {f32_4[4]; f32_4[4]; f32_4;}* %32 = OpVariable Uniform 
					                                             %33 = OpTypeInt 32 1 
					                                         i32 %34 = OpConstant 2 
					                                             %35 = OpTypePointer Uniform %7 
					                              Private f32_4* %44 = OpVariable Private 
					                                Input f32_3* %45 = OpVariable Input 
					                                         i32 %48 = OpConstant 0 
					                                         i32 %49 = OpConstant 1 
					                                         i32 %68 = OpConstant 3 
					                              Private f32_4* %72 = OpVariable Private 
					                                         u32 %92 = OpConstant 1 
					                                             %93 = OpTypeArray %6 %92 
					                                             %94 = OpTypeStruct %7 %6 %93 
					                                             %95 = OpTypePointer Output %94 
					        Output struct {f32_4; f32; f32[1];}* %96 = OpVariable Output 
					                                            %105 = OpTypeVector %6 2 
					                                            %106 = OpTypePointer Output %105 
					                              Output f32_2* %107 = OpVariable Output 
					                              Output f32_2* %110 = OpVariable Output 
					                                            %113 = OpTypePointer Output %6 
					                                         void %4 = OpFunction None %3 
					                                              %5 = OpLabel 
					                                       f32_4 %12 = OpLoad %11 
					                                                     OpStore %9 %12 
					                                       f32_4 %13 = OpLoad %9 
					                                       f32_4 %16 = OpCompositeConstruct %14 %14 %14 %14 
					                                       f32_4 %17 = OpCompositeConstruct %15 %15 %15 %15 
					                                       f32_4 %18 = OpExtInst %1 43 %13 %16 %17 
					                                                     OpStore %9 %18 
					                                       f32_3 %24 = OpLoad %23 
					                                       f32_4 %25 = OpVectorShuffle %24 %24 0 1 0 1 
					                              Uniform f32_4* %36 = OpAccessChain %32 %34 
					                                       f32_4 %37 = OpLoad %36 
					                                       f32_4 %38 = OpVectorShuffle %37 %37 0 1 0 1 
					                                       f32_4 %39 = OpFMul %25 %38 
					                              Uniform f32_4* %40 = OpAccessChain %32 %34 
					                                       f32_4 %41 = OpLoad %40 
					                                       f32_4 %42 = OpVectorShuffle %41 %41 2 3 2 3 
					                                       f32_4 %43 = OpFAdd %39 %42 
					                                                     OpStore %20 %43 
					                                       f32_3 %46 = OpLoad %45 
					                                       f32_4 %47 = OpVectorShuffle %46 %46 1 1 1 1 
					                              Uniform f32_4* %50 = OpAccessChain %32 %48 %49 
					                                       f32_4 %51 = OpLoad %50 
					                                       f32_4 %52 = OpFMul %47 %51 
					                                                     OpStore %44 %52 
					                              Uniform f32_4* %53 = OpAccessChain %32 %48 %48 
					                                       f32_4 %54 = OpLoad %53 
					                                       f32_3 %55 = OpLoad %45 
					                                       f32_4 %56 = OpVectorShuffle %55 %55 0 0 0 0 
					                                       f32_4 %57 = OpFMul %54 %56 
					                                       f32_4 %58 = OpLoad %44 
					                                       f32_4 %59 = OpFAdd %57 %58 
					                                                     OpStore %44 %59 
					                              Uniform f32_4* %60 = OpAccessChain %32 %48 %34 
					                                       f32_4 %61 = OpLoad %60 
					                                       f32_3 %62 = OpLoad %45 
					                                       f32_4 %63 = OpVectorShuffle %62 %62 2 2 2 2 
					                                       f32_4 %64 = OpFMul %61 %63 
					                                       f32_4 %65 = OpLoad %44 
					                                       f32_4 %66 = OpFAdd %64 %65 
					                                                     OpStore %44 %66 
					                                       f32_4 %67 = OpLoad %44 
					                              Uniform f32_4* %69 = OpAccessChain %32 %48 %68 
					                                       f32_4 %70 = OpLoad %69 
					                                       f32_4 %71 = OpFAdd %67 %70 
					                                                     OpStore %44 %71 
					                                       f32_4 %73 = OpLoad %44 
					                                       f32_4 %74 = OpVectorShuffle %73 %73 1 1 1 1 
					                              Uniform f32_4* %75 = OpAccessChain %32 %49 %49 
					                                       f32_4 %76 = OpLoad %75 
					                                       f32_4 %77 = OpFMul %74 %76 
					                                                     OpStore %72 %77 
					                              Uniform f32_4* %78 = OpAccessChain %32 %49 %48 
					                                       f32_4 %79 = OpLoad %78 
					                                       f32_4 %80 = OpLoad %44 
					                                       f32_4 %81 = OpVectorShuffle %80 %80 0 0 0 0 
					                                       f32_4 %82 = OpFMul %79 %81 
					                                       f32_4 %83 = OpLoad %72 
					                                       f32_4 %84 = OpFAdd %82 %83 
					                                                     OpStore %72 %84 
					                              Uniform f32_4* %85 = OpAccessChain %32 %49 %34 
					                                       f32_4 %86 = OpLoad %85 
					                                       f32_4 %87 = OpLoad %44 
					                                       f32_4 %88 = OpVectorShuffle %87 %87 2 2 2 2 
					                                       f32_4 %89 = OpFMul %86 %88 
					                                       f32_4 %90 = OpLoad %72 
					                                       f32_4 %91 = OpFAdd %89 %90 
					                                                     OpStore %72 %91 
					                              Uniform f32_4* %97 = OpAccessChain %32 %49 %68 
					                                       f32_4 %98 = OpLoad %97 
					                                       f32_4 %99 = OpLoad %44 
					                                      f32_4 %100 = OpVectorShuffle %99 %99 3 3 3 3 
					                                      f32_4 %101 = OpFMul %98 %100 
					                                      f32_4 %102 = OpLoad %72 
					                                      f32_4 %103 = OpFAdd %101 %102 
					                              Output f32_4* %104 = OpAccessChain %96 %48 
					                                                     OpStore %104 %103 
					                                      f32_4 %108 = OpLoad %20 
					                                      f32_2 %109 = OpVectorShuffle %108 %108 0 1 
					                                                     OpStore %107 %109 
					                                      f32_4 %111 = OpLoad %20 
					                                      f32_2 %112 = OpVectorShuffle %111 %111 2 3 
					                                                     OpStore %110 %112 
					                                Output f32* %114 = OpAccessChain %96 %48 %92 
					                                        f32 %115 = OpLoad %114 
					                                        f32 %116 = OpFNegate %115 
					                                Output f32* %117 = OpAccessChain %96 %48 %92 
					                                                     OpStore %117 %116 
					                                                     OpReturn
					                                                     OpFunctionEnd
					; SPIR-V
					; Version: 1.0
					; Generator: Khronos Glslang Reference Front End; 1
					; Bound: 74
					; Schema: 0
					                                                    OpCapability Shader 
					                                             %1 = OpExtInstImport "GLSL.std.450" 
					                                                    OpMemoryModel Logical GLSL450 
					                                                    OpEntryPoint Fragment %4 "main" %17 %24 %59 
					                                                    OpExecutionMode %4 OriginUpperLeft 
					                                                    OpDecorate %9 RelaxedPrecision 
					                                                    OpDecorate %13 RelaxedPrecision 
					                                                    OpDecorate %13 DescriptorSet 13 
					                                                    OpDecorate %13 Binding 13 
					                                                    OpDecorate %14 RelaxedPrecision 
					                                                    OpDecorate %17 Location 17 
					                                                    OpDecorate %20 RelaxedPrecision 
					                                                    OpDecorate %21 RelaxedPrecision 
					                                                    OpDecorate %22 RelaxedPrecision 
					                                                    OpDecorate %24 RelaxedPrecision 
					                                                    OpDecorate %24 Location 24 
					                                                    OpDecorate %25 RelaxedPrecision 
					                                                    OpDecorate %26 RelaxedPrecision 
					                                                    OpDecorate %27 RelaxedPrecision 
					                                                    OpDecorate %28 RelaxedPrecision 
					                                                    OpDecorate %29 RelaxedPrecision 
					                                                    OpDecorate %30 RelaxedPrecision 
					                                                    OpMemberDecorate %31 0 RelaxedPrecision 
					                                                    OpMemberDecorate %31 0 Offset 31 
					                                                    OpDecorate %31 Block 
					                                                    OpDecorate %33 DescriptorSet 33 
					                                                    OpDecorate %33 Binding 33 
					                                                    OpDecorate %38 RelaxedPrecision 
					                                                    OpDecorate %39 RelaxedPrecision 
					                                                    OpDecorate %41 RelaxedPrecision 
					                                                    OpDecorate %42 RelaxedPrecision 
					                                                    OpDecorate %45 RelaxedPrecision 
					                                                    OpDecorate %56 RelaxedPrecision 
					                                                    OpDecorate %59 RelaxedPrecision 
					                                                    OpDecorate %59 Location 59 
					                                                    OpDecorate %60 RelaxedPrecision 
					                                                    OpDecorate %63 RelaxedPrecision 
					                                             %2 = OpTypeVoid 
					                                             %3 = OpTypeFunction %2 
					                                             %6 = OpTypeFloat 32 
					                                             %7 = OpTypeVector %6 4 
					                                             %8 = OpTypePointer Private %7 
					                              Private f32_4* %9 = OpVariable Private 
					                                            %10 = OpTypeImage %6 Dim2D 0 0 0 1 Unknown 
					                                            %11 = OpTypeSampledImage %10 
					                                            %12 = OpTypePointer UniformConstant %11 
					UniformConstant read_only Texture2DSampled* %13 = OpVariable UniformConstant 
					                                            %15 = OpTypeVector %6 2 
					                                            %16 = OpTypePointer Input %15 
					                               Input f32_2* %17 = OpVariable Input 
					                             Private f32_4* %20 = OpVariable Private 
					                                            %23 = OpTypePointer Input %7 
					                               Input f32_4* %24 = OpVariable Input 
					                             Private f32_4* %28 = OpVariable Private 
					                                            %31 = OpTypeStruct %7 
					                                            %32 = OpTypePointer Uniform %31 
					                   Uniform struct {f32_4;}* %33 = OpVariable Uniform 
					                                            %34 = OpTypeInt 32 1 
					                                        i32 %35 = OpConstant 0 
					                                            %36 = OpTypePointer Uniform %7 
					                                            %40 = OpTypeVector %6 3 
					                                        f32 %43 = OpConstant 3,674022E-40 
					                                      f32_3 %44 = OpConstantComposite %43 %43 %43 
					                                            %48 = OpTypeBool 
					                                            %49 = OpTypePointer Private %48 
					                              Private bool* %50 = OpVariable Private 
					                                        f32 %51 = OpConstant 3,674022E-40 
					                                            %52 = OpTypeInt 32 0 
					                                        u32 %53 = OpConstant 3 
					                                            %54 = OpTypePointer Private %6 
					                                            %58 = OpTypePointer Output %7 
					                              Output f32_4* %59 = OpVariable Output 
					                                        f32 %61 = OpConstant 3,674022E-40 
					                                      f32_4 %62 = OpConstantComposite %61 %61 %61 %43 
					                                        i32 %65 = OpConstant 1 
					                                        i32 %67 = OpConstant -1 
					                                        void %4 = OpFunction None %3 
					                                             %5 = OpLabel 
					                 read_only Texture2DSampled %14 = OpLoad %13 
					                                      f32_2 %18 = OpLoad %17 
					                                      f32_4 %19 = OpImageSampleImplicitLod %14 %18 
					                                                    OpStore %9 %19 
					                                      f32_4 %21 = OpLoad %9 
					                                      f32_4 %22 = OpVectorShuffle %21 %21 3 0 1 2 
					                                      f32_4 %25 = OpLoad %24 
					                                      f32_4 %26 = OpVectorShuffle %25 %25 3 0 1 2 
					                                      f32_4 %27 = OpFMul %22 %26 
					                                                    OpStore %20 %27 
					                                      f32_4 %29 = OpLoad %20 
					                                      f32_4 %30 = OpVectorShuffle %29 %29 1 2 3 0 
					                             Uniform f32_4* %37 = OpAccessChain %33 %35 
					                                      f32_4 %38 = OpLoad %37 
					                                      f32_4 %39 = OpFMul %30 %38 
					                                                    OpStore %28 %39 
					                                      f32_4 %41 = OpLoad %28 
					                                      f32_3 %42 = OpVectorShuffle %41 %41 0 1 2 
					                                      f32_3 %45 = OpFMul %42 %44 
					                                      f32_4 %46 = OpLoad %28 
					                                      f32_4 %47 = OpVectorShuffle %46 %45 4 5 6 3 
					                                                    OpStore %28 %47 
					                               Private f32* %55 = OpAccessChain %28 %53 
					                                        f32 %56 = OpLoad %55 
					                                       bool %57 = OpFOrdGreaterThanEqual %51 %56 
					                                                    OpStore %50 %57 
					                                      f32_4 %60 = OpLoad %28 
					                                      f32_4 %63 = OpFMul %60 %62 
					                                                    OpStore %59 %63 
					                                       bool %64 = OpLoad %50 
					                                        i32 %66 = OpSelect %64 %65 %35 
					                                        i32 %68 = OpIMul %66 %67 
					                                       bool %69 = OpINotEqual %68 %35 
					                                                    OpSelectionMerge %71 None 
					                                                    OpBranchConditional %69 %70 %71 
					                                            %70 = OpLabel 
					                                                    OpKill
					                                            %71 = OpLabel 
					                                                    OpReturn
					                                                    OpFunctionEnd"
				}
			}
			Program "fp" {
				SubProgram "gles hw_tier00 " {
					"!!GLES"
				}
				SubProgram "gles hw_tier01 " {
					"!!GLES"
				}
				SubProgram "gles hw_tier02 " {
					"!!GLES"
				}
				SubProgram "gles3 hw_tier00 " {
					"!!GLES3"
				}
				SubProgram "gles3 hw_tier01 " {
					"!!GLES3"
				}
				SubProgram "gles3 hw_tier02 " {
					"!!GLES3"
				}
				SubProgram "vulkan hw_tier00 " {
					"spirv"
				}
				SubProgram "vulkan hw_tier01 " {
					"spirv"
				}
				SubProgram "vulkan hw_tier02 " {
					"spirv"
				}
			}
		}
	}
}