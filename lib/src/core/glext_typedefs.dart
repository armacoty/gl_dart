import "dart:ffi";
import "package:ffi/ffi.dart";
import "glext_structures.dart";
import "glext_pfn_typedefs.dart";

typedef TglBlendFuncSeparate_Native = Void Function(Uint32 sfactorRGB,
    Uint32 dfactorRGB, Uint32 sfactorAlpha, Uint32 dfactorAlpha);
typedef TglBlendFuncSeparate_Func = void Function(
    int sfactorRGB, int dfactorRGB, int sfactorAlpha, int dfactorAlpha);
typedef TglMultiDrawArrays_Native = Void Function(
    Uint32 mode, Pointer<Int32> first, Pointer<Int32> count, Int32 drawcount);
typedef TglMultiDrawArrays_Func = void Function(
    int mode, Pointer<Int32> first, Pointer<Int32> count, int drawcount);
typedef TglMultiDrawElements_Native = Void Function(
    Uint32 mode,
    Pointer<Int32> count,
    Uint32 type,
    Pointer<Pointer<Void>> indices,
    Int32 drawcount);
typedef TglMultiDrawElements_Func = void Function(
    int mode,
    Pointer<Int32> count,
    int type,
    Pointer<Pointer<Void>> indices,
    int drawcount);
typedef TglPointParameterf_Native = Void Function(Uint32 pname, Float param);
typedef TglPointParameterf_Func = void Function(int pname, double param);
typedef TglPointParameterfv_Native = Void Function(
    Uint32 pname, Pointer<Float> params);
typedef TglPointParameterfv_Func = void Function(
    int pname, Pointer<Float> params);
typedef TglPointParameteri_Native = Void Function(Uint32 pname, Int32 param);
typedef TglPointParameteri_Func = void Function(int pname, int param);
typedef TglPointParameteriv_Native = Void Function(
    Uint32 pname, Pointer<Int32> params);
typedef TglPointParameteriv_Func = void Function(
    int pname, Pointer<Int32> params);
typedef TglFogCoordf_Native = Void Function(Float coord);
typedef TglFogCoordf_Func = void Function(double coord);
typedef TglFogCoordfv_Native = Void Function(Pointer<Float> coord);
typedef TglFogCoordfv_Func = void Function(Pointer<Float> coord);
typedef TglFogCoordd_Native = Void Function(Double coord);
typedef TglFogCoordd_Func = void Function(double coord);
typedef TglFogCoorddv_Native = Void Function(Pointer<Double> coord);
typedef TglFogCoorddv_Func = void Function(Pointer<Double> coord);
typedef TglFogCoordPointer_Native = Void Function(
    Uint32 type, Int32 stride, Pointer<Void> pointer);
typedef TglFogCoordPointer_Func = void Function(
    int type, int stride, Pointer<Void> pointer);
typedef TglSecondaryColor3b_Native = Void Function(
    Uint8 red, Uint8 green, Uint8 blue);
typedef TglSecondaryColor3b_Func = void Function(int red, int green, int blue);
typedef TglSecondaryColor3bv_Native = Void Function(Pointer<Uint8> v);
typedef TglSecondaryColor3bv_Func = void Function(Pointer<Uint8> v);
typedef TglSecondaryColor3d_Native = Void Function(
    Double red, Double green, Double blue);
typedef TglSecondaryColor3d_Func = void Function(
    double red, double green, double blue);
typedef TglSecondaryColor3dv_Native = Void Function(Pointer<Double> v);
typedef TglSecondaryColor3dv_Func = void Function(Pointer<Double> v);
typedef TglSecondaryColor3f_Native = Void Function(
    Float red, Float green, Float blue);
typedef TglSecondaryColor3f_Func = void Function(
    double red, double green, double blue);
typedef TglSecondaryColor3fv_Native = Void Function(Pointer<Float> v);
typedef TglSecondaryColor3fv_Func = void Function(Pointer<Float> v);
typedef TglSecondaryColor3i_Native = Void Function(
    Int32 red, Int32 green, Int32 blue);
typedef TglSecondaryColor3i_Func = void Function(int red, int green, int blue);
typedef TglSecondaryColor3iv_Native = Void Function(Pointer<Int32> v);
typedef TglSecondaryColor3iv_Func = void Function(Pointer<Int32> v);
typedef TglSecondaryColor3s_Native = Void Function(
    Int16 red, Int16 green, Int16 blue);
typedef TglSecondaryColor3s_Func = void Function(int red, int green, int blue);
typedef TglSecondaryColor3sv_Native = Void Function(Pointer<Int16> v);
typedef TglSecondaryColor3sv_Func = void Function(Pointer<Int16> v);
typedef TglSecondaryColor3ub_Native = Void Function(
    Uint8 red, Uint8 green, Uint8 blue);
typedef TglSecondaryColor3ub_Func = void Function(int red, int green, int blue);
typedef TglSecondaryColor3ubv_Native = Void Function(Pointer<Uint8> v);
typedef TglSecondaryColor3ubv_Func = void Function(Pointer<Uint8> v);
typedef TglSecondaryColor3ui_Native = Void Function(
    Uint32 red, Uint32 green, Uint32 blue);
typedef TglSecondaryColor3ui_Func = void Function(int red, int green, int blue);
typedef TglSecondaryColor3uiv_Native = Void Function(Pointer<Uint32> v);
typedef TglSecondaryColor3uiv_Func = void Function(Pointer<Uint32> v);
typedef TglSecondaryColor3us_Native = Void Function(
    Uint16 red, Uint16 green, Uint16 blue);
typedef TglSecondaryColor3us_Func = void Function(int red, int green, int blue);
typedef TglSecondaryColor3usv_Native = Void Function(Pointer<Uint16> v);
typedef TglSecondaryColor3usv_Func = void Function(Pointer<Uint16> v);
typedef TglSecondaryColorPointer_Native = Void Function(
    Int32 size, Uint32 type, Int32 stride, Pointer<Void> pointer);
typedef TglSecondaryColorPointer_Func = void Function(
    int size, int type, int stride, Pointer<Void> pointer);
typedef TglWindowPos2d_Native = Void Function(Double x, Double y);
typedef TglWindowPos2d_Func = void Function(double x, double y);
typedef TglWindowPos2dv_Native = Void Function(Pointer<Double> v);
typedef TglWindowPos2dv_Func = void Function(Pointer<Double> v);
typedef TglWindowPos2f_Native = Void Function(Float x, Float y);
typedef TglWindowPos2f_Func = void Function(double x, double y);
typedef TglWindowPos2fv_Native = Void Function(Pointer<Float> v);
typedef TglWindowPos2fv_Func = void Function(Pointer<Float> v);
typedef TglWindowPos2i_Native = Void Function(Int32 x, Int32 y);
typedef TglWindowPos2i_Func = void Function(int x, int y);
typedef TglWindowPos2iv_Native = Void Function(Pointer<Int32> v);
typedef TglWindowPos2iv_Func = void Function(Pointer<Int32> v);
typedef TglWindowPos2s_Native = Void Function(Int16 x, Int16 y);
typedef TglWindowPos2s_Func = void Function(int x, int y);
typedef TglWindowPos2sv_Native = Void Function(Pointer<Int16> v);
typedef TglWindowPos2sv_Func = void Function(Pointer<Int16> v);
typedef TglWindowPos3d_Native = Void Function(Double x, Double y, Double z);
typedef TglWindowPos3d_Func = void Function(double x, double y, double z);
typedef TglWindowPos3dv_Native = Void Function(Pointer<Double> v);
typedef TglWindowPos3dv_Func = void Function(Pointer<Double> v);
typedef TglWindowPos3f_Native = Void Function(Float x, Float y, Float z);
typedef TglWindowPos3f_Func = void Function(double x, double y, double z);
typedef TglWindowPos3fv_Native = Void Function(Pointer<Float> v);
typedef TglWindowPos3fv_Func = void Function(Pointer<Float> v);
typedef TglWindowPos3i_Native = Void Function(Int32 x, Int32 y, Int32 z);
typedef TglWindowPos3i_Func = void Function(int x, int y, int z);
typedef TglWindowPos3iv_Native = Void Function(Pointer<Int32> v);
typedef TglWindowPos3iv_Func = void Function(Pointer<Int32> v);
typedef TglWindowPos3s_Native = Void Function(Int16 x, Int16 y, Int16 z);
typedef TglWindowPos3s_Func = void Function(int x, int y, int z);
typedef TglWindowPos3sv_Native = Void Function(Pointer<Int16> v);
typedef TglWindowPos3sv_Func = void Function(Pointer<Int16> v);
typedef TglGenQueries_Native = Void Function(Int32 n, Pointer<Uint32> ids);
typedef TglGenQueries_Func = void Function(int n, Pointer<Uint32> ids);
typedef TglDeleteQueries_Native = Void Function(Int32 n, Pointer<Uint32> ids);
typedef TglDeleteQueries_Func = void Function(int n, Pointer<Uint32> ids);
typedef TglIsQuery_Native = Uint8 Function(Uint32 id);
typedef TglIsQuery_Func = int Function(int id);
typedef TglBeginQuery_Native = Void Function(Uint32 target, Uint32 id);
typedef TglBeginQuery_Func = void Function(int target, int id);
typedef TglEndQuery_Native = Void Function(Uint32 target);
typedef TglEndQuery_Func = void Function(int target);
typedef TglGetQueryiv_Native = Void Function(
    Uint32 target, Uint32 pname, Pointer<Int32> params);
typedef TglGetQueryiv_Func = void Function(
    int target, int pname, Pointer<Int32> params);
typedef TglGetQueryObjectiv_Native = Void Function(
    Uint32 id, Uint32 pname, Pointer<Int32> params);
typedef TglGetQueryObjectiv_Func = void Function(
    int id, int pname, Pointer<Int32> params);
typedef TglGetQueryObjectuiv_Native = Void Function(
    Uint32 id, Uint32 pname, Pointer<Uint32> params);
typedef TglGetQueryObjectuiv_Func = void Function(
    int id, int pname, Pointer<Uint32> params);
typedef TglBindBuffer_Native = Void Function(Uint32 target, Uint32 buffer);
typedef TglBindBuffer_Func = void Function(int target, int buffer);
typedef TglDeleteBuffers_Native = Void Function(
    Int32 n, Pointer<Uint32> buffers);
typedef TglDeleteBuffers_Func = void Function(int n, Pointer<Uint32> buffers);
typedef TglGenBuffers_Native = Void Function(Int32 n, Pointer<Uint32> buffers);
typedef TglGenBuffers_Func = void Function(int n, Pointer<Uint32> buffers);
typedef TglIsBuffer_Native = Uint8 Function(Uint32 buffer);
typedef TglIsBuffer_Func = int Function(int buffer);
typedef TglBufferData_Native = Void Function(
    Uint32 target, Int64 size, Pointer<Void> data, Uint32 usage);
typedef TglBufferData_Func = void Function(
    int target, int size, Pointer<Void> data, int usage);
typedef TglBufferSubData_Native = Void Function(
    Uint32 target, Int64 offset, Int64 size, Pointer<Void> data);
typedef TglBufferSubData_Func = void Function(
    int target, int offset, int size, Pointer<Void> data);
typedef TglGetBufferSubData_Native = Void Function(
    Uint32 target, Int64 offset, Int64 size, Pointer<Void> data);
typedef TglGetBufferSubData_Func = void Function(
    int target, int offset, int size, Pointer<Void> data);
typedef TglMapBuffer_Native = Pointer<Void> Function(
    Uint32 target, Uint32 access);
typedef TglMapBuffer_Func = Pointer<Void> Function(int target, int access);
typedef TglUnmapBuffer_Native = Uint8 Function(Uint32 target);
typedef TglUnmapBuffer_Func = int Function(int target);
typedef TglGetBufferParameteriv_Native = Void Function(
    Uint32 target, Uint32 pname, Pointer<Int32> params);
typedef TglGetBufferParameteriv_Func = void Function(
    int target, int pname, Pointer<Int32> params);
typedef TglGetBufferPointerv_Native = Void Function(
    Uint32 target, Uint32 pname, Pointer<Pointer<Void>> params);
typedef TglGetBufferPointerv_Func = void Function(
    int target, int pname, Pointer<Pointer<Void>> params);
typedef TglBlendEquationSeparate_Native = Void Function(
    Uint32 modeRGB, Uint32 modeAlpha);
typedef TglBlendEquationSeparate_Func = void Function(
    int modeRGB, int modeAlpha);
typedef TglDrawBuffers_Native = Void Function(Int32 n, Pointer<Uint32> bufs);
typedef TglDrawBuffers_Func = void Function(int n, Pointer<Uint32> bufs);
typedef TglStencilOpSeparate_Native = Void Function(
    Uint32 face, Uint32 sfail, Uint32 dpfail, Uint32 dppass);
typedef TglStencilOpSeparate_Func = void Function(
    int face, int sfail, int dpfail, int dppass);
typedef TglStencilFuncSeparate_Native = Void Function(
    Uint32 face, Uint32 func, Int32 ref, Uint32 mask);
typedef TglStencilFuncSeparate_Func = void Function(
    int face, int func, int ref, int mask);
typedef TglStencilMaskSeparate_Native = Void Function(Uint32 face, Uint32 mask);
typedef TglStencilMaskSeparate_Func = void Function(int face, int mask);
typedef TglAttachShader_Native = Void Function(Uint32 program, Uint32 shader);
typedef TglAttachShader_Func = void Function(int program, int shader);
typedef TglBindAttribLocation_Native = Void Function(
    Uint32 program, Uint32 index, Pointer<Utf8> name);
typedef TglBindAttribLocation_Func = void Function(
    int program, int index, Pointer<Utf8> name);
typedef TglCompileShader_Native = Void Function(Uint32 shader);
typedef TglCompileShader_Func = void Function(int shader);
typedef TglCreateProgram_Native = Uint32 Function();
typedef TglCreateProgram_Func = int Function();
typedef TglCreateShader_Native = Uint32 Function(Uint32 type);
typedef TglCreateShader_Func = int Function(int type);
typedef TglDeleteProgram_Native = Void Function(Uint32 program);
typedef TglDeleteProgram_Func = void Function(int program);
typedef TglDeleteShader_Native = Void Function(Uint32 shader);
typedef TglDeleteShader_Func = void Function(int shader);
typedef TglDetachShader_Native = Void Function(Uint32 program, Uint32 shader);
typedef TglDetachShader_Func = void Function(int program, int shader);
typedef TglDisableVertexAttribArray_Native = Void Function(Uint32 index);
typedef TglDisableVertexAttribArray_Func = void Function(int index);
typedef TglEnableVertexAttribArray_Native = Void Function(Uint32 index);
typedef TglEnableVertexAttribArray_Func = void Function(int index);
typedef TglGetActiveAttrib_Native = Void Function(
    Uint32 program,
    Uint32 index,
    Int32 bufSize,
    Pointer<Int32> length,
    Pointer<Int32> size,
    Pointer<Uint32> type,
    Pointer<Utf8> name);
typedef TglGetActiveAttrib_Func = void Function(
    int program,
    int index,
    int bufSize,
    Pointer<Int32> length,
    Pointer<Int32> size,
    Pointer<Uint32> type,
    Pointer<Utf8> name);
typedef TglGetActiveUniform_Native = Void Function(
    Uint32 program,
    Uint32 index,
    Int32 bufSize,
    Pointer<Int32> length,
    Pointer<Int32> size,
    Pointer<Uint32> type,
    Pointer<Utf8> name);
typedef TglGetActiveUniform_Func = void Function(
    int program,
    int index,
    int bufSize,
    Pointer<Int32> length,
    Pointer<Int32> size,
    Pointer<Uint32> type,
    Pointer<Utf8> name);
typedef TglGetAttachedShaders_Native = Void Function(Uint32 program,
    Int32 maxCount, Pointer<Int32> count, Pointer<Uint32> shaders);
typedef TglGetAttachedShaders_Func = void Function(
    int program, int maxCount, Pointer<Int32> count, Pointer<Uint32> shaders);
typedef TglGetAttribLocation_Native = Int32 Function(
    Uint32 program, Pointer<Utf8> name);
typedef TglGetAttribLocation_Func = int Function(
    int program, Pointer<Utf8> name);
typedef TglGetProgramiv_Native = Void Function(
    Uint32 program, Uint32 pname, Pointer<Int32> params);
typedef TglGetProgramiv_Func = void Function(
    int program, int pname, Pointer<Int32> params);
typedef TglGetProgramInfoLog_Native = Void Function(Uint32 program,
    Int32 bufSize, Pointer<Int32> length, Pointer<Utf8> infoLog);
typedef TglGetProgramInfoLog_Func = void Function(
    int program, int bufSize, Pointer<Int32> length, Pointer<Utf8> infoLog);
typedef TglGetShaderiv_Native = Void Function(
    Uint32 shader, Uint32 pname, Pointer<Int32> params);
typedef TglGetShaderiv_Func = void Function(
    int shader, int pname, Pointer<Int32> params);
typedef TglGetShaderInfoLog_Native = Void Function(
    Uint32 shader, Int32 bufSize, Pointer<Int32> length, Pointer<Utf8> infoLog);
typedef TglGetShaderInfoLog_Func = void Function(
    int shader, int bufSize, Pointer<Int32> length, Pointer<Utf8> infoLog);
typedef TglGetShaderSource_Native = Void Function(
    Uint32 shader, Int32 bufSize, Pointer<Int32> length, Pointer<Utf8> source);
typedef TglGetShaderSource_Func = void Function(
    int shader, int bufSize, Pointer<Int32> length, Pointer<Utf8> source);
typedef TglGetUniformLocation_Native = Int32 Function(
    Uint32 program, Pointer<Utf8> name);
typedef TglGetUniformLocation_Func = int Function(
    int program, Pointer<Utf8> name);
typedef TglGetUniformfv_Native = Void Function(
    Uint32 program, Int32 location, Pointer<Float> params);
typedef TglGetUniformfv_Func = void Function(
    int program, int location, Pointer<Float> params);
typedef TglGetUniformiv_Native = Void Function(
    Uint32 program, Int32 location, Pointer<Int32> params);
typedef TglGetUniformiv_Func = void Function(
    int program, int location, Pointer<Int32> params);
typedef TglGetVertexAttribdv_Native = Void Function(
    Uint32 index, Uint32 pname, Pointer<Double> params);
typedef TglGetVertexAttribdv_Func = void Function(
    int index, int pname, Pointer<Double> params);
typedef TglGetVertexAttribfv_Native = Void Function(
    Uint32 index, Uint32 pname, Pointer<Float> params);
typedef TglGetVertexAttribfv_Func = void Function(
    int index, int pname, Pointer<Float> params);
typedef TglGetVertexAttribiv_Native = Void Function(
    Uint32 index, Uint32 pname, Pointer<Int32> params);
typedef TglGetVertexAttribiv_Func = void Function(
    int index, int pname, Pointer<Int32> params);
typedef TglGetVertexAttribPointerv_Native = Void Function(
    Uint32 index, Uint32 pname, Pointer<Pointer<Void>> pointer);
typedef TglGetVertexAttribPointerv_Func = void Function(
    int index, int pname, Pointer<Pointer<Void>> pointer);
typedef TglIsProgram_Native = Uint8 Function(Uint32 program);
typedef TglIsProgram_Func = int Function(int program);
typedef TglIsShader_Native = Uint8 Function(Uint32 shader);
typedef TglIsShader_Func = int Function(int shader);
typedef TglLinkProgram_Native = Void Function(Uint32 program);
typedef TglLinkProgram_Func = void Function(int program);
typedef TglShaderSource_Native = Void Function(Uint32 shader, Int32 count,
    Pointer<Pointer<Utf8>> string, Pointer<Int32> length);
typedef TglShaderSource_Func = void Function(int shader, int count,
    Pointer<Pointer<Utf8>> string, Pointer<Int32> length);
typedef TglUseProgram_Native = Void Function(Uint32 program);
typedef TglUseProgram_Func = void Function(int program);
typedef TglUniform1f_Native = Void Function(Int32 location, Float v0);
typedef TglUniform1f_Func = void Function(int location, double v0);
typedef TglUniform2f_Native = Void Function(Int32 location, Float v0, Float v1);
typedef TglUniform2f_Func = void Function(int location, double v0, double v1);
typedef TglUniform3f_Native = Void Function(
    Int32 location, Float v0, Float v1, Float v2);
