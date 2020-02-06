import "dart:ffi";
import "package:ffi/ffi.dart";
import "glext_structures.dart";

typedef PFNGLBLENDFUNCSEPARATEPROC = Void Function(Uint32 sfactorRGB,
    Uint32 dfactorRGB, Uint32 sfactorAlpha, Uint32 dfactorAlpha);
typedef PFNGLMULTIDRAWARRAYSPROC = Void Function(
    Uint32 mode, Pointer<Int32> first, Pointer<Int32> count, Int32 drawcount);
typedef PFNGLMULTIDRAWELEMENTSPROC = Void Function(
    Uint32 mode,
    Pointer<Int32> count,
    Uint32 type,
    Pointer<Pointer<Void>> indices,
    Int32 drawcount);
typedef PFNGLPOINTPARAMETERFPROC = Void Function(Uint32 pname, Float param);
typedef PFNGLPOINTPARAMETERFVPROC = Void Function(
    Uint32 pname, Pointer<Float> params);
typedef PFNGLPOINTPARAMETERIPROC = Void Function(Uint32 pname, Int32 param);
typedef PFNGLPOINTPARAMETERIVPROC = Void Function(
    Uint32 pname, Pointer<Int32> params);
typedef PFNGLFOGCOORDFPROC = Void Function(Float coord);
typedef PFNGLFOGCOORDFVPROC = Void Function(Pointer<Float> coord);
typedef PFNGLFOGCOORDDPROC = Void Function(Double coord);
typedef PFNGLFOGCOORDDVPROC = Void Function(Pointer<Double> coord);
typedef PFNGLFOGCOORDPOINTERPROC = Void Function(
    Uint32 type, Int32 stride, Pointer<Void> pointer);
typedef PFNGLSECONDARYCOLOR3BPROC = Void Function(
    Uint8 red, Uint8 green, Uint8 blue);
typedef PFNGLSECONDARYCOLOR3BVPROC = Void Function(Pointer<Uint8> v);
typedef PFNGLSECONDARYCOLOR3DPROC = Void Function(
    Double red, Double green, Double blue);
typedef PFNGLSECONDARYCOLOR3DVPROC = Void Function(Pointer<Double> v);
typedef PFNGLSECONDARYCOLOR3FPROC = Void Function(
    Float red, Float green, Float blue);
typedef PFNGLSECONDARYCOLOR3FVPROC = Void Function(Pointer<Float> v);
typedef PFNGLSECONDARYCOLOR3IPROC = Void Function(
    Int32 red, Int32 green, Int32 blue);
typedef PFNGLSECONDARYCOLOR3IVPROC = Void Function(Pointer<Int32> v);
typedef PFNGLSECONDARYCOLOR3SPROC = Void Function(
    Int16 red, Int16 green, Int16 blue);
typedef PFNGLSECONDARYCOLOR3SVPROC = Void Function(Pointer<Int16> v);
typedef PFNGLSECONDARYCOLOR3UBPROC = Void Function(
    Uint8 red, Uint8 green, Uint8 blue);
typedef PFNGLSECONDARYCOLOR3UBVPROC = Void Function(Pointer<Uint8> v);
typedef PFNGLSECONDARYCOLOR3UIPROC = Void Function(
    Uint32 red, Uint32 green, Uint32 blue);
typedef PFNGLSECONDARYCOLOR3UIVPROC = Void Function(Pointer<Uint32> v);
typedef PFNGLSECONDARYCOLOR3USPROC = Void Function(
    Uint16 red, Uint16 green, Uint16 blue);
typedef PFNGLSECONDARYCOLOR3USVPROC = Void Function(Pointer<Uint16> v);
typedef PFNGLSECONDARYCOLORPOINTERPROC = Void Function(
    Int32 size, Uint32 type, Int32 stride, Pointer<Void> pointer);
typedef PFNGLWINDOWPOS2DPROC = Void Function(Double x, Double y);
typedef PFNGLWINDOWPOS2DVPROC = Void Function(Pointer<Double> v);
typedef PFNGLWINDOWPOS2FPROC = Void Function(Float x, Float y);
typedef PFNGLWINDOWPOS2FVPROC = Void Function(Pointer<Float> v);
typedef PFNGLWINDOWPOS2IPROC = Void Function(Int32 x, Int32 y);
typedef PFNGLWINDOWPOS2IVPROC = Void Function(Pointer<Int32> v);
typedef PFNGLWINDOWPOS2SPROC = Void Function(Int16 x, Int16 y);
typedef PFNGLWINDOWPOS2SVPROC = Void Function(Pointer<Int16> v);
typedef PFNGLWINDOWPOS3DPROC = Void Function(Double x, Double y, Double z);
typedef PFNGLWINDOWPOS3DVPROC = Void Function(Pointer<Double> v);
typedef PFNGLWINDOWPOS3FPROC = Void Function(Float x, Float y, Float z);
typedef PFNGLWINDOWPOS3FVPROC = Void Function(Pointer<Float> v);
typedef PFNGLWINDOWPOS3IPROC = Void Function(Int32 x, Int32 y, Int32 z);
typedef PFNGLWINDOWPOS3IVPROC = Void Function(Pointer<Int32> v);
typedef PFNGLWINDOWPOS3SPROC = Void Function(Int16 x, Int16 y, Int16 z);
typedef PFNGLWINDOWPOS3SVPROC = Void Function(Pointer<Int16> v);
typedef PFNGLBLENDCOLORPROC = Void Function(
    Float red, Float green, Float blue, Float alpha);
typedef PFNGLBLENDEQUATIONPROC = Void Function(Uint32 mode);
typedef PFNGLGENQUERIESPROC = Void Function(Int32 n, Pointer<Uint32> ids);
typedef PFNGLDELETEQUERIESPROC = Void Function(Int32 n, Pointer<Uint32> ids);
typedef PFNGLISQUERYPROC = Uint8 Function(Uint32 id);
typedef PFNGLBEGINQUERYPROC = Void Function(Uint32 target, Uint32 id);
typedef PFNGLENDQUERYPROC = Void Function(Uint32 target);
typedef PFNGLGETQUERYIVPROC = Void Function(
    Uint32 target, Uint32 pname, Pointer<Int32> params);
typedef PFNGLGETQUERYOBJECTIVPROC = Void Function(
    Uint32 id, Uint32 pname, Pointer<Int32> params);
typedef PFNGLGETQUERYOBJECTUIVPROC = Void Function(
    Uint32 id, Uint32 pname, Pointer<Uint32> params);
typedef PFNGLBINDBUFFERPROC = Void Function(Uint32 target, Uint32 buffer);
typedef PFNGLDELETEBUFFERSPROC = Void Function(
    Int32 n, Pointer<Uint32> buffers);
typedef PFNGLGENBUFFERSPROC = Void Function(Int32 n, Pointer<Uint32> buffers);
typedef PFNGLISBUFFERPROC = Uint8 Function(Uint32 buffer);
typedef PFNGLBUFFERDATAPROC = Void Function(
    Uint32 target, Int64 size, Pointer<Void> data, Uint32 usage);
typedef PFNGLBUFFERSUBDATAPROC = Void Function(
    Uint32 target, Int64 offset, Int64 size, Pointer<Void> data);
typedef PFNGLGETBUFFERSUBDATAPROC = Void Function(
    Uint32 target, Int64 offset, Int64 size, Pointer<Void> data);
typedef PFNGLMAPBUFFERPROC = Pointer<Void> Function(
    Uint32 target, Uint32 access);
typedef PFNGLUNMAPBUFFERPROC = Uint8 Function(Uint32 target);
typedef PFNGLGETBUFFERPARAMETERIVPROC = Void Function(
    Uint32 target, Uint32 pname, Pointer<Int32> params);
typedef PFNGLGETBUFFERPOINTERVPROC = Void Function(
    Uint32 target, Uint32 pname, Pointer<Pointer<Void>> params);
typedef PFNGLBLENDEQUATIONSEPARATEPROC = Void Function(
    Uint32 modeRGB, Uint32 modeAlpha);
typedef PFNGLDRAWBUFFERSPROC = Void Function(Int32 n, Pointer<Uint32> bufs);
typedef PFNGLSTENCILOPSEPARATEPROC = Void Function(
    Uint32 face, Uint32 sfail, Uint32 dpfail, Uint32 dppass);
typedef PFNGLSTENCILFUNCSEPARATEPROC = Void Function(
    Uint32 face, Uint32 func, Int32 ref, Uint32 mask);
typedef PFNGLSTENCILMASKSEPARATEPROC = Void Function(Uint32 face, Uint32 mask);
typedef PFNGLATTACHSHADERPROC = Void Function(Uint32 program, Uint32 shader);
typedef PFNGLBINDATTRIBLOCATIONPROC = Void Function(
    Uint32 program, Uint32 index, Pointer<Utf8> name);
typedef PFNGLCOMPILESHADERPROC = Void Function(Uint32 shader);
typedef PFNGLCREATEPROGRAMPROC = Uint32 Function();
typedef PFNGLCREATESHADERPROC = Uint32 Function(Uint32 type);
typedef PFNGLDELETEPROGRAMPROC = Void Function(Uint32 program);
typedef PFNGLDELETESHADERPROC = Void Function(Uint32 shader);
typedef PFNGLDETACHSHADERPROC = Void Function(Uint32 program, Uint32 shader);
typedef PFNGLDISABLEVERTEXATTRIBARRAYPROC = Void Function(Uint32 index);
typedef PFNGLENABLEVERTEXATTRIBARRAYPROC = Void Function(Uint32 index);
typedef PFNGLGETACTIVEATTRIBPROC = Void Function(
    Uint32 program,
    Uint32 index,
    Int32 bufSize,
    Pointer<Int32> length,
    Pointer<Int32> size,
    Pointer<Uint32> type,
    Pointer<Utf8> name);
typedef PFNGLGETACTIVEUNIFORMPROC = Void Function(
    Uint32 program,
    Uint32 index,
    Int32 bufSize,
    Pointer<Int32> length,
    Pointer<Int32> size,
    Pointer<Uint32> type,
    Pointer<Utf8> name);
typedef PFNGLGETATTACHEDSHADERSPROC = Void Function(Uint32 program,
    Int32 maxCount, Pointer<Int32> count, Pointer<Uint32> shaders);
typedef PFNGLGETATTRIBLOCATIONPROC = Int32 Function(
    Uint32 program, Pointer<Utf8> name);
typedef PFNGLGETPROGRAMIVPROC = Void Function(
    Uint32 program, Uint32 pname, Pointer<Int32> params);
typedef PFNGLGETPROGRAMINFOLOGPROC = Void Function(Uint32 program,
    Int32 bufSize, Pointer<Int32> length, Pointer<Utf8> infoLog);
typedef PFNGLGETSHADERIVPROC = Void Function(
    Uint32 shader, Uint32 pname, Pointer<Int32> params);
typedef PFNGLGETSHADERINFOLOGPROC = Void Function(
    Uint32 shader, Int32 bufSize, Pointer<Int32> length, Pointer<Utf8> infoLog);
typedef PFNGLGETSHADERSOURCEPROC = Void Function(
    Uint32 shader, Int32 bufSize, Pointer<Int32> length, Pointer<Utf8> source);
typedef PFNGLGETUNIFORMLOCATIONPROC = Int32 Function(
    Uint32 program, Pointer<Utf8> name);
typedef PFNGLGETUNIFORMFVPROC = Void Function(
    Uint32 program, Int32 location, Pointer<Float> params);
typedef PFNGLGETUNIFORMIVPROC = Void Function(
    Uint32 program, Int32 location, Pointer<Int32> params);
typedef PFNGLGETVERTEXATTRIBDVPROC = Void Function(
    Uint32 index, Uint32 pname, Pointer<Double> params);
typedef PFNGLGETVERTEXATTRIBFVPROC = Void Function(
    Uint32 index, Uint32 pname, Pointer<Float> params);
typedef PFNGLGETVERTEXATTRIBIVPROC = Void Function(
    Uint32 index, Uint32 pname, Pointer<Int32> params);
typedef PFNGLGETVERTEXATTRIBPOINTERVPROC = Void Function(
    Uint32 index, Uint32 pname, Pointer<Pointer<Void>> pointer);
typedef PFNGLISPROGRAMPROC = Uint8 Function(Uint32 program);
typedef PFNGLISSHADERPROC = Uint8 Function(Uint32 shader);
typedef PFNGLLINKPROGRAMPROC = Void Function(Uint32 program);
typedef PFNGLSHADERSOURCEPROC = Void Function(Uint32 shader, Int32 count,
    Pointer<Pointer<Utf8>> string, Pointer<Int32> length);
