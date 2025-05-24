Shader "Custom/InvisibleMask" {
	Properties {
	}
	SubShader {
		Tags { "QUEUE" = "Geometry+1" }
		Pass {
			Tags { "QUEUE" = "Geometry+1" }
			Blend Zero One, Zero One
			ZClip Off
			Fog {
				Mode Off
			}
			GpuProgramID 11839
			Program "vp" {
				SubProgram "gles hw_tier00 " {
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesColor;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					varying lowp vec4 xlv_COLOR0;
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
					  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
					}
					
					
					#endif
					#ifdef FRAGMENT
					varying lowp vec4 xlv_COLOR0;
					void main ()
					{
					  gl_FragData[0] = xlv_COLOR0;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier01 " {
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesColor;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					varying lowp vec4 xlv_COLOR0;
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
					  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
					}
					
					
					#endif
					#ifdef FRAGMENT
					varying lowp vec4 xlv_COLOR0;
					void main ()
					{
					  gl_FragData[0] = xlv_COLOR0;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier02 " {
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesColor;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixVP;
					varying lowp vec4 xlv_COLOR0;
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
					  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
					}
					
					
					#endif
					#ifdef FRAGMENT
					varying lowp vec4 xlv_COLOR0;
					void main ()
					{
					  gl_FragData[0] = xlv_COLOR0;
					}
					
					
					#endif"
				}
				SubProgram "gles3 hw_tier00 " {
					"!!GLES3
					#ifdef VERTEX
					#version 300 es
					
					uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
					uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
					in highp vec3 in_POSITION0;
					in mediump vec4 in_COLOR0;
					out mediump vec4 vs_COLOR0;
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
					    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
					    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
					    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    return;
					}
					
					#endif
					#ifdef FRAGMENT
					#version 300 es
					
					precision highp int;
					in mediump vec4 vs_COLOR0;
					layout(location = 0) out mediump vec4 SV_Target0;
					void main()
					{
					    SV_Target0 = vs_COLOR0;
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
					in highp vec3 in_POSITION0;
					in mediump vec4 in_COLOR0;
					out mediump vec4 vs_COLOR0;
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
					    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
					    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
					    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    return;
					}
					
					#endif
					#ifdef FRAGMENT
					#version 300 es
					
					precision highp int;
					in mediump vec4 vs_COLOR0;
					layout(location = 0) out mediump vec4 SV_Target0;
					void main()
					{
					    SV_Target0 = vs_COLOR0;
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
					in highp vec3 in_POSITION0;
					in mediump vec4 in_COLOR0;
					out mediump vec4 vs_COLOR0;
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
					    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
					    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
					    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    return;
					}
					
					#endif
					#ifdef FRAGMENT
					#version 300 es
					
					precision highp int;
					in mediump vec4 vs_COLOR0;
					layout(location = 0) out mediump vec4 SV_Target0;
					void main()
					{
					    SV_Target0 = vs_COLOR0;
					    return;
					}
					
					#endif"
				}
				SubProgram "vulkan hw_tier00 " {
					"spirv
					
					; SPIR-V
					; Version: 1.0
					; Generator: Khronos Glslang Reference Front End; 1
					; Bound: 99
					; Schema: 0
					                                              OpCapability Shader 
					                                       %1 = OpExtInstImport "GLSL.std.450" 
					                                              OpMemoryModel Logical GLSL450 
					                                              OpEntryPoint Vertex %4 "main" %9 %11 %23 %84 
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
					                                              OpDecorate %30 Block 
					                                              OpDecorate %32 DescriptorSet 32 
					                                              OpDecorate %32 Binding 32 
					                                              OpMemberDecorate %82 0 BuiltIn 82 
					                                              OpMemberDecorate %82 1 BuiltIn 82 
					                                              OpMemberDecorate %82 2 BuiltIn 82 
					                                              OpDecorate %82 Block 
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
					                                      %30 = OpTypeStruct %28 %29 
					                                      %31 = OpTypePointer Uniform %30 
					Uniform struct {f32_4[4]; f32_4[4];}* %32 = OpVariable Uniform 
					                                      %33 = OpTypeInt 32 1 
					                                  i32 %34 = OpConstant 0 
					                                  i32 %35 = OpConstant 1 
					                                      %36 = OpTypePointer Uniform %7 
					                                  i32 %47 = OpConstant 2 
					                                  i32 %56 = OpConstant 3 
					                       Private f32_4* %60 = OpVariable Private 
					                                  u32 %80 = OpConstant 1 
					                                      %81 = OpTypeArray %6 %80 
					                                      %82 = OpTypeStruct %7 %6 %81 
					                                      %83 = OpTypePointer Output %82 
					 Output struct {f32_4; f32; f32[1];}* %84 = OpVariable Output 
					                                      %93 = OpTypePointer Output %6 
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
					                                f32_4 %25 = OpVectorShuffle %24 %24 1 1 1 1 
					                       Uniform f32_4* %37 = OpAccessChain %32 %34 %35 
					                                f32_4 %38 = OpLoad %37 
					                                f32_4 %39 = OpFMul %25 %38 
					                                              OpStore %20 %39 
					                       Uniform f32_4* %40 = OpAccessChain %32 %34 %34 
					                                f32_4 %41 = OpLoad %40 
					                                f32_3 %42 = OpLoad %23 
					                                f32_4 %43 = OpVectorShuffle %42 %42 0 0 0 0 
					                                f32_4 %44 = OpFMul %41 %43 
					                                f32_4 %45 = OpLoad %20 
					                                f32_4 %46 = OpFAdd %44 %45 
					                                              OpStore %20 %46 
					                       Uniform f32_4* %48 = OpAccessChain %32 %34 %47 
					                                f32_4 %49 = OpLoad %48 
					                                f32_3 %50 = OpLoad %23 
					                                f32_4 %51 = OpVectorShuffle %50 %50 2 2 2 2 
					                                f32_4 %52 = OpFMul %49 %51 
					                                f32_4 %53 = OpLoad %20 
					                                f32_4 %54 = OpFAdd %52 %53 
					                                              OpStore %20 %54 
					                                f32_4 %55 = OpLoad %20 
					                       Uniform f32_4* %57 = OpAccessChain %32 %34 %56 
					                                f32_4 %58 = OpLoad %57 
					                                f32_4 %59 = OpFAdd %55 %58 
					                                              OpStore %20 %59 
					                                f32_4 %61 = OpLoad %20 
					                                f32_4 %62 = OpVectorShuffle %61 %61 1 1 1 1 
					                       Uniform f32_4* %63 = OpAccessChain %32 %35 %35 
					                                f32_4 %64 = OpLoad %63 
					                                f32_4 %65 = OpFMul %62 %64 
					                                              OpStore %60 %65 
					                       Uniform f32_4* %66 = OpAccessChain %32 %35 %34 
					                                f32_4 %67 = OpLoad %66 
					                                f32_4 %68 = OpLoad %20 
					                                f32_4 %69 = OpVectorShuffle %68 %68 0 0 0 0 
					                                f32_4 %70 = OpFMul %67 %69 
					                                f32_4 %71 = OpLoad %60 
					                                f32_4 %72 = OpFAdd %70 %71 
					                                              OpStore %60 %72 
					                       Uniform f32_4* %73 = OpAccessChain %32 %35 %47 
					                                f32_4 %74 = OpLoad %73 
					                                f32_4 %75 = OpLoad %20 
					                                f32_4 %76 = OpVectorShuffle %75 %75 2 2 2 2 
					                                f32_4 %77 = OpFMul %74 %76 
					                                f32_4 %78 = OpLoad %60 
					                                f32_4 %79 = OpFAdd %77 %78 
					                                              OpStore %60 %79 
					                       Uniform f32_4* %85 = OpAccessChain %32 %35 %56 
					                                f32_4 %86 = OpLoad %85 
					                                f32_4 %87 = OpLoad %20 
					                                f32_4 %88 = OpVectorShuffle %87 %87 3 3 3 3 
					                                f32_4 %89 = OpFMul %86 %88 
					                                f32_4 %90 = OpLoad %60 
					                                f32_4 %91 = OpFAdd %89 %90 
					                        Output f32_4* %92 = OpAccessChain %84 %34 
					                                              OpStore %92 %91 
					                          Output f32* %94 = OpAccessChain %84 %34 %80 
					                                  f32 %95 = OpLoad %94 
					                                  f32 %96 = OpFNegate %95 
					                          Output f32* %97 = OpAccessChain %84 %34 %80 
					                                              OpStore %97 %96 
					                                              OpReturn
					                                              OpFunctionEnd
					; SPIR-V
					; Version: 1.0
					; Generator: Khronos Glslang Reference Front End; 1
					; Bound: 14
					; Schema: 0
					                     OpCapability Shader 
					              %1 = OpExtInstImport "GLSL.std.450" 
					                     OpMemoryModel Logical GLSL450 
					                     OpEntryPoint Fragment %4 "main" %9 %11 
					                     OpExecutionMode %4 OriginUpperLeft 
					                     OpDecorate %9 RelaxedPrecision 
					                     OpDecorate %9 Location 9 
					                     OpDecorate %11 RelaxedPrecision 
					                     OpDecorate %11 Location 11 
					                     OpDecorate %12 RelaxedPrecision 
					              %2 = OpTypeVoid 
					              %3 = OpTypeFunction %2 
					              %6 = OpTypeFloat 32 
					              %7 = OpTypeVector %6 4 
					              %8 = OpTypePointer Output %7 
					Output f32_4* %9 = OpVariable Output 
					             %10 = OpTypePointer Input %7 
					Input f32_4* %11 = OpVariable Input 
					         void %4 = OpFunction None %3 
					              %5 = OpLabel 
					       f32_4 %12 = OpLoad %11 
					                     OpStore %9 %12 
					                     OpReturn
					                     OpFunctionEnd"
				}
				SubProgram "vulkan hw_tier01 " {
					"spirv
					
					; SPIR-V
					; Version: 1.0
					; Generator: Khronos Glslang Reference Front End; 1
					; Bound: 99
					; Schema: 0
					                                              OpCapability Shader 
					                                       %1 = OpExtInstImport "GLSL.std.450" 
					                                              OpMemoryModel Logical GLSL450 
					                                              OpEntryPoint Vertex %4 "main" %9 %11 %23 %84 
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
					                                              OpDecorate %30 Block 
					                                              OpDecorate %32 DescriptorSet 32 
					                                              OpDecorate %32 Binding 32 
					                                              OpMemberDecorate %82 0 BuiltIn 82 
					                                              OpMemberDecorate %82 1 BuiltIn 82 
					                                              OpMemberDecorate %82 2 BuiltIn 82 
					                                              OpDecorate %82 Block 
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
					                                      %30 = OpTypeStruct %28 %29 
					                                      %31 = OpTypePointer Uniform %30 
					Uniform struct {f32_4[4]; f32_4[4];}* %32 = OpVariable Uniform 
					                                      %33 = OpTypeInt 32 1 
					                                  i32 %34 = OpConstant 0 
					                                  i32 %35 = OpConstant 1 
					                                      %36 = OpTypePointer Uniform %7 
					                                  i32 %47 = OpConstant 2 
					                                  i32 %56 = OpConstant 3 
					                       Private f32_4* %60 = OpVariable Private 
					                                  u32 %80 = OpConstant 1 
					                                      %81 = OpTypeArray %6 %80 
					                                      %82 = OpTypeStruct %7 %6 %81 
					                                      %83 = OpTypePointer Output %82 
					 Output struct {f32_4; f32; f32[1];}* %84 = OpVariable Output 
					                                      %93 = OpTypePointer Output %6 
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
					                                f32_4 %25 = OpVectorShuffle %24 %24 1 1 1 1 
					                       Uniform f32_4* %37 = OpAccessChain %32 %34 %35 
					                                f32_4 %38 = OpLoad %37 
					                                f32_4 %39 = OpFMul %25 %38 
					                                              OpStore %20 %39 
					                       Uniform f32_4* %40 = OpAccessChain %32 %34 %34 
					                                f32_4 %41 = OpLoad %40 
					                                f32_3 %42 = OpLoad %23 
					                                f32_4 %43 = OpVectorShuffle %42 %42 0 0 0 0 
					                                f32_4 %44 = OpFMul %41 %43 
					                                f32_4 %45 = OpLoad %20 
					                                f32_4 %46 = OpFAdd %44 %45 
					                                              OpStore %20 %46 
					                       Uniform f32_4* %48 = OpAccessChain %32 %34 %47 
					                                f32_4 %49 = OpLoad %48 
					                                f32_3 %50 = OpLoad %23 
					                                f32_4 %51 = OpVectorShuffle %50 %50 2 2 2 2 
					                                f32_4 %52 = OpFMul %49 %51 
					                                f32_4 %53 = OpLoad %20 
					                                f32_4 %54 = OpFAdd %52 %53 
					                                              OpStore %20 %54 
					                                f32_4 %55 = OpLoad %20 
					                       Uniform f32_4* %57 = OpAccessChain %32 %34 %56 
					                                f32_4 %58 = OpLoad %57 
					                                f32_4 %59 = OpFAdd %55 %58 
					                                              OpStore %20 %59 
					                                f32_4 %61 = OpLoad %20 
					                                f32_4 %62 = OpVectorShuffle %61 %61 1 1 1 1 
					                       Uniform f32_4* %63 = OpAccessChain %32 %35 %35 
					                                f32_4 %64 = OpLoad %63 
					                                f32_4 %65 = OpFMul %62 %64 
					                                              OpStore %60 %65 
					                       Uniform f32_4* %66 = OpAccessChain %32 %35 %34 
					                                f32_4 %67 = OpLoad %66 
					                                f32_4 %68 = OpLoad %20 
					                                f32_4 %69 = OpVectorShuffle %68 %68 0 0 0 0 
					                                f32_4 %70 = OpFMul %67 %69 
					                                f32_4 %71 = OpLoad %60 
					                                f32_4 %72 = OpFAdd %70 %71 
					                                              OpStore %60 %72 
					                       Uniform f32_4* %73 = OpAccessChain %32 %35 %47 
					                                f32_4 %74 = OpLoad %73 
					                                f32_4 %75 = OpLoad %20 
					                                f32_4 %76 = OpVectorShuffle %75 %75 2 2 2 2 
					                                f32_4 %77 = OpFMul %74 %76 
					                                f32_4 %78 = OpLoad %60 
					                                f32_4 %79 = OpFAdd %77 %78 
					                                              OpStore %60 %79 
					                       Uniform f32_4* %85 = OpAccessChain %32 %35 %56 
					                                f32_4 %86 = OpLoad %85 
					                                f32_4 %87 = OpLoad %20 
					                                f32_4 %88 = OpVectorShuffle %87 %87 3 3 3 3 
					                                f32_4 %89 = OpFMul %86 %88 
					                                f32_4 %90 = OpLoad %60 
					                                f32_4 %91 = OpFAdd %89 %90 
					                        Output f32_4* %92 = OpAccessChain %84 %34 
					                                              OpStore %92 %91 
					                          Output f32* %94 = OpAccessChain %84 %34 %80 
					                                  f32 %95 = OpLoad %94 
					                                  f32 %96 = OpFNegate %95 
					                          Output f32* %97 = OpAccessChain %84 %34 %80 
					                                              OpStore %97 %96 
					                                              OpReturn
					                                              OpFunctionEnd
					; SPIR-V
					; Version: 1.0
					; Generator: Khronos Glslang Reference Front End; 1
					; Bound: 14
					; Schema: 0
					                     OpCapability Shader 
					              %1 = OpExtInstImport "GLSL.std.450" 
					                     OpMemoryModel Logical GLSL450 
					                     OpEntryPoint Fragment %4 "main" %9 %11 
					                     OpExecutionMode %4 OriginUpperLeft 
					                     OpDecorate %9 RelaxedPrecision 
					                     OpDecorate %9 Location 9 
					                     OpDecorate %11 RelaxedPrecision 
					                     OpDecorate %11 Location 11 
					                     OpDecorate %12 RelaxedPrecision 
					              %2 = OpTypeVoid 
					              %3 = OpTypeFunction %2 
					              %6 = OpTypeFloat 32 
					              %7 = OpTypeVector %6 4 
					              %8 = OpTypePointer Output %7 
					Output f32_4* %9 = OpVariable Output 
					             %10 = OpTypePointer Input %7 
					Input f32_4* %11 = OpVariable Input 
					         void %4 = OpFunction None %3 
					              %5 = OpLabel 
					       f32_4 %12 = OpLoad %11 
					                     OpStore %9 %12 
					                     OpReturn
					                     OpFunctionEnd"
				}
				SubProgram "vulkan hw_tier02 " {
					"spirv
					
					; SPIR-V
					; Version: 1.0
					; Generator: Khronos Glslang Reference Front End; 1
					; Bound: 99
					; Schema: 0
					                                              OpCapability Shader 
					                                       %1 = OpExtInstImport "GLSL.std.450" 
					                                              OpMemoryModel Logical GLSL450 
					                                              OpEntryPoint Vertex %4 "main" %9 %11 %23 %84 
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
					                                              OpDecorate %30 Block 
					                                              OpDecorate %32 DescriptorSet 32 
					                                              OpDecorate %32 Binding 32 
					                                              OpMemberDecorate %82 0 BuiltIn 82 
					                                              OpMemberDecorate %82 1 BuiltIn 82 
					                                              OpMemberDecorate %82 2 BuiltIn 82 
					                                              OpDecorate %82 Block 
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
					                                      %30 = OpTypeStruct %28 %29 
					                                      %31 = OpTypePointer Uniform %30 
					Uniform struct {f32_4[4]; f32_4[4];}* %32 = OpVariable Uniform 
					                                      %33 = OpTypeInt 32 1 
					                                  i32 %34 = OpConstant 0 
					                                  i32 %35 = OpConstant 1 
					                                      %36 = OpTypePointer Uniform %7 
					                                  i32 %47 = OpConstant 2 
					                                  i32 %56 = OpConstant 3 
					                       Private f32_4* %60 = OpVariable Private 
					                                  u32 %80 = OpConstant 1 
					                                      %81 = OpTypeArray %6 %80 
					                                      %82 = OpTypeStruct %7 %6 %81 
					                                      %83 = OpTypePointer Output %82 
					 Output struct {f32_4; f32; f32[1];}* %84 = OpVariable Output 
					                                      %93 = OpTypePointer Output %6 
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
					                                f32_4 %25 = OpVectorShuffle %24 %24 1 1 1 1 
					                       Uniform f32_4* %37 = OpAccessChain %32 %34 %35 
					                                f32_4 %38 = OpLoad %37 
					                                f32_4 %39 = OpFMul %25 %38 
					                                              OpStore %20 %39 
					                       Uniform f32_4* %40 = OpAccessChain %32 %34 %34 
					                                f32_4 %41 = OpLoad %40 
					                                f32_3 %42 = OpLoad %23 
					                                f32_4 %43 = OpVectorShuffle %42 %42 0 0 0 0 
					                                f32_4 %44 = OpFMul %41 %43 
					                                f32_4 %45 = OpLoad %20 
					                                f32_4 %46 = OpFAdd %44 %45 
					                                              OpStore %20 %46 
					                       Uniform f32_4* %48 = OpAccessChain %32 %34 %47 
					                                f32_4 %49 = OpLoad %48 
					                                f32_3 %50 = OpLoad %23 
					                                f32_4 %51 = OpVectorShuffle %50 %50 2 2 2 2 
					                                f32_4 %52 = OpFMul %49 %51 
					                                f32_4 %53 = OpLoad %20 
					                                f32_4 %54 = OpFAdd %52 %53 
					                                              OpStore %20 %54 
					                                f32_4 %55 = OpLoad %20 
					                       Uniform f32_4* %57 = OpAccessChain %32 %34 %56 
					                                f32_4 %58 = OpLoad %57 
					                                f32_4 %59 = OpFAdd %55 %58 
					                                              OpStore %20 %59 
					                                f32_4 %61 = OpLoad %20 
					                                f32_4 %62 = OpVectorShuffle %61 %61 1 1 1 1 
					                       Uniform f32_4* %63 = OpAccessChain %32 %35 %35 
					                                f32_4 %64 = OpLoad %63 
					                                f32_4 %65 = OpFMul %62 %64 
					                                              OpStore %60 %65 
					                       Uniform f32_4* %66 = OpAccessChain %32 %35 %34 
					                                f32_4 %67 = OpLoad %66 
					                                f32_4 %68 = OpLoad %20 
					                                f32_4 %69 = OpVectorShuffle %68 %68 0 0 0 0 
					                                f32_4 %70 = OpFMul %67 %69 
					                                f32_4 %71 = OpLoad %60 
					                                f32_4 %72 = OpFAdd %70 %71 
					                                              OpStore %60 %72 
					                       Uniform f32_4* %73 = OpAccessChain %32 %35 %47 
					                                f32_4 %74 = OpLoad %73 
					                                f32_4 %75 = OpLoad %20 
					                                f32_4 %76 = OpVectorShuffle %75 %75 2 2 2 2 
					                                f32_4 %77 = OpFMul %74 %76 
					                                f32_4 %78 = OpLoad %60 
					                                f32_4 %79 = OpFAdd %77 %78 
					                                              OpStore %60 %79 
					                       Uniform f32_4* %85 = OpAccessChain %32 %35 %56 
					                                f32_4 %86 = OpLoad %85 
					                                f32_4 %87 = OpLoad %20 
					                                f32_4 %88 = OpVectorShuffle %87 %87 3 3 3 3 
					                                f32_4 %89 = OpFMul %86 %88 
					                                f32_4 %90 = OpLoad %60 
					                                f32_4 %91 = OpFAdd %89 %90 
					                        Output f32_4* %92 = OpAccessChain %84 %34 
					                                              OpStore %92 %91 
					                          Output f32* %94 = OpAccessChain %84 %34 %80 
					                                  f32 %95 = OpLoad %94 
					                                  f32 %96 = OpFNegate %95 
					                          Output f32* %97 = OpAccessChain %84 %34 %80 
					                                              OpStore %97 %96 
					                                              OpReturn
					                                              OpFunctionEnd
					; SPIR-V
					; Version: 1.0
					; Generator: Khronos Glslang Reference Front End; 1
					; Bound: 14
					; Schema: 0
					                     OpCapability Shader 
					              %1 = OpExtInstImport "GLSL.std.450" 
					                     OpMemoryModel Logical GLSL450 
					                     OpEntryPoint Fragment %4 "main" %9 %11 
					                     OpExecutionMode %4 OriginUpperLeft 
					                     OpDecorate %9 RelaxedPrecision 
					                     OpDecorate %9 Location 9 
					                     OpDecorate %11 RelaxedPrecision 
					                     OpDecorate %11 Location 11 
					                     OpDecorate %12 RelaxedPrecision 
					              %2 = OpTypeVoid 
					              %3 = OpTypeFunction %2 
					              %6 = OpTypeFloat 32 
					              %7 = OpTypeVector %6 4 
					              %8 = OpTypePointer Output %7 
					Output f32_4* %9 = OpVariable Output 
					             %10 = OpTypePointer Input %7 
					Input f32_4* %11 = OpVariable Input 
					         void %4 = OpFunction None %3 
					              %5 = OpLabel 
					       f32_4 %12 = OpLoad %11 
					                     OpStore %9 %12 
					                     OpReturn
					                     OpFunctionEnd"
				}
				SubProgram "gles hw_tier00 " {
					Keywords { "FOG_LINEAR" }
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesColor;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixV;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					varying lowp vec4 xlv_COLOR0;
					varying lowp float xlv_TEXCOORD0;
					void main ()
					{
					  highp vec3 tmpvar_1;
					  tmpvar_1 = _glesVertex.xyz;
					  highp vec4 tmpvar_2;
					  tmpvar_2.w = 1.0;
					  tmpvar_2.xyz = tmpvar_1;
					  highp vec3 tmpvar_3;
					  tmpvar_3 = ((unity_MatrixV * unity_ObjectToWorld) * tmpvar_2).xyz;
					  lowp vec4 tmpvar_4;
					  mediump vec4 tmpvar_5;
					  tmpvar_5 = clamp (_glesColor, 0.0, 1.0);
					  tmpvar_4 = tmpvar_5;
					  lowp float tmpvar_6;
					  highp float tmpvar_7;
					  tmpvar_7 = clamp (((
					    sqrt(dot (tmpvar_3, tmpvar_3))
					   * unity_FogParams.z) + unity_FogParams.w), 0.0, 1.0);
					  tmpvar_6 = tmpvar_7;
					  highp vec4 tmpvar_8;
					  tmpvar_8.w = 1.0;
					  tmpvar_8.xyz = tmpvar_1;
					  xlv_COLOR0 = tmpvar_4;
					  xlv_TEXCOORD0 = tmpvar_6;
					  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_8));
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					varying lowp vec4 xlv_COLOR0;
					varying lowp float xlv_TEXCOORD0;
					void main ()
					{
					  lowp vec4 col_1;
					  col_1.w = xlv_COLOR0.w;
					  col_1.xyz = mix (unity_FogColor.xyz, xlv_COLOR0.xyz, vec3(xlv_TEXCOORD0));
					  gl_FragData[0] = col_1;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier01 " {
					Keywords { "FOG_LINEAR" }
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesColor;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixV;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					varying lowp vec4 xlv_COLOR0;
					varying lowp float xlv_TEXCOORD0;
					void main ()
					{
					  highp vec3 tmpvar_1;
					  tmpvar_1 = _glesVertex.xyz;
					  highp vec4 tmpvar_2;
					  tmpvar_2.w = 1.0;
					  tmpvar_2.xyz = tmpvar_1;
					  highp vec3 tmpvar_3;
					  tmpvar_3 = ((unity_MatrixV * unity_ObjectToWorld) * tmpvar_2).xyz;
					  lowp vec4 tmpvar_4;
					  mediump vec4 tmpvar_5;
					  tmpvar_5 = clamp (_glesColor, 0.0, 1.0);
					  tmpvar_4 = tmpvar_5;
					  lowp float tmpvar_6;
					  highp float tmpvar_7;
					  tmpvar_7 = clamp (((
					    sqrt(dot (tmpvar_3, tmpvar_3))
					   * unity_FogParams.z) + unity_FogParams.w), 0.0, 1.0);
					  tmpvar_6 = tmpvar_7;
					  highp vec4 tmpvar_8;
					  tmpvar_8.w = 1.0;
					  tmpvar_8.xyz = tmpvar_1;
					  xlv_COLOR0 = tmpvar_4;
					  xlv_TEXCOORD0 = tmpvar_6;
					  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_8));
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					varying lowp vec4 xlv_COLOR0;
					varying lowp float xlv_TEXCOORD0;
					void main ()
					{
					  lowp vec4 col_1;
					  col_1.w = xlv_COLOR0.w;
					  col_1.xyz = mix (unity_FogColor.xyz, xlv_COLOR0.xyz, vec3(xlv_TEXCOORD0));
					  gl_FragData[0] = col_1;
					}
					
					
					#endif"
				}
				SubProgram "gles hw_tier02 " {
					Keywords { "FOG_LINEAR" }
					"!!GLES
					#version 100
					
					#ifdef VERTEX
					attribute vec4 _glesVertex;
					attribute vec4 _glesColor;
					uniform highp mat4 unity_ObjectToWorld;
					uniform highp mat4 unity_MatrixV;
					uniform highp mat4 unity_MatrixVP;
					uniform highp vec4 unity_FogParams;
					varying lowp vec4 xlv_COLOR0;
					varying lowp float xlv_TEXCOORD0;
					void main ()
					{
					  highp vec3 tmpvar_1;
					  tmpvar_1 = _glesVertex.xyz;
					  highp vec4 tmpvar_2;
					  tmpvar_2.w = 1.0;
					  tmpvar_2.xyz = tmpvar_1;
					  highp vec3 tmpvar_3;
					  tmpvar_3 = ((unity_MatrixV * unity_ObjectToWorld) * tmpvar_2).xyz;
					  lowp vec4 tmpvar_4;
					  mediump vec4 tmpvar_5;
					  tmpvar_5 = clamp (_glesColor, 0.0, 1.0);
					  tmpvar_4 = tmpvar_5;
					  lowp float tmpvar_6;
					  highp float tmpvar_7;
					  tmpvar_7 = clamp (((
					    sqrt(dot (tmpvar_3, tmpvar_3))
					   * unity_FogParams.z) + unity_FogParams.w), 0.0, 1.0);
					  tmpvar_6 = tmpvar_7;
					  highp vec4 tmpvar_8;
					  tmpvar_8.w = 1.0;
					  tmpvar_8.xyz = tmpvar_1;
					  xlv_COLOR0 = tmpvar_4;
					  xlv_TEXCOORD0 = tmpvar_6;
					  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_8));
					}
					
					
					#endif
					#ifdef FRAGMENT
					uniform lowp vec4 unity_FogColor;
					varying lowp vec4 xlv_COLOR0;
					varying lowp float xlv_TEXCOORD0;
					void main ()
					{
					  lowp vec4 col_1;
					  col_1.w = xlv_COLOR0.w;
					  col_1.xyz = mix (unity_FogColor.xyz, xlv_COLOR0.xyz, vec3(xlv_TEXCOORD0));
					  gl_FragData[0] = col_1;
					}
					
					
					#endif"
				}
				SubProgram "gles3 hw_tier00 " {
					Keywords { "FOG_LINEAR" }
					"!!GLES3
					#ifdef VERTEX
					#version 300 es
					
					uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
					uniform 	vec4 hlslcc_mtx4x4unity_MatrixV[4];
					uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
					uniform 	vec4 unity_FogParams;
					in highp vec3 in_POSITION0;
					in mediump vec4 in_COLOR0;
					out mediump vec4 vs_COLOR0;
					out mediump float vs_TEXCOORD0;
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
					    u_xlat0.xyz = hlslcc_mtx4x4unity_ObjectToWorld[1].yyy * hlslcc_mtx4x4unity_MatrixV[1].xyz;
					    u_xlat0.xyz = hlslcc_mtx4x4unity_MatrixV[0].xyz * hlslcc_mtx4x4unity_ObjectToWorld[1].xxx + u_xlat0.xyz;
					    u_xlat0.xyz = hlslcc_mtx4x4unity_MatrixV[2].xyz * hlslcc_mtx4x4unity_ObjectToWorld[1].zzz + u_xlat0.xyz;
					    u_xlat0.xyz = hlslcc_mtx4x4unity_MatrixV[3].xyz * hlslcc_mtx4x4unity_ObjectToWorld[1].www + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * in_POSITION0.yyy;
					    u_xlat1.xyz = hlslcc_mtx4x4unity_ObjectToWorld[0].yyy * hlslcc_mtx4x4unity_MatrixV[1].xyz;
					    u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[0].xyz * hlslcc_mtx4x4unity_ObjectToWorld[0].xxx + u_xlat1.xyz;
					    u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[2].xyz * hlslcc_mtx4x4unity_ObjectToWorld[0].zzz + u_xlat1.xyz;
					    u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[3].xyz * hlslcc_mtx4x4unity_ObjectToWorld[0].www + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat1.xyz * in_POSITION0.xxx + u_xlat0.xyz;
					    u_xlat1.xyz = hlslcc_mtx4x4unity_ObjectToWorld[2].yyy * hlslcc_mtx4x4unity_MatrixV[1].xyz;
					    u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[0].xyz * hlslcc_mtx4x4unity_ObjectToWorld[2].xxx + u_xlat1.xyz;
					    u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[2].xyz * hlslcc_mtx4x4unity_ObjectToWorld[2].zzz + u_xlat1.xyz;
					    u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[3].xyz * hlslcc_mtx4x4unity_ObjectToWorld[2].www + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat1.xyz * in_POSITION0.zzz + u_xlat0.xyz;
					    u_xlat1.xyz = hlslcc_mtx4x4unity_ObjectToWorld[3].yyy * hlslcc_mtx4x4unity_MatrixV[1].xyz;
					    u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[0].xyz * hlslcc_mtx4x4unity_ObjectToWorld[3].xxx + u_xlat1.xyz;
					    u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[2].xyz * hlslcc_mtx4x4unity_ObjectToWorld[3].zzz + u_xlat1.xyz;
					    u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[3].xyz * hlslcc_mtx4x4unity_ObjectToWorld[3].www + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat0.x = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat0.x = sqrt(u_xlat0.x);
					    u_xlat0.x = u_xlat0.x * unity_FogParams.z + unity_FogParams.w;
					#ifdef UNITY_ADRENO_ES3
					    u_xlat0.x = min(max(u_xlat0.x, 0.0), 1.0);
					#else
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					#endif
					    vs_TEXCOORD0 = u_xlat0.x;
					    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
					    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
					    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    return;
					}
					
					#endif
					#ifdef FRAGMENT
					#version 300 es
					
					precision highp int;
					uniform 	mediump vec4 unity_FogColor;
					in mediump vec4 vs_COLOR0;
					in mediump float vs_TEXCOORD0;
					layout(location = 0) out mediump vec4 SV_Target0;
					mediump vec3 u_xlat16_0;
					void main()
					{
					    u_xlat16_0.xyz = vs_COLOR0.xyz + (-unity_FogColor.xyz);
					    SV_Target0.xyz = vec3(vs_TEXCOORD0) * u_xlat16_0.xyz + unity_FogColor.xyz;
					    SV_Target0.w = vs_COLOR0.w;
					    return;
					}
					
					#endif"
				}
				SubProgram "gles3 hw_tier01 " {
					Keywords { "FOG_LINEAR" }
					"!!GLES3
					#ifdef VERTEX
					#version 300 es
					
					uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
					uniform 	vec4 hlslcc_mtx4x4unity_MatrixV[4];
					uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
					uniform 	vec4 unity_FogParams;
					in highp vec3 in_POSITION0;
					in mediump vec4 in_COLOR0;
					out mediump vec4 vs_COLOR0;
					out mediump float vs_TEXCOORD0;
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
					    u_xlat0.xyz = hlslcc_mtx4x4unity_ObjectToWorld[1].yyy * hlslcc_mtx4x4unity_MatrixV[1].xyz;
					    u_xlat0.xyz = hlslcc_mtx4x4unity_MatrixV[0].xyz * hlslcc_mtx4x4unity_ObjectToWorld[1].xxx + u_xlat0.xyz;
					    u_xlat0.xyz = hlslcc_mtx4x4unity_MatrixV[2].xyz * hlslcc_mtx4x4unity_ObjectToWorld[1].zzz + u_xlat0.xyz;
					    u_xlat0.xyz = hlslcc_mtx4x4unity_MatrixV[3].xyz * hlslcc_mtx4x4unity_ObjectToWorld[1].www + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * in_POSITION0.yyy;
					    u_xlat1.xyz = hlslcc_mtx4x4unity_ObjectToWorld[0].yyy * hlslcc_mtx4x4unity_MatrixV[1].xyz;
					    u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[0].xyz * hlslcc_mtx4x4unity_ObjectToWorld[0].xxx + u_xlat1.xyz;
					    u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[2].xyz * hlslcc_mtx4x4unity_ObjectToWorld[0].zzz + u_xlat1.xyz;
					    u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[3].xyz * hlslcc_mtx4x4unity_ObjectToWorld[0].www + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat1.xyz * in_POSITION0.xxx + u_xlat0.xyz;
					    u_xlat1.xyz = hlslcc_mtx4x4unity_ObjectToWorld[2].yyy * hlslcc_mtx4x4unity_MatrixV[1].xyz;
					    u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[0].xyz * hlslcc_mtx4x4unity_ObjectToWorld[2].xxx + u_xlat1.xyz;
					    u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[2].xyz * hlslcc_mtx4x4unity_ObjectToWorld[2].zzz + u_xlat1.xyz;
					    u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[3].xyz * hlslcc_mtx4x4unity_ObjectToWorld[2].www + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat1.xyz * in_POSITION0.zzz + u_xlat0.xyz;
					    u_xlat1.xyz = hlslcc_mtx4x4unity_ObjectToWorld[3].yyy * hlslcc_mtx4x4unity_MatrixV[1].xyz;
					    u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[0].xyz * hlslcc_mtx4x4unity_ObjectToWorld[3].xxx + u_xlat1.xyz;
					    u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[2].xyz * hlslcc_mtx4x4unity_ObjectToWorld[3].zzz + u_xlat1.xyz;
					    u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[3].xyz * hlslcc_mtx4x4unity_ObjectToWorld[3].www + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat0.x = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat0.x = sqrt(u_xlat0.x);
					    u_xlat0.x = u_xlat0.x * unity_FogParams.z + unity_FogParams.w;
					#ifdef UNITY_ADRENO_ES3
					    u_xlat0.x = min(max(u_xlat0.x, 0.0), 1.0);
					#else
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					#endif
					    vs_TEXCOORD0 = u_xlat0.x;
					    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
					    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
					    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    return;
					}
					
					#endif
					#ifdef FRAGMENT
					#version 300 es
					
					precision highp int;
					uniform 	mediump vec4 unity_FogColor;
					in mediump vec4 vs_COLOR0;
					in mediump float vs_TEXCOORD0;
					layout(location = 0) out mediump vec4 SV_Target0;
					mediump vec3 u_xlat16_0;
					void main()
					{
					    u_xlat16_0.xyz = vs_COLOR0.xyz + (-unity_FogColor.xyz);
					    SV_Target0.xyz = vec3(vs_TEXCOORD0) * u_xlat16_0.xyz + unity_FogColor.xyz;
					    SV_Target0.w = vs_COLOR0.w;
					    return;
					}
					
					#endif"
				}
				SubProgram "gles3 hw_tier02 " {
					Keywords { "FOG_LINEAR" }
					"!!GLES3
					#ifdef VERTEX
					#version 300 es
					
					uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
					uniform 	vec4 hlslcc_mtx4x4unity_MatrixV[4];
					uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
					uniform 	vec4 unity_FogParams;
					in highp vec3 in_POSITION0;
					in mediump vec4 in_COLOR0;
					out mediump vec4 vs_COLOR0;
					out mediump float vs_TEXCOORD0;
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
					    u_xlat0.xyz = hlslcc_mtx4x4unity_ObjectToWorld[1].yyy * hlslcc_mtx4x4unity_MatrixV[1].xyz;
					    u_xlat0.xyz = hlslcc_mtx4x4unity_MatrixV[0].xyz * hlslcc_mtx4x4unity_ObjectToWorld[1].xxx + u_xlat0.xyz;
					    u_xlat0.xyz = hlslcc_mtx4x4unity_MatrixV[2].xyz * hlslcc_mtx4x4unity_ObjectToWorld[1].zzz + u_xlat0.xyz;
					    u_xlat0.xyz = hlslcc_mtx4x4unity_MatrixV[3].xyz * hlslcc_mtx4x4unity_ObjectToWorld[1].www + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * in_POSITION0.yyy;
					    u_xlat1.xyz = hlslcc_mtx4x4unity_ObjectToWorld[0].yyy * hlslcc_mtx4x4unity_MatrixV[1].xyz;
					    u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[0].xyz * hlslcc_mtx4x4unity_ObjectToWorld[0].xxx + u_xlat1.xyz;
					    u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[2].xyz * hlslcc_mtx4x4unity_ObjectToWorld[0].zzz + u_xlat1.xyz;
					    u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[3].xyz * hlslcc_mtx4x4unity_ObjectToWorld[0].www + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat1.xyz * in_POSITION0.xxx + u_xlat0.xyz;
					    u_xlat1.xyz = hlslcc_mtx4x4unity_ObjectToWorld[2].yyy * hlslcc_mtx4x4unity_MatrixV[1].xyz;
					    u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[0].xyz * hlslcc_mtx4x4unity_ObjectToWorld[2].xxx + u_xlat1.xyz;
					    u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[2].xyz * hlslcc_mtx4x4unity_ObjectToWorld[2].zzz + u_xlat1.xyz;
					    u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[3].xyz * hlslcc_mtx4x4unity_ObjectToWorld[2].www + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat1.xyz * in_POSITION0.zzz + u_xlat0.xyz;
					    u_xlat1.xyz = hlslcc_mtx4x4unity_ObjectToWorld[3].yyy * hlslcc_mtx4x4unity_MatrixV[1].xyz;
					    u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[0].xyz * hlslcc_mtx4x4unity_ObjectToWorld[3].xxx + u_xlat1.xyz;
					    u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[2].xyz * hlslcc_mtx4x4unity_ObjectToWorld[3].zzz + u_xlat1.xyz;
					    u_xlat1.xyz = hlslcc_mtx4x4unity_MatrixV[3].xyz * hlslcc_mtx4x4unity_ObjectToWorld[3].www + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat0.xyz + u_xlat1.xyz;
					    u_xlat0.x = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat0.x = sqrt(u_xlat0.x);
					    u_xlat0.x = u_xlat0.x * unity_FogParams.z + unity_FogParams.w;
					#ifdef UNITY_ADRENO_ES3
					    u_xlat0.x = min(max(u_xlat0.x, 0.0), 1.0);
					#else
					    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
					#endif
					    vs_TEXCOORD0 = u_xlat0.x;
					    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
					    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
					    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    return;
					}
					
					#endif
					#ifdef FRAGMENT
					#version 300 es
					
					precision highp int;
					uniform 	mediump vec4 unity_FogColor;
					in mediump vec4 vs_COLOR0;
					in mediump float vs_TEXCOORD0;
					layout(location = 0) out mediump vec4 SV_Target0;
					mediump vec3 u_xlat16_0;
					void main()
					{
					    u_xlat16_0.xyz = vs_COLOR0.xyz + (-unity_FogColor.xyz);
					    SV_Target0.xyz = vec3(vs_TEXCOORD0) * u_xlat16_0.xyz + unity_FogColor.xyz;
					    SV_Target0.w = vs_COLOR0.w;
					    return;
					}
					
					#endif"
				}
				SubProgram "vulkan hw_tier00 " {
					Keywords { "FOG_LINEAR" }
					"spirv
					
					; SPIR-V
					; Version: 1.0
					; Generator: Khronos Glslang Reference Front End; 1
					; Bound: 345
					; Schema: 0
					                                                      OpCapability Shader 
					                                               %1 = OpExtInstImport "GLSL.std.450" 
					                                                      OpMemoryModel Logical GLSL450 
					                                                      OpEntryPoint Vertex %4 "main" %9 %11 %84 %282 %331 
					                                                      OpDecorate %9 RelaxedPrecision 
					                                                      OpDecorate %9 Location 9 
					                                                      OpDecorate %11 RelaxedPrecision 
					                                                      OpDecorate %11 Location 11 
					                                                      OpDecorate %12 RelaxedPrecision 
					                                                      OpDecorate %13 RelaxedPrecision 
					                                                      OpDecorate %16 RelaxedPrecision 
					                                                      OpDecorate %17 RelaxedPrecision 
					                                                      OpDecorate %18 RelaxedPrecision 
					                                                      OpDecorate %23 ArrayStride 23 
					                                                      OpDecorate %24 ArrayStride 24 
					                                                      OpDecorate %25 ArrayStride 25 
					                                                      OpMemberDecorate %26 0 Offset 26 
					                                                      OpMemberDecorate %26 1 Offset 26 
					                                                      OpMemberDecorate %26 2 Offset 26 
					                                                      OpMemberDecorate %26 3 Offset 26 
					                                                      OpDecorate %26 Block 
					                                                      OpDecorate %28 DescriptorSet 28 
					                                                      OpDecorate %28 Binding 28 
					                                                      OpDecorate %84 Location 84 
					                                                      OpDecorate %282 RelaxedPrecision 
					                                                      OpDecorate %282 Location 282 
					                                                      OpMemberDecorate %329 0 BuiltIn 329 
					                                                      OpMemberDecorate %329 1 BuiltIn 329 
					                                                      OpMemberDecorate %329 2 BuiltIn 329 
					                                                      OpDecorate %329 Block 
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
					                                              %21 = OpTypeInt 32 0 
					                                          u32 %22 = OpConstant 4 
					                                              %23 = OpTypeArray %7 %22 
					                                              %24 = OpTypeArray %7 %22 
					                                              %25 = OpTypeArray %7 %22 
					                                              %26 = OpTypeStruct %23 %24 %25 %7 
					                                              %27 = OpTypePointer Uniform %26 
					Uniform struct {f32_4[4]; f32_4[4]; f32_4[4]; f32_4;}* %28 = OpVariable Uniform 
					                                              %29 = OpTypeInt 32 1 
					                                          i32 %30 = OpConstant 0 
					                                          i32 %31 = OpConstant 1 
					                                              %32 = OpTypeVector %6 3 
					                                              %33 = OpTypePointer Uniform %7 
					                                          i32 %55 = OpConstant 2 
					                                          i32 %68 = OpConstant 3 
					                                              %83 = OpTypePointer Input %32 
					                                 Input f32_3* %84 = OpVariable Input 
					                               Private f32_4* %90 = OpVariable Private 
					                                         u32 %258 = OpConstant 0 
					                                             %259 = OpTypePointer Private %6 
					                                         u32 %267 = OpConstant 2 
					                                             %268 = OpTypePointer Uniform %6 
					                                         u32 %272 = OpConstant 3 
					                                             %281 = OpTypePointer Output %6 
					                                 Output f32* %282 = OpVariable Output 
					                                         u32 %327 = OpConstant 1 
					                                             %328 = OpTypeArray %6 %327 
					                                             %329 = OpTypeStruct %7 %6 %328 
					                                             %330 = OpTypePointer Output %329 
					        Output struct {f32_4; f32; f32[1];}* %331 = OpVariable Output 
					                                          void %4 = OpFunction None %3 
					                                               %5 = OpLabel 
					                                        f32_4 %12 = OpLoad %11 
					                                                      OpStore %9 %12 
					                                        f32_4 %13 = OpLoad %9 
					                                        f32_4 %16 = OpCompositeConstruct %14 %14 %14 %14 
					                                        f32_4 %17 = OpCompositeConstruct %15 %15 %15 %15 
					                                        f32_4 %18 = OpExtInst %1 43 %13 %16 %17 
					                                                      OpStore %9 %18 
					                               Uniform f32_4* %34 = OpAccessChain %28 %30 %31 
					                                        f32_4 %35 = OpLoad %34 
					                                        f32_3 %36 = OpVectorShuffle %35 %35 1 1 1 
					                               Uniform f32_4* %37 = OpAccessChain %28 %31 %31 
					                                        f32_4 %38 = OpLoad %37 
					                                        f32_3 %39 = OpVectorShuffle %38 %38 0 1 2 
					                                        f32_3 %40 = OpFMul %36 %39 
					                                        f32_4 %41 = OpLoad %20 
					                                        f32_4 %42 = OpVectorShuffle %41 %40 4 5 6 3 
					                                                      OpStore %20 %42 
					                               Uniform f32_4* %43 = OpAccessChain %28 %31 %30 
					                                        f32_4 %44 = OpLoad %43 
					                                        f32_3 %45 = OpVectorShuffle %44 %44 0 1 2 
					                               Uniform f32_4* %46 = OpAccessChain %28 %30 %31 
					                                        f32_4 %47 = OpLoad %46 
					                                        f32_3 %48 = OpVectorShuffle %47 %47 0 0 0 
					                                        f32_3 %49 = OpFMul %45 %48 
					                                        f32_4 %50 = OpLoad %20 
					                                        f32_3 %51 = OpVectorShuffle %50 %50 0 1 2 
					                                        f32_3 %52 = OpFAdd %49 %51 
					                                        f32_4 %53 = OpLoad %20 
					                                        f32_4 %54 = OpVectorShuffle %53 %52 4 5 6 3 
					                                                      OpStore %20 %54 
					                               Uniform f32_4* %56 = OpAccessChain %28 %31 %55 
					                                        f32_4 %57 = OpLoad %56 
					                                        f32_3 %58 = OpVectorShuffle %57 %57 0 1 2 
					                               Uniform f32_4* %59 = OpAccessChain %28 %30 %31 
					                                        f32_4 %60 = OpLoad %59 
					                                        f32_3 %61 = OpVectorShuffle %60 %60 2 2 2 
					                                        f32_3 %62 = OpFMul %58 %61 
					                                        f32_4 %63 = OpLoad %20 
					                                        f32_3 %64 = OpVectorShuffle %63 %63 0 1 2 
					                                        f32_3 %65 = OpFAdd %62 %64 
					                                        f32_4 %66 = OpLoad %20 
					                                        f32_4 %67 = OpVectorShuffle %66 %65 4 5 6 3 
					                                                      OpStore %20 %67 
					                               Uniform f32_4* %69 = OpAccessChain %28 %31 %68 
					                                        f32_4 %70 = OpLoad %69 
					                                        f32_3 %71 = OpVectorShuffle %70 %70 0 1 2 
					                               Uniform f32_4* %72 = OpAccessChain %28 %30 %31 
					                                        f32_4 %73 = OpLoad %72 
					                                        f32_3 %74 = OpVectorShuffle %73 %73 3 3 3 
					                                        f32_3 %75 = OpFMul %71 %74 
					                                        f32_4 %76 = OpLoad %20 
					                                        f32_3 %77 = OpVectorShuffle %76 %76 0 1 2 
					                                        f32_3 %78 = OpFAdd %75 %77 
					                                        f32_4 %79 = OpLoad %20 
					                                        f32_4 %80 = OpVectorShuffle %79 %78 4 5 6 3 
					                                                      OpStore %20 %80 
					                                        f32_4 %81 = OpLoad %20 
					                                        f32_3 %82 = OpVectorShuffle %81 %81 0 1 2 
					                                        f32_3 %85 = OpLoad %84 
					                                        f32_3 %86 = OpVectorShuffle %85 %85 1 1 1 
					                                        f32_3 %87 = OpFMul %82 %86 
					                                        f32_4 %88 = OpLoad %20 
					                                        f32_4 %89 = OpVectorShuffle %88 %87 4 5 6 3 
					                                                      OpStore %20 %89 
					                               Uniform f32_4* %91 = OpAccessChain %28 %30 %30 
					                                        f32_4 %92 = OpLoad %91 
					                                        f32_3 %93 = OpVectorShuffle %92 %92 1 1 1 
					                               Uniform f32_4* %94 = OpAccessChain %28 %31 %31 
					                                        f32_4 %95 = OpLoad %94 
					                                        f32_3 %96 = OpVectorShuffle %95 %95 0 1 2 
					                                        f32_3 %97 = OpFMul %93 %96 
					                                        f32_4 %98 = OpLoad %90 
					                                        f32_4 %99 = OpVectorShuffle %98 %97 4 5 6 3 
					                                                      OpStore %90 %99 
					                              Uniform f32_4* %100 = OpAccessChain %28 %31 %30 
					                                       f32_4 %101 = OpLoad %100 
					                                       f32_3 %102 = OpVectorShuffle %101 %101 0 1 2 
					                              Uniform f32_4* %103 = OpAccessChain %28 %30 %30 
					                                       f32_4 %104 = OpLoad %103 
					                                       f32_3 %105 = OpVectorShuffle %104 %104 0 0 0 
					                                       f32_3 %106 = OpFMul %102 %105 
					                                       f32_4 %107 = OpLoad %90 
					                                       f32_3 %108 = OpVectorShuffle %107 %107 0 1 2 
					                                       f32_3 %109 = OpFAdd %106 %108 
					                                       f32_4 %110 = OpLoad %90 
					                                       f32_4 %111 = OpVectorShuffle %110 %109 4 5 6 3 
					                                                      OpStore %90 %111 
					                              Uniform f32_4* %112 = OpAccessChain %28 %31 %55 
					                                       f32_4 %113 = OpLoad %112 
					                                       f32_3 %114 = OpVectorShuffle %113 %113 0 1 2 
					                              Uniform f32_4* %115 = OpAccessChain %28 %30 %30 
					                                       f32_4 %116 = OpLoad %115 
					                                       f32_3 %117 = OpVectorShuffle %116 %116 2 2 2 
					                                       f32_3 %118 = OpFMul %114 %117 
					                                       f32_4 %119 = OpLoad %90 
					                                       f32_3 %120 = OpVectorShuffle %119 %119 0 1 2 
					                                       f32_3 %121 = OpFAdd %118 %120 
					                                       f32_4 %122 = OpLoad %90 
					                                       f32_4 %123 = OpVectorShuffle %122 %121 4 5 6 3 
					                                                      OpStore %90 %123 
					                              Uniform f32_4* %124 = OpAccessChain %28 %31 %68 
					                                       f32_4 %125 = OpLoad %124 
					                                       f32_3 %126 = OpVectorShuffle %125 %125 0 1 2 
					                              Uniform f32_4* %127 = OpAccessChain %28 %30 %30 
					                                       f32_4 %128 = OpLoad %127 
					                                       f32_3 %129 = OpVectorShuffle %128 %128 3 3 3 
					                                       f32_3 %130 = OpFMul %126 %129 
					                                       f32_4 %131 = OpLoad %90 
					                                       f32_3 %132 = OpVectorShuffle %131 %131 0 1 2 
					                                       f32_3 %133 = OpFAdd %130 %132 
					                                       f32_4 %134 = OpLoad %90 
					                                       f32_4 %135 = OpVectorShuffle %134 %133 4 5 6 3 
					                                                      OpStore %90 %135 
					                                       f32_4 %136 = OpLoad %90 
					                                       f32_3 %137 = OpVectorShuffle %136 %136 0 1 2 
					                                       f32_3 %138 = OpLoad %84 
					                                       f32_3 %139 = OpVectorShuffle %138 %138 0 0 0 
					                                       f32_3 %140 = OpFMul %137 %139 
					                                       f32_4 %141 = OpLoad %20 
					                                       f32_3 %142 = OpVectorShuffle %141 %141 0 1 2 
					                                       f32_3 %143 = OpFAdd %140 %142 
					                                       f32_4 %144 = OpLoad %20 
					                                       f32_4 %145 = OpVectorShuffle %144 %143 4 5 6 3 
					                                                      OpStore %20 %145 
					                              Uniform f32_4* %146 = OpAccessChain %28 %30 %55 
					                                       f32_4 %147 = OpLoad %146 
					                                       f32_3 %148 = OpVectorShuffle %147 %147 1 1 1 
					                              Uniform f32_4* %149 = OpAccessChain %28 %31 %31 
					                                       f32_4 %150 = OpLoad %149 
					                                       f32_3 %151 = OpVectorShuffle %150 %150 0 1 2 
					                                       f32_3 %152 = OpFMul %148 %151 
					                                       f32_4 %153 = OpLoad %90 
					                                       f32_4 %154 = OpVectorShuffle %153 %152 4 5 6 3 
					                                                      OpStore %90 %154 
					                              Uniform f32_4* %155 = OpAccessChain %28 %31 %30 
					                                       f32_4 %156 = OpLoad %155 
					                                       f32_3 %157 = OpVectorShuffle %156 %156 0 1 2 
					                              Uniform f32_4* %158 = OpAccessChain %28 %30 %55 
					                                       f32_4 %159 = OpLoad %158 
					                                       f32_3 %160 = OpVectorShuffle %159 %159 0 0 0 
					                                       f32_3 %161 = OpFMul %157 %160 
					                                       f32_4 %162 = OpLoad %90 
					                                       f32_3 %163 = OpVectorShuffle %162 %162 0 1 2 
					                                       f32_3 %164 = OpFAdd %161 %163 
					                                       f32_4 %165 = OpLoad %90 
					                                       f32_4 %166 = OpVectorShuffle %165 %164 4 5 6 3 
					                                                      OpStore %90 %166 
					                              Uniform f32_4* %167 = OpAccessChain %28 %31 %55 
					                                       f32_4 %168 = OpLoad %167 
					                                       f32_3 %169 = OpVectorShuffle %168 %168 0 1 2 
					                              Uniform f32_4* %170 = OpAccessChain %28 %30 %55 
					                                       f32_4 %171 = OpLoad %170 
					                                       f32_3 %172 = OpVectorShuffle %171 %171 2 2 2 
					                                       f32_3 %173 = OpFMul %169 %172 
					                                       f32_4 %174 = OpLoad %90 
					                                       f32_3 %175 = OpVectorShuffle %174 %174 0 1 2 
					                                       f32_3 %176 = OpFAdd %173 %175 
					                                       f32_4 %177 = OpLoad %90 
					                                       f32_4 %178 = OpVectorShuffle %177 %176 4 5 6 3 
					                                                      OpStore %90 %178 
					                              Uniform f32_4* %179 = OpAccessChain %28 %31 %68 
					                                       f32_4 %180 = OpLoad %179 
					                                       f32_3 %181 = OpVectorShuffle %180 %180 0 1 2 
					                              Uniform f32_4* %182 = OpAccessChain %28 %30 %55 
					                                       f32_4 %183 = OpLoad %182 
					                                       f32_3 %184 = OpVectorShuffle %183 %183 3 3 3 
					                                       f32_3 %185 = OpFMul %181 %184 
					                                       f32_4 %186 = OpLoad %90 
					                                       f32_3 %187 = OpVectorShuffle %186 %186 0 1 2 
					                                       f32_3 %188 = OpFAdd %185 %187 
					                                       f32_4 %189 = OpLoad %90 
					                                       f32_4 %190 = OpVectorShuffle %189 %188 4 5 6 3 
					                                                      OpStore %90 %190 
					                                       f32_4 %191 = OpLoad %90 
					                                       f32_3 %192 = OpVectorShuffle %191 %191 0 1 2 
					                                       f32_3 %193 = OpLoad %84 
					                                       f32_3 %194 = OpVectorShuffle %193 %193 2 2 2 
					                                       f32_3 %195 = OpFMul %192 %194 
					                                       f32_4 %196 = OpLoad %20 
					                                       f32_3 %197 = OpVectorShuffle %196 %196 0 1 2 
					                                       f32_3 %198 = OpFAdd %195 %197 
					                                       f32_4 %199 = OpLoad %20 
					                                       f32_4 %200 = OpVectorShuffle %199 %198 4 5 6 3 
					                                                      OpStore %20 %200 
					                              Uniform f32_4* %201 = OpAccessChain %28 %30 %68 
					                                       f32_4 %202 = OpLoad %201 
					                                       f32_3 %203 = OpVectorShuffle %202 %202 1 1 1 
					                              Uniform f32_4* %204 = OpAccessChain %28 %31 %31 
					                                       f32_4 %205 = OpLoad %204 
					                                       f32_3 %206 = OpVectorShuffle %205 %205 0 1 2 
					                                       f32_3 %207 = OpFMul %203 %206 
					                                       f32_4 %208 = OpLoad %90 
					                                       f32_4 %209 = OpVectorShuffle %208 %207 4 5 6 3 
					                                                      OpStore %90 %209 
					                              Uniform f32_4* %210 = OpAccessChain %28 %31 %30 
					                                       f32_4 %211 = OpLoad %210 
					                                       f32_3 %212 = OpVectorShuffle %211 %211 0 1 2 
					                              Uniform f32_4* %213 = OpAccessChain %28 %30 %68 
					                                       f32_4 %214 = OpLoad %213 
					                                       f32_3 %215 = OpVectorShuffle %214 %214 0 0 0 
					                                       f32_3 %216 = OpFMul %212 %215 
					                                       f32_4 %217 = OpLoad %90 
					                                       f32_3 %218 = OpVectorShuffle %217 %217 0 1 2 
					                                       f32_3 %219 = OpFAdd %216 %218 
					                                       f32_4 %220 = OpLoad %90 
					                                       f32_4 %221 = OpVectorShuffle %220 %219 4 5 6 3 
					                                                      OpStore %90 %221 
					                              Uniform f32_4* %222 = OpAccessChain %28 %31 %55 
					                                       f32_4 %223 = OpLoad %222 
					                                       f32_3 %224 = OpVectorShuffle %223 %223 0 1 2 
					                              Uniform f32_4* %225 = OpAccessChain %28 %30 %68 
					                                       f32_4 %226 = OpLoad %225 
					                                       f32_3 %227 = OpVectorShuffle %226 %226 2 2 2 
					                                       f32_3 %228 = OpFMul %224 %227 
					                                       f32_4 %229 = OpLoad %90 
					                                       f32_3 %230 = OpVectorShuffle %229 %229 0 1 2 
					                                       f32_3 %231 = OpFAdd %228 %230 
					                                       f32_4 %232 = OpLoad %90 
					                                       f32_4 %233 = OpVectorShuffle %232 %231 4 5 6 3 
					                                                      OpStore %90 %233 
					                              Uniform f32_4* %234 = OpAccessChain %28 %31 %68 
					                                       f32_4 %235 = OpLoad %234 
					                                       f32_3 %236 = OpVectorShuffle %235 %235 0 1 2 
					                              Uniform f32_4* %237 = OpAccessChain %28 %30 %68 
					                                       f32_4 %238 = OpLoad %237 
					                                       f32_3 %239 = OpVectorShuffle %238 %238 3 3 3 
					                                       f32_3 %240 = OpFMul %236 %239 
					                                       f32_4 %241 = OpLoad %90 
					                                       f32_3 %242 = OpVectorShuffle %241 %241 0 1 2 
					                                       f32_3 %243 = OpFAdd %240 %242 
					                                       f32_4 %244 = OpLoad %90 
					                                       f32_4 %245 = OpVectorShuffle %244 %243 4 5 6 3 
					                                                      OpStore %90 %245 
					                                       f32_4 %246 = OpLoad %20 
					                                       f32_3 %247 = OpVectorShuffle %246 %246 0 1 2 
					                                       f32_4 %248 = OpLoad %90 
					                                       f32_3 %249 = OpVectorShuffle %248 %248 0 1 2 
					                                       f32_3 %250 = OpFAdd %247 %249 
					                                       f32_4 %251 = OpLoad %20 
					                                       f32_4 %252 = OpVectorShuffle %251 %250 4 5 6 3 
					                                                      OpStore %20 %252 
					                                       f32_4 %253 = OpLoad %20 
					                                       f32_3 %254 = OpVectorShuffle %253 %253 0 1 2 
					                                       f32_4 %255 = OpLoad %20 
					                                       f32_3 %256 = OpVectorShuffle %255 %255 0 1 2 
					                                         f32 %257 = OpDot %254 %256 
					                                Private f32* %260 = OpAccessChain %20 %258 
					                                                      OpStore %260 %257 
					                                Private f32* %261 = OpAccessChain %20 %258 
					                                         f32 %262 = OpLoad %261 
					                                         f32 %263 = OpExtInst %1 31 %262 
					                                Private f32* %264 = OpAccessChain %20 %258 
					                                                      OpStore %264 %263 
					                                Private f32* %265 = OpAccessChain %20 %258 
					                                         f32 %266 = OpLoad %265 
					                                Uniform f32* %269 = OpAccessChain %28 %68 %267 
					                                         f32 %270 = OpLoad %269 
					                                         f32 %271 = OpFMul %266 %270 
					                                Uniform f32* %273 = OpAccessChain %28 %68 %272 
					                                         f32 %274 = OpLoad %273 
					                                         f32 %275 = OpFAdd %271 %274 
					                                Private f32* %276 = OpAccessChain %20 %258 
					                                                      OpStore %276 %275 
					                                Private f32* %277 = OpAccessChain %20 %258 
					                                         f32 %278 = OpLoad %277 
					                                         f32 %279 = OpExtInst %1 43 %278 %14 %15 
					                                Private f32* %280 = OpAccessChain %20 %258 
					                                                      OpStore %280 %279 
					                                Private f32* %283 = OpAccessChain %20 %258 
					                                         f32 %284 = OpLoad %283 
					                                                      OpStore %282 %284 
					                                       f32_3 %285 = OpLoad %84 
					                                       f32_4 %286 = OpVectorShuffle %285 %285 1 1 1 1 
					                              Uniform f32_4* %287 = OpAccessChain %28 %30 %31 
					                                       f32_4 %288 = OpLoad %287 
					                                       f32_4 %289 = OpFMul %286 %288 
					                                                      OpStore %20 %289 
					                              Uniform f32_4* %290 = OpAccessChain %28 %30 %30 
					                                       f32_4 %291 = OpLoad %290 
					                                       f32_3 %292 = OpLoad %84 
					                                       f32_4 %293 = OpVectorShuffle %292 %292 0 0 0 0 
					                                       f32_4 %294 = OpFMul %291 %293 
					                                       f32_4 %295 = OpLoad %20 
					                                       f32_4 %296 = OpFAdd %294 %295 
					                                                      OpStore %20 %296 
					                              Uniform f32_4* %297 = OpAccessChain %28 %30 %55 
					                                       f32_4 %298 = OpLoad %297 
					                                       f32_3 %299 = OpLoad %84 
					                                       f32_4 %300 = OpVectorShuffle %299 %299 2 2 2 2 
					                                       f32_4 %301 = OpFMul %298 %300 
					                                       f32_4 %302 = OpLoad %20 
					                                       f32_4 %303 = OpFAdd %301 %302 
					                                                      OpStore %20 %303 
					                                       f32_4 %304 = OpLoad %20 
					                              Uniform f32_4* %305 = OpAccessChain %28 %30 %68 
					                                       f32_4 %306 = OpLoad %305 
					                                       f32_4 %307 = OpFAdd %304 %306 
					                                                      OpStore %20 %307 
					                                       f32_4 %308 = OpLoad %20 
					                                       f32_4 %309 = OpVectorShuffle %308 %308 1 1 1 1 
					                              Uniform f32_4* %310 = OpAccessChain %28 %55 %31 
					                                       f32_4 %311 = OpLoad %310 
					                                       f32_4 %312 = OpFMul %309 %311 
					                                                      OpStore %90 %312 
					                              Uniform f32_4* %313 = OpAccessChain %28 %55 %30 
					                                       f32_4 %314 = OpLoad %313 
					                                       f32_4 %315 = OpLoad %20 
					                                       f32_4 %316 = OpVectorShuffle %315 %315 0 0 0 0 
					                                       f32_4 %317 = OpFMul %314 %316 
					                                       f32_4 %318 = OpLoad %90 
					                                       f32_4 %319 = OpFAdd %317 %318 
					                                                      OpStore %90 %319 
					                              Uniform f32_4* %320 = OpAccessChain %28 %55 %55 
					                                       f32_4 %321 = OpLoad %320 
					                                       f32_4 %322 = OpLoad %20 
					                                       f32_4 %323 = OpVectorShuffle %322 %322 2 2 2 2 
					                                       f32_4 %324 = OpFMul %321 %323 
					                                       f32_4 %325 = OpLoad %90 
					                                       f32_4 %326 = OpFAdd %324 %325 
					                                                      OpStore %90 %326 
					                              Uniform f32_4* %332 = OpAccessChain %28 %55 %68 
					                                       f32_4 %333 = OpLoad %332 
					                                       f32_4 %334 = OpLoad %20 
					                                       f32_4 %335 = OpVectorShuffle %334 %334 3 3 3 3 
					                                       f32_4 %336 = OpFMul %333 %335 
					                                       f32_4 %337 = OpLoad %90 
					                                       f32_4 %338 = OpFAdd %336 %337 
					                               Output f32_4* %339 = OpAccessChain %331 %30 
					                                                      OpStore %339 %338 
					                                 Output f32* %340 = OpAccessChain %331 %30 %327 
					                                         f32 %341 = OpLoad %340 
					                                         f32 %342 = OpFNegate %341 
					                                 Output f32* %343 = OpAccessChain %331 %30 %327 
					                                                      OpStore %343 %342 
					                                                      OpReturn
					                                                      OpFunctionEnd
					; SPIR-V
					; Version: 1.0
					; Generator: Khronos Glslang Reference Front End; 1
					; Bound: 47
					; Schema: 0
					                                 OpCapability Shader 
					                          %1 = OpExtInstImport "GLSL.std.450" 
					                                 OpMemoryModel Logical GLSL450 
					                                 OpEntryPoint Fragment %4 "main" %12 %27 %29 
					                                 OpExecutionMode %4 OriginUpperLeft 
					                                 OpDecorate %9 RelaxedPrecision 
					                                 OpDecorate %12 RelaxedPrecision 
					                                 OpDecorate %12 Location 12 
					                                 OpDecorate %13 RelaxedPrecision 
					                                 OpDecorate %14 RelaxedPrecision 
					                                 OpMemberDecorate %15 0 RelaxedPrecision 
					                                 OpMemberDecorate %15 0 Offset 15 
					                                 OpDecorate %15 Block 
					                                 OpDecorate %17 DescriptorSet 17 
					                                 OpDecorate %17 Binding 17 
					                                 OpDecorate %22 RelaxedPrecision 
					                                 OpDecorate %23 RelaxedPrecision 
					                                 OpDecorate %24 RelaxedPrecision 
					                                 OpDecorate %25 RelaxedPrecision 
					                                 OpDecorate %27 RelaxedPrecision 
					                                 OpDecorate %27 Location 27 
					                                 OpDecorate %29 RelaxedPrecision 
					                                 OpDecorate %29 Location 29 
					                                 OpDecorate %30 RelaxedPrecision 
					                                 OpDecorate %31 RelaxedPrecision 
					                                 OpDecorate %32 RelaxedPrecision 
					                                 OpDecorate %33 RelaxedPrecision 
					                                 OpDecorate %35 RelaxedPrecision 
					                                 OpDecorate %36 RelaxedPrecision 
					                                 OpDecorate %37 RelaxedPrecision 
					                                 OpDecorate %43 RelaxedPrecision 
					                          %2 = OpTypeVoid 
					                          %3 = OpTypeFunction %2 
					                          %6 = OpTypeFloat 32 
					                          %7 = OpTypeVector %6 3 
					                          %8 = OpTypePointer Private %7 
					           Private f32_3* %9 = OpVariable Private 
					                         %10 = OpTypeVector %6 4 
					                         %11 = OpTypePointer Input %10 
					            Input f32_4* %12 = OpVariable Input 
					                         %15 = OpTypeStruct %10 
					                         %16 = OpTypePointer Uniform %15 
					Uniform struct {f32_4;}* %17 = OpVariable Uniform 
					                         %18 = OpTypeInt 32 1 
					                     i32 %19 = OpConstant 0 
					                         %20 = OpTypePointer Uniform %10 
					                         %26 = OpTypePointer Output %10 
					           Output f32_4* %27 = OpVariable Output 
					                         %28 = OpTypePointer Input %6 
					              Input f32* %29 = OpVariable Input 
					                         %40 = OpTypeInt 32 0 
					                     u32 %41 = OpConstant 3 
					                         %44 = OpTypePointer Output %6 
					                     void %4 = OpFunction None %3 
					                          %5 = OpLabel 
					                   f32_4 %13 = OpLoad %12 
					                   f32_3 %14 = OpVectorShuffle %13 %13 0 1 2 
					          Uniform f32_4* %21 = OpAccessChain %17 %19 
					                   f32_4 %22 = OpLoad %21 
					                   f32_3 %23 = OpVectorShuffle %22 %22 0 1 2 
					                   f32_3 %24 = OpFNegate %23 
					                   f32_3 %25 = OpFAdd %14 %24 
					                                 OpStore %9 %25 
					                     f32 %30 = OpLoad %29 
					                   f32_3 %31 = OpCompositeConstruct %30 %30 %30 
					                   f32_3 %32 = OpLoad %9 
					                   f32_3 %33 = OpFMul %31 %32 
					          Uniform f32_4* %34 = OpAccessChain %17 %19 
					                   f32_4 %35 = OpLoad %34 
					                   f32_3 %36 = OpVectorShuffle %35 %35 0 1 2 
					                   f32_3 %37 = OpFAdd %33 %36 
					                   f32_4 %38 = OpLoad %27 
					                   f32_4 %39 = OpVectorShuffle %38 %37 4 5 6 3 
					                                 OpStore %27 %39 
					              Input f32* %42 = OpAccessChain %12 %41 
					                     f32 %43 = OpLoad %42 
					             Output f32* %45 = OpAccessChain %27 %41 
					                                 OpStore %45 %43 
					                                 OpReturn
					                                 OpFunctionEnd"
				}
				SubProgram "vulkan hw_tier01 " {
					Keywords { "FOG_LINEAR" }
					"spirv
					
					; SPIR-V
					; Version: 1.0
					; Generator: Khronos Glslang Reference Front End; 1
					; Bound: 345
					; Schema: 0
					                                                      OpCapability Shader 
					                                               %1 = OpExtInstImport "GLSL.std.450" 
					                                                      OpMemoryModel Logical GLSL450 
					                                                      OpEntryPoint Vertex %4 "main" %9 %11 %84 %282 %331 
					                                                      OpDecorate %9 RelaxedPrecision 
					                                                      OpDecorate %9 Location 9 
					                                                      OpDecorate %11 RelaxedPrecision 
					                                                      OpDecorate %11 Location 11 
					                                                      OpDecorate %12 RelaxedPrecision 
					                                                      OpDecorate %13 RelaxedPrecision 
					                                                      OpDecorate %16 RelaxedPrecision 
					                                                      OpDecorate %17 RelaxedPrecision 
					                                                      OpDecorate %18 RelaxedPrecision 
					                                                      OpDecorate %23 ArrayStride 23 
					                                                      OpDecorate %24 ArrayStride 24 
					                                                      OpDecorate %25 ArrayStride 25 
					                                                      OpMemberDecorate %26 0 Offset 26 
					                                                      OpMemberDecorate %26 1 Offset 26 
					                                                      OpMemberDecorate %26 2 Offset 26 
					                                                      OpMemberDecorate %26 3 Offset 26 
					                                                      OpDecorate %26 Block 
					                                                      OpDecorate %28 DescriptorSet 28 
					                                                      OpDecorate %28 Binding 28 
					                                                      OpDecorate %84 Location 84 
					                                                      OpDecorate %282 RelaxedPrecision 
					                                                      OpDecorate %282 Location 282 
					                                                      OpMemberDecorate %329 0 BuiltIn 329 
					                                                      OpMemberDecorate %329 1 BuiltIn 329 
					                                                      OpMemberDecorate %329 2 BuiltIn 329 
					                                                      OpDecorate %329 Block 
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
					                                              %21 = OpTypeInt 32 0 
					                                          u32 %22 = OpConstant 4 
					                                              %23 = OpTypeArray %7 %22 
					                                              %24 = OpTypeArray %7 %22 
					                                              %25 = OpTypeArray %7 %22 
					                                              %26 = OpTypeStruct %23 %24 %25 %7 
					                                              %27 = OpTypePointer Uniform %26 
					Uniform struct {f32_4[4]; f32_4[4]; f32_4[4]; f32_4;}* %28 = OpVariable Uniform 
					                                              %29 = OpTypeInt 32 1 
					                                          i32 %30 = OpConstant 0 
					                                          i32 %31 = OpConstant 1 
					                                              %32 = OpTypeVector %6 3 
					                                              %33 = OpTypePointer Uniform %7 
					                                          i32 %55 = OpConstant 2 
					                                          i32 %68 = OpConstant 3 
					                                              %83 = OpTypePointer Input %32 
					                                 Input f32_3* %84 = OpVariable Input 
					                               Private f32_4* %90 = OpVariable Private 
					                                         u32 %258 = OpConstant 0 
					                                             %259 = OpTypePointer Private %6 
					                                         u32 %267 = OpConstant 2 
					                                             %268 = OpTypePointer Uniform %6 
					                                         u32 %272 = OpConstant 3 
					                                             %281 = OpTypePointer Output %6 
					                                 Output f32* %282 = OpVariable Output 
					                                         u32 %327 = OpConstant 1 
					                                             %328 = OpTypeArray %6 %327 
					                                             %329 = OpTypeStruct %7 %6 %328 
					                                             %330 = OpTypePointer Output %329 
					        Output struct {f32_4; f32; f32[1];}* %331 = OpVariable Output 
					                                          void %4 = OpFunction None %3 
					                                               %5 = OpLabel 
					                                        f32_4 %12 = OpLoad %11 
					                                                      OpStore %9 %12 
					                                        f32_4 %13 = OpLoad %9 
					                                        f32_4 %16 = OpCompositeConstruct %14 %14 %14 %14 
					                                        f32_4 %17 = OpCompositeConstruct %15 %15 %15 %15 
					                                        f32_4 %18 = OpExtInst %1 43 %13 %16 %17 
					                                                      OpStore %9 %18 
					                               Uniform f32_4* %34 = OpAccessChain %28 %30 %31 
					                                        f32_4 %35 = OpLoad %34 
					                                        f32_3 %36 = OpVectorShuffle %35 %35 1 1 1 
					                               Uniform f32_4* %37 = OpAccessChain %28 %31 %31 
					                                        f32_4 %38 = OpLoad %37 
					                                        f32_3 %39 = OpVectorShuffle %38 %38 0 1 2 
					                                        f32_3 %40 = OpFMul %36 %39 
					                                        f32_4 %41 = OpLoad %20 
					                                        f32_4 %42 = OpVectorShuffle %41 %40 4 5 6 3 
					                                                      OpStore %20 %42 
					                               Uniform f32_4* %43 = OpAccessChain %28 %31 %30 
					                                        f32_4 %44 = OpLoad %43 
					                                        f32_3 %45 = OpVectorShuffle %44 %44 0 1 2 
					                               Uniform f32_4* %46 = OpAccessChain %28 %30 %31 
					                                        f32_4 %47 = OpLoad %46 
					                                        f32_3 %48 = OpVectorShuffle %47 %47 0 0 0 
					                                        f32_3 %49 = OpFMul %45 %48 
					                                        f32_4 %50 = OpLoad %20 
					                                        f32_3 %51 = OpVectorShuffle %50 %50 0 1 2 
					                                        f32_3 %52 = OpFAdd %49 %51 
					                                        f32_4 %53 = OpLoad %20 
					                                        f32_4 %54 = OpVectorShuffle %53 %52 4 5 6 3 
					                                                      OpStore %20 %54 
					                               Uniform f32_4* %56 = OpAccessChain %28 %31 %55 
					                                        f32_4 %57 = OpLoad %56 
					                                        f32_3 %58 = OpVectorShuffle %57 %57 0 1 2 
					                               Uniform f32_4* %59 = OpAccessChain %28 %30 %31 
					                                        f32_4 %60 = OpLoad %59 
					                                        f32_3 %61 = OpVectorShuffle %60 %60 2 2 2 
					                                        f32_3 %62 = OpFMul %58 %61 
					                                        f32_4 %63 = OpLoad %20 
					                                        f32_3 %64 = OpVectorShuffle %63 %63 0 1 2 
					                                        f32_3 %65 = OpFAdd %62 %64 
					                                        f32_4 %66 = OpLoad %20 
					                                        f32_4 %67 = OpVectorShuffle %66 %65 4 5 6 3 
					                                                      OpStore %20 %67 
					                               Uniform f32_4* %69 = OpAccessChain %28 %31 %68 
					                                        f32_4 %70 = OpLoad %69 
					                                        f32_3 %71 = OpVectorShuffle %70 %70 0 1 2 
					                               Uniform f32_4* %72 = OpAccessChain %28 %30 %31 
					                                        f32_4 %73 = OpLoad %72 
					                                        f32_3 %74 = OpVectorShuffle %73 %73 3 3 3 
					                                        f32_3 %75 = OpFMul %71 %74 
					                                        f32_4 %76 = OpLoad %20 
					                                        f32_3 %77 = OpVectorShuffle %76 %76 0 1 2 
					                                        f32_3 %78 = OpFAdd %75 %77 
					                                        f32_4 %79 = OpLoad %20 
					                                        f32_4 %80 = OpVectorShuffle %79 %78 4 5 6 3 
					                                                      OpStore %20 %80 
					                                        f32_4 %81 = OpLoad %20 
					                                        f32_3 %82 = OpVectorShuffle %81 %81 0 1 2 
					                                        f32_3 %85 = OpLoad %84 
					                                        f32_3 %86 = OpVectorShuffle %85 %85 1 1 1 
					                                        f32_3 %87 = OpFMul %82 %86 
					                                        f32_4 %88 = OpLoad %20 
					                                        f32_4 %89 = OpVectorShuffle %88 %87 4 5 6 3 
					                                                      OpStore %20 %89 
					                               Uniform f32_4* %91 = OpAccessChain %28 %30 %30 
					                                        f32_4 %92 = OpLoad %91 
					                                        f32_3 %93 = OpVectorShuffle %92 %92 1 1 1 
					                               Uniform f32_4* %94 = OpAccessChain %28 %31 %31 
					                                        f32_4 %95 = OpLoad %94 
					                                        f32_3 %96 = OpVectorShuffle %95 %95 0 1 2 
					                                        f32_3 %97 = OpFMul %93 %96 
					                                        f32_4 %98 = OpLoad %90 
					                                        f32_4 %99 = OpVectorShuffle %98 %97 4 5 6 3 
					                                                      OpStore %90 %99 
					                              Uniform f32_4* %100 = OpAccessChain %28 %31 %30 
					                                       f32_4 %101 = OpLoad %100 
					                                       f32_3 %102 = OpVectorShuffle %101 %101 0 1 2 
					                              Uniform f32_4* %103 = OpAccessChain %28 %30 %30 
					                                       f32_4 %104 = OpLoad %103 
					                                       f32_3 %105 = OpVectorShuffle %104 %104 0 0 0 
					                                       f32_3 %106 = OpFMul %102 %105 
					                                       f32_4 %107 = OpLoad %90 
					                                       f32_3 %108 = OpVectorShuffle %107 %107 0 1 2 
					                                       f32_3 %109 = OpFAdd %106 %108 
					                                       f32_4 %110 = OpLoad %90 
					                                       f32_4 %111 = OpVectorShuffle %110 %109 4 5 6 3 
					                                                      OpStore %90 %111 
					                              Uniform f32_4* %112 = OpAccessChain %28 %31 %55 
					                                       f32_4 %113 = OpLoad %112 
					                                       f32_3 %114 = OpVectorShuffle %113 %113 0 1 2 
					                              Uniform f32_4* %115 = OpAccessChain %28 %30 %30 
					                                       f32_4 %116 = OpLoad %115 
					                                       f32_3 %117 = OpVectorShuffle %116 %116 2 2 2 
					                                       f32_3 %118 = OpFMul %114 %117 
					                                       f32_4 %119 = OpLoad %90 
					                                       f32_3 %120 = OpVectorShuffle %119 %119 0 1 2 
					                                       f32_3 %121 = OpFAdd %118 %120 
					                                       f32_4 %122 = OpLoad %90 
					                                       f32_4 %123 = OpVectorShuffle %122 %121 4 5 6 3 
					                                                      OpStore %90 %123 
					                              Uniform f32_4* %124 = OpAccessChain %28 %31 %68 
					                                       f32_4 %125 = OpLoad %124 
					                                       f32_3 %126 = OpVectorShuffle %125 %125 0 1 2 
					                              Uniform f32_4* %127 = OpAccessChain %28 %30 %30 
					                                       f32_4 %128 = OpLoad %127 
					                                       f32_3 %129 = OpVectorShuffle %128 %128 3 3 3 
					                                       f32_3 %130 = OpFMul %126 %129 
					                                       f32_4 %131 = OpLoad %90 
					                                       f32_3 %132 = OpVectorShuffle %131 %131 0 1 2 
					                                       f32_3 %133 = OpFAdd %130 %132 
					                                       f32_4 %134 = OpLoad %90 
					                                       f32_4 %135 = OpVectorShuffle %134 %133 4 5 6 3 
					                                                      OpStore %90 %135 
					                                       f32_4 %136 = OpLoad %90 
					                                       f32_3 %137 = OpVectorShuffle %136 %136 0 1 2 
					                                       f32_3 %138 = OpLoad %84 
					                                       f32_3 %139 = OpVectorShuffle %138 %138 0 0 0 
					                                       f32_3 %140 = OpFMul %137 %139 
					                                       f32_4 %141 = OpLoad %20 
					                                       f32_3 %142 = OpVectorShuffle %141 %141 0 1 2 
					                                       f32_3 %143 = OpFAdd %140 %142 
					                                       f32_4 %144 = OpLoad %20 
					                                       f32_4 %145 = OpVectorShuffle %144 %143 4 5 6 3 
					                                                      OpStore %20 %145 
					                              Uniform f32_4* %146 = OpAccessChain %28 %30 %55 
					                                       f32_4 %147 = OpLoad %146 
					                                       f32_3 %148 = OpVectorShuffle %147 %147 1 1 1 
					                              Uniform f32_4* %149 = OpAccessChain %28 %31 %31 
					                                       f32_4 %150 = OpLoad %149 
					                                       f32_3 %151 = OpVectorShuffle %150 %150 0 1 2 
					                                       f32_3 %152 = OpFMul %148 %151 
					                                       f32_4 %153 = OpLoad %90 
					                                       f32_4 %154 = OpVectorShuffle %153 %152 4 5 6 3 
					                                                      OpStore %90 %154 
					                              Uniform f32_4* %155 = OpAccessChain %28 %31 %30 
					                                       f32_4 %156 = OpLoad %155 
					                                       f32_3 %157 = OpVectorShuffle %156 %156 0 1 2 
					                              Uniform f32_4* %158 = OpAccessChain %28 %30 %55 
					                                       f32_4 %159 = OpLoad %158 
					                                       f32_3 %160 = OpVectorShuffle %159 %159 0 0 0 
					                                       f32_3 %161 = OpFMul %157 %160 
					                                       f32_4 %162 = OpLoad %90 
					                                       f32_3 %163 = OpVectorShuffle %162 %162 0 1 2 
					                                       f32_3 %164 = OpFAdd %161 %163 
					                                       f32_4 %165 = OpLoad %90 
					                                       f32_4 %166 = OpVectorShuffle %165 %164 4 5 6 3 
					                                                      OpStore %90 %166 
					                              Uniform f32_4* %167 = OpAccessChain %28 %31 %55 
					                                       f32_4 %168 = OpLoad %167 
					                                       f32_3 %169 = OpVectorShuffle %168 %168 0 1 2 
					                              Uniform f32_4* %170 = OpAccessChain %28 %30 %55 
					                                       f32_4 %171 = OpLoad %170 
					                                       f32_3 %172 = OpVectorShuffle %171 %171 2 2 2 
					                                       f32_3 %173 = OpFMul %169 %172 
					                                       f32_4 %174 = OpLoad %90 
					                                       f32_3 %175 = OpVectorShuffle %174 %174 0 1 2 
					                                       f32_3 %176 = OpFAdd %173 %175 
					                                       f32_4 %177 = OpLoad %90 
					                                       f32_4 %178 = OpVectorShuffle %177 %176 4 5 6 3 
					                                                      OpStore %90 %178 
					                              Uniform f32_4* %179 = OpAccessChain %28 %31 %68 
					                                       f32_4 %180 = OpLoad %179 
					                                       f32_3 %181 = OpVectorShuffle %180 %180 0 1 2 
					                              Uniform f32_4* %182 = OpAccessChain %28 %30 %55 
					                                       f32_4 %183 = OpLoad %182 
					                                       f32_3 %184 = OpVectorShuffle %183 %183 3 3 3 
					                                       f32_3 %185 = OpFMul %181 %184 
					                                       f32_4 %186 = OpLoad %90 
					                                       f32_3 %187 = OpVectorShuffle %186 %186 0 1 2 
					                                       f32_3 %188 = OpFAdd %185 %187 
					                                       f32_4 %189 = OpLoad %90 
					                                       f32_4 %190 = OpVectorShuffle %189 %188 4 5 6 3 
					                                                      OpStore %90 %190 
					                                       f32_4 %191 = OpLoad %90 
					                                       f32_3 %192 = OpVectorShuffle %191 %191 0 1 2 
					                                       f32_3 %193 = OpLoad %84 
					                                       f32_3 %194 = OpVectorShuffle %193 %193 2 2 2 
					                                       f32_3 %195 = OpFMul %192 %194 
					                                       f32_4 %196 = OpLoad %20 
					                                       f32_3 %197 = OpVectorShuffle %196 %196 0 1 2 
					                                       f32_3 %198 = OpFAdd %195 %197 
					                                       f32_4 %199 = OpLoad %20 
					                                       f32_4 %200 = OpVectorShuffle %199 %198 4 5 6 3 
					                                                      OpStore %20 %200 
					                              Uniform f32_4* %201 = OpAccessChain %28 %30 %68 
					                                       f32_4 %202 = OpLoad %201 
					                                       f32_3 %203 = OpVectorShuffle %202 %202 1 1 1 
					                              Uniform f32_4* %204 = OpAccessChain %28 %31 %31 
					                                       f32_4 %205 = OpLoad %204 
					                                       f32_3 %206 = OpVectorShuffle %205 %205 0 1 2 
					                                       f32_3 %207 = OpFMul %203 %206 
					                                       f32_4 %208 = OpLoad %90 
					                                       f32_4 %209 = OpVectorShuffle %208 %207 4 5 6 3 
					                                                      OpStore %90 %209 
					                              Uniform f32_4* %210 = OpAccessChain %28 %31 %30 
					                                       f32_4 %211 = OpLoad %210 
					                                       f32_3 %212 = OpVectorShuffle %211 %211 0 1 2 
					                              Uniform f32_4* %213 = OpAccessChain %28 %30 %68 
					                                       f32_4 %214 = OpLoad %213 
					                                       f32_3 %215 = OpVectorShuffle %214 %214 0 0 0 
					                                       f32_3 %216 = OpFMul %212 %215 
					                                       f32_4 %217 = OpLoad %90 
					                                       f32_3 %218 = OpVectorShuffle %217 %217 0 1 2 
					                                       f32_3 %219 = OpFAdd %216 %218 
					                                       f32_4 %220 = OpLoad %90 
					                                       f32_4 %221 = OpVectorShuffle %220 %219 4 5 6 3 
					                                                      OpStore %90 %221 
					                              Uniform f32_4* %222 = OpAccessChain %28 %31 %55 
					                                       f32_4 %223 = OpLoad %222 
					                                       f32_3 %224 = OpVectorShuffle %223 %223 0 1 2 
					                              Uniform f32_4* %225 = OpAccessChain %28 %30 %68 
					                                       f32_4 %226 = OpLoad %225 
					                                       f32_3 %227 = OpVectorShuffle %226 %226 2 2 2 
					                                       f32_3 %228 = OpFMul %224 %227 
					                                       f32_4 %229 = OpLoad %90 
					                                       f32_3 %230 = OpVectorShuffle %229 %229 0 1 2 
					                                       f32_3 %231 = OpFAdd %228 %230 
					                                       f32_4 %232 = OpLoad %90 
					                                       f32_4 %233 = OpVectorShuffle %232 %231 4 5 6 3 
					                                                      OpStore %90 %233 
					                              Uniform f32_4* %234 = OpAccessChain %28 %31 %68 
					                                       f32_4 %235 = OpLoad %234 
					                                       f32_3 %236 = OpVectorShuffle %235 %235 0 1 2 
					                              Uniform f32_4* %237 = OpAccessChain %28 %30 %68 
					                                       f32_4 %238 = OpLoad %237 
					                                       f32_3 %239 = OpVectorShuffle %238 %238 3 3 3 
					                                       f32_3 %240 = OpFMul %236 %239 
					                                       f32_4 %241 = OpLoad %90 
					                                       f32_3 %242 = OpVectorShuffle %241 %241 0 1 2 
					                                       f32_3 %243 = OpFAdd %240 %242 
					                                       f32_4 %244 = OpLoad %90 
					                                       f32_4 %245 = OpVectorShuffle %244 %243 4 5 6 3 
					                                                      OpStore %90 %245 
					                                       f32_4 %246 = OpLoad %20 
					                                       f32_3 %247 = OpVectorShuffle %246 %246 0 1 2 
					                                       f32_4 %248 = OpLoad %90 
					                                       f32_3 %249 = OpVectorShuffle %248 %248 0 1 2 
					                                       f32_3 %250 = OpFAdd %247 %249 
					                                       f32_4 %251 = OpLoad %20 
					                                       f32_4 %252 = OpVectorShuffle %251 %250 4 5 6 3 
					                                                      OpStore %20 %252 
					                                       f32_4 %253 = OpLoad %20 
					                                       f32_3 %254 = OpVectorShuffle %253 %253 0 1 2 
					                                       f32_4 %255 = OpLoad %20 
					                                       f32_3 %256 = OpVectorShuffle %255 %255 0 1 2 
					                                         f32 %257 = OpDot %254 %256 
					                                Private f32* %260 = OpAccessChain %20 %258 
					                                                      OpStore %260 %257 
					                                Private f32* %261 = OpAccessChain %20 %258 
					                                         f32 %262 = OpLoad %261 
					                                         f32 %263 = OpExtInst %1 31 %262 
					                                Private f32* %264 = OpAccessChain %20 %258 
					                                                      OpStore %264 %263 
					                                Private f32* %265 = OpAccessChain %20 %258 
					                                         f32 %266 = OpLoad %265 
					                                Uniform f32* %269 = OpAccessChain %28 %68 %267 
					                                         f32 %270 = OpLoad %269 
					                                         f32 %271 = OpFMul %266 %270 
					                                Uniform f32* %273 = OpAccessChain %28 %68 %272 
					                                         f32 %274 = OpLoad %273 
					                                         f32 %275 = OpFAdd %271 %274 
					                                Private f32* %276 = OpAccessChain %20 %258 
					                                                      OpStore %276 %275 
					                                Private f32* %277 = OpAccessChain %20 %258 
					                                         f32 %278 = OpLoad %277 
					                                         f32 %279 = OpExtInst %1 43 %278 %14 %15 
					                                Private f32* %280 = OpAccessChain %20 %258 
					                                                      OpStore %280 %279 
					                                Private f32* %283 = OpAccessChain %20 %258 
					                                         f32 %284 = OpLoad %283 
					                                                      OpStore %282 %284 
					                                       f32_3 %285 = OpLoad %84 
					                                       f32_4 %286 = OpVectorShuffle %285 %285 1 1 1 1 
					                              Uniform f32_4* %287 = OpAccessChain %28 %30 %31 
					                                       f32_4 %288 = OpLoad %287 
					                                       f32_4 %289 = OpFMul %286 %288 
					                                                      OpStore %20 %289 
					                              Uniform f32_4* %290 = OpAccessChain %28 %30 %30 
					                                       f32_4 %291 = OpLoad %290 
					                                       f32_3 %292 = OpLoad %84 
					                                       f32_4 %293 = OpVectorShuffle %292 %292 0 0 0 0 
					                                       f32_4 %294 = OpFMul %291 %293 
					                                       f32_4 %295 = OpLoad %20 
					                                       f32_4 %296 = OpFAdd %294 %295 
					                                                      OpStore %20 %296 
					                              Uniform f32_4* %297 = OpAccessChain %28 %30 %55 
					                                       f32_4 %298 = OpLoad %297 
					                                       f32_3 %299 = OpLoad %84 
					                                       f32_4 %300 = OpVectorShuffle %299 %299 2 2 2 2 
					                                       f32_4 %301 = OpFMul %298 %300 
					                                       f32_4 %302 = OpLoad %20 
					                                       f32_4 %303 = OpFAdd %301 %302 
					                                                      OpStore %20 %303 
					                                       f32_4 %304 = OpLoad %20 
					                              Uniform f32_4* %305 = OpAccessChain %28 %30 %68 
					                                       f32_4 %306 = OpLoad %305 
					                                       f32_4 %307 = OpFAdd %304 %306 
					                                                      OpStore %20 %307 
					                                       f32_4 %308 = OpLoad %20 
					                                       f32_4 %309 = OpVectorShuffle %308 %308 1 1 1 1 
					                              Uniform f32_4* %310 = OpAccessChain %28 %55 %31 
					                                       f32_4 %311 = OpLoad %310 
					                                       f32_4 %312 = OpFMul %309 %311 
					                                                      OpStore %90 %312 
					                              Uniform f32_4* %313 = OpAccessChain %28 %55 %30 
					                                       f32_4 %314 = OpLoad %313 
					                                       f32_4 %315 = OpLoad %20 
					                                       f32_4 %316 = OpVectorShuffle %315 %315 0 0 0 0 
					                                       f32_4 %317 = OpFMul %314 %316 
					                                       f32_4 %318 = OpLoad %90 
					                                       f32_4 %319 = OpFAdd %317 %318 
					                                                      OpStore %90 %319 
					                              Uniform f32_4* %320 = OpAccessChain %28 %55 %55 
					                                       f32_4 %321 = OpLoad %320 
					                                       f32_4 %322 = OpLoad %20 
					                                       f32_4 %323 = OpVectorShuffle %322 %322 2 2 2 2 
					                                       f32_4 %324 = OpFMul %321 %323 
					                                       f32_4 %325 = OpLoad %90 
					                                       f32_4 %326 = OpFAdd %324 %325 
					                                                      OpStore %90 %326 
					                              Uniform f32_4* %332 = OpAccessChain %28 %55 %68 
					                                       f32_4 %333 = OpLoad %332 
					                                       f32_4 %334 = OpLoad %20 
					                                       f32_4 %335 = OpVectorShuffle %334 %334 3 3 3 3 
					                                       f32_4 %336 = OpFMul %333 %335 
					                                       f32_4 %337 = OpLoad %90 
					                                       f32_4 %338 = OpFAdd %336 %337 
					                               Output f32_4* %339 = OpAccessChain %331 %30 
					                                                      OpStore %339 %338 
					                                 Output f32* %340 = OpAccessChain %331 %30 %327 
					                                         f32 %341 = OpLoad %340 
					                                         f32 %342 = OpFNegate %341 
					                                 Output f32* %343 = OpAccessChain %331 %30 %327 
					                                                      OpStore %343 %342 
					                                                      OpReturn
					                                                      OpFunctionEnd
					; SPIR-V
					; Version: 1.0
					; Generator: Khronos Glslang Reference Front End; 1
					; Bound: 47
					; Schema: 0
					                                 OpCapability Shader 
					                          %1 = OpExtInstImport "GLSL.std.450" 
					                                 OpMemoryModel Logical GLSL450 
					                                 OpEntryPoint Fragment %4 "main" %12 %27 %29 
					                                 OpExecutionMode %4 OriginUpperLeft 
					                                 OpDecorate %9 RelaxedPrecision 
					                                 OpDecorate %12 RelaxedPrecision 
					                                 OpDecorate %12 Location 12 
					                                 OpDecorate %13 RelaxedPrecision 
					                                 OpDecorate %14 RelaxedPrecision 
					                                 OpMemberDecorate %15 0 RelaxedPrecision 
					                                 OpMemberDecorate %15 0 Offset 15 
					                                 OpDecorate %15 Block 
					                                 OpDecorate %17 DescriptorSet 17 
					                                 OpDecorate %17 Binding 17 
					                                 OpDecorate %22 RelaxedPrecision 
					                                 OpDecorate %23 RelaxedPrecision 
					                                 OpDecorate %24 RelaxedPrecision 
					                                 OpDecorate %25 RelaxedPrecision 
					                                 OpDecorate %27 RelaxedPrecision 
					                                 OpDecorate %27 Location 27 
					                                 OpDecorate %29 RelaxedPrecision 
					                                 OpDecorate %29 Location 29 
					                                 OpDecorate %30 RelaxedPrecision 
					                                 OpDecorate %31 RelaxedPrecision 
					                                 OpDecorate %32 RelaxedPrecision 
					                                 OpDecorate %33 RelaxedPrecision 
					                                 OpDecorate %35 RelaxedPrecision 
					                                 OpDecorate %36 RelaxedPrecision 
					                                 OpDecorate %37 RelaxedPrecision 
					                                 OpDecorate %43 RelaxedPrecision 
					                          %2 = OpTypeVoid 
					                          %3 = OpTypeFunction %2 
					                          %6 = OpTypeFloat 32 
					                          %7 = OpTypeVector %6 3 
					                          %8 = OpTypePointer Private %7 
					           Private f32_3* %9 = OpVariable Private 
					                         %10 = OpTypeVector %6 4 
					                         %11 = OpTypePointer Input %10 
					            Input f32_4* %12 = OpVariable Input 
					                         %15 = OpTypeStruct %10 
					                         %16 = OpTypePointer Uniform %15 
					Uniform struct {f32_4;}* %17 = OpVariable Uniform 
					                         %18 = OpTypeInt 32 1 
					                     i32 %19 = OpConstant 0 
					                         %20 = OpTypePointer Uniform %10 
					                         %26 = OpTypePointer Output %10 
					           Output f32_4* %27 = OpVariable Output 
					                         %28 = OpTypePointer Input %6 
					              Input f32* %29 = OpVariable Input 
					                         %40 = OpTypeInt 32 0 
					                     u32 %41 = OpConstant 3 
					                         %44 = OpTypePointer Output %6 
					                     void %4 = OpFunction None %3 
					                          %5 = OpLabel 
					                   f32_4 %13 = OpLoad %12 
					                   f32_3 %14 = OpVectorShuffle %13 %13 0 1 2 
					          Uniform f32_4* %21 = OpAccessChain %17 %19 
					                   f32_4 %22 = OpLoad %21 
					                   f32_3 %23 = OpVectorShuffle %22 %22 0 1 2 
					                   f32_3 %24 = OpFNegate %23 
					                   f32_3 %25 = OpFAdd %14 %24 
					                                 OpStore %9 %25 
					                     f32 %30 = OpLoad %29 
					                   f32_3 %31 = OpCompositeConstruct %30 %30 %30 
					                   f32_3 %32 = OpLoad %9 
					                   f32_3 %33 = OpFMul %31 %32 
					          Uniform f32_4* %34 = OpAccessChain %17 %19 
					                   f32_4 %35 = OpLoad %34 
					                   f32_3 %36 = OpVectorShuffle %35 %35 0 1 2 
					                   f32_3 %37 = OpFAdd %33 %36 
					                   f32_4 %38 = OpLoad %27 
					                   f32_4 %39 = OpVectorShuffle %38 %37 4 5 6 3 
					                                 OpStore %27 %39 
					              Input f32* %42 = OpAccessChain %12 %41 
					                     f32 %43 = OpLoad %42 
					             Output f32* %45 = OpAccessChain %27 %41 
					                                 OpStore %45 %43 
					                                 OpReturn
					                                 OpFunctionEnd"
				}
				SubProgram "vulkan hw_tier02 " {
					Keywords { "FOG_LINEAR" }
					"spirv
					
					; SPIR-V
					; Version: 1.0
					; Generator: Khronos Glslang Reference Front End; 1
					; Bound: 345
					; Schema: 0
					                                                      OpCapability Shader 
					                                               %1 = OpExtInstImport "GLSL.std.450" 
					                                                      OpMemoryModel Logical GLSL450 
					                                                      OpEntryPoint Vertex %4 "main" %9 %11 %84 %282 %331 
					                                                      OpDecorate %9 RelaxedPrecision 
					                                                      OpDecorate %9 Location 9 
					                                                      OpDecorate %11 RelaxedPrecision 
					                                                      OpDecorate %11 Location 11 
					                                                      OpDecorate %12 RelaxedPrecision 
					                                                      OpDecorate %13 RelaxedPrecision 
					                                                      OpDecorate %16 RelaxedPrecision 
					                                                      OpDecorate %17 RelaxedPrecision 
					                                                      OpDecorate %18 RelaxedPrecision 
					                                                      OpDecorate %23 ArrayStride 23 
					                                                      OpDecorate %24 ArrayStride 24 
					                                                      OpDecorate %25 ArrayStride 25 
					                                                      OpMemberDecorate %26 0 Offset 26 
					                                                      OpMemberDecorate %26 1 Offset 26 
					                                                      OpMemberDecorate %26 2 Offset 26 
					                                                      OpMemberDecorate %26 3 Offset 26 
					                                                      OpDecorate %26 Block 
					                                                      OpDecorate %28 DescriptorSet 28 
					                                                      OpDecorate %28 Binding 28 
					                                                      OpDecorate %84 Location 84 
					                                                      OpDecorate %282 RelaxedPrecision 
					                                                      OpDecorate %282 Location 282 
					                                                      OpMemberDecorate %329 0 BuiltIn 329 
					                                                      OpMemberDecorate %329 1 BuiltIn 329 
					                                                      OpMemberDecorate %329 2 BuiltIn 329 
					                                                      OpDecorate %329 Block 
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
					                                              %21 = OpTypeInt 32 0 
					                                          u32 %22 = OpConstant 4 
					                                              %23 = OpTypeArray %7 %22 
					                                              %24 = OpTypeArray %7 %22 
					                                              %25 = OpTypeArray %7 %22 
					                                              %26 = OpTypeStruct %23 %24 %25 %7 
					                                              %27 = OpTypePointer Uniform %26 
					Uniform struct {f32_4[4]; f32_4[4]; f32_4[4]; f32_4;}* %28 = OpVariable Uniform 
					                                              %29 = OpTypeInt 32 1 
					                                          i32 %30 = OpConstant 0 
					                                          i32 %31 = OpConstant 1 
					                                              %32 = OpTypeVector %6 3 
					                                              %33 = OpTypePointer Uniform %7 
					                                          i32 %55 = OpConstant 2 
					                                          i32 %68 = OpConstant 3 
					                                              %83 = OpTypePointer Input %32 
					                                 Input f32_3* %84 = OpVariable Input 
					                               Private f32_4* %90 = OpVariable Private 
					                                         u32 %258 = OpConstant 0 
					                                             %259 = OpTypePointer Private %6 
					                                         u32 %267 = OpConstant 2 
					                                             %268 = OpTypePointer Uniform %6 
					                                         u32 %272 = OpConstant 3 
					                                             %281 = OpTypePointer Output %6 
					                                 Output f32* %282 = OpVariable Output 
					                                         u32 %327 = OpConstant 1 
					                                             %328 = OpTypeArray %6 %327 
					                                             %329 = OpTypeStruct %7 %6 %328 
					                                             %330 = OpTypePointer Output %329 
					        Output struct {f32_4; f32; f32[1];}* %331 = OpVariable Output 
					                                          void %4 = OpFunction None %3 
					                                               %5 = OpLabel 
					                                        f32_4 %12 = OpLoad %11 
					                                                      OpStore %9 %12 
					                                        f32_4 %13 = OpLoad %9 
					                                        f32_4 %16 = OpCompositeConstruct %14 %14 %14 %14 
					                                        f32_4 %17 = OpCompositeConstruct %15 %15 %15 %15 
					                                        f32_4 %18 = OpExtInst %1 43 %13 %16 %17 
					                                                      OpStore %9 %18 
					                               Uniform f32_4* %34 = OpAccessChain %28 %30 %31 
					                                        f32_4 %35 = OpLoad %34 
					                                        f32_3 %36 = OpVectorShuffle %35 %35 1 1 1 
					                               Uniform f32_4* %37 = OpAccessChain %28 %31 %31 
					                                        f32_4 %38 = OpLoad %37 
					                                        f32_3 %39 = OpVectorShuffle %38 %38 0 1 2 
					                                        f32_3 %40 = OpFMul %36 %39 
					                                        f32_4 %41 = OpLoad %20 
					                                        f32_4 %42 = OpVectorShuffle %41 %40 4 5 6 3 
					                                                      OpStore %20 %42 
					                               Uniform f32_4* %43 = OpAccessChain %28 %31 %30 
					                                        f32_4 %44 = OpLoad %43 
					                                        f32_3 %45 = OpVectorShuffle %44 %44 0 1 2 
					                               Uniform f32_4* %46 = OpAccessChain %28 %30 %31 
					                                        f32_4 %47 = OpLoad %46 
					                                        f32_3 %48 = OpVectorShuffle %47 %47 0 0 0 
					                                        f32_3 %49 = OpFMul %45 %48 
					                                        f32_4 %50 = OpLoad %20 
					                                        f32_3 %51 = OpVectorShuffle %50 %50 0 1 2 
					                                        f32_3 %52 = OpFAdd %49 %51 
					                                        f32_4 %53 = OpLoad %20 
					                                        f32_4 %54 = OpVectorShuffle %53 %52 4 5 6 3 
					                                                      OpStore %20 %54 
					                               Uniform f32_4* %56 = OpAccessChain %28 %31 %55 
					                                        f32_4 %57 = OpLoad %56 
					                                        f32_3 %58 = OpVectorShuffle %57 %57 0 1 2 
					                               Uniform f32_4* %59 = OpAccessChain %28 %30 %31 
					                                        f32_4 %60 = OpLoad %59 
					                                        f32_3 %61 = OpVectorShuffle %60 %60 2 2 2 
					                                        f32_3 %62 = OpFMul %58 %61 
					                                        f32_4 %63 = OpLoad %20 
					                                        f32_3 %64 = OpVectorShuffle %63 %63 0 1 2 
					                                        f32_3 %65 = OpFAdd %62 %64 
					                                        f32_4 %66 = OpLoad %20 
					                                        f32_4 %67 = OpVectorShuffle %66 %65 4 5 6 3 
					                                                      OpStore %20 %67 
					                               Uniform f32_4* %69 = OpAccessChain %28 %31 %68 
					                                        f32_4 %70 = OpLoad %69 
					                                        f32_3 %71 = OpVectorShuffle %70 %70 0 1 2 
					                               Uniform f32_4* %72 = OpAccessChain %28 %30 %31 
					                                        f32_4 %73 = OpLoad %72 
					                                        f32_3 %74 = OpVectorShuffle %73 %73 3 3 3 
					                                        f32_3 %75 = OpFMul %71 %74 
					                                        f32_4 %76 = OpLoad %20 
					                                        f32_3 %77 = OpVectorShuffle %76 %76 0 1 2 
					                                        f32_3 %78 = OpFAdd %75 %77 
					                                        f32_4 %79 = OpLoad %20 
					                                        f32_4 %80 = OpVectorShuffle %79 %78 4 5 6 3 
					                                                      OpStore %20 %80 
					                                        f32_4 %81 = OpLoad %20 
					                                        f32_3 %82 = OpVectorShuffle %81 %81 0 1 2 
					                                        f32_3 %85 = OpLoad %84 
					                                        f32_3 %86 = OpVectorShuffle %85 %85 1 1 1 
					                                        f32_3 %87 = OpFMul %82 %86 
					                                        f32_4 %88 = OpLoad %20 
					                                        f32_4 %89 = OpVectorShuffle %88 %87 4 5 6 3 
					                                                      OpStore %20 %89 
					                               Uniform f32_4* %91 = OpAccessChain %28 %30 %30 
					                                        f32_4 %92 = OpLoad %91 
					                                        f32_3 %93 = OpVectorShuffle %92 %92 1 1 1 
					                               Uniform f32_4* %94 = OpAccessChain %28 %31 %31 
					                                        f32_4 %95 = OpLoad %94 
					                                        f32_3 %96 = OpVectorShuffle %95 %95 0 1 2 
					                                        f32_3 %97 = OpFMul %93 %96 
					                                        f32_4 %98 = OpLoad %90 
					                                        f32_4 %99 = OpVectorShuffle %98 %97 4 5 6 3 
					                                                      OpStore %90 %99 
					                              Uniform f32_4* %100 = OpAccessChain %28 %31 %30 
					                                       f32_4 %101 = OpLoad %100 
					                                       f32_3 %102 = OpVectorShuffle %101 %101 0 1 2 
					                              Uniform f32_4* %103 = OpAccessChain %28 %30 %30 
					                                       f32_4 %104 = OpLoad %103 
					                                       f32_3 %105 = OpVectorShuffle %104 %104 0 0 0 
					                                       f32_3 %106 = OpFMul %102 %105 
					                                       f32_4 %107 = OpLoad %90 
					                                       f32_3 %108 = OpVectorShuffle %107 %107 0 1 2 
					                                       f32_3 %109 = OpFAdd %106 %108 
					                                       f32_4 %110 = OpLoad %90 
					                                       f32_4 %111 = OpVectorShuffle %110 %109 4 5 6 3 
					                                                      OpStore %90 %111 
					                              Uniform f32_4* %112 = OpAccessChain %28 %31 %55 
					                                       f32_4 %113 = OpLoad %112 
					                                       f32_3 %114 = OpVectorShuffle %113 %113 0 1 2 
					                              Uniform f32_4* %115 = OpAccessChain %28 %30 %30 
					                                       f32_4 %116 = OpLoad %115 
					                                       f32_3 %117 = OpVectorShuffle %116 %116 2 2 2 
					                                       f32_3 %118 = OpFMul %114 %117 
					                                       f32_4 %119 = OpLoad %90 
					                                       f32_3 %120 = OpVectorShuffle %119 %119 0 1 2 
					                                       f32_3 %121 = OpFAdd %118 %120 
					                                       f32_4 %122 = OpLoad %90 
					                                       f32_4 %123 = OpVectorShuffle %122 %121 4 5 6 3 
					                                                      OpStore %90 %123 
					                              Uniform f32_4* %124 = OpAccessChain %28 %31 %68 
					                                       f32_4 %125 = OpLoad %124 
					                                       f32_3 %126 = OpVectorShuffle %125 %125 0 1 2 
					                              Uniform f32_4* %127 = OpAccessChain %28 %30 %30 
					                                       f32_4 %128 = OpLoad %127 
					                                       f32_3 %129 = OpVectorShuffle %128 %128 3 3 3 
					                                       f32_3 %130 = OpFMul %126 %129 
					                                       f32_4 %131 = OpLoad %90 
					                                       f32_3 %132 = OpVectorShuffle %131 %131 0 1 2 
					                                       f32_3 %133 = OpFAdd %130 %132 
					                                       f32_4 %134 = OpLoad %90 
					                                       f32_4 %135 = OpVectorShuffle %134 %133 4 5 6 3 
					                                                      OpStore %90 %135 
					                                       f32_4 %136 = OpLoad %90 
					                                       f32_3 %137 = OpVectorShuffle %136 %136 0 1 2 
					                                       f32_3 %138 = OpLoad %84 
					                                       f32_3 %139 = OpVectorShuffle %138 %138 0 0 0 
					                                       f32_3 %140 = OpFMul %137 %139 
					                                       f32_4 %141 = OpLoad %20 
					                                       f32_3 %142 = OpVectorShuffle %141 %141 0 1 2 
					                                       f32_3 %143 = OpFAdd %140 %142 
					                                       f32_4 %144 = OpLoad %20 
					                                       f32_4 %145 = OpVectorShuffle %144 %143 4 5 6 3 
					                                                      OpStore %20 %145 
					                              Uniform f32_4* %146 = OpAccessChain %28 %30 %55 
					                                       f32_4 %147 = OpLoad %146 
					                                       f32_3 %148 = OpVectorShuffle %147 %147 1 1 1 
					                              Uniform f32_4* %149 = OpAccessChain %28 %31 %31 
					                                       f32_4 %150 = OpLoad %149 
					                                       f32_3 %151 = OpVectorShuffle %150 %150 0 1 2 
					                                       f32_3 %152 = OpFMul %148 %151 
					                                       f32_4 %153 = OpLoad %90 
					                                       f32_4 %154 = OpVectorShuffle %153 %152 4 5 6 3 
					                                                      OpStore %90 %154 
					                              Uniform f32_4* %155 = OpAccessChain %28 %31 %30 
					                                       f32_4 %156 = OpLoad %155 
					                                       f32_3 %157 = OpVectorShuffle %156 %156 0 1 2 
					                              Uniform f32_4* %158 = OpAccessChain %28 %30 %55 
					                                       f32_4 %159 = OpLoad %158 
					                                       f32_3 %160 = OpVectorShuffle %159 %159 0 0 0 
					                                       f32_3 %161 = OpFMul %157 %160 
					                                       f32_4 %162 = OpLoad %90 
					                                       f32_3 %163 = OpVectorShuffle %162 %162 0 1 2 
					                                       f32_3 %164 = OpFAdd %161 %163 
					                                       f32_4 %165 = OpLoad %90 
					                                       f32_4 %166 = OpVectorShuffle %165 %164 4 5 6 3 
					                                                      OpStore %90 %166 
					                              Uniform f32_4* %167 = OpAccessChain %28 %31 %55 
					                                       f32_4 %168 = OpLoad %167 
					                                       f32_3 %169 = OpVectorShuffle %168 %168 0 1 2 
					                              Uniform f32_4* %170 = OpAccessChain %28 %30 %55 
					                                       f32_4 %171 = OpLoad %170 
					                                       f32_3 %172 = OpVectorShuffle %171 %171 2 2 2 
					                                       f32_3 %173 = OpFMul %169 %172 
					                                       f32_4 %174 = OpLoad %90 
					                                       f32_3 %175 = OpVectorShuffle %174 %174 0 1 2 
					                                       f32_3 %176 = OpFAdd %173 %175 
					                                       f32_4 %177 = OpLoad %90 
					                                       f32_4 %178 = OpVectorShuffle %177 %176 4 5 6 3 
					                                                      OpStore %90 %178 
					                              Uniform f32_4* %179 = OpAccessChain %28 %31 %68 
					                                       f32_4 %180 = OpLoad %179 
					                                       f32_3 %181 = OpVectorShuffle %180 %180 0 1 2 
					                              Uniform f32_4* %182 = OpAccessChain %28 %30 %55 
					                                       f32_4 %183 = OpLoad %182 
					                                       f32_3 %184 = OpVectorShuffle %183 %183 3 3 3 
					                                       f32_3 %185 = OpFMul %181 %184 
					                                       f32_4 %186 = OpLoad %90 
					                                       f32_3 %187 = OpVectorShuffle %186 %186 0 1 2 
					                                       f32_3 %188 = OpFAdd %185 %187 
					                                       f32_4 %189 = OpLoad %90 
					                                       f32_4 %190 = OpVectorShuffle %189 %188 4 5 6 3 
					                                                      OpStore %90 %190 
					                                       f32_4 %191 = OpLoad %90 
					                                       f32_3 %192 = OpVectorShuffle %191 %191 0 1 2 
					                                       f32_3 %193 = OpLoad %84 
					                                       f32_3 %194 = OpVectorShuffle %193 %193 2 2 2 
					                                       f32_3 %195 = OpFMul %192 %194 
					                                       f32_4 %196 = OpLoad %20 
					                                       f32_3 %197 = OpVectorShuffle %196 %196 0 1 2 
					                                       f32_3 %198 = OpFAdd %195 %197 
					                                       f32_4 %199 = OpLoad %20 
					                                       f32_4 %200 = OpVectorShuffle %199 %198 4 5 6 3 
					                                                      OpStore %20 %200 
					                              Uniform f32_4* %201 = OpAccessChain %28 %30 %68 
					                                       f32_4 %202 = OpLoad %201 
					                                       f32_3 %203 = OpVectorShuffle %202 %202 1 1 1 
					                              Uniform f32_4* %204 = OpAccessChain %28 %31 %31 
					                                       f32_4 %205 = OpLoad %204 
					                                       f32_3 %206 = OpVectorShuffle %205 %205 0 1 2 
					                                       f32_3 %207 = OpFMul %203 %206 
					                                       f32_4 %208 = OpLoad %90 
					                                       f32_4 %209 = OpVectorShuffle %208 %207 4 5 6 3 
					                                                      OpStore %90 %209 
					                              Uniform f32_4* %210 = OpAccessChain %28 %31 %30 
					                                       f32_4 %211 = OpLoad %210 
					                                       f32_3 %212 = OpVectorShuffle %211 %211 0 1 2 
					                              Uniform f32_4* %213 = OpAccessChain %28 %30 %68 
					                                       f32_4 %214 = OpLoad %213 
					                                       f32_3 %215 = OpVectorShuffle %214 %214 0 0 0 
					                                       f32_3 %216 = OpFMul %212 %215 
					                                       f32_4 %217 = OpLoad %90 
					                                       f32_3 %218 = OpVectorShuffle %217 %217 0 1 2 
					                                       f32_3 %219 = OpFAdd %216 %218 
					                                       f32_4 %220 = OpLoad %90 
					                                       f32_4 %221 = OpVectorShuffle %220 %219 4 5 6 3 
					                                                      OpStore %90 %221 
					                              Uniform f32_4* %222 = OpAccessChain %28 %31 %55 
					                                       f32_4 %223 = OpLoad %222 
					                                       f32_3 %224 = OpVectorShuffle %223 %223 0 1 2 
					                              Uniform f32_4* %225 = OpAccessChain %28 %30 %68 
					                                       f32_4 %226 = OpLoad %225 
					                                       f32_3 %227 = OpVectorShuffle %226 %226 2 2 2 
					                                       f32_3 %228 = OpFMul %224 %227 
					                                       f32_4 %229 = OpLoad %90 
					                                       f32_3 %230 = OpVectorShuffle %229 %229 0 1 2 
					                                       f32_3 %231 = OpFAdd %228 %230 
					                                       f32_4 %232 = OpLoad %90 
					                                       f32_4 %233 = OpVectorShuffle %232 %231 4 5 6 3 
					                                                      OpStore %90 %233 
					                              Uniform f32_4* %234 = OpAccessChain %28 %31 %68 
					                                       f32_4 %235 = OpLoad %234 
					                                       f32_3 %236 = OpVectorShuffle %235 %235 0 1 2 
					                              Uniform f32_4* %237 = OpAccessChain %28 %30 %68 
					                                       f32_4 %238 = OpLoad %237 
					                                       f32_3 %239 = OpVectorShuffle %238 %238 3 3 3 
					                                       f32_3 %240 = OpFMul %236 %239 
					                                       f32_4 %241 = OpLoad %90 
					                                       f32_3 %242 = OpVectorShuffle %241 %241 0 1 2 
					                                       f32_3 %243 = OpFAdd %240 %242 
					                                       f32_4 %244 = OpLoad %90 
					                                       f32_4 %245 = OpVectorShuffle %244 %243 4 5 6 3 
					                                                      OpStore %90 %245 
					                                       f32_4 %246 = OpLoad %20 
					                                       f32_3 %247 = OpVectorShuffle %246 %246 0 1 2 
					                                       f32_4 %248 = OpLoad %90 
					                                       f32_3 %249 = OpVectorShuffle %248 %248 0 1 2 
					                                       f32_3 %250 = OpFAdd %247 %249 
					                                       f32_4 %251 = OpLoad %20 
					                                       f32_4 %252 = OpVectorShuffle %251 %250 4 5 6 3 
					                                                      OpStore %20 %252 
					                                       f32_4 %253 = OpLoad %20 
					                                       f32_3 %254 = OpVectorShuffle %253 %253 0 1 2 
					                                       f32_4 %255 = OpLoad %20 
					                                       f32_3 %256 = OpVectorShuffle %255 %255 0 1 2 
					                                         f32 %257 = OpDot %254 %256 
					                                Private f32* %260 = OpAccessChain %20 %258 
					                                                      OpStore %260 %257 
					                                Private f32* %261 = OpAccessChain %20 %258 
					                                         f32 %262 = OpLoad %261 
					                                         f32 %263 = OpExtInst %1 31 %262 
					                                Private f32* %264 = OpAccessChain %20 %258 
					                                                      OpStore %264 %263 
					                                Private f32* %265 = OpAccessChain %20 %258 
					                                         f32 %266 = OpLoad %265 
					                                Uniform f32* %269 = OpAccessChain %28 %68 %267 
					                                         f32 %270 = OpLoad %269 
					                                         f32 %271 = OpFMul %266 %270 
					                                Uniform f32* %273 = OpAccessChain %28 %68 %272 
					                                         f32 %274 = OpLoad %273 
					                                         f32 %275 = OpFAdd %271 %274 
					                                Private f32* %276 = OpAccessChain %20 %258 
					                                                      OpStore %276 %275 
					                                Private f32* %277 = OpAccessChain %20 %258 
					                                         f32 %278 = OpLoad %277 
					                                         f32 %279 = OpExtInst %1 43 %278 %14 %15 
					                                Private f32* %280 = OpAccessChain %20 %258 
					                                                      OpStore %280 %279 
					                                Private f32* %283 = OpAccessChain %20 %258 
					                                         f32 %284 = OpLoad %283 
					                                                      OpStore %282 %284 
					                                       f32_3 %285 = OpLoad %84 
					                                       f32_4 %286 = OpVectorShuffle %285 %285 1 1 1 1 
					                              Uniform f32_4* %287 = OpAccessChain %28 %30 %31 
					                                       f32_4 %288 = OpLoad %287 
					                                       f32_4 %289 = OpFMul %286 %288 
					                                                      OpStore %20 %289 
					                              Uniform f32_4* %290 = OpAccessChain %28 %30 %30 
					                                       f32_4 %291 = OpLoad %290 
					                                       f32_3 %292 = OpLoad %84 
					                                       f32_4 %293 = OpVectorShuffle %292 %292 0 0 0 0 
					                                       f32_4 %294 = OpFMul %291 %293 
					                                       f32_4 %295 = OpLoad %20 
					                                       f32_4 %296 = OpFAdd %294 %295 
					                                                      OpStore %20 %296 
					                              Uniform f32_4* %297 = OpAccessChain %28 %30 %55 
					                                       f32_4 %298 = OpLoad %297 
					                                       f32_3 %299 = OpLoad %84 
					                                       f32_4 %300 = OpVectorShuffle %299 %299 2 2 2 2 
					                                       f32_4 %301 = OpFMul %298 %300 
					                                       f32_4 %302 = OpLoad %20 
					                                       f32_4 %303 = OpFAdd %301 %302 
					                                                      OpStore %20 %303 
					                                       f32_4 %304 = OpLoad %20 
					                              Uniform f32_4* %305 = OpAccessChain %28 %30 %68 
					                                       f32_4 %306 = OpLoad %305 
					                                       f32_4 %307 = OpFAdd %304 %306 
					                                                      OpStore %20 %307 
					                                       f32_4 %308 = OpLoad %20 
					                                       f32_4 %309 = OpVectorShuffle %308 %308 1 1 1 1 
					                              Uniform f32_4* %310 = OpAccessChain %28 %55 %31 
					                                       f32_4 %311 = OpLoad %310 
					                                       f32_4 %312 = OpFMul %309 %311 
					                                                      OpStore %90 %312 
					                              Uniform f32_4* %313 = OpAccessChain %28 %55 %30 
					                                       f32_4 %314 = OpLoad %313 
					                                       f32_4 %315 = OpLoad %20 
					                                       f32_4 %316 = OpVectorShuffle %315 %315 0 0 0 0 
					                                       f32_4 %317 = OpFMul %314 %316 
					                                       f32_4 %318 = OpLoad %90 
					                                       f32_4 %319 = OpFAdd %317 %318 
					                                                      OpStore %90 %319 
					                              Uniform f32_4* %320 = OpAccessChain %28 %55 %55 
					                                       f32_4 %321 = OpLoad %320 
					                                       f32_4 %322 = OpLoad %20 
					                                       f32_4 %323 = OpVectorShuffle %322 %322 2 2 2 2 
					                                       f32_4 %324 = OpFMul %321 %323 
					                                       f32_4 %325 = OpLoad %90 
					                                       f32_4 %326 = OpFAdd %324 %325 
					                                                      OpStore %90 %326 
					                              Uniform f32_4* %332 = OpAccessChain %28 %55 %68 
					                                       f32_4 %333 = OpLoad %332 
					                                       f32_4 %334 = OpLoad %20 
					                                       f32_4 %335 = OpVectorShuffle %334 %334 3 3 3 3 
					                                       f32_4 %336 = OpFMul %333 %335 
					                                       f32_4 %337 = OpLoad %90 
					                                       f32_4 %338 = OpFAdd %336 %337 
					                               Output f32_4* %339 = OpAccessChain %331 %30 
					                                                      OpStore %339 %338 
					                                 Output f32* %340 = OpAccessChain %331 %30 %327 
					                                         f32 %341 = OpLoad %340 
					                                         f32 %342 = OpFNegate %341 
					                                 Output f32* %343 = OpAccessChain %331 %30 %327 
					                                                      OpStore %343 %342 
					                                                      OpReturn
					                                                      OpFunctionEnd
					; SPIR-V
					; Version: 1.0
					; Generator: Khronos Glslang Reference Front End; 1
					; Bound: 47
					; Schema: 0
					                                 OpCapability Shader 
					                          %1 = OpExtInstImport "GLSL.std.450" 
					                                 OpMemoryModel Logical GLSL450 
					                                 OpEntryPoint Fragment %4 "main" %12 %27 %29 
					                                 OpExecutionMode %4 OriginUpperLeft 
					                                 OpDecorate %9 RelaxedPrecision 
					                                 OpDecorate %12 RelaxedPrecision 
					                                 OpDecorate %12 Location 12 
					                                 OpDecorate %13 RelaxedPrecision 
					                                 OpDecorate %14 RelaxedPrecision 
					                                 OpMemberDecorate %15 0 RelaxedPrecision 
					                                 OpMemberDecorate %15 0 Offset 15 
					                                 OpDecorate %15 Block 
					                                 OpDecorate %17 DescriptorSet 17 
					                                 OpDecorate %17 Binding 17 
					                                 OpDecorate %22 RelaxedPrecision 
					                                 OpDecorate %23 RelaxedPrecision 
					                                 OpDecorate %24 RelaxedPrecision 
					                                 OpDecorate %25 RelaxedPrecision 
					                                 OpDecorate %27 RelaxedPrecision 
					                                 OpDecorate %27 Location 27 
					                                 OpDecorate %29 RelaxedPrecision 
					                                 OpDecorate %29 Location 29 
					                                 OpDecorate %30 RelaxedPrecision 
					                                 OpDecorate %31 RelaxedPrecision 
					                                 OpDecorate %32 RelaxedPrecision 
					                                 OpDecorate %33 RelaxedPrecision 
					                                 OpDecorate %35 RelaxedPrecision 
					                                 OpDecorate %36 RelaxedPrecision 
					                                 OpDecorate %37 RelaxedPrecision 
					                                 OpDecorate %43 RelaxedPrecision 
					                          %2 = OpTypeVoid 
					                          %3 = OpTypeFunction %2 
					                          %6 = OpTypeFloat 32 
					                          %7 = OpTypeVector %6 3 
					                          %8 = OpTypePointer Private %7 
					           Private f32_3* %9 = OpVariable Private 
					                         %10 = OpTypeVector %6 4 
					                         %11 = OpTypePointer Input %10 
					            Input f32_4* %12 = OpVariable Input 
					                         %15 = OpTypeStruct %10 
					                         %16 = OpTypePointer Uniform %15 
					Uniform struct {f32_4;}* %17 = OpVariable Uniform 
					                         %18 = OpTypeInt 32 1 
					                     i32 %19 = OpConstant 0 
					                         %20 = OpTypePointer Uniform %10 
					                         %26 = OpTypePointer Output %10 
					           Output f32_4* %27 = OpVariable Output 
					                         %28 = OpTypePointer Input %6 
					              Input f32* %29 = OpVariable Input 
					                         %40 = OpTypeInt 32 0 
					                     u32 %41 = OpConstant 3 
					                         %44 = OpTypePointer Output %6 
					                     void %4 = OpFunction None %3 
					                          %5 = OpLabel 
					                   f32_4 %13 = OpLoad %12 
					                   f32_3 %14 = OpVectorShuffle %13 %13 0 1 2 
					          Uniform f32_4* %21 = OpAccessChain %17 %19 
					                   f32_4 %22 = OpLoad %21 
					                   f32_3 %23 = OpVectorShuffle %22 %22 0 1 2 
					                   f32_3 %24 = OpFNegate %23 
					                   f32_3 %25 = OpFAdd %14 %24 
					                                 OpStore %9 %25 
					                     f32 %30 = OpLoad %29 
					                   f32_3 %31 = OpCompositeConstruct %30 %30 %30 
					                   f32_3 %32 = OpLoad %9 
					                   f32_3 %33 = OpFMul %31 %32 
					          Uniform f32_4* %34 = OpAccessChain %17 %19 
					                   f32_4 %35 = OpLoad %34 
					                   f32_3 %36 = OpVectorShuffle %35 %35 0 1 2 
					                   f32_3 %37 = OpFAdd %33 %36 
					                   f32_4 %38 = OpLoad %27 
					                   f32_4 %39 = OpVectorShuffle %38 %37 4 5 6 3 
					                                 OpStore %27 %39 
					              Input f32* %42 = OpAccessChain %12 %41 
					                     f32 %43 = OpLoad %42 
					             Output f32* %45 = OpAccessChain %27 %41 
					                                 OpStore %45 %43 
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
				SubProgram "gles hw_tier00 " {
					Keywords { "FOG_LINEAR" }
					"!!GLES"
				}
				SubProgram "gles hw_tier01 " {
					Keywords { "FOG_LINEAR" }
					"!!GLES"
				}
				SubProgram "gles hw_tier02 " {
					Keywords { "FOG_LINEAR" }
					"!!GLES"
				}
				SubProgram "gles3 hw_tier00 " {
					Keywords { "FOG_LINEAR" }
					"!!GLES3"
				}
				SubProgram "gles3 hw_tier01 " {
					Keywords { "FOG_LINEAR" }
					"!!GLES3"
				}
				SubProgram "gles3 hw_tier02 " {
					Keywords { "FOG_LINEAR" }
					"!!GLES3"
				}
				SubProgram "vulkan hw_tier00 " {
					Keywords { "FOG_LINEAR" }
					"spirv"
				}
				SubProgram "vulkan hw_tier01 " {
					Keywords { "FOG_LINEAR" }
					"spirv"
				}
				SubProgram "vulkan hw_tier02 " {
					Keywords { "FOG_LINEAR" }
					"spirv"
				}
			}
		}
	}
}