typedef TglUniform3f_Func = void Function(
    int location, double v0, double v1, double v2);
typedef TglUniform4f_Native = Void Function(
    Int32 location, Float v0, Float v1, Float v2, Float v3);
typedef TglUniform4f_Func = void Function(
    int location, double v0, double v1, double v2, double v3);
typedef TglUniform1i_Native = Void Function(Int32 location, Int32 v0);
typedef TglUniform1i_Func = void Function(int location, int v0);
typedef TglUniform2i_Native = Void Function(Int32 location, Int32 v0, Int32 v1);
typedef TglUniform2i_Func = void Function(int location, int v0, int v1);
typedef TglUniform3i_Native = Void Function(
    Int32 location, Int32 v0, Int32 v1, Int32 v2);
typedef TglUniform3i_Func = void Function(int location, int v0, int v1, int v2);
typedef TglUniform4i_Native = Void Function(
    Int32 location, Int32 v0, Int32 v1, Int32 v2, Int32 v3);
typedef TglUniform4i_Func = void Function(
    int location, int v0, int v1, int v2, int v3);
typedef TglUniform1fv_Native = Void Function(
    Int32 location, Int32 count, Pointer<Float> value);
typedef TglUniform1fv_Func = void Function(
    int location, int count, Pointer<Float> value);
typedef TglUniform2fv_Native = Void Function(
    Int32 location, Int32 count, Pointer<Float> value);
typedef TglUniform2fv_Func = void Function(
    int location, int count, Pointer<Float> value);
typedef TglUniform3fv_Native = Void Function(
    Int32 location, Int32 count, Pointer<Float> value);
typedef TglUniform3fv_Func = void Function(
    int location, int count, Pointer<Float> value);
typedef TglUniform4fv_Native = Void Function(
    Int32 location, Int32 count, Pointer<Float> value);
typedef TglUniform4fv_Func = void Function(
    int location, int count, Pointer<Float> value);
typedef TglUniform1iv_Native = Void Function(
    Int32 location, Int32 count, Pointer<Int32> value);
typedef TglUniform1iv_Func = void Function(
    int location, int count, Pointer<Int32> value);
typedef TglUniform2iv_Native = Void Function(
    Int32 location, Int32 count, Pointer<Int32> value);
typedef TglUniform2iv_Func = void Function(
    int location, int count, Pointer<Int32> value);
typedef TglUniform3iv_Native = Void Function(
    Int32 location, Int32 count, Pointer<Int32> value);
typedef TglUniform3iv_Func = void Function(
    int location, int count, Pointer<Int32> value);
typedef TglUniform4iv_Native = Void Function(
    Int32 location, Int32 count, Pointer<Int32> value);
typedef TglUniform4iv_Func = void Function(
    int location, int count, Pointer<Int32> value);
typedef TglUniformMatrix2fv_Native = Void Function(
    Int32 location, Int32 count, Uint8 transpose, Pointer<Float> value);
typedef TglUniformMatrix2fv_Func = void Function(
    int location, int count, int transpose, Pointer<Float> value);
typedef TglUniformMatrix3fv_Native = Void Function(
    Int32 location, Int32 count, Uint8 transpose, Pointer<Float> value);
typedef TglUniformMatrix3fv_Func = void Function(
    int location, int count, int transpose, Pointer<Float> value);
typedef TglUniformMatrix4fv_Native = Void Function(
    Int32 location, Int32 count, Uint8 transpose, Pointer<Float> value);
typedef TglUniformMatrix4fv_Func = void Function(
    int location, int count, int transpose, Pointer<Float> value);
typedef TglValidateProgram_Native = Void Function(Uint32 program);
typedef TglValidateProgram_Func = void Function(int program);
typedef TglVertexAttrib1d_Native = Void Function(Uint32 index, Double x);
typedef TglVertexAttrib1d_Func = void Function(int index, double x);
typedef TglVertexAttrib1dv_Native = Void Function(
    Uint32 index, Pointer<Double> v);
typedef TglVertexAttrib1dv_Func = void Function(int index, Pointer<Double> v);
typedef TglVertexAttrib1f_Native = Void Function(Uint32 index, Float x);
typedef TglVertexAttrib1f_Func = void Function(int index, double x);
typedef TglVertexAttrib1fv_Native = Void Function(
    Uint32 index, Pointer<Float> v);
typedef TglVertexAttrib1fv_Func = void Function(int index, Pointer<Float> v);
typedef TglVertexAttrib1s_Native = Void Function(Uint32 index, Int16 x);
typedef TglVertexAttrib1s_Func = void Function(int index, int x);
typedef TglVertexAttrib1sv_Native = Void Function(
    Uint32 index, Pointer<Int16> v);
typedef TglVertexAttrib1sv_Func = void Function(int index, Pointer<Int16> v);
typedef TglVertexAttrib2d_Native = Void Function(
    Uint32 index, Double x, Double y);
typedef TglVertexAttrib2d_Func = void Function(int index, double x, double y);
typedef TglVertexAttrib2dv_Native = Void Function(
    Uint32 index, Pointer<Double> v);
typedef TglVertexAttrib2dv_Func = void Function(int index, Pointer<Double> v);
typedef TglVertexAttrib2f_Native = Void Function(
    Uint32 index, Float x, Float y);
typedef TglVertexAttrib2f_Func = void Function(int index, double x, double y);
typedef TglVertexAttrib2fv_Native = Void Function(
    Uint32 index, Pointer<Float> v);
typedef TglVertexAttrib2fv_Func = void Function(int index, Pointer<Float> v);
typedef TglVertexAttrib2s_Native = Void Function(
    Uint32 index, Int16 x, Int16 y);
typedef TglVertexAttrib2s_Func = void Function(int index, int x, int y);
typedef TglVertexAttrib2sv_Native = Void Function(
    Uint32 index, Pointer<Int16> v);
typedef TglVertexAttrib2sv_Func = void Function(int index, Pointer<Int16> v);
typedef TglVertexAttrib3d_Native = Void Function(
    Uint32 index, Double x, Double y, Double z);
typedef TglVertexAttrib3d_Func = void Function(
    int index, double x, double y, double z);
typedef TglVertexAttrib3dv_Native = Void Function(
    Uint32 index, Pointer<Double> v);
typedef TglVertexAttrib3dv_Func = void Function(int index, Pointer<Double> v);
typedef TglVertexAttrib3f_Native = Void Function(
    Uint32 index, Float x, Float y, Float z);
typedef TglVertexAttrib3f_Func = void Function(
    int index, double x, double y, double z);
typedef TglVertexAttrib3fv_Native = Void Function(
    Uint32 index, Pointer<Float> v);
typedef TglVertexAttrib3fv_Func = void Function(int index, Pointer<Float> v);
typedef TglVertexAttrib3s_Native = Void Function(
    Uint32 index, Int16 x, Int16 y, Int16 z);
typedef TglVertexAttrib3s_Func = void Function(int index, int x, int y, int z);
typedef TglVertexAttrib3sv_Native = Void Function(
    Uint32 index, Pointer<Int16> v);
typedef TglVertexAttrib3sv_Func = void Function(int index, Pointer<Int16> v);
typedef TglVertexAttrib4Nbv_Native = Void Function(
    Uint32 index, Pointer<Uint8> v);
typedef TglVertexAttrib4Nbv_Func = void Function(int index, Pointer<Uint8> v);
typedef TglVertexAttrib4Niv_Native = Void Function(
    Uint32 index, Pointer<Int32> v);
typedef TglVertexAttrib4Niv_Func = void Function(int index, Pointer<Int32> v);
typedef TglVertexAttrib4Nsv_Native = Void Function(
    Uint32 index, Pointer<Int16> v);
typedef TglVertexAttrib4Nsv_Func = void Function(int index, Pointer<Int16> v);
typedef TglVertexAttrib4Nub_Native = Void Function(
    Uint32 index, Uint8 x, Uint8 y, Uint8 z, Uint8 w);
typedef TglVertexAttrib4Nub_Func = void Function(
    int index, int x, int y, int z, int w);
typedef TglVertexAttrib4Nubv_Native = Void Function(
    Uint32 index, Pointer<Uint8> v);
typedef TglVertexAttrib4Nubv_Func = void Function(int index, Pointer<Uint8> v);
typedef TglVertexAttrib4Nuiv_Native = Void Function(
    Uint32 index, Pointer<Uint32> v);
typedef TglVertexAttrib4Nuiv_Func = void Function(int index, Pointer<Uint32> v);
typedef TglVertexAttrib4Nusv_Native = Void Function(
    Uint32 index, Pointer<Uint16> v);
typedef TglVertexAttrib4Nusv_Func = void Function(int index, Pointer<Uint16> v);
typedef TglVertexAttrib4bv_Native = Void Function(
    Uint32 index, Pointer<Uint8> v);
typedef TglVertexAttrib4bv_Func = void Function(int index, Pointer<Uint8> v);
typedef TglVertexAttrib4d_Native = Void Function(
    Uint32 index, Double x, Double y, Double z, Double w);
typedef TglVertexAttrib4d_Func = void Function(
    int index, double x, double y, double z, double w);
typedef TglVertexAttrib4dv_Native = Void Function(
    Uint32 index, Pointer<Double> v);
typedef TglVertexAttrib4dv_Func = void Function(int index, Pointer<Double> v);
typedef TglVertexAttrib4f_Native = Void Function(
    Uint32 index, Float x, Float y, Float z, Float w);
typedef TglVertexAttrib4f_Func = void Function(
    int index, double x, double y, double z, double w);
typedef TglVertexAttrib4fv_Native = Void Function(
    Uint32 index, Pointer<Float> v);
typedef TglVertexAttrib4fv_Func = void Function(int index, Pointer<Float> v);
typedef TglVertexAttrib4iv_Native = Void Function(
    Uint32 index, Pointer<Int32> v);
typedef TglVertexAttrib4iv_Func = void Function(int index, Pointer<Int32> v);
typedef TglVertexAttrib4s_Native = Void Function(
    Uint32 index, Int16 x, Int16 y, Int16 z, Int16 w);
typedef TglVertexAttrib4s_Func = void Function(
    int index, int x, int y, int z, int w);
typedef TglVertexAttrib4sv_Native = Void Function(
    Uint32 index, Pointer<Int16> v);
typedef TglVertexAttrib4sv_Func = void Function(int index, Pointer<Int16> v);
typedef TglVertexAttrib4ubv_Native = Void Function(
    Uint32 index, Pointer<Uint8> v);
typedef TglVertexAttrib4ubv_Func = void Function(int index, Pointer<Uint8> v);
typedef TglVertexAttrib4uiv_Native = Void Function(
    Uint32 index, Pointer<Uint32> v);
typedef TglVertexAttrib4uiv_Func = void Function(int index, Pointer<Uint32> v);
typedef TglVertexAttrib4usv_Native = Void Function(
    Uint32 index, Pointer<Uint16> v);
typedef TglVertexAttrib4usv_Func = void Function(int index, Pointer<Uint16> v);
typedef TglVertexAttribPointer_Native = Void Function(Uint32 index, Int32 size,
    Uint32 type, Uint8 normalized, Int32 stride, Pointer<Void> pointer);
typedef TglVertexAttribPointer_Func = void Function(int index, int size,
    int type, int normalized, int stride, Pointer<Void> pointer);
typedef TglUniformMatrix2x3fv_Native = Void Function(
    Int32 location, Int32 count, Uint8 transpose, Pointer<Float> value);
typedef TglUniformMatrix2x3fv_Func = void Function(
    int location, int count, int transpose, Pointer<Float> value);
typedef TglUniformMatrix3x2fv_Native = Void Function(
    Int32 location, Int32 count, Uint8 transpose, Pointer<Float> value);
typedef TglUniformMatrix3x2fv_Func = void Function(
    int location, int count, int transpose, Pointer<Float> value);
typedef TglUniformMatrix2x4fv_Native = Void Function(
    Int32 location, Int32 count, Uint8 transpose, Pointer<Float> value);
typedef TglUniformMatrix2x4fv_Func = void Function(
    int location, int count, int transpose, Pointer<Float> value);
typedef TglUniformMatrix4x2fv_Native = Void Function(
    Int32 location, Int32 count, Uint8 transpose, Pointer<Float> value);
typedef TglUniformMatrix4x2fv_Func = void Function(
    int location, int count, int transpose, Pointer<Float> value);
typedef TglUniformMatrix3x4fv_Native = Void Function(
    Int32 location, Int32 count, Uint8 transpose, Pointer<Float> value);
typedef TglUniformMatrix3x4fv_Func = void Function(
    int location, int count, int transpose, Pointer<Float> value);
typedef TglUniformMatrix4x3fv_Native = Void Function(
    Int32 location, Int32 count, Uint8 transpose, Pointer<Float> value);
typedef TglUniformMatrix4x3fv_Func = void Function(
    int location, int count, int transpose, Pointer<Float> value);
typedef TglColorMaski_Native = Void Function(
    Uint32 index, Uint8 r, Uint8 g, Uint8 b, Uint8 a);
typedef TglColorMaski_Func = void Function(
    int index, int r, int g, int b, int a);
typedef TglGetBooleani_v_Native = Void Function(
    Uint32 target, Uint32 index, Pointer<Uint8> data);
typedef TglGetBooleani_v_Func = void Function(
    int target, int index, Pointer<Uint8> data);
typedef TglGetIntegeri_v_Native = Void Function(
    Uint32 target, Uint32 index, Pointer<Int32> data);
typedef TglGetIntegeri_v_Func = void Function(
    int target, int index, Pointer<Int32> data);
typedef TglEnablei_Native = Void Function(Uint32 target, Uint32 index);
typedef TglEnablei_Func = void Function(int target, int index);
typedef TglDisablei_Native = Void Function(Uint32 target, Uint32 index);
typedef TglDisablei_Func = void Function(int target, int index);
typedef TglIsEnabledi_Native = Uint8 Function(Uint32 target, Uint32 index);
typedef TglIsEnabledi_Func = int Function(int target, int index);
typedef TglBeginTransformFeedback_Native = Void Function(Uint32 primitiveMode);
typedef TglBeginTransformFeedback_Func = void Function(int primitiveMode);
typedef TglEndTransformFeedback_Native = Void Function();
typedef TglEndTransformFeedback_Func = void Function();
typedef TglBindBufferRange_Native = Void Function(
    Uint32 target, Uint32 index, Uint32 buffer, Int64 offset, Int64 size);
typedef TglBindBufferRange_Func = void Function(
    int target, int index, int buffer, int offset, int size);
typedef TglBindBufferBase_Native = Void Function(
    Uint32 target, Uint32 index, Uint32 buffer);
typedef TglBindBufferBase_Func = void Function(
    int target, int index, int buffer);
typedef TglTransformFeedbackVaryings_Native = Void Function(Uint32 program,
    Int32 count, Pointer<Pointer<Utf8>> varyings, Uint32 bufferMode);
typedef TglTransformFeedbackVaryings_Func = void Function(
    int program, int count, Pointer<Pointer<Utf8>> varyings, int bufferMode);
typedef TglGetTransformFeedbackVarying_Native = Void Function(
    Uint32 program,
    Uint32 index,
    Int32 bufSize,
    Pointer<Int32> length,
    Pointer<Int32> size,
    Pointer<Uint32> type,
    Pointer<Utf8> name);
typedef TglGetTransformFeedbackVarying_Func = void Function(
    int program,
    int index,
    int bufSize,
    Pointer<Int32> length,
    Pointer<Int32> size,
    Pointer<Uint32> type,
    Pointer<Utf8> name);
typedef TglClampColor_Native = Void Function(Uint32 target, Uint32 clamp);
typedef TglClampColor_Func = void Function(int target, int clamp);
typedef TglBeginConditionalRender_Native = Void Function(
    Uint32 id, Uint32 mode);
typedef TglBeginConditionalRender_Func = void Function(int id, int mode);
typedef TglEndConditionalRender_Native = Void Function();
typedef TglEndConditionalRender_Func = void Function();
typedef TglVertexAttribIPointer_Native = Void Function(
    Uint32 index, Int32 size, Uint32 type, Int32 stride, Pointer<Void> pointer);
typedef TglVertexAttribIPointer_Func = void Function(
    int index, int size, int type, int stride, Pointer<Void> pointer);
typedef TglGetVertexAttribIiv_Native = Void Function(
    Uint32 index, Uint32 pname, Pointer<Int32> params);
typedef TglGetVertexAttribIiv_Func = void Function(
    int index, int pname, Pointer<Int32> params);
typedef TglGetVertexAttribIuiv_Native = Void Function(
    Uint32 index, Uint32 pname, Pointer<Uint32> params);
typedef TglGetVertexAttribIuiv_Func = void Function(
    int index, int pname, Pointer<Uint32> params);
typedef TglVertexAttribI1i_Native = Void Function(Uint32 index, Int32 x);
typedef TglVertexAttribI1i_Func = void Function(int index, int x);
typedef TglVertexAttribI2i_Native = Void Function(
    Uint32 index, Int32 x, Int32 y);
typedef TglVertexAttribI2i_Func = void Function(int index, int x, int y);
typedef TglVertexAttribI3i_Native = Void Function(
    Uint32 index, Int32 x, Int32 y, Int32 z);
typedef TglVertexAttribI3i_Func = void Function(int index, int x, int y, int z);
typedef TglVertexAttribI4i_Native = Void Function(
    Uint32 index, Int32 x, Int32 y, Int32 z, Int32 w);
typedef TglVertexAttribI4i_Func = void Function(
    int index, int x, int y, int z, int w);
typedef TglVertexAttribI1ui_Native = Void Function(Uint32 index, Uint32 x);
typedef TglVertexAttribI1ui_Func = void Function(int index, int x);
typedef TglVertexAttribI2ui_Native = Void Function(
    Uint32 index, Uint32 x, Uint32 y);
typedef TglVertexAttribI2ui_Func = void Function(int index, int x, int y);
typedef TglVertexAttribI3ui_Native = Void Function(
    Uint32 index, Uint32 x, Uint32 y, Uint32 z);
typedef TglVertexAttribI3ui_Func = void Function(
    int index, int x, int y, int z);
typedef TglVertexAttribI4ui_Native = Void Function(
    Uint32 index, Uint32 x, Uint32 y, Uint32 z, Uint32 w);
typedef TglVertexAttribI4ui_Func = void Function(
    int index, int x, int y, int z, int w);
typedef TglVertexAttribI1iv_Native = Void Function(
    Uint32 index, Pointer<Int32> v);
typedef TglVertexAttribI1iv_Func = void Function(int index, Pointer<Int32> v);
typedef TglVertexAttribI2iv_Native = Void Function(
    Uint32 index, Pointer<Int32> v);
typedef TglVertexAttribI2iv_Func = void Function(int index, Pointer<Int32> v);
typedef TglVertexAttribI3iv_Native = Void Function(
    Uint32 index, Pointer<Int32> v);
typedef TglVertexAttribI3iv_Func = void Function(int index, Pointer<Int32> v);
typedef TglVertexAttribI4iv_Native = Void Function(
    Uint32 index, Pointer<Int32> v);
typedef TglVertexAttribI4iv_Func = void Function(int index, Pointer<Int32> v);
typedef TglVertexAttribI1uiv_Native = Void Function(
    Uint32 index, Pointer<Uint32> v);
typedef TglVertexAttribI1uiv_Func = void Function(int index, Pointer<Uint32> v);
typedef TglVertexAttribI2uiv_Native = Void Function(
    Uint32 index, Pointer<Uint32> v);
typedef TglVertexAttribI2uiv_Func = void Function(int index, Pointer<Uint32> v);
typedef TglVertexAttribI3uiv_Native = Void Function(
    Uint32 index, Pointer<Uint32> v);
typedef TglVertexAttribI3uiv_Func = void Function(int index, Pointer<Uint32> v);
typedef TglVertexAttribI4uiv_Native = Void Function(
    Uint32 index, Pointer<Uint32> v);