typedef PFNGLUSEPROGRAMPROC = Void Function(Uint32 program);
typedef PFNGLUNIFORM1FPROC = Void Function(Int32 location, Float v0);
typedef PFNGLUNIFORM2FPROC = Void Function(Int32 location, Float v0, Float v1);
typedef PFNGLUNIFORM3FPROC = Void Function(
    Int32 location, Float v0, Float v1, Float v2);
typedef PFNGLUNIFORM4FPROC = Void Function(
    Int32 location, Float v0, Float v1, Float v2, Float v3);
typedef PFNGLUNIFORM1IPROC = Void Function(Int32 location, Int32 v0);
typedef PFNGLUNIFORM2IPROC = Void Function(Int32 location, Int32 v0, Int32 v1);
typedef PFNGLUNIFORM3IPROC = Void Function(
    Int32 location, Int32 v0, Int32 v1, Int32 v2);
typedef PFNGLUNIFORM4IPROC = Void Function(
    Int32 location, Int32 v0, Int32 v1, Int32 v2, Int32 v3);
typedef PFNGLUNIFORM1FVPROC = Void Function(
    Int32 location, Int32 count, Pointer<Float> value);
typedef PFNGLUNIFORM2FVPROC = Void Function(
    Int32 location, Int32 count, Pointer<Float> value);
typedef PFNGLUNIFORM3FVPROC = Void Function(
    Int32 location, Int32 count, Pointer<Float> value);
typedef PFNGLUNIFORM4FVPROC = Void Function(
    Int32 location, Int32 count, Pointer<Float> value);
typedef PFNGLUNIFORM1IVPROC = Void Function(
    Int32 location, Int32 count, Pointer<Int32> value);
typedef PFNGLUNIFORM2IVPROC = Void Function(
    Int32 location, Int32 count, Pointer<Int32> value);
typedef PFNGLUNIFORM3IVPROC = Void Function(
    Int32 location, Int32 count, Pointer<Int32> value);
typedef PFNGLUNIFORM4IVPROC = Void Function(
    Int32 location, Int32 count, Pointer<Int32> value);
typedef PFNGLUNIFORMMATRIX2FVPROC = Void Function(
    Int32 location, Int32 count, Uint8 transpose, Pointer<Float> value);
typedef PFNGLUNIFORMMATRIX3FVPROC = Void Function(
    Int32 location, Int32 count, Uint8 transpose, Pointer<Float> value);
typedef PFNGLUNIFORMMATRIX4FVPROC = Void Function(
    Int32 location, Int32 count, Uint8 transpose, Pointer<Float> value);
typedef PFNGLVALIDATEPROGRAMPROC = Void Function(Uint32 program);
typedef PFNGLVERTEXATTRIB1DPROC = Void Function(Uint32 index, Double x);
typedef PFNGLVERTEXATTRIB1DVPROC = Void Function(
    Uint32 index, Pointer<Double> v);
typedef PFNGLVERTEXATTRIB1FPROC = Void Function(Uint32 index, Float x);
typedef PFNGLVERTEXATTRIB1FVPROC = Void Function(
    Uint32 index, Pointer<Float> v);
typedef PFNGLVERTEXATTRIB1SPROC = Void Function(Uint32 index, Int16 x);
typedef PFNGLVERTEXATTRIB1SVPROC = Void Function(
    Uint32 index, Pointer<Int16> v);
typedef PFNGLVERTEXATTRIB2DPROC = Void Function(
    Uint32 index, Double x, Double y);
typedef PFNGLVERTEXATTRIB2DVPROC = Void Function(
    Uint32 index, Pointer<Double> v);
typedef PFNGLVERTEXATTRIB2FPROC = Void Function(Uint32 index, Float x, Float y);
typedef PFNGLVERTEXATTRIB2FVPROC = Void Function(
    Uint32 index, Pointer<Float> v);
typedef PFNGLVERTEXATTRIB2SPROC = Void Function(Uint32 index, Int16 x, Int16 y);
typedef PFNGLVERTEXATTRIB2SVPROC = Void Function(
    Uint32 index, Pointer<Int16> v);
typedef PFNGLVERTEXATTRIB3DPROC = Void Function(
    Uint32 index, Double x, Double y, Double z);
typedef PFNGLVERTEXATTRIB3DVPROC = Void Function(
    Uint32 index, Pointer<Double> v);
typedef PFNGLVERTEXATTRIB3FPROC = Void Function(
    Uint32 index, Float x, Float y, Float z);
typedef PFNGLVERTEXATTRIB3FVPROC = Void Function(
    Uint32 index, Pointer<Float> v);
typedef PFNGLVERTEXATTRIB3SPROC = Void Function(
    Uint32 index, Int16 x, Int16 y, Int16 z);
typedef PFNGLVERTEXATTRIB3SVPROC = Void Function(
    Uint32 index, Pointer<Int16> v);
typedef PFNGLVERTEXATTRIB4NBVPROC = Void Function(
    Uint32 index, Pointer<Uint8> v);
typedef PFNGLVERTEXATTRIB4NIVPROC = Void Function(
    Uint32 index, Pointer<Int32> v);
typedef PFNGLVERTEXATTRIB4NSVPROC = Void Function(
    Uint32 index, Pointer<Int16> v);
typedef PFNGLVERTEXATTRIB4NUBPROC = Void Function(
    Uint32 index, Uint8 x, Uint8 y, Uint8 z, Uint8 w);
typedef PFNGLVERTEXATTRIB4NUBVPROC = Void Function(
    Uint32 index, Pointer<Uint8> v);
typedef PFNGLVERTEXATTRIB4NUIVPROC = Void Function(
    Uint32 index, Pointer<Uint32> v);
typedef PFNGLVERTEXATTRIB4NUSVPROC = Void Function(
    Uint32 index, Pointer<Uint16> v);
typedef PFNGLVERTEXATTRIB4BVPROC = Void Function(
    Uint32 index, Pointer<Uint8> v);
typedef PFNGLVERTEXATTRIB4DPROC = Void Function(
    Uint32 index, Double x, Double y, Double z, Double w);
typedef PFNGLVERTEXATTRIB4DVPROC = Void Function(
    Uint32 index, Pointer<Double> v);
typedef PFNGLVERTEXATTRIB4FPROC = Void Function(
    Uint32 index, Float x, Float y, Float z, Float w);
typedef PFNGLVERTEXATTRIB4FVPROC = Void Function(
    Uint32 index, Pointer<Float> v);
typedef PFNGLVERTEXATTRIB4IVPROC = Void Function(
    Uint32 index, Pointer<Int32> v);
typedef PFNGLVERTEXATTRIB4SPROC = Void Function(
    Uint32 index, Int16 x, Int16 y, Int16 z, Int16 w);
typedef PFNGLVERTEXATTRIB4SVPROC = Void Function(
    Uint32 index, Pointer<Int16> v);
typedef PFNGLVERTEXATTRIB4UBVPROC = Void Function(
    Uint32 index, Pointer<Uint8> v);
typedef PFNGLVERTEXATTRIB4UIVPROC = Void Function(
    Uint32 index, Pointer<Uint32> v);
typedef PFNGLVERTEXATTRIB4USVPROC = Void Function(
    Uint32 index, Pointer<Uint16> v);
typedef PFNGLVERTEXATTRIBPOINTERPROC = Void Function(Uint32 index, Int32 size,
    Uint32 type, Uint8 normalized, Int32 stride, Pointer<Void> pointer);
typedef PFNGLUNIFORMMATRIX2X3FVPROC = Void Function(
    Int32 location, Int32 count, Uint8 transpose, Pointer<Float> value);
typedef PFNGLUNIFORMMATRIX3X2FVPROC = Void Function(
    Int32 location, Int32 count, Uint8 transpose, Pointer<Float> value);
typedef PFNGLUNIFORMMATRIX2X4FVPROC = Void Function(
    Int32 location, Int32 count, Uint8 transpose, Pointer<Float> value);
typedef PFNGLUNIFORMMATRIX4X2FVPROC = Void Function(
    Int32 location, Int32 count, Uint8 transpose, Pointer<Float> value);
typedef PFNGLUNIFORMMATRIX3X4FVPROC = Void Function(
    Int32 location, Int32 count, Uint8 transpose, Pointer<Float> value);
typedef PFNGLUNIFORMMATRIX4X3FVPROC = Void Function(
    Int32 location, Int32 count, Uint8 transpose, Pointer<Float> value);
typedef PFNGLCOLORMASKIPROC = Void Function(
    Uint32 index, Uint8 r, Uint8 g, Uint8 b, Uint8 a);
typedef PFNGLGETBOOLEANI_VPROC = Void Function(
    Uint32 target, Uint32 index, Pointer<Uint8> data);
typedef PFNGLGETINTEGERI_VPROC = Void Function(
    Uint32 target, Uint32 index, Pointer<Int32> data);
typedef PFNGLENABLEIPROC = Void Function(Uint32 target, Uint32 index);
typedef PFNGLDISABLEIPROC = Void Function(Uint32 target, Uint32 index);
typedef PFNGLISENABLEDIPROC = Uint8 Function(Uint32 target, Uint32 index);
typedef PFNGLBEGINTRANSFORMFEEDBACKPROC = Void Function(Uint32 primitiveMode);
typedef PFNGLENDTRANSFORMFEEDBACKPROC = Void Function();
typedef PFNGLBINDBUFFERRANGEPROC = Void Function(
    Uint32 target, Uint32 index, Uint32 buffer, Int64 offset, Int64 size);
typedef PFNGLBINDBUFFERBASEPROC = Void Function(
    Uint32 target, Uint32 index, Uint32 buffer);
typedef PFNGLTRANSFORMFEEDBACKVARYINGSPROC = Void Function(Uint32 program,
    Int32 count, Pointer<Pointer<Utf8>> varyings, Uint32 bufferMode);
typedef PFNGLGETTRANSFORMFEEDBACKVARYINGPROC = Void Function(
    Uint32 program,
    Uint32 index,
    Int32 bufSize,
    Pointer<Int32> length,
    Pointer<Int32> size,
    Pointer<Uint32> type,
    Pointer<Utf8> name);
typedef PFNGLCLAMPCOLORPROC = Void Function(Uint32 target, Uint32 clamp);
typedef PFNGLBEGINCONDITIONALRENDERPROC = Void Function(Uint32 id, Uint32 mode);
typedef PFNGLENDCONDITIONALRENDERPROC = Void Function();
typedef PFNGLVERTEXATTRIBIPOINTERPROC = Void Function(
    Uint32 index, Int32 size, Uint32 type, Int32 stride, Pointer<Void> pointer);
typedef PFNGLGETVERTEXATTRIBIIVPROC = Void Function(
    Uint32 index, Uint32 pname, Pointer<Int32> params);
typedef PFNGLGETVERTEXATTRIBIUIVPROC = Void Function(
    Uint32 index, Uint32 pname, Pointer<Uint32> params);
typedef PFNGLVERTEXATTRIBI1IPROC = Void Function(Uint32 index, Int32 x);
typedef PFNGLVERTEXATTRIBI2IPROC = Void Function(
    Uint32 index, Int32 x, Int32 y);
typedef PFNGLVERTEXATTRIBI3IPROC = Void Function(
    Uint32 index, Int32 x, Int32 y, Int32 z);
typedef PFNGLVERTEXATTRIBI4IPROC = Void Function(
    Uint32 index, Int32 x, Int32 y, Int32 z, Int32 w);
typedef PFNGLVERTEXATTRIBI1UIPROC = Void Function(Uint32 index, Uint32 x);
typedef PFNGLVERTEXATTRIBI2UIPROC = Void Function(
    Uint32 index, Uint32 x, Uint32 y);
typedef PFNGLVERTEXATTRIBI3UIPROC = Void Function(
    Uint32 index, Uint32 x, Uint32 y, Uint32 z);
typedef PFNGLVERTEXATTRIBI4UIPROC = Void Function(
    Uint32 index, Uint32 x, Uint32 y, Uint32 z, Uint32 w);
typedef PFNGLVERTEXATTRIBI1IVPROC = Void Function(
    Uint32 index, Pointer<Int32> v);
typedef PFNGLVERTEXATTRIBI2IVPROC = Void Function(
    Uint32 index, Pointer<Int32> v);
typedef PFNGLVERTEXATTRIBI3IVPROC = Void Function(
    Uint32 index, Pointer<Int32> v);
typedef PFNGLVERTEXATTRIBI4IVPROC = Void Function(
    Uint32 index, Pointer<Int32> v);
typedef PFNGLVERTEXATTRIBI1UIVPROC = Void Function(
    Uint32 index, Pointer<Uint32> v);