typedef TglVertexAttribI4uiv_Func = void Function(int index, Pointer<Uint32> v);
typedef TglVertexAttribI4bv_Native = Void Function(
    Uint32 index, Pointer<Uint8> v);
typedef TglVertexAttribI4bv_Func = void Function(int index, Pointer<Uint8> v);
typedef TglVertexAttribI4sv_Native = Void Function(
    Uint32 index, Pointer<Int16> v);
typedef TglVertexAttribI4sv_Func = void Function(int index, Pointer<Int16> v);
typedef TglVertexAttribI4ubv_Native = Void Function(
    Uint32 index, Pointer<Uint8> v);
typedef TglVertexAttribI4ubv_Func = void Function(int index, Pointer<Uint8> v);
typedef TglVertexAttribI4usv_Native = Void Function(
    Uint32 index, Pointer<Uint16> v);
typedef TglVertexAttribI4usv_Func = void Function(int index, Pointer<Uint16> v);
typedef TglGetUniformuiv_Native = Void Function(
    Uint32 program, Int32 location, Pointer<Uint32> params);
typedef TglGetUniformuiv_Func = void Function(
    int program, int location, Pointer<Uint32> params);
typedef TglBindFragDataLocation_Native = Void Function(
    Uint32 program, Uint32 color, Pointer<Utf8> name);
typedef TglBindFragDataLocation_Func = void Function(
    int program, int color, Pointer<Utf8> name);
typedef TglGetFragDataLocation_Native = Int32 Function(
    Uint32 program, Pointer<Utf8> name);
typedef TglGetFragDataLocation_Func = int Function(
    int program, Pointer<Utf8> name);
typedef TglUniform1ui_Native = Void Function(Int32 location, Uint32 v0);
typedef TglUniform1ui_Func = void Function(int location, int v0);
typedef TglUniform2ui_Native = Void Function(
    Int32 location, Uint32 v0, Uint32 v1);
typedef TglUniform2ui_Func = void Function(int location, int v0, int v1);
typedef TglUniform3ui_Native = Void Function(
    Int32 location, Uint32 v0, Uint32 v1, Uint32 v2);
typedef TglUniform3ui_Func = void Function(
    int location, int v0, int v1, int v2);
typedef TglUniform4ui_Native = Void Function(
    Int32 location, Uint32 v0, Uint32 v1, Uint32 v2, Uint32 v3);
typedef TglUniform4ui_Func = void Function(
    int location, int v0, int v1, int v2, int v3);
typedef TglUniform1uiv_Native = Void Function(
    Int32 location, Int32 count, Pointer<Uint32> value);
typedef TglUniform1uiv_Func = void Function(
    int location, int count, Pointer<Uint32> value);
typedef TglUniform2uiv_Native = Void Function(
    Int32 location, Int32 count, Pointer<Uint32> value);
typedef TglUniform2uiv_Func = void Function(
    int location, int count, Pointer<Uint32> value);
typedef TglUniform3uiv_Native = Void Function(
    Int32 location, Int32 count, Pointer<Uint32> value);
typedef TglUniform3uiv_Func = void Function(
    int location, int count, Pointer<Uint32> value);
typedef TglUniform4uiv_Native = Void Function(
    Int32 location, Int32 count, Pointer<Uint32> value);
typedef TglUniform4uiv_Func = void Function(
    int location, int count, Pointer<Uint32> value);
typedef TglTexParameterIiv_Native = Void Function(
    Uint32 target, Uint32 pname, Pointer<Int32> params);
typedef TglTexParameterIiv_Func = void Function(
    int target, int pname, Pointer<Int32> params);
typedef TglTexParameterIuiv_Native = Void Function(
    Uint32 target, Uint32 pname, Pointer<Uint32> params);
typedef TglTexParameterIuiv_Func = void Function(
    int target, int pname, Pointer<Uint32> params);
typedef TglGetTexParameterIiv_Native = Void Function(
    Uint32 target, Uint32 pname, Pointer<Int32> params);
typedef TglGetTexParameterIiv_Func = void Function(
    int target, int pname, Pointer<Int32> params);
typedef TglGetTexParameterIuiv_Native = Void Function(
    Uint32 target, Uint32 pname, Pointer<Uint32> params);
typedef TglGetTexParameterIuiv_Func = void Function(
    int target, int pname, Pointer<Uint32> params);
typedef TglClearBufferiv_Native = Void Function(
    Uint32 buffer, Int32 drawbuffer, Pointer<Int32> value);
typedef TglClearBufferiv_Func = void Function(
    int buffer, int drawbuffer, Pointer<Int32> value);
typedef TglClearBufferuiv_Native = Void Function(
    Uint32 buffer, Int32 drawbuffer, Pointer<Uint32> value);
typedef TglClearBufferuiv_Func = void Function(
    int buffer, int drawbuffer, Pointer<Uint32> value);
typedef TglClearBufferfv_Native = Void Function(
    Uint32 buffer, Int32 drawbuffer, Pointer<Float> value);
typedef TglClearBufferfv_Func = void Function(
    int buffer, int drawbuffer, Pointer<Float> value);
typedef TglClearBufferfi_Native = Void Function(
    Uint32 buffer, Int32 drawbuffer, Float depth, Int32 stencil);
typedef TglClearBufferfi_Func = void Function(
    int buffer, int drawbuffer, double depth, int stencil);
typedef TglGetStringi_Native = Pointer<Uint8> Function(
    Uint32 name, Uint32 index);
typedef TglGetStringi_Func = Pointer<Uint8> Function(int name, int index);
typedef TglIsRenderbuffer_Native = Uint8 Function(Uint32 renderbuffer);
typedef TglIsRenderbuffer_Func = int Function(int renderbuffer);
typedef TglBindRenderbuffer_Native = Void Function(
    Uint32 target, Uint32 renderbuffer);
typedef TglBindRenderbuffer_Func = void Function(int target, int renderbuffer);
typedef TglDeleteRenderbuffers_Native = Void Function(
    Int32 n, Pointer<Uint32> renderbuffers);
typedef TglDeleteRenderbuffers_Func = void Function(
    int n, Pointer<Uint32> renderbuffers);
typedef TglGenRenderbuffers_Native = Void Function(
    Int32 n, Pointer<Uint32> renderbuffers);
typedef TglGenRenderbuffers_Func = void Function(
    int n, Pointer<Uint32> renderbuffers);
typedef TglRenderbufferStorage_Native = Void Function(
    Uint32 target, Uint32 internalformat, Int32 width, Int32 height);
typedef TglRenderbufferStorage_Func = void Function(
    int target, int internalformat, int width, int height);
typedef TglGetRenderbufferParameteriv_Native = Void Function(
    Uint32 target, Uint32 pname, Pointer<Int32> params);
typedef TglGetRenderbufferParameteriv_Func = void Function(
    int target, int pname, Pointer<Int32> params);
typedef TglIsFramebuffer_Native = Uint8 Function(Uint32 framebuffer);
typedef TglIsFramebuffer_Func = int Function(int framebuffer);
typedef TglBindFramebuffer_Native = Void Function(
    Uint32 target, Uint32 framebuffer);
typedef TglBindFramebuffer_Func = void Function(int target, int framebuffer);
typedef TglDeleteFramebuffers_Native = Void Function(
    Int32 n, Pointer<Uint32> framebuffers);
typedef TglDeleteFramebuffers_Func = void Function(
    int n, Pointer<Uint32> framebuffers);
typedef TglGenFramebuffers_Native = Void Function(
    Int32 n, Pointer<Uint32> framebuffers);
typedef TglGenFramebuffers_Func = void Function(
    int n, Pointer<Uint32> framebuffers);
typedef TglCheckFramebufferStatus_Native = Uint32 Function(Uint32 target);
typedef TglCheckFramebufferStatus_Func = int Function(int target);
typedef TglFramebufferTexture1D_Native = Void Function(Uint32 target,
    Uint32 attachment, Uint32 textarget, Uint32 texture, Int32 level);
typedef TglFramebufferTexture1D_Func = void Function(
    int target, int attachment, int textarget, int texture, int level);
typedef TglFramebufferTexture2D_Native = Void Function(Uint32 target,
    Uint32 attachment, Uint32 textarget, Uint32 texture, Int32 level);
typedef TglFramebufferTexture2D_Func = void Function(
    int target, int attachment, int textarget, int texture, int level);
typedef TglFramebufferTexture3D_Native = Void Function(
    Uint32 target,
    Uint32 attachment,
    Uint32 textarget,
    Uint32 texture,
    Int32 level,
    Int32 zoffset);
typedef TglFramebufferTexture3D_Func = void Function(int target, int attachment,
    int textarget, int texture, int level, int zoffset);
typedef TglFramebufferRenderbuffer_Native = Void Function(Uint32 target,
    Uint32 attachment, Uint32 renderbuffertarget, Uint32 renderbuffer);
typedef TglFramebufferRenderbuffer_Func = void Function(
    int target, int attachment, int renderbuffertarget, int renderbuffer);
typedef TglGetFramebufferAttachmentParameteriv_Native = Void Function(
    Uint32 target, Uint32 attachment, Uint32 pname, Pointer<Int32> params);
typedef TglGetFramebufferAttachmentParameteriv_Func = void Function(
    int target, int attachment, int pname, Pointer<Int32> params);
typedef TglGenerateMipmap_Native = Void Function(Uint32 target);
typedef TglGenerateMipmap_Func = void Function(int target);
typedef TglBlitFramebuffer_Native = Void Function(
    Int32 srcX0,
    Int32 srcY0,
    Int32 srcX1,
    Int32 srcY1,
    Int32 dstX0,
    Int32 dstY0,
    Int32 dstX1,
    Int32 dstY1,
    Uint32 mask,
    Uint32 filter);
typedef TglBlitFramebuffer_Func = void Function(
    int srcX0,
    int srcY0,
    int srcX1,
    int srcY1,
    int dstX0,
    int dstY0,
    int dstX1,
    int dstY1,
    int mask,
    int filter);
typedef TglRenderbufferStorageMultisample_Native = Void Function(Uint32 target,
    Int32 samples, Uint32 internalformat, Int32 width, Int32 height);
typedef TglRenderbufferStorageMultisample_Func = void Function(
    int target, int samples, int internalformat, int width, int height);
typedef TglFramebufferTextureLayer_Native = Void Function(
    Uint32 target, Uint32 attachment, Uint32 texture, Int32 level, Int32 layer);
typedef TglFramebufferTextureLayer_Func = void Function(
    int target, int attachment, int texture, int level, int layer);
typedef TglMapBufferRange_Native = Pointer<Void> Function(
    Uint32 target, Int64 offset, Int64 length, Uint32 access);
typedef TglMapBufferRange_Func = Pointer<Void> Function(
    int target, int offset, int length, int access);
typedef TglFlushMappedBufferRange_Native = Void Function(
    Uint32 target, Int64 offset, Int64 length);
typedef TglFlushMappedBufferRange_Func = void Function(
    int target, int offset, int length);
typedef TglBindVertexArray_Native = Void Function(Uint32 array);
typedef TglBindVertexArray_Func = void Function(int array);
typedef TglDeleteVertexArrays_Native = Void Function(
    Int32 n, Pointer<Uint32> arrays);
typedef TglDeleteVertexArrays_Func = void Function(
    int n, Pointer<Uint32> arrays);
typedef TglGenVertexArrays_Native = Void Function(
    Int32 n, Pointer<Uint32> arrays);
typedef TglGenVertexArrays_Func = void Function(int n, Pointer<Uint32> arrays);
typedef TglIsVertexArray_Native = Uint8 Function(Uint32 array);
typedef TglIsVertexArray_Func = int Function(int array);
typedef TglDrawArraysInstanced_Native = Void Function(
    Uint32 mode, Int32 first, Int32 count, Int32 instancecount);
typedef TglDrawArraysInstanced_Func = void Function(
    int mode, int first, int count, int instancecount);
typedef TglDrawElementsInstanced_Native = Void Function(Uint32 mode,
    Int32 count, Uint32 type, Pointer<Void> indices, Int32 instancecount);
typedef TglDrawElementsInstanced_Func = void Function(
    int mode, int count, int type, Pointer<Void> indices, int instancecount);
typedef TglTexBuffer_Native = Void Function(
    Uint32 target, Uint32 internalformat, Uint32 buffer);
typedef TglTexBuffer_Func = void Function(
    int target, int internalformat, int buffer);
typedef TglPrimitiveRestartIndex_Native = Void Function(Uint32 index);
typedef TglPrimitiveRestartIndex_Func = void Function(int index);
typedef TglCopyBufferSubData_Native = Void Function(Uint32 readTarget,
    Uint32 writeTarget, Int64 readOffset, Int64 writeOffset, Int64 size);
typedef TglCopyBufferSubData_Func = void Function(
    int readTarget, int writeTarget, int readOffset, int writeOffset, int size);
typedef TglGetUniformIndices_Native = Void Function(
    Uint32 program,
    Int32 uniformCount,
    Pointer<Pointer<Utf8>> uniformNames,
    Pointer<Uint32> uniformIndices);
typedef TglGetUniformIndices_Func = void Function(int program, int uniformCount,
    Pointer<Pointer<Utf8>> uniformNames, Pointer<Uint32> uniformIndices);
typedef TglGetActiveUniformsiv_Native = Void Function(
    Uint32 program,
    Int32 uniformCount,
    Pointer<Uint32> uniformIndices,
    Uint32 pname,
    Pointer<Int32> params);
typedef TglGetActiveUniformsiv_Func = void Function(
    int program,
    int uniformCount,
    Pointer<Uint32> uniformIndices,
    int pname,
    Pointer<Int32> params);
typedef TglGetActiveUniformName_Native = Void Function(
    Uint32 program,
    Uint32 uniformIndex,
    Int32 bufSize,
    Pointer<Int32> length,
    Pointer<Utf8> uniformName);
typedef TglGetActiveUniformName_Func = void Function(
    int program,
    int uniformIndex,
    int bufSize,
    Pointer<Int32> length,
    Pointer<Utf8> uniformName);
typedef TglGetUniformBlockIndex_Native = Uint32 Function(
    Uint32 program, Pointer<Utf8> uniformBlockName);
typedef TglGetUniformBlockIndex_Func = int Function(
    int program, Pointer<Utf8> uniformBlockName);
typedef TglGetActiveUniformBlockiv_Native = Void Function(Uint32 program,
    Uint32 uniformBlockIndex, Uint32 pname, Pointer<Int32> params);
typedef TglGetActiveUniformBlockiv_Func = void Function(
    int program, int uniformBlockIndex, int pname, Pointer<Int32> params);
typedef TglGetActiveUniformBlockName_Native = Void Function(
    Uint32 program,
    Uint32 uniformBlockIndex,
    Int32 bufSize,
    Pointer<Int32> length,
    Pointer<Utf8> uniformBlockName);
typedef TglGetActiveUniformBlockName_Func = void Function(
    int program,
    int uniformBlockIndex,
    int bufSize,
    Pointer<Int32> length,
    Pointer<Utf8> uniformBlockName);
typedef TglUniformBlockBinding_Native = Void Function(
    Uint32 program, Uint32 uniformBlockIndex, Uint32 uniformBlockBinding);
typedef TglUniformBlockBinding_Func = void Function(
    int program, int uniformBlockIndex, int uniformBlockBinding);
typedef TglDrawElementsBaseVertex_Native = Void Function(Uint32 mode,
    Int32 count, Uint32 type, Pointer<Void> indices, Int32 basevertex);
typedef TglDrawElementsBaseVertex_Func = void Function(
    int mode, int count, int type, Pointer<Void> indices, int basevertex);
typedef TglDrawRangeElementsBaseVertex_Native = Void Function(
    Uint32 mode,
    Uint32 start,
    Uint32 end,
    Int32 count,
    Uint32 type,
    Pointer<Void> indices,
    Int32 basevertex);
typedef TglDrawRangeElementsBaseVertex_Func = void Function(int mode, int start,
    int end, int count, int type, Pointer<Void> indices, int basevertex);
typedef TglDrawElementsInstancedBaseVertex_Native = Void Function(
    Uint32 mode,
    Int32 count,
    Uint32 type,
    Pointer<Void> indices,
    Int32 instancecount,
    Int32 basevertex);
typedef TglDrawElementsInstancedBaseVertex_Func = void Function(
    int mode,
    int count,
    int type,
    Pointer<Void> indices,
    int instancecount,
    int basevertex);
typedef TglMultiDrawElementsBaseVertex_Native = Void Function(
    Uint32 mode,
    Pointer<Int32> count,
    Uint32 type,
    Pointer<Pointer<Void>> indices,
    Int32 drawcount,
    Pointer<Int32> basevertex);
typedef TglMultiDrawElementsBaseVertex_Func = void Function(
    int mode,
    Pointer<Int32> count,
    int type,
    Pointer<Pointer<Void>> indices,
    int drawcount,
    Pointer<Int32> basevertex);
typedef TglProvokingVertex_Native = Void Function(Uint32 mode);
typedef TglProvokingVertex_Func = void Function(int mode);
typedef TglFenceSync_Native = Pointer<GLsync> Function(
    Uint32 condition, Uint32 flags);
typedef TglFenceSync_Func = Pointer<GLsync> Function(int condition, int flags);
typedef TglIsSync_Native = Uint8 Function(Pointer<GLsync> sync);
typedef TglIsSync_Func = int Function(Pointer<GLsync> sync);
typedef TglDeleteSync_Native = Void Function(Pointer<GLsync> sync);
typedef TglDeleteSync_Func = void Function(Pointer<GLsync> sync);
typedef TglClientWaitSync_Native = Uint32 Function(
    Pointer<GLsync> sync, Uint32 flags, Uint64 timeout);
typedef TglClientWaitSync_Func = int Function(
    Pointer<GLsync> sync, int flags, int timeout);
typedef TglWaitSync_Native = Void Function(
    Pointer<GLsync> sync, Uint32 flags, Uint64 timeout);
typedef TglWaitSync_Func = void Function(
    Pointer<GLsync> sync, int flags, int timeout);
typedef TglGetInteger64v_Native = Void Function(
    Uint32 pname, Pointer<Int64> data);
typedef TglGetInteger64v_Func = void Function(int pname, Pointer<Int64> data);
typedef TglGetSynciv_Native = Void Function(Pointer<GLsync> sync, Uint32 pname,
    Int32 bufSize, Pointer<Int32> length, Pointer<Int32> values);
typedef TglGetSynciv_Func = void Function(Pointer<GLsync> sync, int pname,
    int bufSize, Pointer<Int32> length, Pointer<Int32> values);
typedef TglGetInteger64i_v_Native = Void Function(
    Uint32 target, Uint32 index, Pointer<Int64> data);
typedef TglGetInteger64i_v_Func = void Function(
    int target, int index, Pointer<Int64> data);
typedef TglGetBufferParameteri64v_Native = Void Function(
    Uint32 target, Uint32 pname, Pointer<Int64> params);
typedef TglGetBufferParameteri64v_Func = void Function(
    int target, int pname, Pointer<Int64> params);
typedef TglFramebufferTexture_Native = Void Function(
    Uint32 target, Uint32 attachment, Uint32 texture, Int32 level);
typedef TglFramebufferTexture_Func = void Function(
    int target, int attachment, int texture, int level);
typedef TglTexImage2DMultisample_Native = Void Function(
    Uint32 target,
    Int32 samples,
    Uint32 internalformat,
    Int32 width,
    Int32 height,
    Uint8 fixedsamplelocations);
typedef TglTexImage2DMultisample_Func = void Function(int target, int samples,
    int internalformat, int width, int height, int fixedsamplelocations);
typedef TglTexImage3DMultisample_Native = Void Function(
    Uint32 target,
    Int32 samples,
    Uint32 internalformat,
    Int32 width,
    Int32 height,
    Int32 depth,
    Uint8 fixedsamplelocations);
typedef TglTexImage3DMultisample_Func = void Function(
    int target,
    int samples,
    int internalformat,
    int width,
    int height,
    int depth,
    int fixedsamplelocations);
typedef TglGetMultisamplefv_Native = Void Function(
    Uint32 pname, Uint32 index, Pointer<Float> val);
typedef TglGetMultisamplefv_Func = void Function(
    int pname, int index, Pointer<Float> val);
typedef TglSampleMaski_Native = Void Function(Uint32 maskNumber, Uint32 mask);
typedef TglSampleMaski_Func = void Function(int maskNumber, int mask);
typedef TglBindFragDataLocationIndexed_Native = Void Function(
    Uint32 program, Uint32 colorNumber, Uint32 index, Pointer<Utf8> name);
typedef TglBindFragDataLocationIndexed_Func = void Function(
    int program, int colorNumber, int index, Pointer<Utf8> name);
typedef TglGetFragDataIndex_Native = Int32 Function(
    Uint32 program, Pointer<Utf8> name);
typedef TglGetFragDataIndex_Func = int Function(
    int program, Pointer<Utf8> name);
typedef TglGenSamplers_Native = Void Function(
    Int32 count, Pointer<Uint32> samplers);
typedef TglGenSamplers_Func = void Function(
    int count, Pointer<Uint32> samplers);
typedef TglDeleteSamplers_Native = Void Function(
    Int32 count, Pointer<Uint32> samplers);
typedef TglDeleteSamplers_Func = void Function(
    int count, Pointer<Uint32> samplers);
typedef TglIsSampler_Native = Uint8 Function(Uint32 sampler);
typedef TglIsSampler_Func = int Function(int sampler);
typedef TglBindSampler_Native = Void Function(Uint32 unit, Uint32 sampler);
typedef TglBindSampler_Func = void Function(int unit, int sampler);
typedef TglSamplerParameteri_Native = Void Function(
    Uint32 sampler, Uint32 pname, Int32 param);
typedef TglSamplerParameteri_Func = void Function(
    int sampler, int pname, int param);
typedef TglSamplerParameteriv_Native = Void Function(
    Uint32 sampler, Uint32 pname, Pointer<Int32> param);
typedef TglSamplerParameteriv_Func = void Function(
    int sampler, int pname, Pointer<Int32> param);
typedef TglSamplerParameterf_Native = Void Function(
    Uint32 sampler, Uint32 pname, Float param);
typedef TglSamplerParameterf_Func = void Function(
    int sampler, int pname, double param);
typedef TglSamplerParameterfv_Native = Void Function(
    Uint32 sampler, Uint32 pname, Pointer<Float> param);
typedef TglSamplerParameterfv_Func = void Function(
    int sampler, int pname, Pointer<Float> param);
typedef TglSamplerParameterIiv_Native = Void Function(
    Uint32 sampler, Uint32 pname, Pointer<Int32> param);
typedef TglSamplerParameterIiv_Func = void Function(
    int sampler, int pname, Pointer<Int32> param);
typedef TglSamplerParameterIuiv_Native = Void Function(
    Uint32 sampler, Uint32 pname, Pointer<Uint32> param);
typedef TglSamplerParameterIuiv_Func = void Function(
    int sampler, int pname, Pointer<Uint32> param);
typedef TglGetSamplerParameteriv_Native = Void Function(
    Uint32 sampler, Uint32 pname, Pointer<Int32> params);
typedef TglGetSamplerParameteriv_Func = void Function(
    int sampler, int pname, Pointer<Int32> params);
typedef TglGetSamplerParameterIiv_Native = Void Function(
    Uint32 sampler, Uint32 pname, Pointer<Int32> params);
typedef TglGetSamplerParameterIiv_Func = void Function(
    int sampler, int pname, Pointer<Int32> params);
typedef TglGetSamplerParameterfv_Native = Void Function(
    Uint32 sampler, Uint32 pname, Pointer<Float> params);
typedef TglGetSamplerParameterfv_Func = void Function(
    int sampler, int pname, Pointer<Float> params);
typedef TglGetSamplerParameterIuiv_Native = Void Function(
    Uint32 sampler, Uint32 pname, Pointer<Uint32> params);
typedef TglGetSamplerParameterIuiv_Func = void Function(
    int sampler, int pname, Pointer<Uint32> params);
typedef TglQueryCounter_Native = Void Function(Uint32 id, Uint32 target);
typedef TglQueryCounter_Func = void Function(int id, int target);
typedef TglGetQueryObjecti64v_Native = Void Function(
    Uint32 id, Uint32 pname, Pointer<Int64> params);
typedef TglGetQueryObjecti64v_Func = void Function(
    int id, int pname, Pointer<Int64> params);
typedef TglGetQueryObjectui64v_Native = Void Function(
    Uint32 id, Uint32 pname, Pointer<Uint64> params);
typedef TglGetQueryObjectui64v_Func = void Function(
    int id, int pname, Pointer<Uint64> params);
typedef TglVertexAttribDivisor_Native = Void Function(
    Uint32 index, Uint32 divisor);
typedef TglVertexAttribDivisor_Func = void Function(int index, int divisor);
typedef TglVertexAttribP1ui_Native = Void Function(
    Uint32 index, Uint32 type, Uint8 normalized, Uint32 value);
typedef TglVertexAttribP1ui_Func = void Function(
    int index, int type, int normalized, int value);
typedef TglVertexAttribP1uiv_Native = Void Function(
    Uint32 index, Uint32 type, Uint8 normalized, Pointer<Uint32> value);
typedef TglVertexAttribP1uiv_Func = void Function(
    int index, int type, int normalized, Pointer<Uint32> value);
typedef TglVertexAttribP2ui_Native = Void Function(
    Uint32 index, Uint32 type, Uint8 normalized, Uint32 value);
typedef TglVertexAttribP2ui_Func = void Function(
    int index, int type, int normalized, int value);
typedef TglVertexAttribP2uiv_Native = Void Function(
    Uint32 index, Uint32 type, Uint8 normalized, Pointer<Uint32> value);
typedef TglVertexAttribP2uiv_Func = void Function(
    int index, int type, int normalized, Pointer<Uint32> value);
typedef TglVertexAttribP3ui_Native = Void Function(
    Uint32 index, Uint32 type, Uint8 normalized, Uint32 value);
typedef TglVertexAttribP3ui_Func = void Function(
    int index, int type, int normalized, int value);
typedef TglVertexAttribP3uiv_Native = Void Function(
    Uint32 index, Uint32 type, Uint8 normalized, Pointer<Uint32> value);
typedef TglVertexAttribP3uiv_Func = void Function(
    int index, int type, int normalized, Pointer<Uint32> value);
typedef TglVertexAttribP4ui_Native = Void Function(
    Uint32 index, Uint32 type, Uint8 normalized, Uint32 value);
typedef TglVertexAttribP4ui_Func = void Function(
    int index, int type, int normalized, int value);
typedef TglVertexAttribP4uiv_Native = Void Function(
    Uint32 index, Uint32 type, Uint8 normalized, Pointer<Uint32> value);
typedef TglVertexAttribP4uiv_Func = void Function(
    int index, int type, int normalized, Pointer<Uint32> value);
typedef TglVertexP2ui_Native = Void Function(Uint32 type, Uint32 value);
typedef TglVertexP2ui_Func = void Function(int type, int value);
typedef TglVertexP2uiv_Native = Void Function(
    Uint32 type, Pointer<Uint32> value);
typedef TglVertexP2uiv_Func = void Function(int type, Pointer<Uint32> value);
typedef TglVertexP3ui_Native = Void Function(Uint32 type, Uint32 value);
typedef TglVertexP3ui_Func = void Function(int type, int value);
typedef TglVertexP3uiv_Native = Void Function(
    Uint32 type, Pointer<Uint32> value);
typedef TglVertexP3uiv_Func = void Function(int type, Pointer<Uint32> value);
typedef TglVertexP4ui_Native = Void Function(Uint32 type, Uint32 value);
typedef TglVertexP4ui_Func = void Function(int type, int value);
typedef TglVertexP4uiv_Native = Void Function(
    Uint32 type, Pointer<Uint32> value);
typedef TglVertexP4uiv_Func = void Function(int type, Pointer<Uint32> value);
typedef TglTexCoordP1ui_Native = Void Function(Uint32 type, Uint32 coords);
typedef TglTexCoordP1ui_Func = void Function(int type, int coords);
typedef TglTexCoordP1uiv_Native = Void Function(
    Uint32 type, Pointer<Uint32> coords);
typedef TglTexCoordP1uiv_Func = void Function(int type, Pointer<Uint32> coords);
typedef TglTexCoordP2ui_Native = Void Function(Uint32 type, Uint32 coords);
typedef TglTexCoordP2ui_Func = void Function(int type, int coords);
typedef TglTexCoordP2uiv_Native = Void Function(
    Uint32 type, Pointer<Uint32> coords);
typedef TglTexCoordP2uiv_Func = void Function(int type, Pointer<Uint32> coords);
typedef TglTexCoordP3ui_Native = Void Function(Uint32 type, Uint32 coords);
typedef TglTexCoordP3ui_Func = void Function(int type, int coords);
typedef TglTexCoordP3uiv_Native = Void Function(
    Uint32 type, Pointer<Uint32> coords);
typedef TglTexCoordP3uiv_Func = void Function(int type, Pointer<Uint32> coords);
typedef TglTexCoordP4ui_Native = Void Function(Uint32 type, Uint32 coords);
typedef TglTexCoordP4ui_Func = void Function(int type, int coords);
typedef TglTexCoordP4uiv_Native = Void Function(
    Uint32 type, Pointer<Uint32> coords);
typedef TglTexCoordP4uiv_Func = void Function(int type, Pointer<Uint32> coords);
typedef TglMultiTexCoordP1ui_Native = Void Function(
    Uint32 texture, Uint32 type, Uint32 coords);
typedef TglMultiTexCoordP1ui_Func = void Function(
    int texture, int type, int coords);
typedef TglMultiTexCoordP1uiv_Native = Void Function(
    Uint32 texture, Uint32 type, Pointer<Uint32> coords);
typedef TglMultiTexCoordP1uiv_Func = void Function(
    int texture, int type, Pointer<Uint32> coords);
typedef TglMultiTexCoordP2ui_Native = Void Function(
    Uint32 texture, Uint32 type, Uint32 coords);
typedef TglMultiTexCoordP2ui_Func = void Function(
    int texture, int type, int coords);
typedef TglMultiTexCoordP2uiv_Native = Void Function(
    Uint32 texture, Uint32 type, Pointer<Uint32> coords);
typedef TglMultiTexCoordP2uiv_Func = void Function(
    int texture, int type, Pointer<Uint32> coords);
typedef TglMultiTexCoordP3ui_Native = Void Function(
    Uint32 texture, Uint32 type, Uint32 coords);
typedef TglMultiTexCoordP3ui_Func = void Function(
    int texture, int type, int coords);
typedef TglMultiTexCoordP3uiv_Native = Void Function(
    Uint32 texture, Uint32 type, Pointer<Uint32> coords);
typedef TglMultiTexCoordP3uiv_Func = void Function(
    int texture, int type, Pointer<Uint32> coords);
typedef TglMultiTexCoordP4ui_Native = Void Function(
    Uint32 texture, Uint32 type, Uint32 coords);
typedef TglMultiTexCoordP4ui_Func = void Function(
    int texture, int type, int coords);
typedef TglMultiTexCoordP4uiv_Native = Void Function(
    Uint32 texture, Uint32 type, Pointer<Uint32> coords);
typedef TglMultiTexCoordP4uiv_Func = void Function(
    int texture, int type, Pointer<Uint32> coords);
typedef TglNormalP3ui_Native = Void Function(Uint32 type, Uint32 coords);
typedef TglNormalP3ui_Func = void Function(int type, int coords);
typedef TglNormalP3uiv_Native = Void Function(
    Uint32 type, Pointer<Uint32> coords);
typedef TglNormalP3uiv_Func = void Function(int type, Pointer<Uint32> coords);
typedef TglColorP3ui_Native = Void Function(Uint32 type, Uint32 color);
typedef TglColorP3ui_Func = void Function(int type, int color);
typedef TglColorP3uiv_Native = Void Function(
    Uint32 type, Pointer<Uint32> color);
typedef TglColorP3uiv_Func = void Function(int type, Pointer<Uint32> color);
typedef TglColorP4ui_Native = Void Function(Uint32 type, Uint32 color);
typedef TglColorP4ui_Func = void Function(int type, int color);
typedef TglColorP4uiv_Native = Void Function(
    Uint32 type, Pointer<Uint32> color);
typedef TglColorP4uiv_Func = void Function(int type, Pointer<Uint32> color);
typedef TglSecondaryColorP3ui_Native = Void Function(Uint32 type, Uint32 color);
typedef TglSecondaryColorP3ui_Func = void Function(int type, int color);
typedef TglSecondaryColorP3uiv_Native = Void Function(
    Uint32 type, Pointer<Uint32> color);
typedef TglSecondaryColorP3uiv_Func = void Function(
    int type, Pointer<Uint32> color);
typedef TglMinSampleShading_Native = Void Function(Float value);
typedef TglMinSampleShading_Func = void Function(double value);
typedef TglBlendEquationi_Native = Void Function(Uint32 buf, Uint32 mode);
typedef TglBlendEquationi_Func = void Function(int buf, int mode);
typedef TglBlendEquationSeparatei_Native = Void Function(
    Uint32 buf, Uint32 modeRGB, Uint32 modeAlpha);
typedef TglBlendEquationSeparatei_Func = void Function(
    int buf, int modeRGB, int modeAlpha);
typedef TglBlendFunci_Native = Void Function(
    Uint32 buf, Uint32 src, Uint32 dst);
typedef TglBlendFunci_Func = void Function(int buf, int src, int dst);
typedef TglBlendFuncSeparatei_Native = Void Function(
    Uint32 buf, Uint32 srcRGB, Uint32 dstRGB, Uint32 srcAlpha, Uint32 dstAlpha);
typedef TglBlendFuncSeparatei_Func = void Function(
    int buf, int srcRGB, int dstRGB, int srcAlpha, int dstAlpha);
typedef TglDrawArraysIndirect_Native = Void Function(
    Uint32 mode, Pointer<Void> indirect);
typedef TglDrawArraysIndirect_Func = void Function(
    int mode, Pointer<Void> indirect);
typedef TglDrawElementsIndirect_Native = Void Function(
    Uint32 mode, Uint32 type, Pointer<Void> indirect);
typedef TglDrawElementsIndirect_Func = void Function(
    int mode, int type, Pointer<Void> indirect);
typedef TglUniform1d_Native = Void Function(Int32 location, Double x);
typedef TglUniform1d_Func = void Function(int location, double x);
typedef TglUniform2d_Native = Void Function(Int32 location, Double x, Double y);
typedef TglUniform2d_Func = void Function(int location, double x, double y);
typedef TglUniform3d_Native = Void Function(
    Int32 location, Double x, Double y, Double z);
typedef TglUniform3d_Func = void Function(
    int location, double x, double y, double z);
typedef TglUniform4d_Native = Void Function(
    Int32 location, Double x, Double y, Double z, Double w);
typedef TglUniform4d_Func = void Function(
    int location, double x, double y, double z, double w);
typedef TglUniform1dv_Native = Void Function(
    Int32 location, Int32 count, Pointer<Double> value);
typedef TglUniform1dv_Func = void Function(
    int location, int count, Pointer<Double> value);
typedef TglUniform2dv_Native = Void Function(
    Int32 location, Int32 count, Pointer<Double> value);
typedef TglUniform2dv_Func = void Function(
    int location, int count, Pointer<Double> value);
typedef TglUniform3dv_Native = Void Function(
    Int32 location, Int32 count, Pointer<Double> value);
typedef TglUniform3dv_Func = void Function(
    int location, int count, Pointer<Double> value);
typedef TglUniform4dv_Native = Void Function(
    Int32 location, Int32 count, Pointer<Double> value);
typedef TglUniform4dv_Func = void Function(
    int location, int count, Pointer<Double> value);
typedef TglUniformMatrix2dv_Native = Void Function(
    Int32 location, Int32 count, Uint8 transpose, Pointer<Double> value);
typedef TglUniformMatrix2dv_Func = void Function(
    int location, int count, int transpose, Pointer<Double> value);
typedef TglUniformMatrix3dv_Native = Void Function(
    Int32 location, Int32 count, Uint8 transpose, Pointer<Double> value);
typedef TglUniformMatrix3dv_Func = void Function(
    int location, int count, int transpose, Pointer<Double> value);
typedef TglUniformMatrix4dv_Native = Void Function(
    Int32 location, Int32 count, Uint8 transpose, Pointer<Double> value);
typedef TglUniformMatrix4dv_Func = void Function(
    int location, int count, int transpose, Pointer<Double> value);
typedef TglUniformMatrix2x3dv_Native = Void Function(
    Int32 location, Int32 count, Uint8 transpose, Pointer<Double> value);
typedef TglUniformMatrix2x3dv_Func = void Function(
    int location, int count, int transpose, Pointer<Double> value);
typedef TglUniformMatrix2x4dv_Native = Void Function(
    Int32 location, Int32 count, Uint8 transpose, Pointer<Double> value);
typedef TglUniformMatrix2x4dv_Func = void Function(
    int location, int count, int transpose, Pointer<Double> value);
typedef TglUniformMatrix3x2dv_Native = Void Function(
    Int32 location, Int32 count, Uint8 transpose, Pointer<Double> value);
typedef TglUniformMatrix3x2dv_Func = void Function(
    int location, int count, int transpose, Pointer<Double> value);
typedef TglUniformMatrix3x4dv_Native = Void Function(
    Int32 location, Int32 count, Uint8 transpose, Pointer<Double> value);
typedef TglUniformMatrix3x4dv_Func = void Function(
    int location, int count, int transpose, Pointer<Double> value);
typedef TglUniformMatrix4x2dv_Native = Void Function(
    Int32 location, Int32 count, Uint8 transpose, Pointer<Double> value);
typedef TglUniformMatrix4x2dv_Func = void Function(
    int location, int count, int transpose, Pointer<Double> value);
typedef TglUniformMatrix4x3dv_Native = Void Function(
    Int32 location, Int32 count, Uint8 transpose, Pointer<Double> value);
typedef TglUniformMatrix4x3dv_Func = void Function(
    int location, int count, int transpose, Pointer<Double> value);
typedef TglGetUniformdv_Native = Void Function(
    Uint32 program, Int32 location, Pointer<Double> params);
typedef TglGetUniformdv_Func = void Function(
    int program, int location, Pointer<Double> params);
typedef TglGetSubroutineUniformLocation_Native = Int32 Function(
    Uint32 program, Uint32 shadertype, Pointer<Utf8> name);
typedef TglGetSubroutineUniformLocation_Func = int Function(
    int program, int shadertype, Pointer<Utf8> name);
typedef TglGetSubroutineIndex_Native = Uint32 Function(
    Uint32 program, Uint32 shadertype, Pointer<Utf8> name);
typedef TglGetSubroutineIndex_Func = int Function(
    int program, int shadertype, Pointer<Utf8> name);
typedef TglGetActiveSubroutineUniformiv_Native = Void Function(Uint32 program,
    Uint32 shadertype, Uint32 index, Uint32 pname, Pointer<Int32> values);
typedef TglGetActiveSubroutineUniformiv_Func = void Function(
    int program, int shadertype, int index, int pname, Pointer<Int32> values);
typedef TglGetActiveSubroutineUniformName_Native = Void Function(
    Uint32 program,
    Uint32 shadertype,
    Uint32 index,
    Int32 bufsize,
    Pointer<Int32> length,
    Pointer<Utf8> name);
typedef TglGetActiveSubroutineUniformName_Func = void Function(
    int program,
    int shadertype,
    int index,
    int bufsize,
    Pointer<Int32> length,
    Pointer<Utf8> name);
typedef TglGetActiveSubroutineName_Native = Void Function(
    Uint32 program,
    Uint32 shadertype,
    Uint32 index,
    Int32 bufsize,
    Pointer<Int32> length,
    Pointer<Utf8> name);
typedef TglGetActiveSubroutineName_Func = void Function(
    int program,
    int shadertype,
    int index,
    int bufsize,
    Pointer<Int32> length,
    Pointer<Utf8> name);
typedef TglUniformSubroutinesuiv_Native = Void Function(
    Uint32 shadertype, Int32 count, Pointer<Uint32> indices);
typedef TglUniformSubroutinesuiv_Func = void Function(
    int shadertype, int count, Pointer<Uint32> indices);