typedef PFNGLVERTEXATTRIBI2UIVPROC = Void Function(
    Uint32 index, Pointer<Uint32> v);
typedef PFNGLVERTEXATTRIBI3UIVPROC = Void Function(
    Uint32 index, Pointer<Uint32> v);
typedef PFNGLVERTEXATTRIBI4UIVPROC = Void Function(
    Uint32 index, Pointer<Uint32> v);
typedef PFNGLVERTEXATTRIBI4BVPROC = Void Function(
    Uint32 index, Pointer<Uint8> v);
typedef PFNGLVERTEXATTRIBI4SVPROC = Void Function(
    Uint32 index, Pointer<Int16> v);
typedef PFNGLVERTEXATTRIBI4UBVPROC = Void Function(
    Uint32 index, Pointer<Uint8> v);
typedef PFNGLVERTEXATTRIBI4USVPROC = Void Function(
    Uint32 index, Pointer<Uint16> v);
typedef PFNGLGETUNIFORMUIVPROC = Void Function(
    Uint32 program, Int32 location, Pointer<Uint32> params);
typedef PFNGLBINDFRAGDATALOCATIONPROC = Void Function(
    Uint32 program, Uint32 color, Pointer<Utf8> name);
typedef PFNGLGETFRAGDATALOCATIONPROC = Int32 Function(
    Uint32 program, Pointer<Utf8> name);
typedef PFNGLUNIFORM1UIPROC = Void Function(Int32 location, Uint32 v0);
typedef PFNGLUNIFORM2UIPROC = Void Function(
    Int32 location, Uint32 v0, Uint32 v1);
typedef PFNGLUNIFORM3UIPROC = Void Function(
    Int32 location, Uint32 v0, Uint32 v1, Uint32 v2);
typedef PFNGLUNIFORM4UIPROC = Void Function(
    Int32 location, Uint32 v0, Uint32 v1, Uint32 v2, Uint32 v3);
typedef PFNGLUNIFORM1UIVPROC = Void Function(
    Int32 location, Int32 count, Pointer<Uint32> value);
typedef PFNGLUNIFORM2UIVPROC = Void Function(
    Int32 location, Int32 count, Pointer<Uint32> value);
typedef PFNGLUNIFORM3UIVPROC = Void Function(
    Int32 location, Int32 count, Pointer<Uint32> value);
typedef PFNGLUNIFORM4UIVPROC = Void Function(
    Int32 location, Int32 count, Pointer<Uint32> value);
typedef PFNGLTEXPARAMETERIIVPROC = Void Function(
    Uint32 target, Uint32 pname, Pointer<Int32> params);
typedef PFNGLTEXPARAMETERIUIVPROC = Void Function(
    Uint32 target, Uint32 pname, Pointer<Uint32> params);
typedef PFNGLGETTEXPARAMETERIIVPROC = Void Function(
    Uint32 target, Uint32 pname, Pointer<Int32> params);
typedef PFNGLGETTEXPARAMETERIUIVPROC = Void Function(
    Uint32 target, Uint32 pname, Pointer<Uint32> params);
typedef PFNGLCLEARBUFFERIVPROC = Void Function(
    Uint32 buffer, Int32 drawbuffer, Pointer<Int32> value);
typedef PFNGLCLEARBUFFERUIVPROC = Void Function(
    Uint32 buffer, Int32 drawbuffer, Pointer<Uint32> value);
typedef PFNGLCLEARBUFFERFVPROC = Void Function(
    Uint32 buffer, Int32 drawbuffer, Pointer<Float> value);
typedef PFNGLCLEARBUFFERFIPROC = Void Function(
    Uint32 buffer, Int32 drawbuffer, Float depth, Int32 stencil);
typedef PFNGLGETSTRINGIPROC = Pointer<Uint8> Function(
    Uint32 name, Uint32 index);
typedef PFNGLISRENDERBUFFERPROC = Uint8 Function(Uint32 renderbuffer);
typedef PFNGLBINDRENDERBUFFERPROC = Void Function(
    Uint32 target, Uint32 renderbuffer);
typedef PFNGLDELETERENDERBUFFERSPROC = Void Function(
    Int32 n, Pointer<Uint32> renderbuffers);
typedef PFNGLGENRENDERBUFFERSPROC = Void Function(
    Int32 n, Pointer<Uint32> renderbuffers);
typedef PFNGLRENDERBUFFERSTORAGEPROC = Void Function(
    Uint32 target, Uint32 internalformat, Int32 width, Int32 height);
typedef PFNGLGETRENDERBUFFERPARAMETERIVPROC = Void Function(
    Uint32 target, Uint32 pname, Pointer<Int32> params);
typedef PFNGLISFRAMEBUFFERPROC = Uint8 Function(Uint32 framebuffer);
typedef PFNGLBINDFRAMEBUFFERPROC = Void Function(
    Uint32 target, Uint32 framebuffer);
typedef PFNGLDELETEFRAMEBUFFERSPROC = Void Function(
    Int32 n, Pointer<Uint32> framebuffers);
typedef PFNGLGENFRAMEBUFFERSPROC = Void Function(
    Int32 n, Pointer<Uint32> framebuffers);
typedef PFNGLCHECKFRAMEBUFFERSTATUSPROC = Uint32 Function(Uint32 target);
typedef PFNGLFRAMEBUFFERTEXTURE1DPROC = Void Function(Uint32 target,
    Uint32 attachment, Uint32 textarget, Uint32 texture, Int32 level);
typedef PFNGLFRAMEBUFFERTEXTURE2DPROC = Void Function(Uint32 target,
    Uint32 attachment, Uint32 textarget, Uint32 texture, Int32 level);
typedef PFNGLFRAMEBUFFERTEXTURE3DPROC = Void Function(
    Uint32 target,
    Uint32 attachment,
    Uint32 textarget,
    Uint32 texture,
    Int32 level,
    Int32 zoffset);
typedef PFNGLFRAMEBUFFERRENDERBUFFERPROC = Void Function(Uint32 target,
    Uint32 attachment, Uint32 renderbuffertarget, Uint32 renderbuffer);
typedef PFNGLGETFRAMEBUFFERATTACHMENTPARAMETERIVPROC = Void Function(
    Uint32 target, Uint32 attachment, Uint32 pname, Pointer<Int32> params);