typedef TglGetUniformSubroutineuiv_Native = Void Function(
    Uint32 shadertype, Int32 location, Pointer<Uint32> params);
typedef TglGetUniformSubroutineuiv_Func = void Function(
    int shadertype, int location, Pointer<Uint32> params);
typedef TglGetProgramStageiv_Native = Void Function(
    Uint32 program, Uint32 shadertype, Uint32 pname, Pointer<Int32> values);
typedef TglGetProgramStageiv_Func = void Function(
    int program, int shadertype, int pname, Pointer<Int32> values);
typedef TglPatchParameteri_Native = Void Function(Uint32 pname, Int32 value);
typedef TglPatchParameteri_Func = void Function(int pname, int value);
typedef TglPatchParameterfv_Native = Void Function(
    Uint32 pname, Pointer<Float> values);
typedef TglPatchParameterfv_Func = void Function(
    int pname, Pointer<Float> values);
typedef TglBindTransformFeedback_Native = Void Function(
    Uint32 target, Uint32 id);
typedef TglBindTransformFeedback_Func = void Function(int target, int id);
typedef TglDeleteTransformFeedbacks_Native = Void Function(
    Int32 n, Pointer<Uint32> ids);
typedef TglDeleteTransformFeedbacks_Func = void Function(
    int n, Pointer<Uint32> ids);
typedef TglGenTransformFeedbacks_Native = Void Function(
    Int32 n, Pointer<Uint32> ids);
typedef TglGenTransformFeedbacks_Func = void Function(
    int n, Pointer<Uint32> ids);
typedef TglIsTransformFeedback_Native = Uint8 Function(Uint32 id);
typedef TglIsTransformFeedback_Func = int Function(int id);
typedef TglPauseTransformFeedback_Native = Void Function();
typedef TglPauseTransformFeedback_Func = void Function();
typedef TglResumeTransformFeedback_Native = Void Function();
typedef TglResumeTransformFeedback_Func = void Function();
typedef TglDrawTransformFeedback_Native = Void Function(Uint32 mode, Uint32 id);
typedef TglDrawTransformFeedback_Func = void Function(int mode, int id);
typedef TglDrawTransformFeedbackStream_Native = Void Function(
    Uint32 mode, Uint32 id, Uint32 stream);
typedef TglDrawTransformFeedbackStream_Func = void Function(
    int mode, int id, int stream);
typedef TglBeginQueryIndexed_Native = Void Function(
    Uint32 target, Uint32 index, Uint32 id);
typedef TglBeginQueryIndexed_Func = void Function(
    int target, int index, int id);
typedef TglEndQueryIndexed_Native = Void Function(Uint32 target, Uint32 index);
typedef TglEndQueryIndexed_Func = void Function(int target, int index);
typedef TglGetQueryIndexediv_Native = Void Function(
    Uint32 target, Uint32 index, Uint32 pname, Pointer<Int32> params);
typedef TglGetQueryIndexediv_Func = void Function(
    int target, int index, int pname, Pointer<Int32> params);
typedef TglReleaseShaderCompiler_Native = Void Function();
typedef TglReleaseShaderCompiler_Func = void Function();
typedef TglShaderBinary_Native = Void Function(
    Int32 count,
    Pointer<Uint32> shaders,
    Uint32 binaryformat,
    Pointer<Void> binary,
    Int32 length);
typedef TglShaderBinary_Func = void Function(int count, Pointer<Uint32> shaders,
    int binaryformat, Pointer<Void> binary, int length);
typedef TglGetShaderPrecisionFormat_Native = Void Function(Uint32 shadertype,
    Uint32 precisiontype, Pointer<Int32> range, Pointer<Int32> precision);
typedef TglGetShaderPrecisionFormat_Func = void Function(int shadertype,
    int precisiontype, Pointer<Int32> range, Pointer<Int32> precision);
typedef TglDepthRangef_Native = Void Function(Float n, Float f);
typedef TglDepthRangef_Func = void Function(double n, double f);
typedef TglClearDepthf_Native = Void Function(Float d);
typedef TglClearDepthf_Func = void Function(double d);
typedef TglGetProgramBinary_Native = Void Function(
    Uint32 program,
    Int32 bufSize,
    Pointer<Int32> length,
    Pointer<Uint32> binaryFormat,
    Pointer<Void> binary);
typedef TglGetProgramBinary_Func = void Function(int program, int bufSize,
    Pointer<Int32> length, Pointer<Uint32> binaryFormat, Pointer<Void> binary);
typedef TglProgramBinary_Native = Void Function(
    Uint32 program, Uint32 binaryFormat, Pointer<Void> binary, Int32 length);
typedef TglProgramBinary_Func = void Function(
    int program, int binaryFormat, Pointer<Void> binary, int length);
typedef TglProgramParameteri_Native = Void Function(
    Uint32 program, Uint32 pname, Int32 value);
typedef TglProgramParameteri_Func = void Function(
    int program, int pname, int value);
typedef TglUseProgramStages_Native = Void Function(
    Uint32 pipeline, Uint32 stages, Uint32 program);
typedef TglUseProgramStages_Func = void Function(
    int pipeline, int stages, int program);
typedef TglActiveShaderProgram_Native = Void Function(
    Uint32 pipeline, Uint32 program);
typedef TglActiveShaderProgram_Func = void Function(int pipeline, int program);
typedef TglCreateShaderProgramv_Native = Uint32 Function(
    Uint32 type, Int32 count, Pointer<Pointer<Utf8>> strings);
typedef TglCreateShaderProgramv_Func = int Function(
    int type, int count, Pointer<Pointer<Utf8>> strings);
typedef TglBindProgramPipeline_Native = Void Function(Uint32 pipeline);
typedef TglBindProgramPipeline_Func = void Function(int pipeline);
typedef TglDeleteProgramPipelines_Native = Void Function(
    Int32 n, Pointer<Uint32> pipelines);
typedef TglDeleteProgramPipelines_Func = void Function(
    int n, Pointer<Uint32> pipelines);
typedef TglGenProgramPipelines_Native = Void Function(
    Int32 n, Pointer<Uint32> pipelines);
typedef TglGenProgramPipelines_Func = void Function(
    int n, Pointer<Uint32> pipelines);
typedef TglIsProgramPipeline_Native = Uint8 Function(Uint32 pipeline);
typedef TglIsProgramPipeline_Func = int Function(int pipeline);
typedef TglGetProgramPipelineiv_Native = Void Function(
    Uint32 pipeline, Uint32 pname, Pointer<Int32> params);
typedef TglGetProgramPipelineiv_Func = void Function(
    int pipeline, int pname, Pointer<Int32> params);
typedef TglProgramUniform1i_Native = Void Function(
    Uint32 program, Int32 location, Int32 v0);
typedef TglProgramUniform1i_Func = void Function(
    int program, int location, int v0);
typedef TglProgramUniform1iv_Native = Void Function(
    Uint32 program, Int32 location, Int32 count, Pointer<Int32> value);
typedef TglProgramUniform1iv_Func = void Function(
    int program, int location, int count, Pointer<Int32> value);
typedef TglProgramUniform1f_Native = Void Function(
    Uint32 program, Int32 location, Float v0);
typedef TglProgramUniform1f_Func = void Function(
    int program, int location, double v0);
typedef TglProgramUniform1fv_Native = Void Function(
    Uint32 program, Int32 location, Int32 count, Pointer<Float> value);
typedef TglProgramUniform1fv_Func = void Function(
    int program, int location, int count, Pointer<Float> value);
typedef TglProgramUniform1d_Native = Void Function(
    Uint32 program, Int32 location, Double v0);
typedef TglProgramUniform1d_Func = void Function(
    int program, int location, double v0);
typedef TglProgramUniform1dv_Native = Void Function(
    Uint32 program, Int32 location, Int32 count, Pointer<Double> value);
typedef TglProgramUniform1dv_Func = void Function(
    int program, int location, int count, Pointer<Double> value);
typedef TglProgramUniform1ui_Native = Void Function(
    Uint32 program, Int32 location, Uint32 v0);
typedef TglProgramUniform1ui_Func = void Function(
    int program, int location, int v0);
typedef TglProgramUniform1uiv_Native = Void Function(
    Uint32 program, Int32 location, Int32 count, Pointer<Uint32> value);
typedef TglProgramUniform1uiv_Func = void Function(
    int program, int location, int count, Pointer<Uint32> value);
typedef TglProgramUniform2i_Native = Void Function(
    Uint32 program, Int32 location, Int32 v0, Int32 v1);
typedef TglProgramUniform2i_Func = void Function(
    int program, int location, int v0, int v1);
typedef TglProgramUniform2iv_Native = Void Function(
    Uint32 program, Int32 location, Int32 count, Pointer<Int32> value);
typedef TglProgramUniform2iv_Func = void Function(
    int program, int location, int count, Pointer<Int32> value);
typedef TglProgramUniform2f_Native = Void Function(
    Uint32 program, Int32 location, Float v0, Float v1);
typedef TglProgramUniform2f_Func = void Function(
    int program, int location, double v0, double v1);
typedef TglProgramUniform2fv_Native = Void Function(
    Uint32 program, Int32 location, Int32 count, Pointer<Float> value);
typedef TglProgramUniform2fv_Func = void Function(
    int program, int location, int count, Pointer<Float> value);
typedef TglProgramUniform2d_Native = Void Function(
    Uint32 program, Int32 location, Double v0, Double v1);
typedef TglProgramUniform2d_Func = void Function(
    int program, int location, double v0, double v1);
typedef TglProgramUniform2dv_Native = Void Function(
    Uint32 program, Int32 location, Int32 count, Pointer<Double> value);
typedef TglProgramUniform2dv_Func = void Function(
    int program, int location, int count, Pointer<Double> value);
typedef TglProgramUniform2ui_Native = Void Function(
    Uint32 program, Int32 location, Uint32 v0, Uint32 v1);
typedef TglProgramUniform2ui_Func = void Function(
    int program, int location, int v0, int v1);
typedef TglProgramUniform2uiv_Native = Void Function(
    Uint32 program, Int32 location, Int32 count, Pointer<Uint32> value);
typedef TglProgramUniform2uiv_Func = void Function(
    int program, int location, int count, Pointer<Uint32> value);
typedef TglProgramUniform3i_Native = Void Function(
    Uint32 program, Int32 location, Int32 v0, Int32 v1, Int32 v2);
typedef TglProgramUniform3i_Func = void Function(
    int program, int location, int v0, int v1, int v2);
typedef TglProgramUniform3iv_Native = Void Function(
    Uint32 program, Int32 location, Int32 count, Pointer<Int32> value);
typedef TglProgramUniform3iv_Func = void Function(
    int program, int location, int count, Pointer<Int32> value);
typedef TglProgramUniform3f_Native = Void Function(
    Uint32 program, Int32 location, Float v0, Float v1, Float v2);
typedef TglProgramUniform3f_Func = void Function(
    int program, int location, double v0, double v1, double v2);
typedef TglProgramUniform3fv_Native = Void Function(
    Uint32 program, Int32 location, Int32 count, Pointer<Float> value);
typedef TglProgramUniform3fv_Func = void Function(
    int program, int location, int count, Pointer<Float> value);
typedef TglProgramUniform3d_Native = Void Function(
    Uint32 program, Int32 location, Double v0, Double v1, Double v2);
typedef TglProgramUniform3d_Func = void Function(
    int program, int location, double v0, double v1, double v2);
typedef TglProgramUniform3dv_Native = Void Function(
    Uint32 program, Int32 location, Int32 count, Pointer<Double> value);
typedef TglProgramUniform3dv_Func = void Function(
    int program, int location, int count, Pointer<Double> value);
typedef TglProgramUniform3ui_Native = Void Function(
    Uint32 program, Int32 location, Uint32 v0, Uint32 v1, Uint32 v2);
typedef TglProgramUniform3ui_Func = void Function(
    int program, int location, int v0, int v1, int v2);
typedef TglProgramUniform3uiv_Native = Void Function(
    Uint32 program, Int32 location, Int32 count, Pointer<Uint32> value);
typedef TglProgramUniform3uiv_Func = void Function(
    int program, int location, int count, Pointer<Uint32> value);
typedef TglProgramUniform4i_Native = Void Function(
    Uint32 program, Int32 location, Int32 v0, Int32 v1, Int32 v2, Int32 v3);
typedef TglProgramUniform4i_Func = void Function(
    int program, int location, int v0, int v1, int v2, int v3);
typedef TglProgramUniform4iv_Native = Void Function(
    Uint32 program, Int32 location, Int32 count, Pointer<Int32> value);
typedef TglProgramUniform4iv_Func = void Function(
    int program, int location, int count, Pointer<Int32> value);
typedef TglProgramUniform4f_Native = Void Function(
    Uint32 program, Int32 location, Float v0, Float v1, Float v2, Float v3);
typedef TglProgramUniform4f_Func = void Function(
    int program, int location, double v0, double v1, double v2, double v3);
typedef TglProgramUniform4fv_Native = Void Function(
    Uint32 program, Int32 location, Int32 count, Pointer<Float> value);
typedef TglProgramUniform4fv_Func = void Function(
    int program, int location, int count, Pointer<Float> value);
typedef TglProgramUniform4d_Native = Void Function(
    Uint32 program, Int32 location, Double v0, Double v1, Double v2, Double v3);
typedef TglProgramUniform4d_Func = void Function(
    int program, int location, double v0, double v1, double v2, double v3);
typedef TglProgramUniform4dv_Native = Void Function(
    Uint32 program, Int32 location, Int32 count, Pointer<Double> value);
typedef TglProgramUniform4dv_Func = void Function(
    int program, int location, int count, Pointer<Double> value);
typedef TglProgramUniform4ui_Native = Void Function(
    Uint32 program, Int32 location, Uint32 v0, Uint32 v1, Uint32 v2, Uint32 v3);
typedef TglProgramUniform4ui_Func = void Function(
    int program, int location, int v0, int v1, int v2, int v3);
typedef TglProgramUniform4uiv_Native = Void Function(
    Uint32 program, Int32 location, Int32 count, Pointer<Uint32> value);
typedef TglProgramUniform4uiv_Func = void Function(
    int program, int location, int count, Pointer<Uint32> value);
typedef TglProgramUniformMatrix2fv_Native = Void Function(Uint32 program,
    Int32 location, Int32 count, Uint8 transpose, Pointer<Float> value);
typedef TglProgramUniformMatrix2fv_Func = void Function(
    int program, int location, int count, int transpose, Pointer<Float> value);
typedef TglProgramUniformMatrix3fv_Native = Void Function(Uint32 program,
    Int32 location, Int32 count, Uint8 transpose, Pointer<Float> value);
typedef TglProgramUniformMatrix3fv_Func = void Function(
    int program, int location, int count, int transpose, Pointer<Float> value);
typedef TglProgramUniformMatrix4fv_Native = Void Function(Uint32 program,
    Int32 location, Int32 count, Uint8 transpose, Pointer<Float> value);
typedef TglProgramUniformMatrix4fv_Func = void Function(
    int program, int location, int count, int transpose, Pointer<Float> value);
typedef TglProgramUniformMatrix2dv_Native = Void Function(Uint32 program,
    Int32 location, Int32 count, Uint8 transpose, Pointer<Double> value);
typedef TglProgramUniformMatrix2dv_Func = void Function(
    int program, int location, int count, int transpose, Pointer<Double> value);
typedef TglProgramUniformMatrix3dv_Native = Void Function(Uint32 program,
    Int32 location, Int32 count, Uint8 transpose, Pointer<Double> value);
typedef TglProgramUniformMatrix3dv_Func = void Function(
    int program, int location, int count, int transpose, Pointer<Double> value);
typedef TglProgramUniformMatrix4dv_Native = Void Function(Uint32 program,
    Int32 location, Int32 count, Uint8 transpose, Pointer<Double> value);
typedef TglProgramUniformMatrix4dv_Func = void Function(
    int program, int location, int count, int transpose, Pointer<Double> value);
typedef TglProgramUniformMatrix2x3fv_Native = Void Function(Uint32 program,
    Int32 location, Int32 count, Uint8 transpose, Pointer<Float> value);
typedef TglProgramUniformMatrix2x3fv_Func = void Function(
    int program, int location, int count, int transpose, Pointer<Float> value);
typedef TglProgramUniformMatrix3x2fv_Native = Void Function(Uint32 program,
    Int32 location, Int32 count, Uint8 transpose, Pointer<Float> value);
typedef TglProgramUniformMatrix3x2fv_Func = void Function(
    int program, int location, int count, int transpose, Pointer<Float> value);
typedef TglProgramUniformMatrix2x4fv_Native = Void Function(Uint32 program,
    Int32 location, Int32 count, Uint8 transpose, Pointer<Float> value);
typedef TglProgramUniformMatrix2x4fv_Func = void Function(
    int program, int location, int count, int transpose, Pointer<Float> value);
typedef TglProgramUniformMatrix4x2fv_Native = Void Function(Uint32 program,
    Int32 location, Int32 count, Uint8 transpose, Pointer<Float> value);
typedef TglProgramUniformMatrix4x2fv_Func = void Function(
    int program, int location, int count, int transpose, Pointer<Float> value);
typedef TglProgramUniformMatrix3x4fv_Native = Void Function(Uint32 program,
    Int32 location, Int32 count, Uint8 transpose, Pointer<Float> value);
typedef TglProgramUniformMatrix3x4fv_Func = void Function(
    int program, int location, int count, int transpose, Pointer<Float> value);
typedef TglProgramUniformMatrix4x3fv_Native = Void Function(Uint32 program,
    Int32 location, Int32 count, Uint8 transpose, Pointer<Float> value);
typedef TglProgramUniformMatrix4x3fv_Func = void Function(
    int program, int location, int count, int transpose, Pointer<Float> value);
typedef TglProgramUniformMatrix2x3dv_Native = Void Function(Uint32 program,
    Int32 location, Int32 count, Uint8 transpose, Pointer<Double> value);
typedef TglProgramUniformMatrix2x3dv_Func = void Function(
    int program, int location, int count, int transpose, Pointer<Double> value);
typedef TglProgramUniformMatrix3x2dv_Native = Void Function(Uint32 program,
    Int32 location, Int32 count, Uint8 transpose, Pointer<Double> value);
typedef TglProgramUniformMatrix3x2dv_Func = void Function(
    int program, int location, int count, int transpose, Pointer<Double> value);
typedef TglProgramUniformMatrix2x4dv_Native = Void Function(Uint32 program,
    Int32 location, Int32 count, Uint8 transpose, Pointer<Double> value);
typedef TglProgramUniformMatrix2x4dv_Func = void Function(
    int program, int location, int count, int transpose, Pointer<Double> value);
typedef TglProgramUniformMatrix4x2dv_Native = Void Function(Uint32 program,
    Int32 location, Int32 count, Uint8 transpose, Pointer<Double> value);
typedef TglProgramUniformMatrix4x2dv_Func = void Function(
    int program, int location, int count, int transpose, Pointer<Double> value);
typedef TglProgramUniformMatrix3x4dv_Native = Void Function(Uint32 program,
    Int32 location, Int32 count, Uint8 transpose, Pointer<Double> value);
typedef TglProgramUniformMatrix3x4dv_Func = void Function(
    int program, int location, int count, int transpose, Pointer<Double> value);
typedef TglProgramUniformMatrix4x3dv_Native = Void Function(Uint32 program,
    Int32 location, Int32 count, Uint8 transpose, Pointer<Double> value);
typedef TglProgramUniformMatrix4x3dv_Func = void Function(
    int program, int location, int count, int transpose, Pointer<Double> value);
typedef TglValidateProgramPipeline_Native = Void Function(Uint32 pipeline);
typedef TglValidateProgramPipeline_Func = void Function(int pipeline);
typedef TglGetProgramPipelineInfoLog_Native = Void Function(Uint32 pipeline,
    Int32 bufSize, Pointer<Int32> length, Pointer<Utf8> infoLog);
typedef TglGetProgramPipelineInfoLog_Func = void Function(
    int pipeline, int bufSize, Pointer<Int32> length, Pointer<Utf8> infoLog);
typedef TglVertexAttribL1d_Native = Void Function(Uint32 index, Double x);
typedef TglVertexAttribL1d_Func = void Function(int index, double x);
typedef TglVertexAttribL2d_Native = Void Function(
    Uint32 index, Double x, Double y);
typedef TglVertexAttribL2d_Func = void Function(int index, double x, double y);
typedef TglVertexAttribL3d_Native = Void Function(
    Uint32 index, Double x, Double y, Double z);
typedef TglVertexAttribL3d_Func = void Function(
    int index, double x, double y, double z);
typedef TglVertexAttribL4d_Native = Void Function(
    Uint32 index, Double x, Double y, Double z, Double w);
typedef TglVertexAttribL4d_Func = void Function(
    int index, double x, double y, double z, double w);
typedef TglVertexAttribL1dv_Native = Void Function(
    Uint32 index, Pointer<Double> v);
typedef TglVertexAttribL1dv_Func = void Function(int index, Pointer<Double> v);
typedef TglVertexAttribL2dv_Native = Void Function(
    Uint32 index, Pointer<Double> v);
typedef TglVertexAttribL2dv_Func = void Function(int index, Pointer<Double> v);
typedef TglVertexAttribL3dv_Native = Void Function(
    Uint32 index, Pointer<Double> v);
typedef TglVertexAttribL3dv_Func = void Function(int index, Pointer<Double> v);
typedef TglVertexAttribL4dv_Native = Void Function(
    Uint32 index, Pointer<Double> v);
typedef TglVertexAttribL4dv_Func = void Function(int index, Pointer<Double> v);
typedef TglVertexAttribLPointer_Native = Void Function(
    Uint32 index, Int32 size, Uint32 type, Int32 stride, Pointer<Void> pointer);
typedef TglVertexAttribLPointer_Func = void Function(
    int index, int size, int type, int stride, Pointer<Void> pointer);
typedef TglGetVertexAttribLdv_Native = Void Function(
    Uint32 index, Uint32 pname, Pointer<Double> params);
typedef TglGetVertexAttribLdv_Func = void Function(
    int index, int pname, Pointer<Double> params);
typedef TglViewportArrayv_Native = Void Function(
    Uint32 first, Int32 count, Pointer<Float> v);
typedef TglViewportArrayv_Func = void Function(
    int first, int count, Pointer<Float> v);
typedef TglViewportIndexedf_Native = Void Function(
    Uint32 index, Float x, Float y, Float w, Float h);
typedef TglViewportIndexedf_Func = void Function(
    int index, double x, double y, double w, double h);
typedef TglViewportIndexedfv_Native = Void Function(
    Uint32 index, Pointer<Float> v);
typedef TglViewportIndexedfv_Func = void Function(int index, Pointer<Float> v);
typedef TglScissorArrayv_Native = Void Function(
    Uint32 first, Int32 count, Pointer<Int32> v);
typedef TglScissorArrayv_Func = void Function(
    int first, int count, Pointer<Int32> v);
typedef TglScissorIndexed_Native = Void Function(
    Uint32 index, Int32 left, Int32 bottom, Int32 width, Int32 height);
typedef TglScissorIndexed_Func = void Function(
    int index, int left, int bottom, int width, int height);
typedef TglScissorIndexedv_Native = Void Function(
    Uint32 index, Pointer<Int32> v);
typedef TglScissorIndexedv_Func = void Function(int index, Pointer<Int32> v);
typedef TglDepthRangeArrayv_Native = Void Function(
    Uint32 first, Int32 count, Pointer<Double> v);
typedef TglDepthRangeArrayv_Func = void Function(
    int first, int count, Pointer<Double> v);
typedef TglDepthRangeIndexed_Native = Void Function(
    Uint32 index, Double n, Double f);
typedef TglDepthRangeIndexed_Func = void Function(
    int index, double n, double f);
typedef TglGetFloati_v_Native = Void Function(
    Uint32 target, Uint32 index, Pointer<Float> data);
typedef TglGetFloati_v_Func = void Function(
    int target, int index, Pointer<Float> data);
typedef TglGetDoublei_v_Native = Void Function(
    Uint32 target, Uint32 index, Pointer<Double> data);
typedef TglGetDoublei_v_Func = void Function(
    int target, int index, Pointer<Double> data);
typedef TglDrawArraysInstancedBaseInstance_Native = Void Function(Uint32 mode,
    Int32 first, Int32 count, Int32 instancecount, Uint32 baseinstance);
typedef TglDrawArraysInstancedBaseInstance_Func = void Function(
    int mode, int first, int count, int instancecount, int baseinstance);
typedef TglDrawElementsInstancedBaseInstance_Native = Void Function(
    Uint32 mode,
    Int32 count,
    Uint32 type,
    Pointer<Void> indices,
    Int32 instancecount,
    Uint32 baseinstance);
typedef TglDrawElementsInstancedBaseInstance_Func = void Function(
    int mode,
    int count,
    int type,
    Pointer<Void> indices,
    int instancecount,
    int baseinstance);
typedef TglDrawElementsInstancedBaseVertexBaseInstance_Native = Void Function(
    Uint32 mode,
    Int32 count,
    Uint32 type,
    Pointer<Void> indices,
    Int32 instancecount,
    Int32 basevertex,
    Uint32 baseinstance);
typedef TglDrawElementsInstancedBaseVertexBaseInstance_Func = void Function(
    int mode,
    int count,
    int type,
    Pointer<Void> indices,
    int instancecount,
    int basevertex,
    int baseinstance);
typedef TglGetInternalformativ_Native = Void Function(Uint32 target,
    Uint32 internalformat, Uint32 pname, Int32 bufSize, Pointer<Int32> params);
typedef TglGetInternalformativ_Func = void Function(int target,
    int internalformat, int pname, int bufSize, Pointer<Int32> params);
typedef TglGetActiveAtomicCounterBufferiv_Native = Void Function(
    Uint32 program, Uint32 bufferIndex, Uint32 pname, Pointer<Int32> params);
typedef TglGetActiveAtomicCounterBufferiv_Func = void Function(
    int program, int bufferIndex, int pname, Pointer<Int32> params);
typedef TglBindImageTexture_Native = Void Function(Uint32 unit, Uint32 texture,
    Int32 level, Uint8 layered, Int32 layer, Uint32 access, Uint32 format);
typedef TglBindImageTexture_Func = void Function(int unit, int texture,
    int level, int layered, int layer, int access, int format);
typedef TglMemoryBarrier_Native = Void Function(Uint32 barriers);
typedef TglMemoryBarrier_Func = void Function(int barriers);
typedef TglTexStorage1D_Native = Void Function(
    Uint32 target, Int32 levels, Uint32 internalformat, Int32 width);
typedef TglTexStorage1D_Func = void Function(
    int target, int levels, int internalformat, int width);
typedef TglTexStorage2D_Native = Void Function(Uint32 target, Int32 levels,
    Uint32 internalformat, Int32 width, Int32 height);
typedef TglTexStorage2D_Func = void Function(
    int target, int levels, int internalformat, int width, int height);
typedef TglTexStorage3D_Native = Void Function(Uint32 target, Int32 levels,
    Uint32 internalformat, Int32 width, Int32 height, Int32 depth);
typedef TglTexStorage3D_Func = void Function(int target, int levels,
    int internalformat, int width, int height, int depth);
typedef TglDrawTransformFeedbackInstanced_Native = Void Function(
    Uint32 mode, Uint32 id, Int32 instancecount);
typedef TglDrawTransformFeedbackInstanced_Func = void Function(
    int mode, int id, int instancecount);
typedef TglDrawTransformFeedbackStreamInstanced_Native = Void Function(
    Uint32 mode, Uint32 id, Uint32 stream, Int32 instancecount);
typedef TglDrawTransformFeedbackStreamInstanced_Func = void Function(
    int mode, int id, int stream, int instancecount);
typedef TglClearBufferData_Native = Void Function(Uint32 target,
    Uint32 internalformat, Uint32 format, Uint32 type, Pointer<Void> data);
typedef TglClearBufferData_Func = void Function(
    int target, int internalformat, int format, int type, Pointer<Void> data);
typedef TglClearBufferSubData_Native = Void Function(
    Uint32 target,
    Uint32 internalformat,
    Int64 offset,
    Int64 size,
    Uint32 format,
    Uint32 type,
    Pointer<Void> data);
typedef TglClearBufferSubData_Func = void Function(
    int target,
    int internalformat,
    int offset,
    int size,
    int format,
    int type,
    Pointer<Void> data);
typedef TglDispatchCompute_Native = Void Function(
    Uint32 num_groups_x, Uint32 num_groups_y, Uint32 num_groups_z);
typedef TglDispatchCompute_Func = void Function(
    int num_groups_x, int num_groups_y, int num_groups_z);
typedef TglDispatchComputeIndirect_Native = Void Function(Int64 indirect);
typedef TglDispatchComputeIndirect_Func = void Function(int indirect);
typedef TglCopyImageSubData_Native = Void Function(
    Uint32 srcName,
    Uint32 srcTarget,
    Int32 srcLevel,
    Int32 srcX,
    Int32 srcY,
    Int32 srcZ,
    Uint32 dstName,
    Uint32 dstTarget,
    Int32 dstLevel,
    Int32 dstX,
    Int32 dstY,
    Int32 dstZ,
    Int32 srcWidth,
    Int32 srcHeight,
    Int32 srcDepth);
typedef TglCopyImageSubData_Func = void Function(
    int srcName,
    int srcTarget,
    int srcLevel,
    int srcX,
    int srcY,
    int srcZ,
    int dstName,
    int dstTarget,
    int dstLevel,
    int dstX,
    int dstY,
    int dstZ,
    int srcWidth,
    int srcHeight,
    int srcDepth);
typedef TglFramebufferParameteri_Native = Void Function(
    Uint32 target, Uint32 pname, Int32 param);
typedef TglFramebufferParameteri_Func = void Function(
    int target, int pname, int param);
typedef TglGetFramebufferParameteriv_Native = Void Function(
    Uint32 target, Uint32 pname, Pointer<Int32> params);
typedef TglGetFramebufferParameteriv_Func = void Function(
    int target, int pname, Pointer<Int32> params);
typedef TglGetInternalformati64v_Native = Void Function(Uint32 target,
    Uint32 internalformat, Uint32 pname, Int32 bufSize, Pointer<Int64> params);
typedef TglGetInternalformati64v_Func = void Function(int target,
    int internalformat, int pname, int bufSize, Pointer<Int64> params);
typedef TglInvalidateTexSubImage_Native = Void Function(
    Uint32 texture,
    Int32 level,
    Int32 xoffset,
    Int32 yoffset,
    Int32 zoffset,
    Int32 width,
    Int32 height,
    Int32 depth);
typedef TglInvalidateTexSubImage_Func = void Function(int texture, int level,
    int xoffset, int yoffset, int zoffset, int width, int height, int depth);
typedef TglInvalidateTexImage_Native = Void Function(
    Uint32 texture, Int32 level);
typedef TglInvalidateTexImage_Func = void Function(int texture, int level);
typedef TglInvalidateBufferSubData_Native = Void Function(
    Uint32 buffer, Int64 offset, Int64 length);
typedef TglInvalidateBufferSubData_Func = void Function(
    int buffer, int offset, int length);
typedef TglInvalidateBufferData_Native = Void Function(Uint32 buffer);
typedef TglInvalidateBufferData_Func = void Function(int buffer);
typedef TglInvalidateFramebuffer_Native = Void Function(
    Uint32 target, Int32 numAttachments, Pointer<Uint32> attachments);
typedef TglInvalidateFramebuffer_Func = void Function(
    int target, int numAttachments, Pointer<Uint32> attachments);
typedef TglInvalidateSubFramebuffer_Native = Void Function(
    Uint32 target,
    Int32 numAttachments,
    Pointer<Uint32> attachments,
    Int32 x,
    Int32 y,
    Int32 width,
    Int32 height);
typedef TglInvalidateSubFramebuffer_Func = void Function(
    int target,
    int numAttachments,
    Pointer<Uint32> attachments,
    int x,
    int y,
    int width,
    int height);
typedef TglMultiDrawArraysIndirect_Native = Void Function(
    Uint32 mode, Pointer<Void> indirect, Int32 drawcount, Int32 stride);
typedef TglMultiDrawArraysIndirect_Func = void Function(
    int mode, Pointer<Void> indirect, int drawcount, int stride);
typedef TglMultiDrawElementsIndirect_Native = Void Function(Uint32 mode,
    Uint32 type, Pointer<Void> indirect, Int32 drawcount, Int32 stride);
typedef TglMultiDrawElementsIndirect_Func = void Function(
    int mode, int type, Pointer<Void> indirect, int drawcount, int stride);
typedef TglGetProgramInterfaceiv_Native = Void Function(Uint32 program,
    Uint32 programInterface, Uint32 pname, Pointer<Int32> params);
typedef TglGetProgramInterfaceiv_Func = void Function(
    int program, int programInterface, int pname, Pointer<Int32> params);
typedef TglGetProgramResourceIndex_Native = Uint32 Function(
    Uint32 program, Uint32 programInterface, Pointer<Utf8> name);
typedef TglGetProgramResourceIndex_Func = int Function(
    int program, int programInterface, Pointer<Utf8> name);
typedef TglGetProgramResourceName_Native = Void Function(
    Uint32 program,
    Uint32 programInterface,
    Uint32 index,
    Int32 bufSize,
    Pointer<Int32> length,
    Pointer<Utf8> name);
typedef TglGetProgramResourceName_Func = void Function(
    int program,
    int programInterface,
    int index,
    int bufSize,
    Pointer<Int32> length,
    Pointer<Utf8> name);
typedef TglGetProgramResourceiv_Native = Void Function(
    Uint32 program,
    Uint32 programInterface,
    Uint32 index,
    Int32 propCount,
    Pointer<Uint32> props,
    Int32 bufSize,
    Pointer<Int32> length,
    Pointer<Int32> params);
typedef TglGetProgramResourceiv_Func = void Function(
    int program,
    int programInterface,
    int index,
    int propCount,
    Pointer<Uint32> props,
    int bufSize,
    Pointer<Int32> length,
    Pointer<Int32> params);
typedef TglGetProgramResourceLocation_Native = Int32 Function(
    Uint32 program, Uint32 programInterface, Pointer<Utf8> name);
typedef TglGetProgramResourceLocation_Func = int Function(
    int program, int programInterface, Pointer<Utf8> name);
typedef TglGetProgramResourceLocationIndex_Native = Int32 Function(
    Uint32 program, Uint32 programInterface, Pointer<Utf8> name);
typedef TglGetProgramResourceLocationIndex_Func = int Function(
    int program, int programInterface, Pointer<Utf8> name);
typedef TglShaderStorageBlockBinding_Native = Void Function(
    Uint32 program, Uint32 storageBlockIndex, Uint32 storageBlockBinding);
typedef TglShaderStorageBlockBinding_Func = void Function(
    int program, int storageBlockIndex, int storageBlockBinding);
typedef TglTexBufferRange_Native = Void Function(Uint32 target,
    Uint32 internalformat, Uint32 buffer, Int64 offset, Int64 size);
typedef TglTexBufferRange_Func = void Function(
    int target, int internalformat, int buffer, int offset, int size);
typedef TglTexStorage2DMultisample_Native = Void Function(
    Uint32 target,
    Int32 samples,
    Uint32 internalformat,
    Int32 width,
    Int32 height,
    Uint8 fixedsamplelocations);
typedef TglTexStorage2DMultisample_Func = void Function(int target, int samples,
    int internalformat, int width, int height, int fixedsamplelocations);
typedef TglTexStorage3DMultisample_Native = Void Function(
    Uint32 target,
    Int32 samples,
    Uint32 internalformat,
    Int32 width,
    Int32 height,
    Int32 depth,
    Uint8 fixedsamplelocations);
typedef TglTexStorage3DMultisample_Func = void Function(
    int target,
    int samples,
    int internalformat,
    int width,
    int height,
    int depth,
    int fixedsamplelocations);
typedef TglTextureView_Native = Void Function(
    Uint32 texture,
    Uint32 target,
    Uint32 origtexture,
    Uint32 internalformat,
    Uint32 minlevel,
    Uint32 numlevels,
    Uint32 minlayer,
    Uint32 numlayers);
typedef TglTextureView_Func = void Function(
    int texture,
    int target,
    int origtexture,
    int internalformat,
    int minlevel,
    int numlevels,
    int minlayer,
    int numlayers);
typedef TglBindVertexBuffer_Native = Void Function(
    Uint32 bindingindex, Uint32 buffer, Int64 offset, Int32 stride);
typedef TglBindVertexBuffer_Func = void Function(
    int bindingindex, int buffer, int offset, int stride);
typedef TglVertexAttribFormat_Native = Void Function(Uint32 attribindex,
    Int32 size, Uint32 type, Uint8 normalized, Uint32 relativeoffset);
typedef TglVertexAttribFormat_Func = void Function(
    int attribindex, int size, int type, int normalized, int relativeoffset);
typedef TglVertexAttribIFormat_Native = Void Function(
    Uint32 attribindex, Int32 size, Uint32 type, Uint32 relativeoffset);
typedef TglVertexAttribIFormat_Func = void Function(
    int attribindex, int size, int type, int relativeoffset);
typedef TglVertexAttribLFormat_Native = Void Function(
    Uint32 attribindex, Int32 size, Uint32 type, Uint32 relativeoffset);
typedef TglVertexAttribLFormat_Func = void Function(
    int attribindex, int size, int type, int relativeoffset);
typedef TglVertexAttribBinding_Native = Void Function(
    Uint32 attribindex, Uint32 bindingindex);
typedef TglVertexAttribBinding_Func = void Function(
    int attribindex, int bindingindex);
typedef TglVertexBindingDivisor_Native = Void Function(
    Uint32 bindingindex, Uint32 divisor);
typedef TglVertexBindingDivisor_Func = void Function(
    int bindingindex, int divisor);
typedef TglDebugMessageControl_Native = Void Function(
    Uint32 source,
    Uint32 type,
    Uint32 severity,
    Int32 count,
    Pointer<Uint32> ids,
    Uint8 enabled);
typedef TglDebugMessageControl_Func = void Function(int source, int type,
    int severity, int count, Pointer<Uint32> ids, int enabled);
typedef TglDebugMessageInsert_Native = Void Function(Uint32 source, Uint32 type,
    Uint32 id, Uint32 severity, Int32 length, Pointer<Utf8> buf);
typedef TglDebugMessageInsert_Func = void Function(
    int source, int type, int id, int severity, int length, Pointer<Utf8> buf);
typedef TglDebugMessageCallback_Native = Void Function(
    Pointer<NativeFunction<GLDEBUGPROC>> callback, Pointer<Void> userParam);
typedef TglDebugMessageCallback_Func = void Function(
    Pointer<NativeFunction<GLDEBUGPROC>> callback, Pointer<Void> userParam);
typedef TglGetDebugMessageLog_Native = Uint32 Function(
    Uint32 count,
    Int32 bufSize,
    Pointer<Uint32> sources,
    Pointer<Uint32> types,
    Pointer<Uint32> ids,
    Pointer<Uint32> severities,
    Pointer<Int32> lengths,
    Pointer<Utf8> messageLog);
typedef TglGetDebugMessageLog_Func = int Function(
    int count,
    int bufSize,
    Pointer<Uint32> sources,
    Pointer<Uint32> types,
    Pointer<Uint32> ids,
    Pointer<Uint32> severities,
    Pointer<Int32> lengths,
    Pointer<Utf8> messageLog);
typedef TglPushDebugGroup_Native = Void Function(
    Uint32 source, Uint32 id, Int32 length, Pointer<Utf8> message);
typedef TglPushDebugGroup_Func = void Function(
    int source, int id, int length, Pointer<Utf8> message);
typedef TglPopDebugGroup_Native = Void Function();
typedef TglPopDebugGroup_Func = void Function();
typedef TglObjectLabel_Native = Void Function(
    Uint32 identifier, Uint32 name, Int32 length, Pointer<Utf8> label);
typedef TglObjectLabel_Func = void Function(
    int identifier, int name, int length, Pointer<Utf8> label);
typedef TglGetObjectLabel_Native = Void Function(Uint32 identifier, Uint32 name,
    Int32 bufSize, Pointer<Int32> length, Pointer<Utf8> label);