typedef PFNGLGENERATEMIPMAPPROC = Void Function(Uint32 target);
typedef PFNGLBLITFRAMEBUFFERPROC = Void Function(
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
typedef PFNGLRENDERBUFFERSTORAGEMULTISAMPLEPROC = Void Function(Uint32 target,
    Int32 samples, Uint32 internalformat, Int32 width, Int32 height);
typedef PFNGLFRAMEBUFFERTEXTURELAYERPROC = Void Function(
    Uint32 target, Uint32 attachment, Uint32 texture, Int32 level, Int32 layer);
typedef PFNGLMAPBUFFERRANGEPROC = Pointer<Void> Function(
    Uint32 target, Int64 offset, Int64 length, Uint32 access);
typedef PFNGLFLUSHMAPPEDBUFFERRANGEPROC = Void Function(
    Uint32 target, Int64 offset, Int64 length);
typedef PFNGLBINDVERTEXARRAYPROC = Void Function(Uint32 array);
typedef PFNGLDELETEVERTEXARRAYSPROC = Void Function(
    Int32 n, Pointer<Uint32> arrays);
typedef PFNGLGENVERTEXARRAYSPROC = Void Function(
    Int32 n, Pointer<Uint32> arrays);
typedef PFNGLISVERTEXARRAYPROC = Uint8 Function(Uint32 array);
typedef PFNGLDRAWARRAYSINSTANCEDPROC = Void Function(
    Uint32 mode, Int32 first, Int32 count, Int32 instancecount);
typedef PFNGLDRAWELEMENTSINSTANCEDPROC = Void Function(Uint32 mode, Int32 count,
    Uint32 type, Pointer<Void> indices, Int32 instancecount);
typedef PFNGLTEXBUFFERPROC = Void Function(
    Uint32 target, Uint32 internalformat, Uint32 buffer);
typedef PFNGLPRIMITIVERESTARTINDEXPROC = Void Function(Uint32 index);
typedef PFNGLCOPYBUFFERSUBDATAPROC = Void Function(Uint32 readTarget,
    Uint32 writeTarget, Int64 readOffset, Int64 writeOffset, Int64 size);
typedef PFNGLGETUNIFORMINDICESPROC = Void Function(
    Uint32 program,
    Int32 uniformCount,
    Pointer<Pointer<Utf8>> uniformNames,
    Pointer<Uint32> uniformIndices);
typedef PFNGLGETACTIVEUNIFORMSIVPROC = Void Function(
    Uint32 program,
    Int32 uniformCount,
    Pointer<Uint32> uniformIndices,
    Uint32 pname,
    Pointer<Int32> params);
typedef PFNGLGETACTIVEUNIFORMNAMEPROC = Void Function(
    Uint32 program,
    Uint32 uniformIndex,
    Int32 bufSize,
    Pointer<Int32> length,
    Pointer<Utf8> uniformName);
typedef PFNGLGETUNIFORMBLOCKINDEXPROC = Uint32 Function(
    Uint32 program, Pointer<Utf8> uniformBlockName);
typedef PFNGLGETACTIVEUNIFORMBLOCKIVPROC = Void Function(Uint32 program,
    Uint32 uniformBlockIndex, Uint32 pname, Pointer<Int32> params);
typedef PFNGLGETACTIVEUNIFORMBLOCKNAMEPROC = Void Function(
    Uint32 program,
    Uint32 uniformBlockIndex,
    Int32 bufSize,
    Pointer<Int32> length,
    Pointer<Utf8> uniformBlockName);
typedef PFNGLUNIFORMBLOCKBINDINGPROC = Void Function(
    Uint32 program, Uint32 uniformBlockIndex, Uint32 uniformBlockBinding);
typedef PFNGLDRAWELEMENTSBASEVERTEXPROC = Void Function(Uint32 mode,
    Int32 count, Uint32 type, Pointer<Void> indices, Int32 basevertex);
typedef PFNGLDRAWRANGEELEMENTSBASEVERTEXPROC = Void Function(
    Uint32 mode,
    Uint32 start,
    Uint32 end,
    Int32 count,
    Uint32 type,
    Pointer<Void> indices,
    Int32 basevertex);
typedef PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXPROC = Void Function(
    Uint32 mode,
    Int32 count,
    Uint32 type,
    Pointer<Void> indices,
    Int32 instancecount,
    Int32 basevertex);
typedef PFNGLMULTIDRAWELEMENTSBASEVERTEXPROC = Void Function(
    Uint32 mode,
    Pointer<Int32> count,
    Uint32 type,
    Pointer<Pointer<Void>> indices,
    Int32 drawcount,
    Pointer<Int32> basevertex);
typedef PFNGLPROVOKINGVERTEXPROC = Void Function(Uint32 mode);
typedef PFNGLFENCESYNCPROC = Pointer<GLsync> Function(
    Uint32 condition, Uint32 flags);
typedef PFNGLISSYNCPROC = Uint8 Function(Pointer<GLsync> sync);
typedef PFNGLDELETESYNCPROC = Void Function(Pointer<GLsync> sync);
typedef PFNGLCLIENTWAITSYNCPROC = Uint32 Function(
    Pointer<GLsync> sync, Uint32 flags, Uint64 timeout);
typedef PFNGLWAITSYNCPROC = Void Function(
    Pointer<GLsync> sync, Uint32 flags, Uint64 timeout);
typedef PFNGLGETINTEGER64VPROC = Void Function(
    Uint32 pname, Pointer<Int64> data);
typedef PFNGLGETSYNCIVPROC = Void Function(Pointer<GLsync> sync, Uint32 pname,
    Int32 bufSize, Pointer<Int32> length, Pointer<Int32> values);
typedef PFNGLGETINTEGER64I_VPROC = Void Function(
    Uint32 target, Uint32 index, Pointer<Int64> data);
typedef PFNGLGETBUFFERPARAMETERI64VPROC = Void Function(
    Uint32 target, Uint32 pname, Pointer<Int64> params);
typedef PFNGLFRAMEBUFFERTEXTUREPROC = Void Function(
    Uint32 target, Uint32 attachment, Uint32 texture, Int32 level);
typedef PFNGLTEXIMAGE2DMULTISAMPLEPROC = Void Function(
    Uint32 target,
    Int32 samples,
    Uint32 internalformat,
    Int32 width,
    Int32 height,
    Uint8 fixedsamplelocations);
typedef PFNGLTEXIMAGE3DMULTISAMPLEPROC = Void Function(
    Uint32 target,
    Int32 samples,
    Uint32 internalformat,
    Int32 width,
    Int32 height,
    Int32 depth,
    Uint8 fixedsamplelocations);
typedef PFNGLGETMULTISAMPLEFVPROC = Void Function(
    Uint32 pname, Uint32 index, Pointer<Float> val);
typedef PFNGLSAMPLEMASKIPROC = Void Function(Uint32 maskNumber, Uint32 mask);
typedef PFNGLBINDFRAGDATALOCATIONINDEXEDPROC = Void Function(
    Uint32 program, Uint32 colorNumber, Uint32 index, Pointer<Utf8> name);
typedef PFNGLGETFRAGDATAINDEXPROC = Int32 Function(
    Uint32 program, Pointer<Utf8> name);
typedef PFNGLGENSAMPLERSPROC = Void Function(
    Int32 count, Pointer<Uint32> samplers);
typedef PFNGLDELETESAMPLERSPROC = Void Function(
    Int32 count, Pointer<Uint32> samplers);
typedef PFNGLISSAMPLERPROC = Uint8 Function(Uint32 sampler);
typedef PFNGLBINDSAMPLERPROC = Void Function(Uint32 unit, Uint32 sampler);
typedef PFNGLSAMPLERPARAMETERIPROC = Void Function(
    Uint32 sampler, Uint32 pname, Int32 param);
typedef PFNGLSAMPLERPARAMETERIVPROC = Void Function(
    Uint32 sampler, Uint32 pname, Pointer<Int32> param);
typedef PFNGLSAMPLERPARAMETERFPROC = Void Function(
    Uint32 sampler, Uint32 pname, Float param);
typedef PFNGLSAMPLERPARAMETERFVPROC = Void Function(
    Uint32 sampler, Uint32 pname, Pointer<Float> param);
typedef PFNGLSAMPLERPARAMETERIIVPROC = Void Function(
    Uint32 sampler, Uint32 pname, Pointer<Int32> param);
typedef PFNGLSAMPLERPARAMETERIUIVPROC = Void Function(
    Uint32 sampler, Uint32 pname, Pointer<Uint32> param);
typedef PFNGLGETSAMPLERPARAMETERIVPROC = Void Function(
    Uint32 sampler, Uint32 pname, Pointer<Int32> params);
typedef PFNGLGETSAMPLERPARAMETERIIVPROC = Void Function(
    Uint32 sampler, Uint32 pname, Pointer<Int32> params);
typedef PFNGLGETSAMPLERPARAMETERFVPROC = Void Function(
    Uint32 sampler, Uint32 pname, Pointer<Float> params);
typedef PFNGLGETSAMPLERPARAMETERIUIVPROC = Void Function(
    Uint32 sampler, Uint32 pname, Pointer<Uint32> params);
typedef PFNGLQUERYCOUNTERPROC = Void Function(Uint32 id, Uint32 target);
typedef PFNGLGETQUERYOBJECTI64VPROC = Void Function(
    Uint32 id, Uint32 pname, Pointer<Int64> params);
typedef PFNGLGETQUERYOBJECTUI64VPROC = Void Function(
    Uint32 id, Uint32 pname, Pointer<Uint64> params);
typedef PFNGLVERTEXATTRIBDIVISORPROC = Void Function(
    Uint32 index, Uint32 divisor);
typedef PFNGLVERTEXATTRIBP1UIPROC = Void Function(
    Uint32 index, Uint32 type, Uint8 normalized, Uint32 value);
typedef PFNGLVERTEXATTRIBP1UIVPROC = Void Function(
    Uint32 index, Uint32 type, Uint8 normalized, Pointer<Uint32> value);
typedef PFNGLVERTEXATTRIBP2UIPROC = Void Function(
    Uint32 index, Uint32 type, Uint8 normalized, Uint32 value);
typedef PFNGLVERTEXATTRIBP2UIVPROC = Void Function(
    Uint32 index, Uint32 type, Uint8 normalized, Pointer<Uint32> value);
typedef PFNGLVERTEXATTRIBP3UIPROC = Void Function(
    Uint32 index, Uint32 type, Uint8 normalized, Uint32 value);
typedef PFNGLVERTEXATTRIBP3UIVPROC = Void Function(
    Uint32 index, Uint32 type, Uint8 normalized, Pointer<Uint32> value);
typedef PFNGLVERTEXATTRIBP4UIPROC = Void Function(
    Uint32 index, Uint32 type, Uint8 normalized, Uint32 value);
typedef PFNGLVERTEXATTRIBP4UIVPROC = Void Function(
    Uint32 index, Uint32 type, Uint8 normalized, Pointer<Uint32> value);
typedef PFNGLVERTEXP2UIPROC = Void Function(Uint32 type, Uint32 value);
typedef PFNGLVERTEXP2UIVPROC = Void Function(
    Uint32 type, Pointer<Uint32> value);
typedef PFNGLVERTEXP3UIPROC = Void Function(Uint32 type, Uint32 value);
typedef PFNGLVERTEXP3UIVPROC = Void Function(
    Uint32 type, Pointer<Uint32> value);
typedef PFNGLVERTEXP4UIPROC = Void Function(Uint32 type, Uint32 value);
typedef PFNGLVERTEXP4UIVPROC = Void Function(
    Uint32 type, Pointer<Uint32> value);
typedef PFNGLTEXCOORDP1UIPROC = Void Function(Uint32 type, Uint32 coords);
typedef PFNGLTEXCOORDP1UIVPROC = Void Function(
    Uint32 type, Pointer<Uint32> coords);
typedef PFNGLTEXCOORDP2UIPROC = Void Function(Uint32 type, Uint32 coords);
typedef PFNGLTEXCOORDP2UIVPROC = Void Function(
    Uint32 type, Pointer<Uint32> coords);
typedef PFNGLTEXCOORDP3UIPROC = Void Function(Uint32 type, Uint32 coords);
typedef PFNGLTEXCOORDP3UIVPROC = Void Function(
    Uint32 type, Pointer<Uint32> coords);
typedef PFNGLTEXCOORDP4UIPROC = Void Function(Uint32 type, Uint32 coords);
typedef PFNGLTEXCOORDP4UIVPROC = Void Function(
    Uint32 type, Pointer<Uint32> coords);
typedef PFNGLMULTITEXCOORDP1UIPROC = Void Function(
    Uint32 texture, Uint32 type, Uint32 coords);
typedef PFNGLMULTITEXCOORDP1UIVPROC = Void Function(
    Uint32 texture, Uint32 type, Pointer<Uint32> coords);
typedef PFNGLMULTITEXCOORDP2UIPROC = Void Function(
    Uint32 texture, Uint32 type, Uint32 coords);
typedef PFNGLMULTITEXCOORDP2UIVPROC = Void Function(
    Uint32 texture, Uint32 type, Pointer<Uint32> coords);
typedef PFNGLMULTITEXCOORDP3UIPROC = Void Function(
    Uint32 texture, Uint32 type, Uint32 coords);
typedef PFNGLMULTITEXCOORDP3UIVPROC = Void Function(
    Uint32 texture, Uint32 type, Pointer<Uint32> coords);
typedef PFNGLMULTITEXCOORDP4UIPROC = Void Function(
    Uint32 texture, Uint32 type, Uint32 coords);
typedef PFNGLMULTITEXCOORDP4UIVPROC = Void Function(
    Uint32 texture, Uint32 type, Pointer<Uint32> coords);
typedef PFNGLNORMALP3UIPROC = Void Function(Uint32 type, Uint32 coords);
typedef PFNGLNORMALP3UIVPROC = Void Function(
    Uint32 type, Pointer<Uint32> coords);
typedef PFNGLCOLORP3UIPROC = Void Function(Uint32 type, Uint32 color);
typedef PFNGLCOLORP3UIVPROC = Void Function(Uint32 type, Pointer<Uint32> color);
typedef PFNGLCOLORP4UIPROC = Void Function(Uint32 type, Uint32 color);
typedef PFNGLCOLORP4UIVPROC = Void Function(Uint32 type, Pointer<Uint32> color);
typedef PFNGLSECONDARYCOLORP3UIPROC = Void Function(Uint32 type, Uint32 color);
typedef PFNGLSECONDARYCOLORP3UIVPROC = Void Function(
    Uint32 type, Pointer<Uint32> color);
typedef PFNGLMINSAMPLESHADINGPROC = Void Function(Float value);
typedef PFNGLBLENDEQUATIONIPROC = Void Function(Uint32 buf, Uint32 mode);
typedef PFNGLBLENDEQUATIONSEPARATEIPROC = Void Function(
    Uint32 buf, Uint32 modeRGB, Uint32 modeAlpha);
typedef PFNGLBLENDFUNCIPROC = Void Function(Uint32 buf, Uint32 src, Uint32 dst);
typedef PFNGLBLENDFUNCSEPARATEIPROC = Void Function(
    Uint32 buf, Uint32 srcRGB, Uint32 dstRGB, Uint32 srcAlpha, Uint32 dstAlpha);
typedef PFNGLDRAWARRAYSINDIRECTPROC = Void Function(
    Uint32 mode, Pointer<Void> indirect);
typedef PFNGLDRAWELEMENTSINDIRECTPROC = Void Function(
    Uint32 mode, Uint32 type, Pointer<Void> indirect);
typedef PFNGLUNIFORM1DPROC = Void Function(Int32 location, Double x);
typedef PFNGLUNIFORM2DPROC = Void Function(Int32 location, Double x, Double y);
typedef PFNGLUNIFORM3DPROC = Void Function(
    Int32 location, Double x, Double y, Double z);
typedef PFNGLUNIFORM4DPROC = Void Function(
    Int32 location, Double x, Double y, Double z, Double w);
typedef PFNGLUNIFORM1DVPROC = Void Function(
    Int32 location, Int32 count, Pointer<Double> value);
typedef PFNGLUNIFORM2DVPROC = Void Function(
    Int32 location, Int32 count, Pointer<Double> value);
typedef PFNGLUNIFORM3DVPROC = Void Function(
    Int32 location, Int32 count, Pointer<Double> value);
typedef PFNGLUNIFORM4DVPROC = Void Function(
    Int32 location, Int32 count, Pointer<Double> value);
typedef PFNGLUNIFORMMATRIX2DVPROC = Void Function(
    Int32 location, Int32 count, Uint8 transpose, Pointer<Double> value);
typedef PFNGLUNIFORMMATRIX3DVPROC = Void Function(
    Int32 location, Int32 count, Uint8 transpose, Pointer<Double> value);
typedef PFNGLUNIFORMMATRIX4DVPROC = Void Function(
    Int32 location, Int32 count, Uint8 transpose, Pointer<Double> value);
typedef PFNGLUNIFORMMATRIX2X3DVPROC = Void Function(
    Int32 location, Int32 count, Uint8 transpose, Pointer<Double> value);
typedef PFNGLUNIFORMMATRIX2X4DVPROC = Void Function(
    Int32 location, Int32 count, Uint8 transpose, Pointer<Double> value);
typedef PFNGLUNIFORMMATRIX3X2DVPROC = Void Function(
    Int32 location, Int32 count, Uint8 transpose, Pointer<Double> value);
typedef PFNGLUNIFORMMATRIX3X4DVPROC = Void Function(
    Int32 location, Int32 count, Uint8 transpose, Pointer<Double> value);
typedef PFNGLUNIFORMMATRIX4X2DVPROC = Void Function(
    Int32 location, Int32 count, Uint8 transpose, Pointer<Double> value);
typedef PFNGLUNIFORMMATRIX4X3DVPROC = Void Function(
    Int32 location, Int32 count, Uint8 transpose, Pointer<Double> value);
typedef PFNGLGETUNIFORMDVPROC = Void Function(
    Uint32 program, Int32 location, Pointer<Double> params);
typedef PFNGLGETSUBROUTINEUNIFORMLOCATIONPROC = Int32 Function(
    Uint32 program, Uint32 shadertype, Pointer<Utf8> name);
typedef PFNGLGETSUBROUTINEINDEXPROC = Uint32 Function(
    Uint32 program, Uint32 shadertype, Pointer<Utf8> name);
typedef PFNGLGETACTIVESUBROUTINEUNIFORMIVPROC = Void Function(Uint32 program,
    Uint32 shadertype, Uint32 index, Uint32 pname, Pointer<Int32> values);
typedef PFNGLGETACTIVESUBROUTINEUNIFORMNAMEPROC = Void Function(
    Uint32 program,
    Uint32 shadertype,
    Uint32 index,
    Int32 bufsize,
    Pointer<Int32> length,
    Pointer<Utf8> name);
typedef PFNGLGETACTIVESUBROUTINENAMEPROC = Void Function(
    Uint32 program,
    Uint32 shadertype,
    Uint32 index,
    Int32 bufsize,
    Pointer<Int32> length,
    Pointer<Utf8> name);
typedef PFNGLUNIFORMSUBROUTINESUIVPROC = Void Function(
    Uint32 shadertype, Int32 count, Pointer<Uint32> indices);
typedef PFNGLGETUNIFORMSUBROUTINEUIVPROC = Void Function(
    Uint32 shadertype, Int32 location, Pointer<Uint32> params);
typedef PFNGLGETPROGRAMSTAGEIVPROC = Void Function(
    Uint32 program, Uint32 shadertype, Uint32 pname, Pointer<Int32> values);
typedef PFNGLPATCHPARAMETERIPROC = Void Function(Uint32 pname, Int32 value);
typedef PFNGLPATCHPARAMETERFVPROC = Void Function(
    Uint32 pname, Pointer<Float> values);
typedef PFNGLBINDTRANSFORMFEEDBACKPROC = Void Function(
    Uint32 target, Uint32 id);
typedef PFNGLDELETETRANSFORMFEEDBACKSPROC = Void Function(
    Int32 n, Pointer<Uint32> ids);
typedef PFNGLGENTRANSFORMFEEDBACKSPROC = Void Function(
    Int32 n, Pointer<Uint32> ids);
typedef PFNGLISTRANSFORMFEEDBACKPROC = Uint8 Function(Uint32 id);
typedef PFNGLPAUSETRANSFORMFEEDBACKPROC = Void Function();
typedef PFNGLRESUMETRANSFORMFEEDBACKPROC = Void Function();
typedef PFNGLDRAWTRANSFORMFEEDBACKPROC = Void Function(Uint32 mode, Uint32 id);
typedef PFNGLDRAWTRANSFORMFEEDBACKSTREAMPROC = Void Function(
    Uint32 mode, Uint32 id, Uint32 stream);
typedef PFNGLBEGINQUERYINDEXEDPROC = Void Function(
    Uint32 target, Uint32 index, Uint32 id);
typedef PFNGLENDQUERYINDEXEDPROC = Void Function(Uint32 target, Uint32 index);
typedef PFNGLGETQUERYINDEXEDIVPROC = Void Function(
    Uint32 target, Uint32 index, Uint32 pname, Pointer<Int32> params);
typedef PFNGLRELEASESHADERCOMPILERPROC = Void Function();
typedef PFNGLSHADERBINARYPROC = Void Function(
    Int32 count,
    Pointer<Uint32> shaders,
    Uint32 binaryformat,
    Pointer<Void> binary,
    Int32 length);
typedef PFNGLGETSHADERPRECISIONFORMATPROC = Void Function(Uint32 shadertype,
    Uint32 precisiontype, Pointer<Int32> range, Pointer<Int32> precision);
typedef PFNGLDEPTHRANGEFPROC = Void Function(Float n, Float f);
typedef PFNGLCLEARDEPTHFPROC = Void Function(Float d);
typedef PFNGLGETPROGRAMBINARYPROC = Void Function(Uint32 program, Int32 bufSize,
    Pointer<Int32> length, Pointer<Uint32> binaryFormat, Pointer<Void> binary);
typedef PFNGLPROGRAMBINARYPROC = Void Function(
    Uint32 program, Uint32 binaryFormat, Pointer<Void> binary, Int32 length);
typedef PFNGLPROGRAMPARAMETERIPROC = Void Function(
    Uint32 program, Uint32 pname, Int32 value);
typedef PFNGLUSEPROGRAMSTAGESPROC = Void Function(
    Uint32 pipeline, Uint32 stages, Uint32 program);
typedef PFNGLACTIVESHADERPROGRAMPROC = Void Function(
    Uint32 pipeline, Uint32 program);
typedef PFNGLCREATESHADERPROGRAMVPROC = Uint32 Function(
    Uint32 type, Int32 count, Pointer<Pointer<Utf8>> strings);
typedef PFNGLBINDPROGRAMPIPELINEPROC = Void Function(Uint32 pipeline);
typedef PFNGLDELETEPROGRAMPIPELINESPROC = Void Function(
    Int32 n, Pointer<Uint32> pipelines);
typedef PFNGLGENPROGRAMPIPELINESPROC = Void Function(
    Int32 n, Pointer<Uint32> pipelines);
typedef PFNGLISPROGRAMPIPELINEPROC = Uint8 Function(Uint32 pipeline);
typedef PFNGLGETPROGRAMPIPELINEIVPROC = Void Function(
    Uint32 pipeline, Uint32 pname, Pointer<Int32> params);
typedef PFNGLPROGRAMUNIFORM1IPROC = Void Function(
    Uint32 program, Int32 location, Int32 v0);
typedef PFNGLPROGRAMUNIFORM1IVPROC = Void Function(
    Uint32 program, Int32 location, Int32 count, Pointer<Int32> value);
typedef PFNGLPROGRAMUNIFORM1FPROC = Void Function(
    Uint32 program, Int32 location, Float v0);
typedef PFNGLPROGRAMUNIFORM1FVPROC = Void Function(
    Uint32 program, Int32 location, Int32 count, Pointer<Float> value);
typedef PFNGLPROGRAMUNIFORM1DPROC = Void Function(
    Uint32 program, Int32 location, Double v0);
typedef PFNGLPROGRAMUNIFORM1DVPROC = Void Function(
    Uint32 program, Int32 location, Int32 count, Pointer<Double> value);
typedef PFNGLPROGRAMUNIFORM1UIPROC = Void Function(
    Uint32 program, Int32 location, Uint32 v0);
typedef PFNGLPROGRAMUNIFORM1UIVPROC = Void Function(
    Uint32 program, Int32 location, Int32 count, Pointer<Uint32> value);
typedef PFNGLPROGRAMUNIFORM2IPROC = Void Function(
    Uint32 program, Int32 location, Int32 v0, Int32 v1);
typedef PFNGLPROGRAMUNIFORM2IVPROC = Void Function(
    Uint32 program, Int32 location, Int32 count, Pointer<Int32> value);
typedef PFNGLPROGRAMUNIFORM2FPROC = Void Function(
    Uint32 program, Int32 location, Float v0, Float v1);
typedef PFNGLPROGRAMUNIFORM2FVPROC = Void Function(
    Uint32 program, Int32 location, Int32 count, Pointer<Float> value);
typedef PFNGLPROGRAMUNIFORM2DPROC = Void Function(
    Uint32 program, Int32 location, Double v0, Double v1);
typedef PFNGLPROGRAMUNIFORM2DVPROC = Void Function(
    Uint32 program, Int32 location, Int32 count, Pointer<Double> value);
typedef PFNGLPROGRAMUNIFORM2UIPROC = Void Function(
    Uint32 program, Int32 location, Uint32 v0, Uint32 v1);
typedef PFNGLPROGRAMUNIFORM2UIVPROC = Void Function(
    Uint32 program, Int32 location, Int32 count, Pointer<Uint32> value);
typedef PFNGLPROGRAMUNIFORM3IPROC = Void Function(
    Uint32 program, Int32 location, Int32 v0, Int32 v1, Int32 v2);
typedef PFNGLPROGRAMUNIFORM3IVPROC = Void Function(
    Uint32 program, Int32 location, Int32 count, Pointer<Int32> value);
typedef PFNGLPROGRAMUNIFORM3FPROC = Void Function(
    Uint32 program, Int32 location, Float v0, Float v1, Float v2);
typedef PFNGLPROGRAMUNIFORM3FVPROC = Void Function(
    Uint32 program, Int32 location, Int32 count, Pointer<Float> value);
typedef PFNGLPROGRAMUNIFORM3DPROC = Void Function(
    Uint32 program, Int32 location, Double v0, Double v1, Double v2);
typedef PFNGLPROGRAMUNIFORM3DVPROC = Void Function(
    Uint32 program, Int32 location, Int32 count, Pointer<Double> value);
typedef PFNGLPROGRAMUNIFORM3UIPROC = Void Function(
    Uint32 program, Int32 location, Uint32 v0, Uint32 v1, Uint32 v2);
typedef PFNGLPROGRAMUNIFORM3UIVPROC = Void Function(
    Uint32 program, Int32 location, Int32 count, Pointer<Uint32> value);
typedef PFNGLPROGRAMUNIFORM4IPROC = Void Function(
    Uint32 program, Int32 location, Int32 v0, Int32 v1, Int32 v2, Int32 v3);
typedef PFNGLPROGRAMUNIFORM4IVPROC = Void Function(
    Uint32 program, Int32 location, Int32 count, Pointer<Int32> value);
typedef PFNGLPROGRAMUNIFORM4FPROC = Void Function(
    Uint32 program, Int32 location, Float v0, Float v1, Float v2, Float v3);
typedef PFNGLPROGRAMUNIFORM4FVPROC = Void Function(
    Uint32 program, Int32 location, Int32 count, Pointer<Float> value);
typedef PFNGLPROGRAMUNIFORM4DPROC = Void Function(
    Uint32 program, Int32 location, Double v0, Double v1, Double v2, Double v3);
typedef PFNGLPROGRAMUNIFORM4DVPROC = Void Function(
    Uint32 program, Int32 location, Int32 count, Pointer<Double> value);
typedef PFNGLPROGRAMUNIFORM4UIPROC = Void Function(
    Uint32 program, Int32 location, Uint32 v0, Uint32 v1, Uint32 v2, Uint32 v3);
typedef PFNGLPROGRAMUNIFORM4UIVPROC = Void Function(
    Uint32 program, Int32 location, Int32 count, Pointer<Uint32> value);
typedef PFNGLPROGRAMUNIFORMMATRIX2FVPROC = Void Function(Uint32 program,
    Int32 location, Int32 count, Uint8 transpose, Pointer<Float> value);
typedef PFNGLPROGRAMUNIFORMMATRIX3FVPROC = Void Function(Uint32 program,
    Int32 location, Int32 count, Uint8 transpose, Pointer<Float> value);
typedef PFNGLPROGRAMUNIFORMMATRIX4FVPROC = Void Function(Uint32 program,
    Int32 location, Int32 count, Uint8 transpose, Pointer<Float> value);
typedef PFNGLPROGRAMUNIFORMMATRIX2DVPROC = Void Function(Uint32 program,
    Int32 location, Int32 count, Uint8 transpose, Pointer<Double> value);
typedef PFNGLPROGRAMUNIFORMMATRIX3DVPROC = Void Function(Uint32 program,
    Int32 location, Int32 count, Uint8 transpose, Pointer<Double> value);
typedef PFNGLPROGRAMUNIFORMMATRIX4DVPROC = Void Function(Uint32 program,
    Int32 location, Int32 count, Uint8 transpose, Pointer<Double> value);
typedef PFNGLPROGRAMUNIFORMMATRIX2X3FVPROC = Void Function(Uint32 program,
    Int32 location, Int32 count, Uint8 transpose, Pointer<Float> value);
typedef PFNGLPROGRAMUNIFORMMATRIX3X2FVPROC = Void Function(Uint32 program,
    Int32 location, Int32 count, Uint8 transpose, Pointer<Float> value);
typedef PFNGLPROGRAMUNIFORMMATRIX2X4FVPROC = Void Function(Uint32 program,
    Int32 location, Int32 count, Uint8 transpose, Pointer<Float> value);
typedef PFNGLPROGRAMUNIFORMMATRIX4X2FVPROC = Void Function(Uint32 program,
    Int32 location, Int32 count, Uint8 transpose, Pointer<Float> value);
typedef PFNGLPROGRAMUNIFORMMATRIX3X4FVPROC = Void Function(Uint32 program,
    Int32 location, Int32 count, Uint8 transpose, Pointer<Float> value);
typedef PFNGLPROGRAMUNIFORMMATRIX4X3FVPROC = Void Function(Uint32 program,
    Int32 location, Int32 count, Uint8 transpose, Pointer<Float> value);
typedef PFNGLPROGRAMUNIFORMMATRIX2X3DVPROC = Void Function(Uint32 program,
    Int32 location, Int32 count, Uint8 transpose, Pointer<Double> value);
typedef PFNGLPROGRAMUNIFORMMATRIX3X2DVPROC = Void Function(Uint32 program,
    Int32 location, Int32 count, Uint8 transpose, Pointer<Double> value);
typedef PFNGLPROGRAMUNIFORMMATRIX2X4DVPROC = Void Function(Uint32 program,
    Int32 location, Int32 count, Uint8 transpose, Pointer<Double> value);
typedef PFNGLPROGRAMUNIFORMMATRIX4X2DVPROC = Void Function(Uint32 program,
    Int32 location, Int32 count, Uint8 transpose, Pointer<Double> value);
typedef PFNGLPROGRAMUNIFORMMATRIX3X4DVPROC = Void Function(Uint32 program,
    Int32 location, Int32 count, Uint8 transpose, Pointer<Double> value);
typedef PFNGLPROGRAMUNIFORMMATRIX4X3DVPROC = Void Function(Uint32 program,
    Int32 location, Int32 count, Uint8 transpose, Pointer<Double> value);
typedef PFNGLVALIDATEPROGRAMPIPELINEPROC = Void Function(Uint32 pipeline);
typedef PFNGLGETPROGRAMPIPELINEINFOLOGPROC = Void Function(Uint32 pipeline,
    Int32 bufSize, Pointer<Int32> length, Pointer<Utf8> infoLog);
typedef PFNGLVERTEXATTRIBL1DPROC = Void Function(Uint32 index, Double x);
typedef PFNGLVERTEXATTRIBL2DPROC = Void Function(
    Uint32 index, Double x, Double y);
typedef PFNGLVERTEXATTRIBL3DPROC = Void Function(
    Uint32 index, Double x, Double y, Double z);
typedef PFNGLVERTEXATTRIBL4DPROC = Void Function(
    Uint32 index, Double x, Double y, Double z, Double w);
typedef PFNGLVERTEXATTRIBL1DVPROC = Void Function(
    Uint32 index, Pointer<Double> v);
typedef PFNGLVERTEXATTRIBL2DVPROC = Void Function(
    Uint32 index, Pointer<Double> v);
typedef PFNGLVERTEXATTRIBL3DVPROC = Void Function(
    Uint32 index, Pointer<Double> v);
typedef PFNGLVERTEXATTRIBL4DVPROC = Void Function(
    Uint32 index, Pointer<Double> v);
typedef PFNGLVERTEXATTRIBLPOINTERPROC = Void Function(
    Uint32 index, Int32 size, Uint32 type, Int32 stride, Pointer<Void> pointer);
typedef PFNGLGETVERTEXATTRIBLDVPROC = Void Function(
    Uint32 index, Uint32 pname, Pointer<Double> params);
typedef PFNGLVIEWPORTARRAYVPROC = Void Function(
    Uint32 first, Int32 count, Pointer<Float> v);
typedef PFNGLVIEWPORTINDEXEDFPROC = Void Function(
    Uint32 index, Float x, Float y, Float w, Float h);
typedef PFNGLVIEWPORTINDEXEDFVPROC = Void Function(
    Uint32 index, Pointer<Float> v);
typedef PFNGLSCISSORARRAYVPROC = Void Function(
    Uint32 first, Int32 count, Pointer<Int32> v);
typedef PFNGLSCISSORINDEXEDPROC = Void Function(
    Uint32 index, Int32 left, Int32 bottom, Int32 width, Int32 height);
typedef PFNGLSCISSORINDEXEDVPROC = Void Function(
    Uint32 index, Pointer<Int32> v);
typedef PFNGLDEPTHRANGEARRAYVPROC = Void Function(
    Uint32 first, Int32 count, Pointer<Double> v);
typedef PFNGLDEPTHRANGEINDEXEDPROC = Void Function(
    Uint32 index, Double n, Double f);
typedef PFNGLGETFLOATI_VPROC = Void Function(
    Uint32 target, Uint32 index, Pointer<Float> data);
typedef PFNGLGETDOUBLEI_VPROC = Void Function(
    Uint32 target, Uint32 index, Pointer<Double> data);
typedef PFNGLDRAWARRAYSINSTANCEDBASEINSTANCEPROC = Void Function(Uint32 mode,
    Int32 first, Int32 count, Int32 instancecount, Uint32 baseinstance);
typedef PFNGLDRAWELEMENTSINSTANCEDBASEINSTANCEPROC = Void Function(
    Uint32 mode,
    Int32 count,
    Uint32 type,
    Pointer<Void> indices,
    Int32 instancecount,
    Uint32 baseinstance);
typedef PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXBASEINSTANCEPROC = Void Function(
    Uint32 mode,
    Int32 count,
    Uint32 type,
    Pointer<Void> indices,
    Int32 instancecount,
    Int32 basevertex,
    Uint32 baseinstance);
typedef PFNGLGETINTERNALFORMATIVPROC = Void Function(Uint32 target,
    Uint32 internalformat, Uint32 pname, Int32 bufSize, Pointer<Int32> params);
typedef PFNGLGETACTIVEATOMICCOUNTERBUFFERIVPROC = Void Function(
    Uint32 program, Uint32 bufferIndex, Uint32 pname, Pointer<Int32> params);
typedef PFNGLBINDIMAGETEXTUREPROC = Void Function(Uint32 unit, Uint32 texture,
    Int32 level, Uint8 layered, Int32 layer, Uint32 access, Uint32 format);
typedef PFNGLMEMORYBARRIERPROC = Void Function(Uint32 barriers);
typedef PFNGLTEXSTORAGE1DPROC = Void Function(
    Uint32 target, Int32 levels, Uint32 internalformat, Int32 width);
typedef PFNGLTEXSTORAGE2DPROC = Void Function(Uint32 target, Int32 levels,
    Uint32 internalformat, Int32 width, Int32 height);
typedef PFNGLTEXSTORAGE3DPROC = Void Function(Uint32 target, Int32 levels,
    Uint32 internalformat, Int32 width, Int32 height, Int32 depth);
typedef PFNGLDRAWTRANSFORMFEEDBACKINSTANCEDPROC = Void Function(
    Uint32 mode, Uint32 id, Int32 instancecount);
typedef PFNGLDRAWTRANSFORMFEEDBACKSTREAMINSTANCEDPROC = Void Function(
    Uint32 mode, Uint32 id, Uint32 stream, Int32 instancecount);
typedef GLDEBUGPROC = Void Function(
    Uint32 source,
    Uint32 type,
    Uint32 id,
    Uint32 severity,
    Int32 length,
    Pointer<Utf8> message,
    Pointer<Void> userParam);
typedef PFNGLCLEARBUFFERDATAPROC = Void Function(Uint32 target,
    Uint32 internalformat, Uint32 format, Uint32 type, Pointer<Void> data);
typedef PFNGLCLEARBUFFERSUBDATAPROC = Void Function(
    Uint32 target,
    Uint32 internalformat,
    Int64 offset,
    Int64 size,
    Uint32 format,
    Uint32 type,
    Pointer<Void> data);
typedef PFNGLDISPATCHCOMPUTEPROC = Void Function(
    Uint32 num_groups_x, Uint32 num_groups_y, Uint32 num_groups_z);
typedef PFNGLDISPATCHCOMPUTEINDIRECTPROC = Void Function(Int64 indirect);
typedef PFNGLCOPYIMAGESUBDATAPROC = Void Function(
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
typedef PFNGLFRAMEBUFFERPARAMETERIPROC = Void Function(
    Uint32 target, Uint32 pname, Int32 param);
typedef PFNGLGETFRAMEBUFFERPARAMETERIVPROC = Void Function(
    Uint32 target, Uint32 pname, Pointer<Int32> params);
typedef PFNGLGETINTERNALFORMATI64VPROC = Void Function(Uint32 target,
    Uint32 internalformat, Uint32 pname, Int32 bufSize, Pointer<Int64> params);
typedef PFNGLINVALIDATETEXSUBIMAGEPROC = Void Function(
    Uint32 texture,
    Int32 level,
    Int32 xoffset,
    Int32 yoffset,
    Int32 zoffset,
    Int32 width,
    Int32 height,
    Int32 depth);
typedef PFNGLINVALIDATETEXIMAGEPROC = Void Function(
    Uint32 texture, Int32 level);
typedef PFNGLINVALIDATEBUFFERSUBDATAPROC = Void Function(
    Uint32 buffer, Int64 offset, Int64 length);
typedef PFNGLINVALIDATEBUFFERDATAPROC = Void Function(Uint32 buffer);
typedef PFNGLINVALIDATEFRAMEBUFFERPROC = Void Function(
    Uint32 target, Int32 numAttachments, Pointer<Uint32> attachments);
typedef PFNGLINVALIDATESUBFRAMEBUFFERPROC = Void Function(
    Uint32 target,
    Int32 numAttachments,
    Pointer<Uint32> attachments,
    Int32 x,
    Int32 y,
    Int32 width,
    Int32 height);
typedef PFNGLMULTIDRAWARRAYSINDIRECTPROC = Void Function(
    Uint32 mode, Pointer<Void> indirect, Int32 drawcount, Int32 stride);
typedef PFNGLMULTIDRAWELEMENTSINDIRECTPROC = Void Function(Uint32 mode,
    Uint32 type, Pointer<Void> indirect, Int32 drawcount, Int32 stride);
typedef PFNGLGETPROGRAMINTERFACEIVPROC = Void Function(Uint32 program,
    Uint32 programInterface, Uint32 pname, Pointer<Int32> params);
typedef PFNGLGETPROGRAMRESOURCEINDEXPROC = Uint32 Function(
    Uint32 program, Uint32 programInterface, Pointer<Utf8> name);
typedef PFNGLGETPROGRAMRESOURCENAMEPROC = Void Function(
    Uint32 program,
    Uint32 programInterface,
    Uint32 index,
    Int32 bufSize,
    Pointer<Int32> length,
    Pointer<Utf8> name);
typedef PFNGLGETPROGRAMRESOURCEIVPROC = Void Function(
    Uint32 program,
    Uint32 programInterface,
    Uint32 index,
    Int32 propCount,
    Pointer<Uint32> props,
    Int32 bufSize,
    Pointer<Int32> length,
    Pointer<Int32> params);
typedef PFNGLGETPROGRAMRESOURCELOCATIONPROC = Int32 Function(
    Uint32 program, Uint32 programInterface, Pointer<Utf8> name);
typedef PFNGLGETPROGRAMRESOURCELOCATIONINDEXPROC = Int32 Function(
    Uint32 program, Uint32 programInterface, Pointer<Utf8> name);
typedef PFNGLSHADERSTORAGEBLOCKBINDINGPROC = Void Function(
    Uint32 program, Uint32 storageBlockIndex, Uint32 storageBlockBinding);
typedef PFNGLTEXBUFFERRANGEPROC = Void Function(Uint32 target,
    Uint32 internalformat, Uint32 buffer, Int64 offset, Int64 size);
typedef PFNGLTEXSTORAGE2DMULTISAMPLEPROC = Void Function(
    Uint32 target,
    Int32 samples,
    Uint32 internalformat,
    Int32 width,
    Int32 height,
    Uint8 fixedsamplelocations);
typedef PFNGLTEXSTORAGE3DMULTISAMPLEPROC = Void Function(
    Uint32 target,
    Int32 samples,
    Uint32 internalformat,
    Int32 width,
    Int32 height,
    Int32 depth,
    Uint8 fixedsamplelocations);
typedef PFNGLTEXTUREVIEWPROC = Void Function(
    Uint32 texture,
    Uint32 target,
    Uint32 origtexture,
    Uint32 internalformat,
    Uint32 minlevel,
    Uint32 numlevels,
    Uint32 minlayer,
    Uint32 numlayers);
typedef PFNGLBINDVERTEXBUFFERPROC = Void Function(
    Uint32 bindingindex, Uint32 buffer, Int64 offset, Int32 stride);
typedef PFNGLVERTEXATTRIBFORMATPROC = Void Function(Uint32 attribindex,
    Int32 size, Uint32 type, Uint8 normalized, Uint32 relativeoffset);
typedef PFNGLVERTEXATTRIBIFORMATPROC = Void Function(
    Uint32 attribindex, Int32 size, Uint32 type, Uint32 relativeoffset);
typedef PFNGLVERTEXATTRIBLFORMATPROC = Void Function(
    Uint32 attribindex, Int32 size, Uint32 type, Uint32 relativeoffset);
typedef PFNGLVERTEXATTRIBBINDINGPROC = Void Function(
    Uint32 attribindex, Uint32 bindingindex);
typedef PFNGLVERTEXBINDINGDIVISORPROC = Void Function(
    Uint32 bindingindex, Uint32 divisor);
typedef PFNGLDEBUGMESSAGECONTROLPROC = Void Function(Uint32 source, Uint32 type,
    Uint32 severity, Int32 count, Pointer<Uint32> ids, Uint8 enabled);
typedef PFNGLDEBUGMESSAGEINSERTPROC = Void Function(Uint32 source, Uint32 type,
    Uint32 id, Uint32 severity, Int32 length, Pointer<Utf8> buf);
typedef PFNGLDEBUGMESSAGECALLBACKPROC = Void Function(
    Pointer<NativeFunction<GLDEBUGPROC>> callback, Pointer<Void> userParam);
typedef PFNGLGETDEBUGMESSAGELOGPROC = Uint32 Function(
    Uint32 count,
    Int32 bufSize,
    Pointer<Uint32> sources,
    Pointer<Uint32> types,
    Pointer<Uint32> ids,
    Pointer<Uint32> severities,
    Pointer<Int32> lengths,
    Pointer<Utf8> messageLog);
typedef PFNGLPUSHDEBUGGROUPPROC = Void Function(
    Uint32 source, Uint32 id, Int32 length, Pointer<Utf8> message);
typedef PFNGLPOPDEBUGGROUPPROC = Void Function();
typedef PFNGLOBJECTLABELPROC = Void Function(
    Uint32 identifier, Uint32 name, Int32 length, Pointer<Utf8> label);
typedef PFNGLGETOBJECTLABELPROC = Void Function(Uint32 identifier, Uint32 name,
    Int32 bufSize, Pointer<Int32> length, Pointer<Utf8> label);
typedef PFNGLOBJECTPTRLABELPROC = Void Function(
    Pointer<Void> ptr, Int32 length, Pointer<Utf8> label);
typedef PFNGLGETOBJECTPTRLABELPROC = Void Function(Pointer<Void> ptr,
    Int32 bufSize, Pointer<Int32> length, Pointer<Utf8> label);
typedef PFNGLBUFFERSTORAGEPROC = Void Function(
    Uint32 target, Int64 size, Pointer<Void> data, Uint32 flags);
typedef PFNGLCLEARTEXIMAGEPROC = Void Function(Uint32 texture, Int32 level,
    Uint32 format, Uint32 type, Pointer<Void> data);
typedef PFNGLCLEARTEXSUBIMAGEPROC = Void Function(
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
typedef PFNGLBINDBUFFERSBASEPROC = Void Function(
    Uint32 target, Uint32 first, Int32 count, Pointer<Uint32> buffers);
typedef PFNGLBINDBUFFERSRANGEPROC = Void Function(
    Uint32 target,
    Uint32 first,
    Int32 count,
    Pointer<Uint32> buffers,
    Pointer<Int64> offsets,
    Pointer<Int64> sizes);
typedef PFNGLBINDTEXTURESPROC = Void Function(
    Uint32 first, Int32 count, Pointer<Uint32> textures);
typedef PFNGLBINDSAMPLERSPROC = Void Function(
    Uint32 first, Int32 count, Pointer<Uint32> samplers);
typedef PFNGLBINDIMAGETEXTURESPROC = Void Function(
    Uint32 first, Int32 count, Pointer<Uint32> textures);
typedef PFNGLBINDVERTEXBUFFERSPROC = Void Function(Uint32 first, Int32 count,
    Pointer<Uint32> buffers, Pointer<Int64> offsets, Pointer<Int32> strides);
typedef PFNGLCLIPCONTROLPROC = Void Function(Uint32 origin, Uint32 depth);
typedef PFNGLCREATETRANSFORMFEEDBACKSPROC = Void Function(
    Int32 n, Pointer<Uint32> ids);
typedef PFNGLTRANSFORMFEEDBACKBUFFERBASEPROC = Void Function(
    Uint32 xfb, Uint32 index, Uint32 buffer);
typedef PFNGLTRANSFORMFEEDBACKBUFFERRANGEPROC = Void Function(
    Uint32 xfb, Uint32 index, Uint32 buffer, Int64 offset, Int64 size);
typedef PFNGLGETTRANSFORMFEEDBACKIVPROC = Void Function(
    Uint32 xfb, Uint32 pname, Pointer<Int32> param);
typedef PFNGLGETTRANSFORMFEEDBACKI_VPROC = Void Function(
    Uint32 xfb, Uint32 pname, Uint32 index, Pointer<Int32> param);
typedef PFNGLGETTRANSFORMFEEDBACKI64_VPROC = Void Function(
    Uint32 xfb, Uint32 pname, Uint32 index, Pointer<Int64> param);
typedef PFNGLCREATEBUFFERSPROC = Void Function(
    Int32 n, Pointer<Uint32> buffers);
typedef PFNGLNAMEDBUFFERSTORAGEPROC = Void Function(
    Uint32 buffer, Int64 size, Pointer<Void> data, Uint32 flags);
typedef PFNGLNAMEDBUFFERDATAPROC = Void Function(
    Uint32 buffer, Int64 size, Pointer<Void> data, Uint32 usage);
typedef PFNGLNAMEDBUFFERSUBDATAPROC = Void Function(
    Uint32 buffer, Int64 offset, Int64 size, Pointer<Void> data);
typedef PFNGLCOPYNAMEDBUFFERSUBDATAPROC = Void Function(Uint32 readBuffer,
    Uint32 writeBuffer, Int64 readOffset, Int64 writeOffset, Int64 size);
typedef PFNGLCLEARNAMEDBUFFERDATAPROC = Void Function(Uint32 buffer,
    Uint32 internalformat, Uint32 format, Uint32 type, Pointer<Void> data);
typedef PFNGLCLEARNAMEDBUFFERSUBDATAPROC = Void Function(
    Uint32 buffer,
    Uint32 internalformat,
    Int64 offset,
    Int64 size,
    Uint32 format,
    Uint32 type,
    Pointer<Void> data);
typedef PFNGLMAPNAMEDBUFFERPROC = Pointer<Void> Function(
    Uint32 buffer, Uint32 access);
typedef PFNGLMAPNAMEDBUFFERRANGEPROC = Pointer<Void> Function(
    Uint32 buffer, Int64 offset, Int64 length, Uint32 access);
typedef PFNGLUNMAPNAMEDBUFFERPROC = Uint8 Function(Uint32 buffer);
typedef PFNGLFLUSHMAPPEDNAMEDBUFFERRANGEPROC = Void Function(
    Uint32 buffer, Int64 offset, Int64 length);
typedef PFNGLGETNAMEDBUFFERPARAMETERIVPROC = Void Function(
    Uint32 buffer, Uint32 pname, Pointer<Int32> params);
typedef PFNGLGETNAMEDBUFFERPARAMETERI64VPROC = Void Function(
    Uint32 buffer, Uint32 pname, Pointer<Int64> params);
typedef PFNGLGETNAMEDBUFFERPOINTERVPROC = Void Function(
    Uint32 buffer, Uint32 pname, Pointer<Pointer<Void>> params);
typedef PFNGLGETNAMEDBUFFERSUBDATAPROC = Void Function(
    Uint32 buffer, Int64 offset, Int64 size, Pointer<Void> data);
typedef PFNGLCREATEFRAMEBUFFERSPROC = Void Function(
    Int32 n, Pointer<Uint32> framebuffers);
typedef PFNGLNAMEDFRAMEBUFFERRENDERBUFFERPROC = Void Function(
    Uint32 framebuffer,
    Uint32 attachment,
    Uint32 renderbuffertarget,
    Uint32 renderbuffer);
typedef PFNGLNAMEDFRAMEBUFFERPARAMETERIPROC = Void Function(
    Uint32 framebuffer, Uint32 pname, Int32 param);
typedef PFNGLNAMEDFRAMEBUFFERTEXTUREPROC = Void Function(
    Uint32 framebuffer, Uint32 attachment, Uint32 texture, Int32 level);
typedef PFNGLNAMEDFRAMEBUFFERTEXTURELAYERPROC = Void Function(
    Uint32 framebuffer,
    Uint32 attachment,
    Uint32 texture,
    Int32 level,
    Int32 layer);
typedef PFNGLNAMEDFRAMEBUFFERDRAWBUFFERPROC = Void Function(
    Uint32 framebuffer, Uint32 buf);
typedef PFNGLNAMEDFRAMEBUFFERDRAWBUFFERSPROC = Void Function(
    Uint32 framebuffer, Int32 n, Pointer<Uint32> bufs);
typedef PFNGLNAMEDFRAMEBUFFERREADBUFFERPROC = Void Function(
    Uint32 framebuffer, Uint32 src);
typedef PFNGLINVALIDATENAMEDFRAMEBUFFERDATAPROC = Void Function(
    Uint32 framebuffer, Int32 numAttachments, Pointer<Uint32> attachments);
typedef PFNGLINVALIDATENAMEDFRAMEBUFFERSUBDATAPROC = Void Function(
    Uint32 framebuffer,
    Int32 numAttachments,
    Pointer<Uint32> attachments,
    Int32 x,
    Int32 y,
    Int32 width,
    Int32 height);
typedef PFNGLCLEARNAMEDFRAMEBUFFERIVPROC = Void Function(
    Uint32 framebuffer, Uint32 buffer, Int32 drawbuffer, Pointer<Int32> value);
typedef PFNGLCLEARNAMEDFRAMEBUFFERUIVPROC = Void Function(
    Uint32 framebuffer, Uint32 buffer, Int32 drawbuffer, Pointer<Uint32> value);
typedef PFNGLCLEARNAMEDFRAMEBUFFERFVPROC = Void Function(
    Uint32 framebuffer, Uint32 buffer, Int32 drawbuffer, Pointer<Float> value);
typedef PFNGLCLEARNAMEDFRAMEBUFFERFIPROC = Void Function(Uint32 framebuffer,
    Uint32 buffer, Int32 drawbuffer, Float depth, Int32 stencil);
typedef PFNGLBLITNAMEDFRAMEBUFFERPROC = Void Function(
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
typedef PFNGLCHECKNAMEDFRAMEBUFFERSTATUSPROC = Uint32 Function(
    Uint32 framebuffer, Uint32 target);
typedef PFNGLGETNAMEDFRAMEBUFFERPARAMETERIVPROC = Void Function(
    Uint32 framebuffer, Uint32 pname, Pointer<Int32> param);
typedef PFNGLGETNAMEDFRAMEBUFFERATTACHMENTPARAMETERIVPROC = Void Function(
    Uint32 framebuffer, Uint32 attachment, Uint32 pname, Pointer<Int32> params);
typedef PFNGLCREATERENDERBUFFERSPROC = Void Function(
    Int32 n, Pointer<Uint32> renderbuffers);
typedef PFNGLNAMEDRENDERBUFFERSTORAGEPROC = Void Function(
    Uint32 renderbuffer, Uint32 internalformat, Int32 width, Int32 height);
typedef PFNGLNAMEDRENDERBUFFERSTORAGEMULTISAMPLEPROC = Void Function(
    Uint32 renderbuffer,
    Int32 samples,
    Uint32 internalformat,
    Int32 width,
    Int32 height);
typedef PFNGLGETNAMEDRENDERBUFFERPARAMETERIVPROC = Void Function(
    Uint32 renderbuffer, Uint32 pname, Pointer<Int32> params);
typedef PFNGLCREATETEXTURESPROC = Void Function(
    Uint32 target, Int32 n, Pointer<Uint32> textures);
typedef PFNGLTEXTUREBUFFERPROC = Void Function(
    Uint32 texture, Uint32 internalformat, Uint32 buffer);
typedef PFNGLTEXTUREBUFFERRANGEPROC = Void Function(Uint32 texture,
    Uint32 internalformat, Uint32 buffer, Int64 offset, Int64 size);
typedef PFNGLTEXTURESTORAGE1DPROC = Void Function(
    Uint32 texture, Int32 levels, Uint32 internalformat, Int32 width);
typedef PFNGLTEXTURESTORAGE2DPROC = Void Function(Uint32 texture, Int32 levels,
    Uint32 internalformat, Int32 width, Int32 height);
typedef PFNGLTEXTURESTORAGE3DPROC = Void Function(Uint32 texture, Int32 levels,
    Uint32 internalformat, Int32 width, Int32 height, Int32 depth);
typedef PFNGLTEXTURESTORAGE2DMULTISAMPLEPROC = Void Function(
    Uint32 texture,
    Int32 samples,
    Uint32 internalformat,
    Int32 width,
    Int32 height,
    Uint8 fixedsamplelocations);
typedef PFNGLTEXTURESTORAGE3DMULTISAMPLEPROC = Void Function(
    Uint32 texture,
    Int32 samples,
    Uint32 internalformat,
    Int32 width,
    Int32 height,
    Int32 depth,
    Uint8 fixedsamplelocations);
typedef PFNGLTEXTURESUBIMAGE1DPROC = Void Function(
    Uint32 texture,
    Int32 level,
    Int32 xoffset,
    Int32 width,
    Uint32 format,
    Uint32 type,
    Pointer<Void> pixels);
typedef PFNGLTEXTURESUBIMAGE2DPROC = Void Function(
    Uint32 texture,
    Int32 level,
    Int32 xoffset,
    Int32 yoffset,
    Int32 width,
    Int32 height,
    Uint32 format,
    Uint32 type,
    Pointer<Void> pixels);
typedef PFNGLTEXTURESUBIMAGE3DPROC = Void Function(
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
typedef PFNGLCOMPRESSEDTEXTURESUBIMAGE1DPROC = Void Function(
    Uint32 texture,
    Int32 level,
    Int32 xoffset,
    Int32 width,
    Uint32 format,
    Int32 imageSize,
    Pointer<Void> data);
typedef PFNGLCOMPRESSEDTEXTURESUBIMAGE2DPROC = Void Function(
    Uint32 texture,
    Int32 level,
    Int32 xoffset,
    Int32 yoffset,
    Int32 width,
    Int32 height,
    Uint32 format,
    Int32 imageSize,
    Pointer<Void> data);
typedef PFNGLCOMPRESSEDTEXTURESUBIMAGE3DPROC = Void Function(
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
typedef PFNGLCOPYTEXTURESUBIMAGE1DPROC = Void Function(
    Uint32 texture, Int32 level, Int32 xoffset, Int32 x, Int32 y, Int32 width);
typedef PFNGLCOPYTEXTURESUBIMAGE2DPROC = Void Function(
    Uint32 texture,
    Int32 level,
    Int32 xoffset,
    Int32 yoffset,
    Int32 x,
    Int32 y,
    Int32 width,
    Int32 height);
typedef PFNGLCOPYTEXTURESUBIMAGE3DPROC = Void Function(
    Uint32 texture,
    Int32 level,
    Int32 xoffset,
    Int32 yoffset,
    Int32 zoffset,
    Int32 x,
    Int32 y,
    Int32 width,
    Int32 height);
typedef PFNGLTEXTUREPARAMETERFPROC = Void Function(
    Uint32 texture, Uint32 pname, Float param);
typedef PFNGLTEXTUREPARAMETERFVPROC = Void Function(
    Uint32 texture, Uint32 pname, Pointer<Float> param);
typedef PFNGLTEXTUREPARAMETERIPROC = Void Function(
    Uint32 texture, Uint32 pname, Int32 param);
typedef PFNGLTEXTUREPARAMETERIIVPROC = Void Function(
    Uint32 texture, Uint32 pname, Pointer<Int32> params);
typedef PFNGLTEXTUREPARAMETERIUIVPROC = Void Function(
    Uint32 texture, Uint32 pname, Pointer<Uint32> params);
typedef PFNGLTEXTUREPARAMETERIVPROC = Void Function(
    Uint32 texture, Uint32 pname, Pointer<Int32> param);
typedef PFNGLGENERATETEXTUREMIPMAPPROC = Void Function(Uint32 texture);
typedef PFNGLBINDTEXTUREUNITPROC = Void Function(Uint32 unit, Uint32 texture);
typedef PFNGLGETTEXTUREIMAGEPROC = Void Function(Uint32 texture, Int32 level,
    Uint32 format, Uint32 type, Int32 bufSize, Pointer<Void> pixels);
typedef PFNGLGETCOMPRESSEDTEXTUREIMAGEPROC = Void Function(
    Uint32 texture, Int32 level, Int32 bufSize, Pointer<Void> pixels);
typedef PFNGLGETTEXTURELEVELPARAMETERFVPROC = Void Function(
    Uint32 texture, Int32 level, Uint32 pname, Pointer<Float> params);
typedef PFNGLGETTEXTURELEVELPARAMETERIVPROC = Void Function(
    Uint32 texture, Int32 level, Uint32 pname, Pointer<Int32> params);
typedef PFNGLGETTEXTUREPARAMETERFVPROC = Void Function(
    Uint32 texture, Uint32 pname, Pointer<Float> params);
typedef PFNGLGETTEXTUREPARAMETERIIVPROC = Void Function(
    Uint32 texture, Uint32 pname, Pointer<Int32> params);
typedef PFNGLGETTEXTUREPARAMETERIUIVPROC = Void Function(
    Uint32 texture, Uint32 pname, Pointer<Uint32> params);
typedef PFNGLGETTEXTUREPARAMETERIVPROC = Void Function(
    Uint32 texture, Uint32 pname, Pointer<Int32> params);
typedef PFNGLCREATEVERTEXARRAYSPROC = Void Function(
    Int32 n, Pointer<Uint32> arrays);
typedef PFNGLDISABLEVERTEXARRAYATTRIBPROC = Void Function(
    Uint32 vaobj, Uint32 index);
typedef PFNGLENABLEVERTEXARRAYATTRIBPROC = Void Function(
    Uint32 vaobj, Uint32 index);
typedef PFNGLVERTEXARRAYELEMENTBUFFERPROC = Void Function(
    Uint32 vaobj, Uint32 buffer);
typedef PFNGLVERTEXARRAYVERTEXBUFFERPROC = Void Function(Uint32 vaobj,
    Uint32 bindingindex, Uint32 buffer, Int64 offset, Int32 stride);
typedef PFNGLVERTEXARRAYVERTEXBUFFERSPROC = Void Function(
    Uint32 vaobj,
    Uint32 first,
    Int32 count,
    Pointer<Uint32> buffers,
    Pointer<Int64> offsets,
    Pointer<Int32> strides);
typedef PFNGLVERTEXARRAYATTRIBBINDINGPROC = Void Function(
    Uint32 vaobj, Uint32 attribindex, Uint32 bindingindex);
typedef PFNGLVERTEXARRAYATTRIBFORMATPROC = Void Function(
    Uint32 vaobj,
    Uint32 attribindex,
    Int32 size,
    Uint32 type,
    Uint8 normalized,
    Uint32 relativeoffset);
typedef PFNGLVERTEXARRAYATTRIBIFORMATPROC = Void Function(Uint32 vaobj,
    Uint32 attribindex, Int32 size, Uint32 type, Uint32 relativeoffset);
typedef PFNGLVERTEXARRAYATTRIBLFORMATPROC = Void Function(Uint32 vaobj,
    Uint32 attribindex, Int32 size, Uint32 type, Uint32 relativeoffset);
typedef PFNGLVERTEXARRAYBINDINGDIVISORPROC = Void Function(
    Uint32 vaobj, Uint32 bindingindex, Uint32 divisor);
typedef PFNGLGETVERTEXARRAYIVPROC = Void Function(
    Uint32 vaobj, Uint32 pname, Pointer<Int32> param);
typedef PFNGLGETVERTEXARRAYINDEXEDIVPROC = Void Function(
    Uint32 vaobj, Uint32 index, Uint32 pname, Pointer<Int32> param);
typedef PFNGLGETVERTEXARRAYINDEXED64IVPROC = Void Function(
    Uint32 vaobj, Uint32 index, Uint32 pname, Pointer<Int64> param);
typedef PFNGLCREATESAMPLERSPROC = Void Function(
    Int32 n, Pointer<Uint32> samplers);
typedef PFNGLCREATEPROGRAMPIPELINESPROC = Void Function(
    Int32 n, Pointer<Uint32> pipelines);
typedef PFNGLCREATEQUERIESPROC = Void Function(
    Uint32 target, Int32 n, Pointer<Uint32> ids);
typedef PFNGLGETQUERYBUFFEROBJECTI64VPROC = Void Function(
    Uint32 id, Uint32 buffer, Uint32 pname, Int64 offset);
typedef PFNGLGETQUERYBUFFEROBJECTIVPROC = Void Function(
    Uint32 id, Uint32 buffer, Uint32 pname, Int64 offset);
typedef PFNGLGETQUERYBUFFEROBJECTUI64VPROC = Void Function(
    Uint32 id, Uint32 buffer, Uint32 pname, Int64 offset);
typedef PFNGLGETQUERYBUFFEROBJECTUIVPROC = Void Function(
    Uint32 id, Uint32 buffer, Uint32 pname, Int64 offset);
typedef PFNGLMEMORYBARRIERBYREGIONPROC = Void Function(Uint32 barriers);
typedef PFNGLGETTEXTURESUBIMAGEPROC = Void Function(
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
typedef PFNGLGETCOMPRESSEDTEXTURESUBIMAGEPROC = Void Function(
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
typedef PFNGLGETGRAPHICSRESETSTATUSPROC = Uint32 Function();
typedef PFNGLGETNCOMPRESSEDTEXIMAGEPROC = Void Function(
    Uint32 target, Int32 lod, Int32 bufSize, Pointer<Void> pixels);
typedef PFNGLGETNTEXIMAGEPROC = Void Function(Uint32 target, Int32 level,
    Uint32 format, Uint32 type, Int32 bufSize, Pointer<Void> pixels);
typedef PFNGLGETNUNIFORMDVPROC = Void Function(
    Uint32 program, Int32 location, Int32 bufSize, Pointer<Double> params);
typedef PFNGLGETNUNIFORMFVPROC = Void Function(
    Uint32 program, Int32 location, Int32 bufSize, Pointer<Float> params);
typedef PFNGLGETNUNIFORMIVPROC = Void Function(
    Uint32 program, Int32 location, Int32 bufSize, Pointer<Int32> params);
typedef PFNGLGETNUNIFORMUIVPROC = Void Function(
    Uint32 program, Int32 location, Int32 bufSize, Pointer<Uint32> params);
typedef PFNGLREADNPIXELSPROC = Void Function(
    Int32 x,
    Int32 y,
    Int32 width,
    Int32 height,
    Uint32 format,
    Uint32 type,
    Int32 bufSize,
    Pointer<Void> data);
typedef PFNGLGETNMAPDVPROC = Void Function(
    Uint32 target, Uint32 query, Int32 bufSize, Pointer<Double> v);
typedef PFNGLGETNMAPFVPROC = Void Function(
    Uint32 target, Uint32 query, Int32 bufSize, Pointer<Float> v);
typedef PFNGLGETNMAPIVPROC = Void Function(
    Uint32 target, Uint32 query, Int32 bufSize, Pointer<Int32> v);
typedef PFNGLGETNPIXELMAPFVPROC = Void Function(
    Uint32 map, Int32 bufSize, Pointer<Float> values);
typedef PFNGLGETNPIXELMAPUIVPROC = Void Function(
    Uint32 map, Int32 bufSize, Pointer<Uint32> values);
typedef PFNGLGETNPIXELMAPUSVPROC = Void Function(
    Uint32 map, Int32 bufSize, Pointer<Uint16> values);
typedef PFNGLGETNPOLYGONSTIPPLEPROC = Void Function(
    Int32 bufSize, Pointer<Uint8> pattern);
typedef PFNGLGETNCOLORTABLEPROC = Void Function(Uint32 target, Uint32 format,
    Uint32 type, Int32 bufSize, Pointer<Void> table);
typedef PFNGLGETNCONVOLUTIONFILTERPROC = Void Function(Uint32 target,
    Uint32 format, Uint32 type, Int32 bufSize, Pointer<Void> image);
typedef PFNGLGETNSEPARABLEFILTERPROC = Void Function(
    Uint32 target,
    Uint32 format,
    Uint32 type,
    Int32 rowBufSize,
    Pointer<Void> row,
    Int32 columnBufSize,
    Pointer<Void> column,
    Pointer<Void> span);
typedef PFNGLGETNHISTOGRAMPROC = Void Function(Uint32 target, Uint8 reset,
    Uint32 format, Uint32 type, Int32 bufSize, Pointer<Void> values);
typedef PFNGLGETNMINMAXPROC = Void Function(Uint32 target, Uint8 reset,
    Uint32 format, Uint32 type, Int32 bufSize, Pointer<Void> values);
typedef PFNGLTEXTUREBARRIERPROC = Void Function();
// typedef PFNGLSPECIALIZESHADERPROC = Void Function(
//     Uint32 shader,
//     Pointer<Utf8> pEntryPoint,
//     Uint32 numSpecializationConstants,
//     Pointer<Uint32> pConstantIndex,
//     Pointer<Uint32> pConstantValue);
// typedef PFNGLMULTIDRAWARRAYSINDIRECTCOUNTPROC = Void Function(Uint32 mode,
//     Pointer<Void> indirect, Int64 drawcount, Int32 maxdrawcount, Int32 stride);
// typedef PFNGLMULTIDRAWELEMENTSINDIRECTCOUNTPROC = Void Function(
//     Uint32 mode,
//     Uint32 type,
//     Pointer<Void> indirect,
//     Int64 drawcount,
//     Int32 maxdrawcount,
//     Int32 stride);
// typedef PFNGLPOLYGONOFFSETCLAMPPROC = Void Function(
//     Float factor, Float units, Float clamp);