typedef TglGetObjectLabel_Func = void Function(int identifier, int name,
    int bufSize, Pointer<Int32> length, Pointer<Utf8> label);
typedef TglObjectPtrLabel_Native = Void Function(
    Pointer<Void> ptr, Int32 length, Pointer<Utf8> label);
typedef TglObjectPtrLabel_Func = void Function(
    Pointer<Void> ptr, int length, Pointer<Utf8> label);
typedef TglGetObjectPtrLabel_Native = Void Function(Pointer<Void> ptr,
    Int32 bufSize, Pointer<Int32> length, Pointer<Utf8> label);
typedef TglGetObjectPtrLabel_Func = void Function(
    Pointer<Void> ptr, int bufSize, Pointer<Int32> length, Pointer<Utf8> label);
typedef TglBufferStorage_Native = Void Function(
    Uint32 target, Int64 size, Pointer<Void> data, Uint32 flags);
typedef TglBufferStorage_Func = void Function(
    int target, int size, Pointer<Void> data, int flags);
typedef TglClearTexImage_Native = Void Function(Uint32 texture, Int32 level,
    Uint32 format, Uint32 type, Pointer<Void> data);
typedef TglClearTexImage_Func = void Function(
    int texture, int level, int format, int type, Pointer<Void> data);
typedef TglClearTexSubImage_Native = Void Function(
    Uint32 texture,
    Int32 level,
    Int32 xoffset,
    Int32 yoffset,
    Int32 zoffset,
    Int32 width,
    Int32 height,
    Int32 depth,
    Uint32 format,
    Uint32 type,
    Pointer<Void> data);
typedef TglClearTexSubImage_Func = void Function(
    int texture,
    int level,
    int xoffset,
    int yoffset,
    int zoffset,
    int width,
    int height,
    int depth,
    int format,
    int type,
    Pointer<Void> data);
typedef TglBindBuffersBase_Native = Void Function(
    Uint32 target, Uint32 first, Int32 count, Pointer<Uint32> buffers);
typedef TglBindBuffersBase_Func = void Function(
    int target, int first, int count, Pointer<Uint32> buffers);
typedef TglBindBuffersRange_Native = Void Function(
    Uint32 target,
    Uint32 first,
    Int32 count,
    Pointer<Uint32> buffers,
    Pointer<Int64> offsets,
    Pointer<Int64> sizes);
typedef TglBindBuffersRange_Func = void Function(
    int target,
    int first,
    int count,
    Pointer<Uint32> buffers,
    Pointer<Int64> offsets,
    Pointer<Int64> sizes);
typedef TglBindTextures_Native = Void Function(
    Uint32 first, Int32 count, Pointer<Uint32> textures);
typedef TglBindTextures_Func = void Function(
    int first, int count, Pointer<Uint32> textures);
typedef TglBindSamplers_Native = Void Function(
    Uint32 first, Int32 count, Pointer<Uint32> samplers);
typedef TglBindSamplers_Func = void Function(
    int first, int count, Pointer<Uint32> samplers);
typedef TglBindImageTextures_Native = Void Function(
    Uint32 first, Int32 count, Pointer<Uint32> textures);
typedef TglBindImageTextures_Func = void Function(
    int first, int count, Pointer<Uint32> textures);
typedef TglBindVertexBuffers_Native = Void Function(Uint32 first, Int32 count,
    Pointer<Uint32> buffers, Pointer<Int64> offsets, Pointer<Int32> strides);
typedef TglBindVertexBuffers_Func = void Function(int first, int count,
    Pointer<Uint32> buffers, Pointer<Int64> offsets, Pointer<Int32> strides);
typedef TglClipControl_Native = Void Function(Uint32 origin, Uint32 depth);
typedef TglClipControl_Func = void Function(int origin, int depth);
typedef TglCreateTransformFeedbacks_Native = Void Function(
    Int32 n, Pointer<Uint32> ids);
typedef TglCreateTransformFeedbacks_Func = void Function(
    int n, Pointer<Uint32> ids);
typedef TglTransformFeedbackBufferBase_Native = Void Function(
    Uint32 xfb, Uint32 index, Uint32 buffer);
typedef TglTransformFeedbackBufferBase_Func = void Function(
    int xfb, int index, int buffer);
typedef TglTransformFeedbackBufferRange_Native = Void Function(
    Uint32 xfb, Uint32 index, Uint32 buffer, Int64 offset, Int64 size);
typedef TglTransformFeedbackBufferRange_Func = void Function(
    int xfb, int index, int buffer, int offset, int size);
typedef TglGetTransformFeedbackiv_Native = Void Function(
    Uint32 xfb, Uint32 pname, Pointer<Int32> param);
typedef TglGetTransformFeedbackiv_Func = void Function(
    int xfb, int pname, Pointer<Int32> param);
typedef TglGetTransformFeedbacki_v_Native = Void Function(
    Uint32 xfb, Uint32 pname, Uint32 index, Pointer<Int32> param);
typedef TglGetTransformFeedbacki_v_Func = void Function(
    int xfb, int pname, int index, Pointer<Int32> param);
typedef TglGetTransformFeedbacki64_v_Native = Void Function(
    Uint32 xfb, Uint32 pname, Uint32 index, Pointer<Int64> param);
typedef TglGetTransformFeedbacki64_v_Func = void Function(
    int xfb, int pname, int index, Pointer<Int64> param);
typedef TglCreateBuffers_Native = Void Function(
    Int32 n, Pointer<Uint32> buffers);
typedef TglCreateBuffers_Func = void Function(int n, Pointer<Uint32> buffers);
typedef TglNamedBufferStorage_Native = Void Function(
    Uint32 buffer, Int64 size, Pointer<Void> data, Uint32 flags);
typedef TglNamedBufferStorage_Func = void Function(
    int buffer, int size, Pointer<Void> data, int flags);
typedef TglNamedBufferData_Native = Void Function(
    Uint32 buffer, Int64 size, Pointer<Void> data, Uint32 usage);
typedef TglNamedBufferData_Func = void Function(
    int buffer, int size, Pointer<Void> data, int usage);
typedef TglNamedBufferSubData_Native = Void Function(
    Uint32 buffer, Int64 offset, Int64 size, Pointer<Void> data);
typedef TglNamedBufferSubData_Func = void Function(
    int buffer, int offset, int size, Pointer<Void> data);
typedef TglCopyNamedBufferSubData_Native = Void Function(Uint32 readBuffer,
    Uint32 writeBuffer, Int64 readOffset, Int64 writeOffset, Int64 size);
typedef TglCopyNamedBufferSubData_Func = void Function(
    int readBuffer, int writeBuffer, int readOffset, int writeOffset, int size);
typedef TglClearNamedBufferData_Native = Void Function(Uint32 buffer,
    Uint32 internalformat, Uint32 format, Uint32 type, Pointer<Void> data);
typedef TglClearNamedBufferData_Func = void Function(
    int buffer, int internalformat, int format, int type, Pointer<Void> data);
typedef TglClearNamedBufferSubData_Native = Void Function(
    Uint32 buffer,
    Uint32 internalformat,
    Int64 offset,
    Int64 size,
    Uint32 format,
    Uint32 type,
    Pointer<Void> data);
typedef TglClearNamedBufferSubData_Func = void Function(
    int buffer,
    int internalformat,
    int offset,
    int size,
    int format,
    int type,
    Pointer<Void> data);
typedef TglMapNamedBuffer_Native = Pointer<Void> Function(
    Uint32 buffer, Uint32 access);
typedef TglMapNamedBuffer_Func = Pointer<Void> Function(int buffer, int access);
typedef TglMapNamedBufferRange_Native = Pointer<Void> Function(
    Uint32 buffer, Int64 offset, Int64 length, Uint32 access);
typedef TglMapNamedBufferRange_Func = Pointer<Void> Function(
    int buffer, int offset, int length, int access);
typedef TglUnmapNamedBuffer_Native = Uint8 Function(Uint32 buffer);
typedef TglUnmapNamedBuffer_Func = int Function(int buffer);
typedef TglFlushMappedNamedBufferRange_Native = Void Function(
    Uint32 buffer, Int64 offset, Int64 length);
typedef TglFlushMappedNamedBufferRange_Func = void Function(
    int buffer, int offset, int length);
typedef TglGetNamedBufferParameteriv_Native = Void Function(
    Uint32 buffer, Uint32 pname, Pointer<Int32> params);
typedef TglGetNamedBufferParameteriv_Func = void Function(
    int buffer, int pname, Pointer<Int32> params);
typedef TglGetNamedBufferParameteri64v_Native = Void Function(
    Uint32 buffer, Uint32 pname, Pointer<Int64> params);
typedef TglGetNamedBufferParameteri64v_Func = void Function(
    int buffer, int pname, Pointer<Int64> params);
typedef TglGetNamedBufferPointerv_Native = Void Function(
    Uint32 buffer, Uint32 pname, Pointer<Pointer<Void>> params);
typedef TglGetNamedBufferPointerv_Func = void Function(
    int buffer, int pname, Pointer<Pointer<Void>> params);
typedef TglGetNamedBufferSubData_Native = Void Function(
    Uint32 buffer, Int64 offset, Int64 size, Pointer<Void> data);
typedef TglGetNamedBufferSubData_Func = void Function(
    int buffer, int offset, int size, Pointer<Void> data);
typedef TglCreateFramebuffers_Native = Void Function(
    Int32 n, Pointer<Uint32> framebuffers);
typedef TglCreateFramebuffers_Func = void Function(
    int n, Pointer<Uint32> framebuffers);
typedef TglNamedFramebufferRenderbuffer_Native = Void Function(
    Uint32 framebuffer,
    Uint32 attachment,
    Uint32 renderbuffertarget,
    Uint32 renderbuffer);
typedef TglNamedFramebufferRenderbuffer_Func = void Function(
    int framebuffer, int attachment, int renderbuffertarget, int renderbuffer);
typedef TglNamedFramebufferParameteri_Native = Void Function(
    Uint32 framebuffer, Uint32 pname, Int32 param);
typedef TglNamedFramebufferParameteri_Func = void Function(
    int framebuffer, int pname, int param);
typedef TglNamedFramebufferTexture_Native = Void Function(
    Uint32 framebuffer, Uint32 attachment, Uint32 texture, Int32 level);
typedef TglNamedFramebufferTexture_Func = void Function(
    int framebuffer, int attachment, int texture, int level);
typedef TglNamedFramebufferTextureLayer_Native = Void Function(
    Uint32 framebuffer,
    Uint32 attachment,
    Uint32 texture,
    Int32 level,
    Int32 layer);
typedef TglNamedFramebufferTextureLayer_Func = void Function(
    int framebuffer, int attachment, int texture, int level, int layer);
typedef TglNamedFramebufferDrawBuffer_Native = Void Function(
    Uint32 framebuffer, Uint32 buf);
typedef TglNamedFramebufferDrawBuffer_Func = void Function(
    int framebuffer, int buf);
typedef TglNamedFramebufferDrawBuffers_Native = Void Function(
    Uint32 framebuffer, Int32 n, Pointer<Uint32> bufs);
typedef TglNamedFramebufferDrawBuffers_Func = void Function(
    int framebuffer, int n, Pointer<Uint32> bufs);
typedef TglNamedFramebufferReadBuffer_Native = Void Function(
    Uint32 framebuffer, Uint32 src);
typedef TglNamedFramebufferReadBuffer_Func = void Function(
    int framebuffer, int src);
typedef TglInvalidateNamedFramebufferData_Native = Void Function(
    Uint32 framebuffer, Int32 numAttachments, Pointer<Uint32> attachments);
typedef TglInvalidateNamedFramebufferData_Func = void Function(
    int framebuffer, int numAttachments, Pointer<Uint32> attachments);
typedef TglInvalidateNamedFramebufferSubData_Native = Void Function(
    Uint32 framebuffer,
    Int32 numAttachments,
    Pointer<Uint32> attachments,
    Int32 x,
    Int32 y,
    Int32 width,
    Int32 height);
typedef TglInvalidateNamedFramebufferSubData_Func = void Function(
    int framebuffer,
    int numAttachments,
    Pointer<Uint32> attachments,
    int x,
    int y,
    int width,
    int height);
typedef TglClearNamedFramebufferiv_Native = Void Function(
    Uint32 framebuffer, Uint32 buffer, Int32 drawbuffer, Pointer<Int32> value);
typedef TglClearNamedFramebufferiv_Func = void Function(
    int framebuffer, int buffer, int drawbuffer, Pointer<Int32> value);
typedef TglClearNamedFramebufferuiv_Native = Void Function(
    Uint32 framebuffer, Uint32 buffer, Int32 drawbuffer, Pointer<Uint32> value);
typedef TglClearNamedFramebufferuiv_Func = void Function(
    int framebuffer, int buffer, int drawbuffer, Pointer<Uint32> value);
typedef TglClearNamedFramebufferfv_Native = Void Function(
    Uint32 framebuffer, Uint32 buffer, Int32 drawbuffer, Pointer<Float> value);
typedef TglClearNamedFramebufferfv_Func = void Function(
    int framebuffer, int buffer, int drawbuffer, Pointer<Float> value);
typedef TglClearNamedFramebufferfi_Native = Void Function(Uint32 framebuffer,
    Uint32 buffer, Int32 drawbuffer, Float depth, Int32 stencil);
typedef TglClearNamedFramebufferfi_Func = void Function(
    int framebuffer, int buffer, int drawbuffer, double depth, int stencil);
typedef TglBlitNamedFramebuffer_Native = Void Function(
    Uint32 readFramebuffer,
    Uint32 drawFramebuffer,
    Int32 srcX0,
    Int32 srcY0,
    Int32 srcX1,
    Int32 srcY1,
    Int32 dstX0,
    Int32 dstY0,
    Int32 dstX1,
    Int32 dstY1,
    Uint32 mask,
    Uint32 filter);
typedef TglBlitNamedFramebuffer_Func = void Function(
    int readFramebuffer,
    int drawFramebuffer,
    int srcX0,
    int srcY0,
    int srcX1,
    int srcY1,
    int dstX0,
    int dstY0,
    int dstX1,
    int dstY1,
    int mask,
    int filter);
typedef TglCheckNamedFramebufferStatus_Native = Uint32 Function(
    Uint32 framebuffer, Uint32 target);
typedef TglCheckNamedFramebufferStatus_Func = int Function(
    int framebuffer, int target);
typedef TglGetNamedFramebufferParameteriv_Native = Void Function(
    Uint32 framebuffer, Uint32 pname, Pointer<Int32> param);
typedef TglGetNamedFramebufferParameteriv_Func = void Function(
    int framebuffer, int pname, Pointer<Int32> param);
typedef TglGetNamedFramebufferAttachmentParameteriv_Native = Void Function(
    Uint32 framebuffer, Uint32 attachment, Uint32 pname, Pointer<Int32> params);
typedef TglGetNamedFramebufferAttachmentParameteriv_Func = void Function(
    int framebuffer, int attachment, int pname, Pointer<Int32> params);
typedef TglCreateRenderbuffers_Native = Void Function(
    Int32 n, Pointer<Uint32> renderbuffers);
typedef TglCreateRenderbuffers_Func = void Function(
    int n, Pointer<Uint32> renderbuffers);
typedef TglNamedRenderbufferStorage_Native = Void Function(
    Uint32 renderbuffer, Uint32 internalformat, Int32 width, Int32 height);
typedef TglNamedRenderbufferStorage_Func = void Function(
    int renderbuffer, int internalformat, int width, int height);
typedef TglNamedRenderbufferStorageMultisample_Native = Void Function(
    Uint32 renderbuffer,
    Int32 samples,
    Uint32 internalformat,
    Int32 width,
    Int32 height);
typedef TglNamedRenderbufferStorageMultisample_Func = void Function(
    int renderbuffer, int samples, int internalformat, int width, int height);
typedef TglGetNamedRenderbufferParameteriv_Native = Void Function(
    Uint32 renderbuffer, Uint32 pname, Pointer<Int32> params);
typedef TglGetNamedRenderbufferParameteriv_Func = void Function(
    int renderbuffer, int pname, Pointer<Int32> params);
typedef TglCreateTextures_Native = Void Function(
    Uint32 target, Int32 n, Pointer<Uint32> textures);
typedef TglCreateTextures_Func = void Function(
    int target, int n, Pointer<Uint32> textures);
typedef TglTextureBuffer_Native = Void Function(
    Uint32 texture, Uint32 internalformat, Uint32 buffer);
typedef TglTextureBuffer_Func = void Function(
    int texture, int internalformat, int buffer);
typedef TglTextureBufferRange_Native = Void Function(Uint32 texture,
    Uint32 internalformat, Uint32 buffer, Int64 offset, Int64 size);
typedef TglTextureBufferRange_Func = void Function(
    int texture, int internalformat, int buffer, int offset, int size);
typedef TglTextureStorage1D_Native = Void Function(
    Uint32 texture, Int32 levels, Uint32 internalformat, Int32 width);
typedef TglTextureStorage1D_Func = void Function(
    int texture, int levels, int internalformat, int width);
typedef TglTextureStorage2D_Native = Void Function(Uint32 texture, Int32 levels,
    Uint32 internalformat, Int32 width, Int32 height);
typedef TglTextureStorage2D_Func = void Function(
    int texture, int levels, int internalformat, int width, int height);
typedef TglTextureStorage3D_Native = Void Function(Uint32 texture, Int32 levels,
    Uint32 internalformat, Int32 width, Int32 height, Int32 depth);
typedef TglTextureStorage3D_Func = void Function(int texture, int levels,
    int internalformat, int width, int height, int depth);
typedef TglTextureStorage2DMultisample_Native = Void Function(
    Uint32 texture,
    Int32 samples,
    Uint32 internalformat,
    Int32 width,
    Int32 height,
    Uint8 fixedsamplelocations);
typedef TglTextureStorage2DMultisample_Func = void Function(
    int texture,
    int samples,
    int internalformat,
    int width,
    int height,
    int fixedsamplelocations);
typedef TglTextureStorage3DMultisample_Native = Void Function(
    Uint32 texture,
    Int32 samples,
    Uint32 internalformat,
    Int32 width,
    Int32 height,
    Int32 depth,
    Uint8 fixedsamplelocations);
typedef TglTextureStorage3DMultisample_Func = void Function(
    int texture,
    int samples,
    int internalformat,
    int width,
    int height,
    int depth,
    int fixedsamplelocations);
typedef TglTextureSubImage1D_Native = Void Function(
    Uint32 texture,
    Int32 level,
    Int32 xoffset,
    Int32 width,
    Uint32 format,
    Uint32 type,
    Pointer<Void> pixels);
typedef TglTextureSubImage1D_Func = void Function(int texture, int level,
    int xoffset, int width, int format, int type, Pointer<Void> pixels);
typedef TglTextureSubImage2D_Native = Void Function(
    Uint32 texture,
    Int32 level,
    Int32 xoffset,
    Int32 yoffset,
    Int32 width,
    Int32 height,
    Uint32 format,
    Uint32 type,
    Pointer<Void> pixels);
typedef TglTextureSubImage2D_Func = void Function(
    int texture,
    int level,
    int xoffset,
    int yoffset,
    int width,
    int height,
    int format,
    int type,
    Pointer<Void> pixels);
typedef TglTextureSubImage3D_Native = Void Function(
    Uint32 texture,
    Int32 level,
    Int32 xoffset,
    Int32 yoffset,
    Int32 zoffset,
    Int32 width,
    Int32 height,
    Int32 depth,
    Uint32 format,
    Uint32 type,
    Pointer<Void> pixels);
typedef TglTextureSubImage3D_Func = void Function(
    int texture,
    int level,
    int xoffset,
    int yoffset,
    int zoffset,
    int width,
    int height,
    int depth,
    int format,
    int type,
    Pointer<Void> pixels);
typedef TglCompressedTextureSubImage1D_Native = Void Function(
    Uint32 texture,
    Int32 level,
    Int32 xoffset,
    Int32 width,
    Uint32 format,
    Int32 imageSize,
    Pointer<Void> data);
typedef TglCompressedTextureSubImage1D_Func = void Function(
    int texture,
    int level,
    int xoffset,
    int width,
    int format,
    int imageSize,
    Pointer<Void> data);
typedef TglCompressedTextureSubImage2D_Native = Void Function(
    Uint32 texture,
    Int32 level,
    Int32 xoffset,
    Int32 yoffset,
    Int32 width,
    Int32 height,
    Uint32 format,
    Int32 imageSize,
    Pointer<Void> data);
typedef TglCompressedTextureSubImage2D_Func = void Function(
    int texture,
    int level,
    int xoffset,
    int yoffset,
    int width,
    int height,
    int format,
    int imageSize,
    Pointer<Void> data);
typedef TglCompressedTextureSubImage3D_Native = Void Function(
    Uint32 texture,
    Int32 level,
    Int32 xoffset,
    Int32 yoffset,
    Int32 zoffset,
    Int32 width,
    Int32 height,
    Int32 depth,
    Uint32 format,
    Int32 imageSize,
    Pointer<Void> data);
typedef TglCompressedTextureSubImage3D_Func = void Function(
    int texture,
    int level,
    int xoffset,
    int yoffset,
    int zoffset,
    int width,
    int height,
    int depth,
    int format,
    int imageSize,
    Pointer<Void> data);
typedef TglCopyTextureSubImage1D_Native = Void Function(
    Uint32 texture, Int32 level, Int32 xoffset, Int32 x, Int32 y, Int32 width);
typedef TglCopyTextureSubImage1D_Func = void Function(
    int texture, int level, int xoffset, int x, int y, int width);
typedef TglCopyTextureSubImage2D_Native = Void Function(
    Uint32 texture,
    Int32 level,
    Int32 xoffset,
    Int32 yoffset,
    Int32 x,
    Int32 y,
    Int32 width,
    Int32 height);
typedef TglCopyTextureSubImage2D_Func = void Function(int texture, int level,
    int xoffset, int yoffset, int x, int y, int width, int height);
typedef TglCopyTextureSubImage3D_Native = Void Function(
    Uint32 texture,
    Int32 level,
    Int32 xoffset,
    Int32 yoffset,
    Int32 zoffset,
    Int32 x,
    Int32 y,
    Int32 width,
    Int32 height);
typedef TglCopyTextureSubImage3D_Func = void Function(int texture, int level,
    int xoffset, int yoffset, int zoffset, int x, int y, int width, int height);
typedef TglTextureParameterf_Native = Void Function(
    Uint32 texture, Uint32 pname, Float param);
typedef TglTextureParameterf_Func = void Function(
    int texture, int pname, double param);
typedef TglTextureParameterfv_Native = Void Function(
    Uint32 texture, Uint32 pname, Pointer<Float> param);
typedef TglTextureParameterfv_Func = void Function(
    int texture, int pname, Pointer<Float> param);
typedef TglTextureParameteri_Native = Void Function(
    Uint32 texture, Uint32 pname, Int32 param);
typedef TglTextureParameteri_Func = void Function(
    int texture, int pname, int param);
typedef TglTextureParameterIiv_Native = Void Function(
    Uint32 texture, Uint32 pname, Pointer<Int32> params);
typedef TglTextureParameterIiv_Func = void Function(
    int texture, int pname, Pointer<Int32> params);
typedef TglTextureParameterIuiv_Native = Void Function(
    Uint32 texture, Uint32 pname, Pointer<Uint32> params);
typedef TglTextureParameterIuiv_Func = void Function(
    int texture, int pname, Pointer<Uint32> params);
typedef TglTextureParameteriv_Native = Void Function(
    Uint32 texture, Uint32 pname, Pointer<Int32> param);
typedef TglTextureParameteriv_Func = void Function(
    int texture, int pname, Pointer<Int32> param);
typedef TglGenerateTextureMipmap_Native = Void Function(Uint32 texture);
typedef TglGenerateTextureMipmap_Func = void Function(int texture);
typedef TglBindTextureUnit_Native = Void Function(Uint32 unit, Uint32 texture);
typedef TglBindTextureUnit_Func = void Function(int unit, int texture);
typedef TglGetTextureImage_Native = Void Function(Uint32 texture, Int32 level,
    Uint32 format, Uint32 type, Int32 bufSize, Pointer<Void> pixels);
typedef TglGetTextureImage_Func = void Function(int texture, int level,
    int format, int type, int bufSize, Pointer<Void> pixels);
typedef TglGetCompressedTextureImage_Native = Void Function(
    Uint32 texture, Int32 level, Int32 bufSize, Pointer<Void> pixels);
typedef TglGetCompressedTextureImage_Func = void Function(
    int texture, int level, int bufSize, Pointer<Void> pixels);
typedef TglGetTextureLevelParameterfv_Native = Void Function(
    Uint32 texture, Int32 level, Uint32 pname, Pointer<Float> params);
typedef TglGetTextureLevelParameterfv_Func = void Function(
    int texture, int level, int pname, Pointer<Float> params);
typedef TglGetTextureLevelParameteriv_Native = Void Function(
    Uint32 texture, Int32 level, Uint32 pname, Pointer<Int32> params);
typedef TglGetTextureLevelParameteriv_Func = void Function(
    int texture, int level, int pname, Pointer<Int32> params);
typedef TglGetTextureParameterfv_Native = Void Function(
    Uint32 texture, Uint32 pname, Pointer<Float> params);
typedef TglGetTextureParameterfv_Func = void Function(
    int texture, int pname, Pointer<Float> params);
typedef TglGetTextureParameterIiv_Native = Void Function(
    Uint32 texture, Uint32 pname, Pointer<Int32> params);
typedef TglGetTextureParameterIiv_Func = void Function(
    int texture, int pname, Pointer<Int32> params);
typedef TglGetTextureParameterIuiv_Native = Void Function(
    Uint32 texture, Uint32 pname, Pointer<Uint32> params);
typedef TglGetTextureParameterIuiv_Func = void Function(
    int texture, int pname, Pointer<Uint32> params);
typedef TglGetTextureParameteriv_Native = Void Function(
    Uint32 texture, Uint32 pname, Pointer<Int32> params);
typedef TglGetTextureParameteriv_Func = void Function(
    int texture, int pname, Pointer<Int32> params);
typedef TglCreateVertexArrays_Native = Void Function(
    Int32 n, Pointer<Uint32> arrays);
typedef TglCreateVertexArrays_Func = void Function(
    int n, Pointer<Uint32> arrays);
typedef TglDisableVertexArrayAttrib_Native = Void Function(
    Uint32 vaobj, Uint32 index);
typedef TglDisableVertexArrayAttrib_Func = void Function(int vaobj, int index);
typedef TglEnableVertexArrayAttrib_Native = Void Function(
    Uint32 vaobj, Uint32 index);
typedef TglEnableVertexArrayAttrib_Func = void Function(int vaobj, int index);
typedef TglVertexArrayElementBuffer_Native = Void Function(
    Uint32 vaobj, Uint32 buffer);
typedef TglVertexArrayElementBuffer_Func = void Function(int vaobj, int buffer);
typedef TglVertexArrayVertexBuffer_Native = Void Function(Uint32 vaobj,
    Uint32 bindingindex, Uint32 buffer, Int64 offset, Int32 stride);
typedef TglVertexArrayVertexBuffer_Func = void Function(
    int vaobj, int bindingindex, int buffer, int offset, int stride);
typedef TglVertexArrayVertexBuffers_Native = Void Function(
    Uint32 vaobj,
    Uint32 first,
    Int32 count,
    Pointer<Uint32> buffers,
    Pointer<Int64> offsets,
    Pointer<Int32> strides);
typedef TglVertexArrayVertexBuffers_Func = void Function(
    int vaobj,
    int first,
    int count,
    Pointer<Uint32> buffers,
    Pointer<Int64> offsets,
    Pointer<Int32> strides);
typedef TglVertexArrayAttribBinding_Native = Void Function(
    Uint32 vaobj, Uint32 attribindex, Uint32 bindingindex);
typedef TglVertexArrayAttribBinding_Func = void Function(
    int vaobj, int attribindex, int bindingindex);
typedef TglVertexArrayAttribFormat_Native = Void Function(
    Uint32 vaobj,
    Uint32 attribindex,
    Int32 size,
    Uint32 type,
    Uint8 normalized,
    Uint32 relativeoffset);
typedef TglVertexArrayAttribFormat_Func = void Function(int vaobj,
    int attribindex, int size, int type, int normalized, int relativeoffset);
typedef TglVertexArrayAttribIFormat_Native = Void Function(Uint32 vaobj,
    Uint32 attribindex, Int32 size, Uint32 type, Uint32 relativeoffset);
typedef TglVertexArrayAttribIFormat_Func = void Function(
    int vaobj, int attribindex, int size, int type, int relativeoffset);
typedef TglVertexArrayAttribLFormat_Native = Void Function(Uint32 vaobj,
    Uint32 attribindex, Int32 size, Uint32 type, Uint32 relativeoffset);
typedef TglVertexArrayAttribLFormat_Func = void Function(
    int vaobj, int attribindex, int size, int type, int relativeoffset);
typedef TglVertexArrayBindingDivisor_Native = Void Function(
    Uint32 vaobj, Uint32 bindingindex, Uint32 divisor);
typedef TglVertexArrayBindingDivisor_Func = void Function(
    int vaobj, int bindingindex, int divisor);
typedef TglGetVertexArrayiv_Native = Void Function(
    Uint32 vaobj, Uint32 pname, Pointer<Int32> param);
typedef TglGetVertexArrayiv_Func = void Function(
    int vaobj, int pname, Pointer<Int32> param);
typedef TglGetVertexArrayIndexediv_Native = Void Function(
    Uint32 vaobj, Uint32 index, Uint32 pname, Pointer<Int32> param);
typedef TglGetVertexArrayIndexediv_Func = void Function(
    int vaobj, int index, int pname, Pointer<Int32> param);
typedef TglGetVertexArrayIndexed64iv_Native = Void Function(
    Uint32 vaobj, Uint32 index, Uint32 pname, Pointer<Int64> param);
typedef TglGetVertexArrayIndexed64iv_Func = void Function(
    int vaobj, int index, int pname, Pointer<Int64> param);
typedef TglCreateSamplers_Native = Void Function(
    Int32 n, Pointer<Uint32> samplers);
typedef TglCreateSamplers_Func = void Function(int n, Pointer<Uint32> samplers);
typedef TglCreateProgramPipelines_Native = Void Function(
    Int32 n, Pointer<Uint32> pipelines);
typedef TglCreateProgramPipelines_Func = void Function(
    int n, Pointer<Uint32> pipelines);
typedef TglCreateQueries_Native = Void Function(
    Uint32 target, Int32 n, Pointer<Uint32> ids);
typedef TglCreateQueries_Func = void Function(
    int target, int n, Pointer<Uint32> ids);
typedef TglGetQueryBufferObjecti64v_Native = Void Function(
    Uint32 id, Uint32 buffer, Uint32 pname, Int64 offset);
typedef TglGetQueryBufferObjecti64v_Func = void Function(
    int id, int buffer, int pname, int offset);
typedef TglGetQueryBufferObjectiv_Native = Void Function(
    Uint32 id, Uint32 buffer, Uint32 pname, Int64 offset);
typedef TglGetQueryBufferObjectiv_Func = void Function(
    int id, int buffer, int pname, int offset);
typedef TglGetQueryBufferObjectui64v_Native = Void Function(
    Uint32 id, Uint32 buffer, Uint32 pname, Int64 offset);
typedef TglGetQueryBufferObjectui64v_Func = void Function(
    int id, int buffer, int pname, int offset);
typedef TglGetQueryBufferObjectuiv_Native = Void Function(
    Uint32 id, Uint32 buffer, Uint32 pname, Int64 offset);
typedef TglGetQueryBufferObjectuiv_Func = void Function(
    int id, int buffer, int pname, int offset);
typedef TglMemoryBarrierByRegion_Native = Void Function(Uint32 barriers);
typedef TglMemoryBarrierByRegion_Func = void Function(int barriers);
typedef TglGetTextureSubImage_Native = Void Function(
    Uint32 texture,
    Int32 level,
    Int32 xoffset,
    Int32 yoffset,
    Int32 zoffset,
    Int32 width,
    Int32 height,
    Int32 depth,
    Uint32 format,
    Uint32 type,
    Int32 bufSize,
    Pointer<Void> pixels);
typedef TglGetTextureSubImage_Func = void Function(
    int texture,
    int level,
    int xoffset,
    int yoffset,
    int zoffset,
    int width,
    int height,
    int depth,
    int format,
    int type,
    int bufSize,
    Pointer<Void> pixels);
typedef TglGetCompressedTextureSubImage_Native = Void Function(
    Uint32 texture,
    Int32 level,
    Int32 xoffset,
    Int32 yoffset,
    Int32 zoffset,
    Int32 width,
    Int32 height,
    Int32 depth,
    Int32 bufSize,
    Pointer<Void> pixels);
typedef TglGetCompressedTextureSubImage_Func = void Function(
    int texture,
    int level,
    int xoffset,
    int yoffset,
    int zoffset,
    int width,
    int height,
    int depth,
    int bufSize,
    Pointer<Void> pixels);
typedef TglGetGraphicsResetStatus_Native = Uint32 Function();
typedef TglGetGraphicsResetStatus_Func = int Function();
typedef TglGetnCompressedTexImage_Native = Void Function(
    Uint32 target, Int32 lod, Int32 bufSize, Pointer<Void> pixels);
typedef TglGetnCompressedTexImage_Func = void Function(
    int target, int lod, int bufSize, Pointer<Void> pixels);
typedef TglGetnTexImage_Native = Void Function(Uint32 target, Int32 level,
    Uint32 format, Uint32 type, Int32 bufSize, Pointer<Void> pixels);
typedef TglGetnTexImage_Func = void Function(int target, int level, int format,
    int type, int bufSize, Pointer<Void> pixels);
typedef TglGetnUniformdv_Native = Void Function(
    Uint32 program, Int32 location, Int32 bufSize, Pointer<Double> params);
typedef TglGetnUniformdv_Func = void Function(
    int program, int location, int bufSize, Pointer<Double> params);
typedef TglGetnUniformfv_Native = Void Function(
    Uint32 program, Int32 location, Int32 bufSize, Pointer<Float> params);
typedef TglGetnUniformfv_Func = void Function(
    int program, int location, int bufSize, Pointer<Float> params);
typedef TglGetnUniformiv_Native = Void Function(
    Uint32 program, Int32 location, Int32 bufSize, Pointer<Int32> params);
typedef TglGetnUniformiv_Func = void Function(
    int program, int location, int bufSize, Pointer<Int32> params);
typedef TglGetnUniformuiv_Native = Void Function(
    Uint32 program, Int32 location, Int32 bufSize, Pointer<Uint32> params);
typedef TglGetnUniformuiv_Func = void Function(
    int program, int location, int bufSize, Pointer<Uint32> params);
typedef TglReadnPixels_Native = Void Function(
    Int32 x,
    Int32 y,
    Int32 width,
    Int32 height,
    Uint32 format,
    Uint32 type,
    Int32 bufSize,
    Pointer<Void> data);
typedef TglReadnPixels_Func = void Function(int x, int y, int width, int height,
    int format, int type, int bufSize, Pointer<Void> data);
typedef TglGetnMapdv_Native = Void Function(
    Uint32 target, Uint32 query, Int32 bufSize, Pointer<Double> v);
typedef TglGetnMapdv_Func = void Function(
    int target, int query, int bufSize, Pointer<Double> v);
typedef TglGetnMapfv_Native = Void Function(
    Uint32 target, Uint32 query, Int32 bufSize, Pointer<Float> v);
typedef TglGetnMapfv_Func = void Function(
    int target, int query, int bufSize, Pointer<Float> v);
typedef TglGetnMapiv_Native = Void Function(
    Uint32 target, Uint32 query, Int32 bufSize, Pointer<Int32> v);
typedef TglGetnMapiv_Func = void Function(
    int target, int query, int bufSize, Pointer<Int32> v);
typedef TglGetnPixelMapfv_Native = Void Function(
    Uint32 map, Int32 bufSize, Pointer<Float> values);
typedef TglGetnPixelMapfv_Func = void Function(
    int map, int bufSize, Pointer<Float> values);
typedef TglGetnPixelMapuiv_Native = Void Function(
    Uint32 map, Int32 bufSize, Pointer<Uint32> values);
typedef TglGetnPixelMapuiv_Func = void Function(
    int map, int bufSize, Pointer<Uint32> values);
typedef TglGetnPixelMapusv_Native = Void Function(
    Uint32 map, Int32 bufSize, Pointer<Uint16> values);
typedef TglGetnPixelMapusv_Func = void Function(
    int map, int bufSize, Pointer<Uint16> values);
typedef TglGetnPolygonStipple_Native = Void Function(
    Int32 bufSize, Pointer<Uint8> pattern);
typedef TglGetnPolygonStipple_Func = void Function(
    int bufSize, Pointer<Uint8> pattern);
typedef TglGetnColorTable_Native = Void Function(Uint32 target, Uint32 format,
    Uint32 type, Int32 bufSize, Pointer<Void> table);
typedef TglGetnColorTable_Func = void Function(
    int target, int format, int type, int bufSize, Pointer<Void> table);
typedef TglGetnConvolutionFilter_Native = Void Function(Uint32 target,
    Uint32 format, Uint32 type, Int32 bufSize, Pointer<Void> image);
typedef TglGetnConvolutionFilter_Func = void Function(
    int target, int format, int type, int bufSize, Pointer<Void> image);
typedef TglGetnSeparableFilter_Native = Void Function(
    Uint32 target,
    Uint32 format,
    Uint32 type,
    Int32 rowBufSize,
    Pointer<Void> row,
    Int32 columnBufSize,
    Pointer<Void> column,
    Pointer<Void> span);
typedef TglGetnSeparableFilter_Func = void Function(
    int target,
    int format,
    int type,
    int rowBufSize,
    Pointer<Void> row,
    int columnBufSize,
    Pointer<Void> column,
    Pointer<Void> span);
typedef TglGetnHistogram_Native = Void Function(Uint32 target, Uint8 reset,
    Uint32 format, Uint32 type, Int32 bufSize, Pointer<Void> values);
typedef TglGetnHistogram_Func = void Function(int target, int reset, int format,
    int type, int bufSize, Pointer<Void> values);
typedef TglGetnMinmax_Native = Void Function(Uint32 target, Uint8 reset,
    Uint32 format, Uint32 type, Int32 bufSize, Pointer<Void> values);
typedef TglGetnMinmax_Func = void Function(int target, int reset, int format,
    int type, int bufSize, Pointer<Void> values);
typedef TglTextureBarrier_Native = Void Function();
typedef TglTextureBarrier_Func = void Function();
typedef TglSpecializeShader_Native = Void Function(
    Uint32 shader,
    Pointer<Utf8> pEntryPoint,
    Uint32 numSpecializationConstants,
    Pointer<Uint32> pConstantIndex,
    Pointer<Uint32> pConstantValue);
typedef TglSpecializeShader_Func = void Function(
    int shader,
    Pointer<Utf8> pEntryPoint,
    int numSpecializationConstants,
    Pointer<Uint32> pConstantIndex,
    Pointer<Uint32> pConstantValue);
typedef TglMultiDrawArraysIndirectCount_Native = Void Function(Uint32 mode,
    Pointer<Void> indirect, Int64 drawcount, Int32 maxdrawcount, Int32 stride);
typedef TglMultiDrawArraysIndirectCount_Func = void Function(int mode,
    Pointer<Void> indirect, int drawcount, int maxdrawcount, int stride);
typedef TglMultiDrawElementsIndirectCount_Native = Void Function(
    Uint32 mode,
    Uint32 type,
    Pointer<Void> indirect,
    Int64 drawcount,
    Int32 maxdrawcount,
    Int32 stride);
typedef TglMultiDrawElementsIndirectCount_Func = void Function(
    int mode,
    int type,
    Pointer<Void> indirect,
    int drawcount,
    int maxdrawcount,
    int stride);
typedef TglPolygonOffsetClamp_Native = Void Function(
    Float factor, Float units, Float clamp);
typedef TglPolygonOffsetClamp_Func = void Function(
    double factor, double units, double clamp);
