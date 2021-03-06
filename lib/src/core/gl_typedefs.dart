import 'dart:ffi';

typedef TglClearIndex_Native = Void Function(Float c);
typedef TglClearIndex_Func = void Function(double c);
typedef TglClearColor_Native = Void Function(
    Float red, Float green, Float blue, Float alpha);
typedef TglClearColor_Func = void Function(
    double red, double green, double blue, double alpha);
typedef TglClear_Native = Void Function(Uint32 mask);
typedef TglClear_Func = void Function(int mask);
typedef TglIndexMask_Native = Void Function(Uint32 mask);
typedef TglIndexMask_Func = void Function(int mask);
typedef TglColorMask_Native = Void Function(
    Uint8 red, Uint8 green, Uint8 blue, Uint8 alpha);
typedef TglColorMask_Func = void Function(
    int red, int green, int blue, int alpha);
typedef TglAlphaFunc_Native = Void Function(Uint32 func, Float ref);
typedef TglAlphaFunc_Func = void Function(int func, double ref);
typedef TglBlendFunc_Native = Void Function(Uint32 sfactor, Uint32 dfactor);
typedef TglBlendFunc_Func = void Function(int sfactor, int dfactor);
typedef TglLogicOp_Native = Void Function(Uint32 opcode);
typedef TglLogicOp_Func = void Function(int opcode);
typedef TglCullFace_Native = Void Function(Uint32 mode);
typedef TglCullFace_Func = void Function(int mode);
typedef TglFrontFace_Native = Void Function(Uint32 mode);
typedef TglFrontFace_Func = void Function(int mode);
typedef TglPointSize_Native = Void Function(Float size);
typedef TglPointSize_Func = void Function(double size);
typedef TglLineWidth_Native = Void Function(Float width);
typedef TglLineWidth_Func = void Function(double width);
typedef TglLineStipple_Native = Void Function(Int32 factor, Uint16 pattern);
typedef TglLineStipple_Func = void Function(int factor, int pattern);
typedef TglPolygonMode_Native = Void Function(Uint32 face, Uint32 mode);
typedef TglPolygonMode_Func = void Function(int face, int mode);
typedef TglPolygonOffset_Native = Void Function(Float factor, Float units);
typedef TglPolygonOffset_Func = void Function(double factor, double units);
typedef TglPolygonStipple_Native = Void Function(Pointer<Uint8> mask);
typedef TglPolygonStipple_Func = void Function(Pointer<Uint8> mask);
typedef TglGetPolygonStipple_Native = Void Function(Pointer<Uint8> mask);
typedef TglGetPolygonStipple_Func = void Function(Pointer<Uint8> mask);
typedef TglEdgeFlag_Native = Void Function(Uint8 flag);
typedef TglEdgeFlag_Func = void Function(int flag);
typedef TglEdgeFlagv_Native = Void Function(Pointer<Uint8> flag);
typedef TglEdgeFlagv_Func = void Function(Pointer<Uint8> flag);
typedef TglScissor_Native = Void Function(
    Int32 x, Int32 y, Int32 width, Int32 height);
typedef TglScissor_Func = void Function(int x, int y, int width, int height);
typedef TglClipPlane_Native = Void Function(
    Uint32 plane, Pointer<Double> equation);
typedef TglClipPlane_Func = void Function(int plane, Pointer<Double> equation);
typedef TglGetClipPlane_Native = Void Function(
    Uint32 plane, Pointer<Double> equation);
typedef TglGetClipPlane_Func = void Function(
    int plane, Pointer<Double> equation);
typedef TglDrawBuffer_Native = Void Function(Uint32 mode);
typedef TglDrawBuffer_Func = void Function(int mode);
typedef TglReadBuffer_Native = Void Function(Uint32 mode);
typedef TglReadBuffer_Func = void Function(int mode);
typedef TglEnable_Native = Void Function(Uint32 cap);
typedef TglEnable_Func = void Function(int cap);
typedef TglDisable_Native = Void Function(Uint32 cap);
typedef TglDisable_Func = void Function(int cap);
typedef TglIsEnabled_Native = Uint8 Function(Uint32 cap);
typedef TglIsEnabled_Func = int Function(int cap);
typedef TglEnableClientState_Native = Void Function(Uint32 cap);
typedef TglEnableClientState_Func = void Function(int cap);
typedef TglDisableClientState_Native = Void Function(Uint32 cap);
typedef TglDisableClientState_Func = void Function(int cap);
typedef TglGetBooleanv_Native = Void Function(
    Uint32 pname, Pointer<Uint8> params);
typedef TglGetBooleanv_Func = void Function(int pname, Pointer<Uint8> params);
typedef TglGetDoublev_Native = Void Function(
    Uint32 pname, Pointer<Double> params);
typedef TglGetDoublev_Func = void Function(int pname, Pointer<Double> params);
typedef TglGetFloatv_Native = Void Function(
    Uint32 pname, Pointer<Float> params);
typedef TglGetFloatv_Func = void Function(int pname, Pointer<Float> params);
typedef TglGetIntegerv_Native = Void Function(
    Uint32 pname, Pointer<Int32> params);
typedef TglGetIntegerv_Func = void Function(int pname, Pointer<Int32> params);
typedef TglPushAttrib_Native = Void Function(Uint32 mask);
typedef TglPushAttrib_Func = void Function(int mask);
typedef TglPopAttrib_Native = Void Function();
typedef TglPopAttrib_Func = void Function();
typedef TglPushClientAttrib_Native = Void Function(Uint32 mask);
typedef TglPushClientAttrib_Func = void Function(int mask);
typedef TglPopClientAttrib_Native = Void Function();
typedef TglPopClientAttrib_Func = void Function();
typedef TglRenderMode_Native = Int32 Function(Uint32 mode);
typedef TglRenderMode_Func = int Function(int mode);
typedef TglGetError_Native = Uint32 Function();
typedef TglGetError_Func = int Function();
typedef TglGetString_Native = Pointer<Uint8> Function(Uint32 name);
typedef TglGetString_Func = Pointer<Uint8> Function(int name);
typedef TglFinish_Native = Void Function();
typedef TglFinish_Func = void Function();
typedef TglFlush_Native = Void Function();
typedef TglFlush_Func = void Function();
typedef TglHint_Native = Void Function(Uint32 target, Uint32 mode);
typedef TglHint_Func = void Function(int target, int mode);
typedef TglClearDepth_Native = Void Function(Double depth);
typedef TglClearDepth_Func = void Function(double depth);
typedef TglDepthFunc_Native = Void Function(Uint32 func);
typedef TglDepthFunc_Func = void Function(int func);
typedef TglDepthMask_Native = Void Function(Uint8 flag);
typedef TglDepthMask_Func = void Function(int flag);
typedef TglDepthRange_Native = Void Function(Double near_val, Double far_val);
typedef TglDepthRange_Func = void Function(double near_val, double far_val);
typedef TglClearAccum_Native = Void Function(
    Float red, Float green, Float blue, Float alpha);
typedef TglClearAccum_Func = void Function(
    double red, double green, double blue, double alpha);
typedef TglAccum_Native = Void Function(Uint32 op, Float value);
typedef TglAccum_Func = void Function(int op, double value);
typedef TglMatrixMode_Native = Void Function(Uint32 mode);
typedef TglMatrixMode_Func = void Function(int mode);
typedef TglOrtho_Native = Void Function(Double left, Double right,
    Double bottom, Double top, Double near_val, Double far_val);
typedef TglOrtho_Func = void Function(double left, double right, double bottom,
    double top, double near_val, double far_val);
typedef TglFrustum_Native = Void Function(Double left, Double right,
    Double bottom, Double top, Double near_val, Double far_val);
typedef TglFrustum_Func = void Function(double left, double right,
    double bottom, double top, double near_val, double far_val);
typedef TglViewport_Native = Void Function(
    Int32 x, Int32 y, Int32 width, Int32 height);
typedef TglViewport_Func = void Function(int x, int y, int width, int height);
typedef TglPushMatrix_Native = Void Function();
typedef TglPushMatrix_Func = void Function();
typedef TglPopMatrix_Native = Void Function();
typedef TglPopMatrix_Func = void Function();
typedef TglLoadIdentity_Native = Void Function();
typedef TglLoadIdentity_Func = void Function();
typedef TglLoadMatrixd_Native = Void Function(Pointer<Double> m);
typedef TglLoadMatrixd_Func = void Function(Pointer<Double> m);
typedef TglLoadMatrixf_Native = Void Function(Pointer<Float> m);
typedef TglLoadMatrixf_Func = void Function(Pointer<Float> m);
typedef TglMultMatrixd_Native = Void Function(Pointer<Double> m);
typedef TglMultMatrixd_Func = void Function(Pointer<Double> m);
typedef TglMultMatrixf_Native = Void Function(Pointer<Float> m);
typedef TglMultMatrixf_Func = void Function(Pointer<Float> m);
typedef TglRotated_Native = Void Function(
    Double angle, Double x, Double y, Double z);
typedef TglRotated_Func = void Function(
    double angle, double x, double y, double z);
typedef TglRotatef_Native = Void Function(
    Float angle, Float x, Float y, Float z);
typedef TglRotatef_Func = void Function(
    double angle, double x, double y, double z);
typedef TglScaled_Native = Void Function(Double x, Double y, Double z);
typedef TglScaled_Func = void Function(double x, double y, double z);
typedef TglScalef_Native = Void Function(Float x, Float y, Float z);
typedef TglScalef_Func = void Function(double x, double y, double z);
typedef TglTranslated_Native = Void Function(Double x, Double y, Double z);
typedef TglTranslated_Func = void Function(double x, double y, double z);
typedef TglTranslatef_Native = Void Function(Float x, Float y, Float z);
typedef TglTranslatef_Func = void Function(double x, double y, double z);
typedef TglIsList_Native = Uint8 Function(Uint32 list);
typedef TglIsList_Func = int Function(int list);
typedef TglDeleteLists_Native = Void Function(Uint32 list, Int32 range);
typedef TglDeleteLists_Func = void Function(int list, int range);
typedef TglGenLists_Native = Uint32 Function(Int32 range);
typedef TglGenLists_Func = int Function(int range);
typedef TglNewList_Native = Void Function(Uint32 list, Uint32 mode);
typedef TglNewList_Func = void Function(int list, int mode);
typedef TglEndList_Native = Void Function();
typedef TglEndList_Func = void Function();
typedef TglCallList_Native = Void Function(Uint32 list);
typedef TglCallList_Func = void Function(int list);
typedef TglCallLists_Native = Void Function(
    Int32 n, Uint32 type, Pointer<Void> lists);
typedef TglCallLists_Func = void Function(int n, int type, Pointer<Void> lists);
typedef TglListBase_Native = Void Function(Uint32 base);
typedef TglListBase_Func = void Function(int base);
typedef TglBegin_Native = Void Function(Uint32 mode);
typedef TglBegin_Func = void Function(int mode);
typedef TglEnd_Native = Void Function();
typedef TglEnd_Func = void Function();
typedef TglVertex2d_Native = Void Function(Double x, Double y);
typedef TglVertex2d_Func = void Function(double x, double y);
typedef TglVertex2f_Native = Void Function(Float x, Float y);
typedef TglVertex2f_Func = void Function(double x, double y);
typedef TglVertex2i_Native = Void Function(Int32 x, Int32 y);
typedef TglVertex2i_Func = void Function(int x, int y);
typedef TglVertex2s_Native = Void Function(Int16 x, Int16 y);
typedef TglVertex2s_Func = void Function(int x, int y);
typedef TglVertex3d_Native = Void Function(Double x, Double y, Double z);
typedef TglVertex3d_Func = void Function(double x, double y, double z);
typedef TglVertex3f_Native = Void Function(Float x, Float y, Float z);
typedef TglVertex3f_Func = void Function(double x, double y, double z);
typedef TglVertex3i_Native = Void Function(Int32 x, Int32 y, Int32 z);
typedef TglVertex3i_Func = void Function(int x, int y, int z);
typedef TglVertex3s_Native = Void Function(Int16 x, Int16 y, Int16 z);
typedef TglVertex3s_Func = void Function(int x, int y, int z);
typedef TglVertex4d_Native = Void Function(
    Double x, Double y, Double z, Double w);
typedef TglVertex4d_Func = void Function(
    double x, double y, double z, double w);
typedef TglVertex4f_Native = Void Function(Float x, Float y, Float z, Float w);
typedef TglVertex4f_Func = void Function(
    double x, double y, double z, double w);
typedef TglVertex4i_Native = Void Function(Int32 x, Int32 y, Int32 z, Int32 w);
typedef TglVertex4i_Func = void Function(int x, int y, int z, int w);
typedef TglVertex4s_Native = Void Function(Int16 x, Int16 y, Int16 z, Int16 w);
typedef TglVertex4s_Func = void Function(int x, int y, int z, int w);
typedef TglVertex2dv_Native = Void Function(Pointer<Double> v);
typedef TglVertex2dv_Func = void Function(Pointer<Double> v);
typedef TglVertex2fv_Native = Void Function(Pointer<Float> v);
typedef TglVertex2fv_Func = void Function(Pointer<Float> v);
typedef TglVertex2iv_Native = Void Function(Pointer<Int32> v);
typedef TglVertex2iv_Func = void Function(Pointer<Int32> v);
typedef TglVertex2sv_Native = Void Function(Pointer<Int16> v);
typedef TglVertex2sv_Func = void Function(Pointer<Int16> v);
typedef TglVertex3dv_Native = Void Function(Pointer<Double> v);
typedef TglVertex3dv_Func = void Function(Pointer<Double> v);
typedef TglVertex3fv_Native = Void Function(Pointer<Float> v);
typedef TglVertex3fv_Func = void Function(Pointer<Float> v);
typedef TglVertex3iv_Native = Void Function(Pointer<Int32> v);
typedef TglVertex3iv_Func = void Function(Pointer<Int32> v);
typedef TglVertex3sv_Native = Void Function(Pointer<Int16> v);
typedef TglVertex3sv_Func = void Function(Pointer<Int16> v);
typedef TglVertex4dv_Native = Void Function(Pointer<Double> v);
typedef TglVertex4dv_Func = void Function(Pointer<Double> v);
typedef TglVertex4fv_Native = Void Function(Pointer<Float> v);
typedef TglVertex4fv_Func = void Function(Pointer<Float> v);
typedef TglVertex4iv_Native = Void Function(Pointer<Int32> v);
typedef TglVertex4iv_Func = void Function(Pointer<Int32> v);
typedef TglVertex4sv_Native = Void Function(Pointer<Int16> v);
typedef TglVertex4sv_Func = void Function(Pointer<Int16> v);
typedef TglNormal3b_Native = Void Function(Uint8 nx, Uint8 ny, Uint8 nz);
typedef TglNormal3b_Func = void Function(int nx, int ny, int nz);
typedef TglNormal3d_Native = Void Function(Double nx, Double ny, Double nz);
typedef TglNormal3d_Func = void Function(double nx, double ny, double nz);
typedef TglNormal3f_Native = Void Function(Float nx, Float ny, Float nz);
typedef TglNormal3f_Func = void Function(double nx, double ny, double nz);
typedef TglNormal3i_Native = Void Function(Int32 nx, Int32 ny, Int32 nz);
typedef TglNormal3i_Func = void Function(int nx, int ny, int nz);
typedef TglNormal3s_Native = Void Function(Int16 nx, Int16 ny, Int16 nz);
typedef TglNormal3s_Func = void Function(int nx, int ny, int nz);
typedef TglNormal3bv_Native = Void Function(Pointer<Uint8> v);
typedef TglNormal3bv_Func = void Function(Pointer<Uint8> v);
typedef TglNormal3dv_Native = Void Function(Pointer<Double> v);
typedef TglNormal3dv_Func = void Function(Pointer<Double> v);
typedef TglNormal3fv_Native = Void Function(Pointer<Float> v);
typedef TglNormal3fv_Func = void Function(Pointer<Float> v);
typedef TglNormal3iv_Native = Void Function(Pointer<Int32> v);
typedef TglNormal3iv_Func = void Function(Pointer<Int32> v);
typedef TglNormal3sv_Native = Void Function(Pointer<Int16> v);
typedef TglNormal3sv_Func = void Function(Pointer<Int16> v);
typedef TglIndexd_Native = Void Function(Double c);
typedef TglIndexd_Func = void Function(double c);
typedef TglIndexf_Native = Void Function(Float c);
typedef TglIndexf_Func = void Function(double c);
typedef TglIndexi_Native = Void Function(Int32 c);
typedef TglIndexi_Func = void Function(int c);
typedef TglIndexs_Native = Void Function(Int16 c);
typedef TglIndexs_Func = void Function(int c);
typedef TglIndexub_Native = Void Function(Uint8 c);
typedef TglIndexub_Func = void Function(int c);
typedef TglIndexdv_Native = Void Function(Pointer<Double> c);
typedef TglIndexdv_Func = void Function(Pointer<Double> c);
typedef TglIndexfv_Native = Void Function(Pointer<Float> c);
typedef TglIndexfv_Func = void Function(Pointer<Float> c);
typedef TglIndexiv_Native = Void Function(Pointer<Int32> c);
typedef TglIndexiv_Func = void Function(Pointer<Int32> c);
typedef TglIndexsv_Native = Void Function(Pointer<Int16> c);
typedef TglIndexsv_Func = void Function(Pointer<Int16> c);
typedef TglIndexubv_Native = Void Function(Pointer<Uint8> c);
typedef TglIndexubv_Func = void Function(Pointer<Uint8> c);
typedef TglColor3b_Native = Void Function(Uint8 red, Uint8 green, Uint8 blue);
typedef TglColor3b_Func = void Function(int red, int green, int blue);
typedef TglColor3d_Native = Void Function(
    Double red, Double green, Double blue);
typedef TglColor3d_Func = void Function(double red, double green, double blue);
typedef TglColor3f_Native = Void Function(Float red, Float green, Float blue);
typedef TglColor3f_Func = void Function(double red, double green, double blue);
typedef TglColor3i_Native = Void Function(Int32 red, Int32 green, Int32 blue);
typedef TglColor3i_Func = void Function(int red, int green, int blue);
typedef TglColor3s_Native = Void Function(Int16 red, Int16 green, Int16 blue);
typedef TglColor3s_Func = void Function(int red, int green, int blue);
typedef TglColor3ub_Native = Void Function(Uint8 red, Uint8 green, Uint8 blue);
typedef TglColor3ub_Func = void Function(int red, int green, int blue);
typedef TglColor3ui_Native = Void Function(
    Uint32 red, Uint32 green, Uint32 blue);
typedef TglColor3ui_Func = void Function(int red, int green, int blue);
typedef TglColor3us_Native = Void Function(
    Uint16 red, Uint16 green, Uint16 blue);
typedef TglColor3us_Func = void Function(int red, int green, int blue);
typedef TglColor4b_Native = Void Function(
    Uint8 red, Uint8 green, Uint8 blue, Uint8 alpha);
typedef TglColor4b_Func = void Function(
    int red, int green, int blue, int alpha);
typedef TglColor4d_Native = Void Function(
    Double red, Double green, Double blue, Double alpha);
typedef TglColor4d_Func = void Function(
    double red, double green, double blue, double alpha);
typedef TglColor4f_Native = Void Function(
    Float red, Float green, Float blue, Float alpha);
typedef TglColor4f_Func = void Function(
    double red, double green, double blue, double alpha);
typedef TglColor4i_Native = Void Function(
    Int32 red, Int32 green, Int32 blue, Int32 alpha);
typedef TglColor4i_Func = void Function(
    int red, int green, int blue, int alpha);
typedef TglColor4s_Native = Void Function(
    Int16 red, Int16 green, Int16 blue, Int16 alpha);
typedef TglColor4s_Func = void Function(
    int red, int green, int blue, int alpha);
typedef TglColor4ub_Native = Void Function(
    Uint8 red, Uint8 green, Uint8 blue, Uint8 alpha);
typedef TglColor4ub_Func = void Function(
    int red, int green, int blue, int alpha);
typedef TglColor4ui_Native = Void Function(
    Uint32 red, Uint32 green, Uint32 blue, Uint32 alpha);
typedef TglColor4ui_Func = void Function(
    int red, int green, int blue, int alpha);
typedef TglColor4us_Native = Void Function(
    Uint16 red, Uint16 green, Uint16 blue, Uint16 alpha);
typedef TglColor4us_Func = void Function(
    int red, int green, int blue, int alpha);
typedef TglColor3bv_Native = Void Function(Pointer<Uint8> v);
typedef TglColor3bv_Func = void Function(Pointer<Uint8> v);
typedef TglColor3dv_Native = Void Function(Pointer<Double> v);
typedef TglColor3dv_Func = void Function(Pointer<Double> v);
typedef TglColor3fv_Native = Void Function(Pointer<Float> v);
typedef TglColor3fv_Func = void Function(Pointer<Float> v);
typedef TglColor3iv_Native = Void Function(Pointer<Int32> v);
typedef TglColor3iv_Func = void Function(Pointer<Int32> v);
typedef TglColor3sv_Native = Void Function(Pointer<Int16> v);
typedef TglColor3sv_Func = void Function(Pointer<Int16> v);
typedef TglColor3ubv_Native = Void Function(Pointer<Uint8> v);
typedef TglColor3ubv_Func = void Function(Pointer<Uint8> v);
typedef TglColor3uiv_Native = Void Function(Pointer<Uint32> v);
typedef TglColor3uiv_Func = void Function(Pointer<Uint32> v);
typedef TglColor3usv_Native = Void Function(Pointer<Uint16> v);
typedef TglColor3usv_Func = void Function(Pointer<Uint16> v);
typedef TglColor4bv_Native = Void Function(Pointer<Uint8> v);
typedef TglColor4bv_Func = void Function(Pointer<Uint8> v);
typedef TglColor4dv_Native = Void Function(Pointer<Double> v);
typedef TglColor4dv_Func = void Function(Pointer<Double> v);
typedef TglColor4fv_Native = Void Function(Pointer<Float> v);
typedef TglColor4fv_Func = void Function(Pointer<Float> v);
typedef TglColor4iv_Native = Void Function(Pointer<Int32> v);
typedef TglColor4iv_Func = void Function(Pointer<Int32> v);
typedef TglColor4sv_Native = Void Function(Pointer<Int16> v);
typedef TglColor4sv_Func = void Function(Pointer<Int16> v);
typedef TglColor4ubv_Native = Void Function(Pointer<Uint8> v);
typedef TglColor4ubv_Func = void Function(Pointer<Uint8> v);
typedef TglColor4uiv_Native = Void Function(Pointer<Uint32> v);
typedef TglColor4uiv_Func = void Function(Pointer<Uint32> v);
typedef TglColor4usv_Native = Void Function(Pointer<Uint16> v);
typedef TglColor4usv_Func = void Function(Pointer<Uint16> v);
typedef TglTexCoord1d_Native = Void Function(Double s);
typedef TglTexCoord1d_Func = void Function(double s);
typedef TglTexCoord1f_Native = Void Function(Float s);
typedef TglTexCoord1f_Func = void Function(double s);
typedef TglTexCoord1i_Native = Void Function(Int32 s);
typedef TglTexCoord1i_Func = void Function(int s);
typedef TglTexCoord1s_Native = Void Function(Int16 s);
typedef TglTexCoord1s_Func = void Function(int s);
typedef TglTexCoord2d_Native = Void Function(Double s, Double t);
typedef TglTexCoord2d_Func = void Function(double s, double t);
typedef TglTexCoord2f_Native = Void Function(Float s, Float t);
typedef TglTexCoord2f_Func = void Function(double s, double t);
typedef TglTexCoord2i_Native = Void Function(Int32 s, Int32 t);
typedef TglTexCoord2i_Func = void Function(int s, int t);
typedef TglTexCoord2s_Native = Void Function(Int16 s, Int16 t);
typedef TglTexCoord2s_Func = void Function(int s, int t);
typedef TglTexCoord3d_Native = Void Function(Double s, Double t, Double r);
typedef TglTexCoord3d_Func = void Function(double s, double t, double r);
typedef TglTexCoord3f_Native = Void Function(Float s, Float t, Float r);
typedef TglTexCoord3f_Func = void Function(double s, double t, double r);
typedef TglTexCoord3i_Native = Void Function(Int32 s, Int32 t, Int32 r);
typedef TglTexCoord3i_Func = void Function(int s, int t, int r);
typedef TglTexCoord3s_Native = Void Function(Int16 s, Int16 t, Int16 r);
typedef TglTexCoord3s_Func = void Function(int s, int t, int r);
typedef TglTexCoord4d_Native = Void Function(
    Double s, Double t, Double r, Double q);
typedef TglTexCoord4d_Func = void Function(
    double s, double t, double r, double q);
typedef TglTexCoord4f_Native = Void Function(
    Float s, Float t, Float r, Float q);
typedef TglTexCoord4f_Func = void Function(
    double s, double t, double r, double q);
typedef TglTexCoord4i_Native = Void Function(
    Int32 s, Int32 t, Int32 r, Int32 q);
typedef TglTexCoord4i_Func = void Function(int s, int t, int r, int q);
typedef TglTexCoord4s_Native = Void Function(
    Int16 s, Int16 t, Int16 r, Int16 q);
typedef TglTexCoord4s_Func = void Function(int s, int t, int r, int q);
typedef TglTexCoord1dv_Native = Void Function(Pointer<Double> v);
typedef TglTexCoord1dv_Func = void Function(Pointer<Double> v);
typedef TglTexCoord1fv_Native = Void Function(Pointer<Float> v);
typedef TglTexCoord1fv_Func = void Function(Pointer<Float> v);
typedef TglTexCoord1iv_Native = Void Function(Pointer<Int32> v);
typedef TglTexCoord1iv_Func = void Function(Pointer<Int32> v);
typedef TglTexCoord1sv_Native = Void Function(Pointer<Int16> v);
typedef TglTexCoord1sv_Func = void Function(Pointer<Int16> v);
typedef TglTexCoord2dv_Native = Void Function(Pointer<Double> v);
typedef TglTexCoord2dv_Func = void Function(Pointer<Double> v);
typedef TglTexCoord2fv_Native = Void Function(Pointer<Float> v);
typedef TglTexCoord2fv_Func = void Function(Pointer<Float> v);
typedef TglTexCoord2iv_Native = Void Function(Pointer<Int32> v);
typedef TglTexCoord2iv_Func = void Function(Pointer<Int32> v);
typedef TglTexCoord2sv_Native = Void Function(Pointer<Int16> v);
typedef TglTexCoord2sv_Func = void Function(Pointer<Int16> v);
typedef TglTexCoord3dv_Native = Void Function(Pointer<Double> v);
typedef TglTexCoord3dv_Func = void Function(Pointer<Double> v);
typedef TglTexCoord3fv_Native = Void Function(Pointer<Float> v);
typedef TglTexCoord3fv_Func = void Function(Pointer<Float> v);
typedef TglTexCoord3iv_Native = Void Function(Pointer<Int32> v);
typedef TglTexCoord3iv_Func = void Function(Pointer<Int32> v);
typedef TglTexCoord3sv_Native = Void Function(Pointer<Int16> v);
typedef TglTexCoord3sv_Func = void Function(Pointer<Int16> v);
typedef TglTexCoord4dv_Native = Void Function(Pointer<Double> v);
typedef TglTexCoord4dv_Func = void Function(Pointer<Double> v);
typedef TglTexCoord4fv_Native = Void Function(Pointer<Float> v);
typedef TglTexCoord4fv_Func = void Function(Pointer<Float> v);
typedef TglTexCoord4iv_Native = Void Function(Pointer<Int32> v);
typedef TglTexCoord4iv_Func = void Function(Pointer<Int32> v);
typedef TglTexCoord4sv_Native = Void Function(Pointer<Int16> v);
typedef TglTexCoord4sv_Func = void Function(Pointer<Int16> v);
typedef TglRasterPos2d_Native = Void Function(Double x, Double y);
typedef TglRasterPos2d_Func = void Function(double x, double y);
typedef TglRasterPos2f_Native = Void Function(Float x, Float y);
typedef TglRasterPos2f_Func = void Function(double x, double y);
typedef TglRasterPos2i_Native = Void Function(Int32 x, Int32 y);
typedef TglRasterPos2i_Func = void Function(int x, int y);
typedef TglRasterPos2s_Native = Void Function(Int16 x, Int16 y);
typedef TglRasterPos2s_Func = void Function(int x, int y);
typedef TglRasterPos3d_Native = Void Function(Double x, Double y, Double z);
typedef TglRasterPos3d_Func = void Function(double x, double y, double z);
typedef TglRasterPos3f_Native = Void Function(Float x, Float y, Float z);
typedef TglRasterPos3f_Func = void Function(double x, double y, double z);
typedef TglRasterPos3i_Native = Void Function(Int32 x, Int32 y, Int32 z);
typedef TglRasterPos3i_Func = void Function(int x, int y, int z);
typedef TglRasterPos3s_Native = Void Function(Int16 x, Int16 y, Int16 z);
typedef TglRasterPos3s_Func = void Function(int x, int y, int z);
typedef TglRasterPos4d_Native = Void Function(
    Double x, Double y, Double z, Double w);
typedef TglRasterPos4d_Func = void Function(
    double x, double y, double z, double w);
typedef TglRasterPos4f_Native = Void Function(
    Float x, Float y, Float z, Float w);
typedef TglRasterPos4f_Func = void Function(
    double x, double y, double z, double w);
typedef TglRasterPos4i_Native = Void Function(
    Int32 x, Int32 y, Int32 z, Int32 w);
typedef TglRasterPos4i_Func = void Function(int x, int y, int z, int w);
typedef TglRasterPos4s_Native = Void Function(
    Int16 x, Int16 y, Int16 z, Int16 w);
typedef TglRasterPos4s_Func = void Function(int x, int y, int z, int w);
typedef TglRasterPos2dv_Native = Void Function(Pointer<Double> v);
typedef TglRasterPos2dv_Func = void Function(Pointer<Double> v);
typedef TglRasterPos2fv_Native = Void Function(Pointer<Float> v);
typedef TglRasterPos2fv_Func = void Function(Pointer<Float> v);
typedef TglRasterPos2iv_Native = Void Function(Pointer<Int32> v);
typedef TglRasterPos2iv_Func = void Function(Pointer<Int32> v);
typedef TglRasterPos2sv_Native = Void Function(Pointer<Int16> v);
typedef TglRasterPos2sv_Func = void Function(Pointer<Int16> v);
typedef TglRasterPos3dv_Native = Void Function(Pointer<Double> v);
typedef TglRasterPos3dv_Func = void Function(Pointer<Double> v);
typedef TglRasterPos3fv_Native = Void Function(Pointer<Float> v);
typedef TglRasterPos3fv_Func = void Function(Pointer<Float> v);
typedef TglRasterPos3iv_Native = Void Function(Pointer<Int32> v);
typedef TglRasterPos3iv_Func = void Function(Pointer<Int32> v);
typedef TglRasterPos3sv_Native = Void Function(Pointer<Int16> v);
typedef TglRasterPos3sv_Func = void Function(Pointer<Int16> v);
typedef TglRasterPos4dv_Native = Void Function(Pointer<Double> v);
typedef TglRasterPos4dv_Func = void Function(Pointer<Double> v);
typedef TglRasterPos4fv_Native = Void Function(Pointer<Float> v);
typedef TglRasterPos4fv_Func = void Function(Pointer<Float> v);
typedef TglRasterPos4iv_Native = Void Function(Pointer<Int32> v);
typedef TglRasterPos4iv_Func = void Function(Pointer<Int32> v);
typedef TglRasterPos4sv_Native = Void Function(Pointer<Int16> v);
typedef TglRasterPos4sv_Func = void Function(Pointer<Int16> v);
typedef TglRectd_Native = Void Function(
    Double x1, Double y1, Double x2, Double y2);
typedef TglRectd_Func = void Function(
    double x1, double y1, double x2, double y2);
typedef TglRectf_Native = Void Function(Float x1, Float y1, Float x2, Float y2);
typedef TglRectf_Func = void Function(
    double x1, double y1, double x2, double y2);
typedef TglRecti_Native = Void Function(Int32 x1, Int32 y1, Int32 x2, Int32 y2);
typedef TglRecti_Func = void Function(int x1, int y1, int x2, int y2);
typedef TglRects_Native = Void Function(Int16 x1, Int16 y1, Int16 x2, Int16 y2);
typedef TglRects_Func = void Function(int x1, int y1, int x2, int y2);
typedef TglRectdv_Native = Void Function(
    Pointer<Double> v1, Pointer<Double> v2);
typedef TglRectdv_Func = void Function(Pointer<Double> v1, Pointer<Double> v2);
typedef TglRectfv_Native = Void Function(Pointer<Float> v1, Pointer<Float> v2);
typedef TglRectfv_Func = void Function(Pointer<Float> v1, Pointer<Float> v2);
typedef TglRectiv_Native = Void Function(Pointer<Int32> v1, Pointer<Int32> v2);
typedef TglRectiv_Func = void Function(Pointer<Int32> v1, Pointer<Int32> v2);
typedef TglRectsv_Native = Void Function(Pointer<Int16> v1, Pointer<Int16> v2);
typedef TglRectsv_Func = void Function(Pointer<Int16> v1, Pointer<Int16> v2);
typedef TglVertexPointer_Native = Void Function(
    Int32 size, Uint32 type, Int32 stride, Pointer<Void> ptr);
typedef TglVertexPointer_Func = void Function(
    int size, int type, int stride, Pointer<Void> ptr);
typedef TglNormalPointer_Native = Void Function(
    Uint32 type, Int32 stride, Pointer<Void> ptr);
typedef TglNormalPointer_Func = void Function(
    int type, int stride, Pointer<Void> ptr);
typedef TglColorPointer_Native = Void Function(
    Int32 size, Uint32 type, Int32 stride, Pointer<Void> ptr);
typedef TglColorPointer_Func = void Function(
    int size, int type, int stride, Pointer<Void> ptr);
typedef TglIndexPointer_Native = Void Function(
    Uint32 type, Int32 stride, Pointer<Void> ptr);
typedef TglIndexPointer_Func = void Function(
    int type, int stride, Pointer<Void> ptr);
typedef TglTexCoordPointer_Native = Void Function(
    Int32 size, Uint32 type, Int32 stride, Pointer<Void> ptr);
typedef TglTexCoordPointer_Func = void Function(
    int size, int type, int stride, Pointer<Void> ptr);
typedef TglEdgeFlagPointer_Native = Void Function(
    Int32 stride, Pointer<Void> ptr);
typedef TglEdgeFlagPointer_Func = void Function(int stride, Pointer<Void> ptr);
typedef TglGetPointerv_Native = Void Function(
    Uint32 pname, Pointer<Pointer<Void>> params);
typedef TglGetPointerv_Func = void Function(
    int pname, Pointer<Pointer<Void>> params);
typedef TglArrayElement_Native = Void Function(Int32 i);
typedef TglArrayElement_Func = void Function(int i);
typedef TglDrawArrays_Native = Void Function(
    Uint32 mode, Int32 first, Int32 count);
typedef TglDrawArrays_Func = void Function(int mode, int first, int count);
typedef TglDrawElements_Native = Void Function(
    Uint32 mode, Int32 count, Uint32 type, Pointer<Void> indices);
typedef TglDrawElements_Func = void Function(
    int mode, int count, int type, Pointer<Void> indices);
typedef TglInterleavedArrays_Native = Void Function(
    Uint32 format, Int32 stride, Pointer<Void> pointer);
typedef TglInterleavedArrays_Func = void Function(
    int format, int stride, Pointer<Void> pointer);
typedef TglShadeModel_Native = Void Function(Uint32 mode);
typedef TglShadeModel_Func = void Function(int mode);
typedef TglLightf_Native = Void Function(
    Uint32 light, Uint32 pname, Float param);
typedef TglLightf_Func = void Function(int light, int pname, double param);
typedef TglLighti_Native = Void Function(
    Uint32 light, Uint32 pname, Int32 param);
typedef TglLighti_Func = void Function(int light, int pname, int param);
typedef TglLightfv_Native = Void Function(
    Uint32 light, Uint32 pname, Pointer<Float> params);
typedef TglLightfv_Func = void Function(
    int light, int pname, Pointer<Float> params);
typedef TglLightiv_Native = Void Function(
    Uint32 light, Uint32 pname, Pointer<Int32> params);
typedef TglLightiv_Func = void Function(
    int light, int pname, Pointer<Int32> params);
typedef TglGetLightfv_Native = Void Function(
    Uint32 light, Uint32 pname, Pointer<Float> params);
typedef TglGetLightfv_Func = void Function(
    int light, int pname, Pointer<Float> params);
typedef TglGetLightiv_Native = Void Function(
    Uint32 light, Uint32 pname, Pointer<Int32> params);
typedef TglGetLightiv_Func = void Function(
    int light, int pname, Pointer<Int32> params);
typedef TglLightModelf_Native = Void Function(Uint32 pname, Float param);
typedef TglLightModelf_Func = void Function(int pname, double param);
typedef TglLightModeli_Native = Void Function(Uint32 pname, Int32 param);
typedef TglLightModeli_Func = void Function(int pname, int param);
typedef TglLightModelfv_Native = Void Function(
    Uint32 pname, Pointer<Float> params);
typedef TglLightModelfv_Func = void Function(int pname, Pointer<Float> params);
typedef TglLightModeliv_Native = Void Function(
    Uint32 pname, Pointer<Int32> params);
typedef TglLightModeliv_Func = void Function(int pname, Pointer<Int32> params);
typedef TglMaterialf_Native = Void Function(
    Uint32 face, Uint32 pname, Float param);
typedef TglMaterialf_Func = void Function(int face, int pname, double param);
typedef TglMateriali_Native = Void Function(
    Uint32 face, Uint32 pname, Int32 param);
typedef TglMateriali_Func = void Function(int face, int pname, int param);
typedef TglMaterialfv_Native = Void Function(
    Uint32 face, Uint32 pname, Pointer<Float> params);
typedef TglMaterialfv_Func = void Function(
    int face, int pname, Pointer<Float> params);
typedef TglMaterialiv_Native = Void Function(
    Uint32 face, Uint32 pname, Pointer<Int32> params);
typedef TglMaterialiv_Func = void Function(
    int face, int pname, Pointer<Int32> params);
typedef TglGetMaterialfv_Native = Void Function(
    Uint32 face, Uint32 pname, Pointer<Float> params);
typedef TglGetMaterialfv_Func = void Function(
    int face, int pname, Pointer<Float> params);
typedef TglGetMaterialiv_Native = Void Function(
    Uint32 face, Uint32 pname, Pointer<Int32> params);
typedef TglGetMaterialiv_Func = void Function(
    int face, int pname, Pointer<Int32> params);
typedef TglColorMaterial_Native = Void Function(Uint32 face, Uint32 mode);
typedef TglColorMaterial_Func = void Function(int face, int mode);
typedef TglPixelZoom_Native = Void Function(Float xfactor, Float yfactor);
typedef TglPixelZoom_Func = void Function(double xfactor, double yfactor);
typedef TglPixelStoref_Native = Void Function(Uint32 pname, Float param);
typedef TglPixelStoref_Func = void Function(int pname, double param);
typedef TglPixelStorei_Native = Void Function(Uint32 pname, Int32 param);
typedef TglPixelStorei_Func = void Function(int pname, int param);
typedef TglPixelTransferf_Native = Void Function(Uint32 pname, Float param);
typedef TglPixelTransferf_Func = void Function(int pname, double param);
typedef TglPixelTransferi_Native = Void Function(Uint32 pname, Int32 param);
typedef TglPixelTransferi_Func = void Function(int pname, int param);
typedef TglPixelMapfv_Native = Void Function(
    Uint32 map, Int32 mapsize, Pointer<Float> values);
typedef TglPixelMapfv_Func = void Function(
    int map, int mapsize, Pointer<Float> values);
typedef TglPixelMapuiv_Native = Void Function(
    Uint32 map, Int32 mapsize, Pointer<Uint32> values);
typedef TglPixelMapuiv_Func = void Function(
    int map, int mapsize, Pointer<Uint32> values);
typedef TglPixelMapusv_Native = Void Function(
    Uint32 map, Int32 mapsize, Pointer<Uint16> values);
typedef TglPixelMapusv_Func = void Function(
    int map, int mapsize, Pointer<Uint16> values);
typedef TglGetPixelMapfv_Native = Void Function(
    Uint32 map, Pointer<Float> values);
typedef TglGetPixelMapfv_Func = void Function(int map, Pointer<Float> values);
typedef TglGetPixelMapuiv_Native = Void Function(
    Uint32 map, Pointer<Uint32> values);
typedef TglGetPixelMapuiv_Func = void Function(int map, Pointer<Uint32> values);
typedef TglGetPixelMapusv_Native = Void Function(
    Uint32 map, Pointer<Uint16> values);
typedef TglGetPixelMapusv_Func = void Function(int map, Pointer<Uint16> values);
typedef TglBitmap_Native = Void Function(Int32 width, Int32 height, Float xorig,
    Float yorig, Float xmove, Float ymove, Pointer<Uint8> bitmap);
typedef TglBitmap_Func = void Function(int width, int height, double xorig,
    double yorig, double xmove, double ymove, Pointer<Uint8> bitmap);
typedef TglReadPixels_Native = Void Function(Int32 x, Int32 y, Int32 width,
    Int32 height, Uint32 format, Uint32 type, Pointer<Void> pixels);
typedef TglReadPixels_Func = void Function(int x, int y, int width, int height,
    int format, int type, Pointer<Void> pixels);
typedef TglDrawPixels_Native = Void Function(Int32 width, Int32 height,
    Uint32 format, Uint32 type, Pointer<Void> pixels);
typedef TglDrawPixels_Func = void Function(
    int width, int height, int format, int type, Pointer<Void> pixels);
typedef TglCopyPixels_Native = Void Function(
    Int32 x, Int32 y, Int32 width, Int32 height, Uint32 type);
typedef TglCopyPixels_Func = void Function(
    int x, int y, int width, int height, int type);
typedef TglStencilFunc_Native = Void Function(
    Uint32 func, Int32 ref, Uint32 mask);
typedef TglStencilFunc_Func = void Function(int func, int ref, int mask);
typedef TglStencilMask_Native = Void Function(Uint32 mask);
typedef TglStencilMask_Func = void Function(int mask);
typedef TglStencilOp_Native = Void Function(
    Uint32 fail, Uint32 zfail, Uint32 zpass);
typedef TglStencilOp_Func = void Function(int fail, int zfail, int zpass);
typedef TglClearStencil_Native = Void Function(Int32 s);
typedef TglClearStencil_Func = void Function(int s);
typedef TglTexGend_Native = Void Function(
    Uint32 coord, Uint32 pname, Double param);
typedef TglTexGend_Func = void Function(int coord, int pname, double param);
typedef TglTexGenf_Native = Void Function(
    Uint32 coord, Uint32 pname, Float param);
typedef TglTexGenf_Func = void Function(int coord, int pname, double param);
typedef TglTexGeni_Native = Void Function(
    Uint32 coord, Uint32 pname, Int32 param);
typedef TglTexGeni_Func = void Function(int coord, int pname, int param);
typedef TglTexGendv_Native = Void Function(
    Uint32 coord, Uint32 pname, Pointer<Double> params);
typedef TglTexGendv_Func = void Function(
    int coord, int pname, Pointer<Double> params);
typedef TglTexGenfv_Native = Void Function(
    Uint32 coord, Uint32 pname, Pointer<Float> params);
typedef TglTexGenfv_Func = void Function(
    int coord, int pname, Pointer<Float> params);
typedef TglTexGeniv_Native = Void Function(
    Uint32 coord, Uint32 pname, Pointer<Int32> params);
typedef TglTexGeniv_Func = void Function(
    int coord, int pname, Pointer<Int32> params);
typedef TglGetTexGendv_Native = Void Function(
    Uint32 coord, Uint32 pname, Pointer<Double> params);
typedef TglGetTexGendv_Func = void Function(
    int coord, int pname, Pointer<Double> params);
typedef TglGetTexGenfv_Native = Void Function(
    Uint32 coord, Uint32 pname, Pointer<Float> params);
typedef TglGetTexGenfv_Func = void Function(
    int coord, int pname, Pointer<Float> params);
typedef TglGetTexGeniv_Native = Void Function(
    Uint32 coord, Uint32 pname, Pointer<Int32> params);
typedef TglGetTexGeniv_Func = void Function(
    int coord, int pname, Pointer<Int32> params);
typedef TglTexEnvf_Native = Void Function(
    Uint32 target, Uint32 pname, Float param);
typedef TglTexEnvf_Func = void Function(int target, int pname, double param);
typedef TglTexEnvi_Native = Void Function(
    Uint32 target, Uint32 pname, Int32 param);
typedef TglTexEnvi_Func = void Function(int target, int pname, int param);
typedef TglTexEnvfv_Native = Void Function(
    Uint32 target, Uint32 pname, Pointer<Float> params);
typedef TglTexEnvfv_Func = void Function(
    int target, int pname, Pointer<Float> params);
typedef TglTexEnviv_Native = Void Function(
    Uint32 target, Uint32 pname, Pointer<Int32> params);
typedef TglTexEnviv_Func = void Function(
    int target, int pname, Pointer<Int32> params);
typedef TglGetTexEnvfv_Native = Void Function(
    Uint32 target, Uint32 pname, Pointer<Float> params);
typedef TglGetTexEnvfv_Func = void Function(
    int target, int pname, Pointer<Float> params);
typedef TglGetTexEnviv_Native = Void Function(
    Uint32 target, Uint32 pname, Pointer<Int32> params);
typedef TglGetTexEnviv_Func = void Function(
    int target, int pname, Pointer<Int32> params);
typedef TglTexParameterf_Native = Void Function(
    Uint32 target, Uint32 pname, Float param);
typedef TglTexParameterf_Func = void Function(
    int target, int pname, double param);
typedef TglTexParameteri_Native = Void Function(
    Uint32 target, Uint32 pname, Int32 param);
typedef TglTexParameteri_Func = void Function(int target, int pname, int param);
typedef TglTexParameterfv_Native = Void Function(
    Uint32 target, Uint32 pname, Pointer<Float> params);
typedef TglTexParameterfv_Func = void Function(
    int target, int pname, Pointer<Float> params);
typedef TglTexParameteriv_Native = Void Function(
    Uint32 target, Uint32 pname, Pointer<Int32> params);
typedef TglTexParameteriv_Func = void Function(
    int target, int pname, Pointer<Int32> params);
typedef TglGetTexParameterfv_Native = Void Function(
    Uint32 target, Uint32 pname, Pointer<Float> params);
typedef TglGetTexParameterfv_Func = void Function(
    int target, int pname, Pointer<Float> params);
typedef TglGetTexParameteriv_Native = Void Function(
    Uint32 target, Uint32 pname, Pointer<Int32> params);
typedef TglGetTexParameteriv_Func = void Function(
    int target, int pname, Pointer<Int32> params);
typedef TglGetTexLevelParameterfv_Native = Void Function(
    Uint32 target, Int32 level, Uint32 pname, Pointer<Float> params);
typedef TglGetTexLevelParameterfv_Func = void Function(
    int target, int level, int pname, Pointer<Float> params);
typedef TglGetTexLevelParameteriv_Native = Void Function(
    Uint32 target, Int32 level, Uint32 pname, Pointer<Int32> params);
typedef TglGetTexLevelParameteriv_Func = void Function(
    int target, int level, int pname, Pointer<Int32> params);
typedef TglTexImage1D_Native = Void Function(
    Uint32 target,
    Int32 level,
    Int32 internalFormat,
    Int32 width,
    Int32 border,
    Uint32 format,
    Uint32 type,
    Pointer<Void> pixels);
typedef TglTexImage1D_Func = void Function(
    int target,
    int level,
    int internalFormat,
    int width,
    int border,
    int format,
    int type,
    Pointer<Void> pixels);
typedef TglTexImage2D_Native = Void Function(
    Uint32 target,
    Int32 level,
    Int32 internalFormat,
    Int32 width,
    Int32 height,
    Int32 border,
    Uint32 format,
    Uint32 type,
    Pointer<Void> pixels);
typedef TglTexImage2D_Func = void Function(
    int target,
    int level,
    int internalFormat,
    int width,
    int height,
    int border,
    int format,
    int type,
    Pointer<Void> pixels);
typedef TglGetTexImage_Native = Void Function(Uint32 target, Int32 level,
    Uint32 format, Uint32 type, Pointer<Void> pixels);
typedef TglGetTexImage_Func = void Function(
    int target, int level, int format, int type, Pointer<Void> pixels);
typedef TglGenTextures_Native = Void Function(
    Int32 n, Pointer<Uint32> textures);
typedef TglGenTextures_Func = void Function(int n, Pointer<Uint32> textures);
typedef TglDeleteTextures_Native = Void Function(
    Int32 n, Pointer<Uint32> textures);
typedef TglDeleteTextures_Func = void Function(int n, Pointer<Uint32> textures);
typedef TglBindTexture_Native = Void Function(Uint32 target, Uint32 texture);
typedef TglBindTexture_Func = void Function(int target, int texture);
typedef TglPrioritizeTextures_Native = Void Function(
    Int32 n, Pointer<Uint32> textures, Pointer<Float> priorities);
typedef TglPrioritizeTextures_Func = void Function(
    int n, Pointer<Uint32> textures, Pointer<Float> priorities);
typedef TglAreTexturesResident_Native = Uint8 Function(
    Int32 n, Pointer<Uint32> textures, Pointer<Uint8> residences);
typedef TglAreTexturesResident_Func = int Function(
    int n, Pointer<Uint32> textures, Pointer<Uint8> residences);
typedef TglIsTexture_Native = Uint8 Function(Uint32 texture);
typedef TglIsTexture_Func = int Function(int texture);
typedef TglTexSubImage1D_Native = Void Function(
    Uint32 target,
    Int32 level,
    Int32 xoffset,
    Int32 width,
    Uint32 format,
    Uint32 type,
    Pointer<Void> pixels);
typedef TglTexSubImage1D_Func = void Function(int target, int level,
    int xoffset, int width, int format, int type, Pointer<Void> pixels);
typedef TglTexSubImage2D_Native = Void Function(
    Uint32 target,
    Int32 level,
    Int32 xoffset,
    Int32 yoffset,
    Int32 width,
    Int32 height,
    Uint32 format,
    Uint32 type,
    Pointer<Void> pixels);
typedef TglTexSubImage2D_Func = void Function(
    int target,
    int level,
    int xoffset,
    int yoffset,
    int width,
    int height,
    int format,
    int type,
    Pointer<Void> pixels);
typedef TglCopyTexImage1D_Native = Void Function(Uint32 target, Int32 level,
    Uint32 internalformat, Int32 x, Int32 y, Int32 width, Int32 border);
typedef TglCopyTexImage1D_Func = void Function(int target, int level,
    int internalformat, int x, int y, int width, int border);
typedef TglCopyTexImage2D_Native = Void Function(
    Uint32 target,
    Int32 level,
    Uint32 internalformat,
    Int32 x,
    Int32 y,
    Int32 width,
    Int32 height,
    Int32 border);
typedef TglCopyTexImage2D_Func = void Function(int target, int level,
    int internalformat, int x, int y, int width, int height, int border);
typedef TglCopyTexSubImage1D_Native = Void Function(
    Uint32 target, Int32 level, Int32 xoffset, Int32 x, Int32 y, Int32 width);
typedef TglCopyTexSubImage1D_Func = void Function(
    int target, int level, int xoffset, int x, int y, int width);
typedef TglCopyTexSubImage2D_Native = Void Function(Uint32 target, Int32 level,
    Int32 xoffset, Int32 yoffset, Int32 x, Int32 y, Int32 width, Int32 height);
typedef TglCopyTexSubImage2D_Func = void Function(int target, int level,
    int xoffset, int yoffset, int x, int y, int width, int height);
typedef TglMap1d_Native = Void Function(Uint32 target, Double u1, Double u2,
    Int32 stride, Int32 order, Pointer<Double> points);
typedef TglMap1d_Func = void Function(int target, double u1, double u2,
    int stride, int order, Pointer<Double> points);
typedef TglMap1f_Native = Void Function(Uint32 target, Float u1, Float u2,
    Int32 stride, Int32 order, Pointer<Float> points);
typedef TglMap1f_Func = void Function(int target, double u1, double u2,
    int stride, int order, Pointer<Float> points);
typedef TglMap2d_Native = Void Function(
    Uint32 target,
    Double u1,
    Double u2,
    Int32 ustride,
    Int32 uorder,
    Double v1,
    Double v2,
    Int32 vstride,
    Int32 vorder,
    Pointer<Double> points);
typedef TglMap2d_Func = void Function(
    int target,
    double u1,
    double u2,
    int ustride,
    int uorder,
    double v1,
    double v2,
    int vstride,
    int vorder,
    Pointer<Double> points);
typedef TglMap2f_Native = Void Function(
    Uint32 target,
    Float u1,
    Float u2,
    Int32 ustride,
    Int32 uorder,
    Float v1,
    Float v2,
    Int32 vstride,
    Int32 vorder,
    Pointer<Float> points);
typedef TglMap2f_Func = void Function(
    int target,
    double u1,
    double u2,
    int ustride,
    int uorder,
    double v1,
    double v2,
    int vstride,
    int vorder,
    Pointer<Float> points);
typedef TglGetMapdv_Native = Void Function(
    Uint32 target, Uint32 query, Pointer<Double> v);
typedef TglGetMapdv_Func = void Function(
    int target, int query, Pointer<Double> v);
typedef TglGetMapfv_Native = Void Function(
    Uint32 target, Uint32 query, Pointer<Float> v);
typedef TglGetMapfv_Func = void Function(
    int target, int query, Pointer<Float> v);
typedef TglGetMapiv_Native = Void Function(
    Uint32 target, Uint32 query, Pointer<Int32> v);
typedef TglGetMapiv_Func = void Function(
    int target, int query, Pointer<Int32> v);
typedef TglEvalCoord1d_Native = Void Function(Double u);
typedef TglEvalCoord1d_Func = void Function(double u);
typedef TglEvalCoord1f_Native = Void Function(Float u);
typedef TglEvalCoord1f_Func = void Function(double u);
typedef TglEvalCoord1dv_Native = Void Function(Pointer<Double> u);
typedef TglEvalCoord1dv_Func = void Function(Pointer<Double> u);
typedef TglEvalCoord1fv_Native = Void Function(Pointer<Float> u);
typedef TglEvalCoord1fv_Func = void Function(Pointer<Float> u);
typedef TglEvalCoord2d_Native = Void Function(Double u, Double v);
typedef TglEvalCoord2d_Func = void Function(double u, double v);
typedef TglEvalCoord2f_Native = Void Function(Float u, Float v);
typedef TglEvalCoord2f_Func = void Function(double u, double v);
typedef TglEvalCoord2dv_Native = Void Function(Pointer<Double> u);
typedef TglEvalCoord2dv_Func = void Function(Pointer<Double> u);
typedef TglEvalCoord2fv_Native = Void Function(Pointer<Float> u);
typedef TglEvalCoord2fv_Func = void Function(Pointer<Float> u);
typedef TglMapGrid1d_Native = Void Function(Int32 un, Double u1, Double u2);
typedef TglMapGrid1d_Func = void Function(int un, double u1, double u2);
typedef TglMapGrid1f_Native = Void Function(Int32 un, Float u1, Float u2);
typedef TglMapGrid1f_Func = void Function(int un, double u1, double u2);
typedef TglMapGrid2d_Native = Void Function(
    Int32 un, Double u1, Double u2, Int32 vn, Double v1, Double v2);
typedef TglMapGrid2d_Func = void Function(
    int un, double u1, double u2, int vn, double v1, double v2);
typedef TglMapGrid2f_Native = Void Function(
    Int32 un, Float u1, Float u2, Int32 vn, Float v1, Float v2);
typedef TglMapGrid2f_Func = void Function(
    int un, double u1, double u2, int vn, double v1, double v2);
typedef TglEvalPoint1_Native = Void Function(Int32 i);
typedef TglEvalPoint1_Func = void Function(int i);
typedef TglEvalPoint2_Native = Void Function(Int32 i, Int32 j);
typedef TglEvalPoint2_Func = void Function(int i, int j);
typedef TglEvalMesh1_Native = Void Function(Uint32 mode, Int32 i1, Int32 i2);
typedef TglEvalMesh1_Func = void Function(int mode, int i1, int i2);
typedef TglEvalMesh2_Native = Void Function(
    Uint32 mode, Int32 i1, Int32 i2, Int32 j1, Int32 j2);
typedef TglEvalMesh2_Func = void Function(
    int mode, int i1, int i2, int j1, int j2);
typedef TglFogf_Native = Void Function(Uint32 pname, Float param);
typedef TglFogf_Func = void Function(int pname, double param);
typedef TglFogi_Native = Void Function(Uint32 pname, Int32 param);
typedef TglFogi_Func = void Function(int pname, int param);
typedef TglFogfv_Native = Void Function(Uint32 pname, Pointer<Float> params);
typedef TglFogfv_Func = void Function(int pname, Pointer<Float> params);
typedef TglFogiv_Native = Void Function(Uint32 pname, Pointer<Int32> params);
typedef TglFogiv_Func = void Function(int pname, Pointer<Int32> params);
typedef TglFeedbackBuffer_Native = Void Function(
    Int32 size, Uint32 type, Pointer<Float> buffer);
typedef TglFeedbackBuffer_Func = void Function(
    int size, int type, Pointer<Float> buffer);
typedef TglPassThrough_Native = Void Function(Float token);
typedef TglPassThrough_Func = void Function(double token);
typedef TglSelectBuffer_Native = Void Function(
    Int32 size, Pointer<Uint32> buffer);
typedef TglSelectBuffer_Func = void Function(int size, Pointer<Uint32> buffer);
typedef TglInitNames_Native = Void Function();
typedef TglInitNames_Func = void Function();
typedef TglLoadName_Native = Void Function(Uint32 name);
typedef TglLoadName_Func = void Function(int name);
typedef TglPushName_Native = Void Function(Uint32 name);
typedef TglPushName_Func = void Function(int name);
typedef TglPopName_Native = Void Function();
typedef TglPopName_Func = void Function();
typedef TglDrawRangeElements_Native = Void Function(Uint32 mode, Uint32 start,
    Uint32 end, Int32 count, Uint32 type, Pointer<Void> indices);
typedef TglDrawRangeElements_Func = void Function(
    int mode, int start, int end, int count, int type, Pointer<Void> indices);
typedef TglTexImage3D_Native = Void Function(
    Uint32 target,
    Int32 level,
    Int32 internalFormat,
    Int32 width,
    Int32 height,
    Int32 depth,
    Int32 border,
    Uint32 format,
    Uint32 type,
    Pointer<Void> pixels);
typedef TglTexImage3D_Func = void Function(
    int target,
    int level,
    int internalFormat,
    int width,
    int height,
    int depth,
    int border,
    int format,
    int type,
    Pointer<Void> pixels);
typedef TglTexSubImage3D_Native = Void Function(
    Uint32 target,
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
typedef TglTexSubImage3D_Func = void Function(
    int target,
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
typedef TglCopyTexSubImage3D_Native = Void Function(
    Uint32 target,
    Int32 level,
    Int32 xoffset,
    Int32 yoffset,
    Int32 zoffset,
    Int32 x,
    Int32 y,
    Int32 width,
    Int32 height);
typedef TglCopyTexSubImage3D_Func = void Function(int target, int level,
    int xoffset, int yoffset, int zoffset, int x, int y, int width, int height);
typedef TglColorTable_Native = Void Function(
    Uint32 target,
    Uint32 internalformat,
    Int32 width,
    Uint32 format,
    Uint32 type,
    Pointer<Void> table);
typedef TglColorTable_Func = void Function(int target, int internalformat,
    int width, int format, int type, Pointer<Void> table);
typedef TglColorSubTable_Native = Void Function(Uint32 target, Int32 start,
    Int32 count, Uint32 format, Uint32 type, Pointer<Void> data);
typedef TglColorSubTable_Func = void Function(
    int target, int start, int count, int format, int type, Pointer<Void> data);
typedef TglColorTableParameteriv_Native = Void Function(
    Uint32 target, Uint32 pname, Pointer<Int32> params);
typedef TglColorTableParameteriv_Func = void Function(
    int target, int pname, Pointer<Int32> params);
typedef TglColorTableParameterfv_Native = Void Function(
    Uint32 target, Uint32 pname, Pointer<Float> params);
typedef TglColorTableParameterfv_Func = void Function(
    int target, int pname, Pointer<Float> params);
typedef TglCopyColorSubTable_Native = Void Function(
    Uint32 target, Int32 start, Int32 x, Int32 y, Int32 width);
typedef TglCopyColorSubTable_Func = void Function(
    int target, int start, int x, int y, int width);
typedef TglCopyColorTable_Native = Void Function(
    Uint32 target, Uint32 internalformat, Int32 x, Int32 y, Int32 width);
typedef TglCopyColorTable_Func = void Function(
    int target, int internalformat, int x, int y, int width);
typedef TglGetColorTable_Native = Void Function(
    Uint32 target, Uint32 format, Uint32 type, Pointer<Void> table);
typedef TglGetColorTable_Func = void Function(
    int target, int format, int type, Pointer<Void> table);
typedef TglGetColorTableParameterfv_Native = Void Function(
    Uint32 target, Uint32 pname, Pointer<Float> params);
typedef TglGetColorTableParameterfv_Func = void Function(
    int target, int pname, Pointer<Float> params);
typedef TglGetColorTableParameteriv_Native = Void Function(
    Uint32 target, Uint32 pname, Pointer<Int32> params);
typedef TglGetColorTableParameteriv_Func = void Function(
    int target, int pname, Pointer<Int32> params);
typedef TglBlendEquation_Native = Void Function(Uint32 mode);
typedef TglBlendEquation_Func = void Function(int mode);
typedef TglBlendColor_Native = Void Function(
    Float red, Float green, Float blue, Float alpha);
typedef TglBlendColor_Func = void Function(
    double red, double green, double blue, double alpha);
typedef TglHistogram_Native = Void Function(
    Uint32 target, Int32 width, Uint32 internalformat, Uint8 sink);
typedef TglHistogram_Func = void Function(
    int target, int width, int internalformat, int sink);
typedef TglResetHistogram_Native = Void Function(Uint32 target);
typedef TglResetHistogram_Func = void Function(int target);
typedef TglGetHistogram_Native = Void Function(Uint32 target, Uint8 reset,
    Uint32 format, Uint32 type, Pointer<Void> values);
typedef TglGetHistogram_Func = void Function(
    int target, int reset, int format, int type, Pointer<Void> values);
typedef TglGetHistogramParameterfv_Native = Void Function(
    Uint32 target, Uint32 pname, Pointer<Float> params);
typedef TglGetHistogramParameterfv_Func = void Function(
    int target, int pname, Pointer<Float> params);
typedef TglGetHistogramParameteriv_Native = Void Function(
    Uint32 target, Uint32 pname, Pointer<Int32> params);
typedef TglGetHistogramParameteriv_Func = void Function(
    int target, int pname, Pointer<Int32> params);
typedef TglMinmax_Native = Void Function(
    Uint32 target, Uint32 internalformat, Uint8 sink);
typedef TglMinmax_Func = void Function(
    int target, int internalformat, int sink);
typedef TglResetMinmax_Native = Void Function(Uint32 target);
typedef TglResetMinmax_Func = void Function(int target);
typedef TglGetMinmax_Native = Void Function(Uint32 target, Uint8 reset,
    Uint32 format, Uint32 types, Pointer<Void> values);
typedef TglGetMinmax_Func = void Function(
    int target, int reset, int format, int types, Pointer<Void> values);
typedef TglGetMinmaxParameterfv_Native = Void Function(
    Uint32 target, Uint32 pname, Pointer<Float> params);
typedef TglGetMinmaxParameterfv_Func = void Function(
    int target, int pname, Pointer<Float> params);
typedef TglGetMinmaxParameteriv_Native = Void Function(
    Uint32 target, Uint32 pname, Pointer<Int32> params);
typedef TglGetMinmaxParameteriv_Func = void Function(
    int target, int pname, Pointer<Int32> params);
typedef TglConvolutionFilter1D_Native = Void Function(
    Uint32 target,
    Uint32 internalformat,
    Int32 width,
    Uint32 format,
    Uint32 type,
    Pointer<Void> image);
typedef TglConvolutionFilter1D_Func = void Function(int target,
    int internalformat, int width, int format, int type, Pointer<Void> image);
typedef TglConvolutionFilter2D_Native = Void Function(
    Uint32 target,
    Uint32 internalformat,
    Int32 width,
    Int32 height,
    Uint32 format,
    Uint32 type,
    Pointer<Void> image);
typedef TglConvolutionFilter2D_Func = void Function(
    int target,
    int internalformat,
    int width,
    int height,
    int format,
    int type,
    Pointer<Void> image);
typedef TglConvolutionParameterf_Native = Void Function(
    Uint32 target, Uint32 pname, Float params);
typedef TglConvolutionParameterf_Func = void Function(
    int target, int pname, double params);
typedef TglConvolutionParameterfv_Native = Void Function(
    Uint32 target, Uint32 pname, Pointer<Float> params);
typedef TglConvolutionParameterfv_Func = void Function(
    int target, int pname, Pointer<Float> params);
typedef TglConvolutionParameteri_Native = Void Function(
    Uint32 target, Uint32 pname, Int32 params);
typedef TglConvolutionParameteri_Func = void Function(
    int target, int pname, int params);
typedef TglConvolutionParameteriv_Native = Void Function(
    Uint32 target, Uint32 pname, Pointer<Int32> params);
typedef TglConvolutionParameteriv_Func = void Function(
    int target, int pname, Pointer<Int32> params);
typedef TglCopyConvolutionFilter1D_Native = Void Function(
    Uint32 target, Uint32 internalformat, Int32 x, Int32 y, Int32 width);
typedef TglCopyConvolutionFilter1D_Func = void Function(
    int target, int internalformat, int x, int y, int width);
typedef TglCopyConvolutionFilter2D_Native = Void Function(Uint32 target,
    Uint32 internalformat, Int32 x, Int32 y, Int32 width, Int32 height);
typedef TglCopyConvolutionFilter2D_Func = void Function(
    int target, int internalformat, int x, int y, int width, int height);
typedef TglGetConvolutionFilter_Native = Void Function(
    Uint32 target, Uint32 format, Uint32 type, Pointer<Void> image);
typedef TglGetConvolutionFilter_Func = void Function(
    int target, int format, int type, Pointer<Void> image);
typedef TglGetConvolutionParameterfv_Native = Void Function(
    Uint32 target, Uint32 pname, Pointer<Float> params);
typedef TglGetConvolutionParameterfv_Func = void Function(
    int target, int pname, Pointer<Float> params);
typedef TglGetConvolutionParameteriv_Native = Void Function(
    Uint32 target, Uint32 pname, Pointer<Int32> params);
typedef TglGetConvolutionParameteriv_Func = void Function(
    int target, int pname, Pointer<Int32> params);
typedef TglSeparableFilter2D_Native = Void Function(
    Uint32 target,
    Uint32 internalformat,
    Int32 width,
    Int32 height,
    Uint32 format,
    Uint32 type,
    Pointer<Void> row,
    Pointer<Void> column);
typedef TglSeparableFilter2D_Func = void Function(
    int target,
    int internalformat,
    int width,
    int height,
    int format,
    int type,
    Pointer<Void> row,
    Pointer<Void> column);
typedef TglGetSeparableFilter_Native = Void Function(
    Uint32 target,
    Uint32 format,
    Uint32 type,
    Pointer<Void> row,
    Pointer<Void> column,
    Pointer<Void> span);
typedef TglGetSeparableFilter_Func = void Function(int target, int format,
    int type, Pointer<Void> row, Pointer<Void> column, Pointer<Void> span);
typedef TglActiveTexture_Native = Void Function(Uint32 texture);
typedef TglActiveTexture_Func = void Function(int texture);
typedef TglClientActiveTexture_Native = Void Function(Uint32 texture);
typedef TglClientActiveTexture_Func = void Function(int texture);
typedef TglCompressedTexImage1D_Native = Void Function(
    Uint32 target,
    Int32 level,
    Uint32 internalformat,
    Int32 width,
    Int32 border,
    Int32 imageSize,
    Pointer<Void> data);
typedef TglCompressedTexImage1D_Func = void Function(
    int target,
    int level,
    int internalformat,
    int width,
    int border,
    int imageSize,
    Pointer<Void> data);
typedef TglCompressedTexImage2D_Native = Void Function(
    Uint32 target,
    Int32 level,
    Uint32 internalformat,
    Int32 width,
    Int32 height,
    Int32 border,
    Int32 imageSize,
    Pointer<Void> data);
typedef TglCompressedTexImage2D_Func = void Function(
    int target,
    int level,
    int internalformat,
    int width,
    int height,
    int border,
    int imageSize,
    Pointer<Void> data);
typedef TglCompressedTexImage3D_Native = Void Function(
    Uint32 target,
    Int32 level,
    Uint32 internalformat,
    Int32 width,
    Int32 height,
    Int32 depth,
    Int32 border,
    Int32 imageSize,
    Pointer<Void> data);
typedef TglCompressedTexImage3D_Func = void Function(
    int target,
    int level,
    int internalformat,
    int width,
    int height,
    int depth,
    int border,
    int imageSize,
    Pointer<Void> data);
typedef TglCompressedTexSubImage1D_Native = Void Function(
    Uint32 target,
    Int32 level,
    Int32 xoffset,
    Int32 width,
    Uint32 format,
    Int32 imageSize,
    Pointer<Void> data);
typedef TglCompressedTexSubImage1D_Func = void Function(int target, int level,
    int xoffset, int width, int format, int imageSize, Pointer<Void> data);
typedef TglCompressedTexSubImage2D_Native = Void Function(
    Uint32 target,
    Int32 level,
    Int32 xoffset,
    Int32 yoffset,
    Int32 width,
    Int32 height,
    Uint32 format,
    Int32 imageSize,
    Pointer<Void> data);
typedef TglCompressedTexSubImage2D_Func = void Function(
    int target,
    int level,
    int xoffset,
    int yoffset,
    int width,
    int height,
    int format,
    int imageSize,
    Pointer<Void> data);
typedef TglCompressedTexSubImage3D_Native = Void Function(
    Uint32 target,
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
typedef TglCompressedTexSubImage3D_Func = void Function(
    int target,
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
typedef TglGetCompressedTexImage_Native = Void Function(
    Uint32 target, Int32 lod, Pointer<Void> img);
typedef TglGetCompressedTexImage_Func = void Function(
    int target, int lod, Pointer<Void> img);
typedef TglMultiTexCoord1d_Native = Void Function(Uint32 target, Double s);
typedef TglMultiTexCoord1d_Func = void Function(int target, double s);
typedef TglMultiTexCoord1dv_Native = Void Function(
    Uint32 target, Pointer<Double> v);
typedef TglMultiTexCoord1dv_Func = void Function(int target, Pointer<Double> v);
typedef TglMultiTexCoord1f_Native = Void Function(Uint32 target, Float s);
typedef TglMultiTexCoord1f_Func = void Function(int target, double s);
typedef TglMultiTexCoord1fv_Native = Void Function(
    Uint32 target, Pointer<Float> v);
typedef TglMultiTexCoord1fv_Func = void Function(int target, Pointer<Float> v);
typedef TglMultiTexCoord1i_Native = Void Function(Uint32 target, Int32 s);
typedef TglMultiTexCoord1i_Func = void Function(int target, int s);
typedef TglMultiTexCoord1iv_Native = Void Function(
    Uint32 target, Pointer<Int32> v);
typedef TglMultiTexCoord1iv_Func = void Function(int target, Pointer<Int32> v);
typedef TglMultiTexCoord1s_Native = Void Function(Uint32 target, Int16 s);
typedef TglMultiTexCoord1s_Func = void Function(int target, int s);
typedef TglMultiTexCoord1sv_Native = Void Function(
    Uint32 target, Pointer<Int16> v);
typedef TglMultiTexCoord1sv_Func = void Function(int target, Pointer<Int16> v);
typedef TglMultiTexCoord2d_Native = Void Function(
    Uint32 target, Double s, Double t);
typedef TglMultiTexCoord2d_Func = void Function(int target, double s, double t);
typedef TglMultiTexCoord2dv_Native = Void Function(
    Uint32 target, Pointer<Double> v);
typedef TglMultiTexCoord2dv_Func = void Function(int target, Pointer<Double> v);
typedef TglMultiTexCoord2f_Native = Void Function(
    Uint32 target, Float s, Float t);
typedef TglMultiTexCoord2f_Func = void Function(int target, double s, double t);
typedef TglMultiTexCoord2fv_Native = Void Function(
    Uint32 target, Pointer<Float> v);
typedef TglMultiTexCoord2fv_Func = void Function(int target, Pointer<Float> v);
typedef TglMultiTexCoord2i_Native = Void Function(
    Uint32 target, Int32 s, Int32 t);
typedef TglMultiTexCoord2i_Func = void Function(int target, int s, int t);
typedef TglMultiTexCoord2iv_Native = Void Function(
    Uint32 target, Pointer<Int32> v);
typedef TglMultiTexCoord2iv_Func = void Function(int target, Pointer<Int32> v);
typedef TglMultiTexCoord2s_Native = Void Function(
    Uint32 target, Int16 s, Int16 t);
typedef TglMultiTexCoord2s_Func = void Function(int target, int s, int t);
typedef TglMultiTexCoord2sv_Native = Void Function(
    Uint32 target, Pointer<Int16> v);
typedef TglMultiTexCoord2sv_Func = void Function(int target, Pointer<Int16> v);
typedef TglMultiTexCoord3d_Native = Void Function(
    Uint32 target, Double s, Double t, Double r);
typedef TglMultiTexCoord3d_Func = void Function(
    int target, double s, double t, double r);
typedef TglMultiTexCoord3dv_Native = Void Function(
    Uint32 target, Pointer<Double> v);
typedef TglMultiTexCoord3dv_Func = void Function(int target, Pointer<Double> v);
typedef TglMultiTexCoord3f_Native = Void Function(
    Uint32 target, Float s, Float t, Float r);
typedef TglMultiTexCoord3f_Func = void Function(
    int target, double s, double t, double r);
typedef TglMultiTexCoord3fv_Native = Void Function(
    Uint32 target, Pointer<Float> v);
typedef TglMultiTexCoord3fv_Func = void Function(int target, Pointer<Float> v);
typedef TglMultiTexCoord3i_Native = Void Function(
    Uint32 target, Int32 s, Int32 t, Int32 r);
typedef TglMultiTexCoord3i_Func = void Function(
    int target, int s, int t, int r);
typedef TglMultiTexCoord3iv_Native = Void Function(
    Uint32 target, Pointer<Int32> v);
typedef TglMultiTexCoord3iv_Func = void Function(int target, Pointer<Int32> v);
typedef TglMultiTexCoord3s_Native = Void Function(
    Uint32 target, Int16 s, Int16 t, Int16 r);
typedef TglMultiTexCoord3s_Func = void Function(
    int target, int s, int t, int r);
typedef TglMultiTexCoord3sv_Native = Void Function(
    Uint32 target, Pointer<Int16> v);
typedef TglMultiTexCoord3sv_Func = void Function(int target, Pointer<Int16> v);
typedef TglMultiTexCoord4d_Native = Void Function(
    Uint32 target, Double s, Double t, Double r, Double q);
typedef TglMultiTexCoord4d_Func = void Function(
    int target, double s, double t, double r, double q);
typedef TglMultiTexCoord4dv_Native = Void Function(
    Uint32 target, Pointer<Double> v);
typedef TglMultiTexCoord4dv_Func = void Function(int target, Pointer<Double> v);
typedef TglMultiTexCoord4f_Native = Void Function(
    Uint32 target, Float s, Float t, Float r, Float q);
typedef TglMultiTexCoord4f_Func = void Function(
    int target, double s, double t, double r, double q);
typedef TglMultiTexCoord4fv_Native = Void Function(
    Uint32 target, Pointer<Float> v);
typedef TglMultiTexCoord4fv_Func = void Function(int target, Pointer<Float> v);
typedef TglMultiTexCoord4i_Native = Void Function(
    Uint32 target, Int32 s, Int32 t, Int32 r, Int32 q);
typedef TglMultiTexCoord4i_Func = void Function(
    int target, int s, int t, int r, int q);
typedef TglMultiTexCoord4iv_Native = Void Function(
    Uint32 target, Pointer<Int32> v);
typedef TglMultiTexCoord4iv_Func = void Function(int target, Pointer<Int32> v);
typedef TglMultiTexCoord4s_Native = Void Function(
    Uint32 target, Int16 s, Int16 t, Int16 r, Int16 q);
typedef TglMultiTexCoord4s_Func = void Function(
    int target, int s, int t, int r, int q);
typedef TglMultiTexCoord4sv_Native = Void Function(
    Uint32 target, Pointer<Int16> v);
typedef TglMultiTexCoord4sv_Func = void Function(int target, Pointer<Int16> v);
typedef TglLoadTransposeMatrixd_Native = Void Function(Pointer<Double> m);
typedef TglLoadTransposeMatrixd_Func = void Function(Pointer<Double> m);
typedef TglLoadTransposeMatrixf_Native = Void Function(Pointer<Float> m);
typedef TglLoadTransposeMatrixf_Func = void Function(Pointer<Float> m);
typedef TglMultTransposeMatrixd_Native = Void Function(Pointer<Double> m);
typedef TglMultTransposeMatrixd_Func = void Function(Pointer<Double> m);
typedef TglMultTransposeMatrixf_Native = Void Function(Pointer<Float> m);
typedef TglMultTransposeMatrixf_Func = void Function(Pointer<Float> m);
typedef TglSampleCoverage_Native = Void Function(Float value, Uint8 invert);
typedef TglSampleCoverage_Func = void Function(double value, int invert);
typedef TglActiveTextureARB_Native = Void Function(Uint32 texture);
typedef TglActiveTextureARB_Func = void Function(int texture);
typedef TglClientActiveTextureARB_Native = Void Function(Uint32 texture);
typedef TglClientActiveTextureARB_Func = void Function(int texture);
typedef TglMultiTexCoord1dARB_Native = Void Function(Uint32 target, Double s);
typedef TglMultiTexCoord1dARB_Func = void Function(int target, double s);
typedef TglMultiTexCoord1dvARB_Native = Void Function(
    Uint32 target, Pointer<Double> v);
typedef TglMultiTexCoord1dvARB_Func = void Function(
    int target, Pointer<Double> v);
typedef TglMultiTexCoord1fARB_Native = Void Function(Uint32 target, Float s);
typedef TglMultiTexCoord1fARB_Func = void Function(int target, double s);
typedef TglMultiTexCoord1fvARB_Native = Void Function(
    Uint32 target, Pointer<Float> v);
typedef TglMultiTexCoord1fvARB_Func = void Function(
    int target, Pointer<Float> v);
typedef TglMultiTexCoord1iARB_Native = Void Function(Uint32 target, Int32 s);
typedef TglMultiTexCoord1iARB_Func = void Function(int target, int s);
typedef TglMultiTexCoord1ivARB_Native = Void Function(
    Uint32 target, Pointer<Int32> v);
typedef TglMultiTexCoord1ivARB_Func = void Function(
    int target, Pointer<Int32> v);
typedef TglMultiTexCoord1sARB_Native = Void Function(Uint32 target, Int16 s);
typedef TglMultiTexCoord1sARB_Func = void Function(int target, int s);
typedef TglMultiTexCoord1svARB_Native = Void Function(
    Uint32 target, Pointer<Int16> v);
typedef TglMultiTexCoord1svARB_Func = void Function(
    int target, Pointer<Int16> v);
typedef TglMultiTexCoord2dARB_Native = Void Function(
    Uint32 target, Double s, Double t);
typedef TglMultiTexCoord2dARB_Func = void Function(
    int target, double s, double t);
typedef TglMultiTexCoord2dvARB_Native = Void Function(
    Uint32 target, Pointer<Double> v);
typedef TglMultiTexCoord2dvARB_Func = void Function(
    int target, Pointer<Double> v);
typedef TglMultiTexCoord2fARB_Native = Void Function(
    Uint32 target, Float s, Float t);
typedef TglMultiTexCoord2fARB_Func = void Function(
    int target, double s, double t);
typedef TglMultiTexCoord2fvARB_Native = Void Function(
    Uint32 target, Pointer<Float> v);
typedef TglMultiTexCoord2fvARB_Func = void Function(
    int target, Pointer<Float> v);
typedef TglMultiTexCoord2iARB_Native = Void Function(
    Uint32 target, Int32 s, Int32 t);
typedef TglMultiTexCoord2iARB_Func = void Function(int target, int s, int t);
typedef TglMultiTexCoord2ivARB_Native = Void Function(
    Uint32 target, Pointer<Int32> v);
typedef TglMultiTexCoord2ivARB_Func = void Function(
    int target, Pointer<Int32> v);
typedef TglMultiTexCoord2sARB_Native = Void Function(
    Uint32 target, Int16 s, Int16 t);
typedef TglMultiTexCoord2sARB_Func = void Function(int target, int s, int t);
typedef TglMultiTexCoord2svARB_Native = Void Function(
    Uint32 target, Pointer<Int16> v);
typedef TglMultiTexCoord2svARB_Func = void Function(
    int target, Pointer<Int16> v);
typedef TglMultiTexCoord3dARB_Native = Void Function(
    Uint32 target, Double s, Double t, Double r);
typedef TglMultiTexCoord3dARB_Func = void Function(
    int target, double s, double t, double r);
typedef TglMultiTexCoord3dvARB_Native = Void Function(
    Uint32 target, Pointer<Double> v);
typedef TglMultiTexCoord3dvARB_Func = void Function(
    int target, Pointer<Double> v);
typedef TglMultiTexCoord3fARB_Native = Void Function(
    Uint32 target, Float s, Float t, Float r);
typedef TglMultiTexCoord3fARB_Func = void Function(
    int target, double s, double t, double r);
typedef TglMultiTexCoord3fvARB_Native = Void Function(
    Uint32 target, Pointer<Float> v);
typedef TglMultiTexCoord3fvARB_Func = void Function(
    int target, Pointer<Float> v);
typedef TglMultiTexCoord3iARB_Native = Void Function(
    Uint32 target, Int32 s, Int32 t, Int32 r);
typedef TglMultiTexCoord3iARB_Func = void Function(
    int target, int s, int t, int r);
typedef TglMultiTexCoord3ivARB_Native = Void Function(
    Uint32 target, Pointer<Int32> v);
typedef TglMultiTexCoord3ivARB_Func = void Function(
    int target, Pointer<Int32> v);
typedef TglMultiTexCoord3sARB_Native = Void Function(
    Uint32 target, Int16 s, Int16 t, Int16 r);
typedef TglMultiTexCoord3sARB_Func = void Function(
    int target, int s, int t, int r);
typedef TglMultiTexCoord3svARB_Native = Void Function(
    Uint32 target, Pointer<Int16> v);
typedef TglMultiTexCoord3svARB_Func = void Function(
    int target, Pointer<Int16> v);
typedef TglMultiTexCoord4dARB_Native = Void Function(
    Uint32 target, Double s, Double t, Double r, Double q);
typedef TglMultiTexCoord4dARB_Func = void Function(
    int target, double s, double t, double r, double q);
typedef TglMultiTexCoord4dvARB_Native = Void Function(
    Uint32 target, Pointer<Double> v);
typedef TglMultiTexCoord4dvARB_Func = void Function(
    int target, Pointer<Double> v);
typedef TglMultiTexCoord4fARB_Native = Void Function(
    Uint32 target, Float s, Float t, Float r, Float q);
typedef TglMultiTexCoord4fARB_Func = void Function(
    int target, double s, double t, double r, double q);
typedef TglMultiTexCoord4fvARB_Native = Void Function(
    Uint32 target, Pointer<Float> v);
typedef TglMultiTexCoord4fvARB_Func = void Function(
    int target, Pointer<Float> v);
typedef TglMultiTexCoord4iARB_Native = Void Function(
    Uint32 target, Int32 s, Int32 t, Int32 r, Int32 q);
typedef TglMultiTexCoord4iARB_Func = void Function(
    int target, int s, int t, int r, int q);
typedef TglMultiTexCoord4ivARB_Native = Void Function(
    Uint32 target, Pointer<Int32> v);
typedef TglMultiTexCoord4ivARB_Func = void Function(
    int target, Pointer<Int32> v);
typedef TglMultiTexCoord4sARB_Native = Void Function(
    Uint32 target, Int16 s, Int16 t, Int16 r, Int16 q);
typedef TglMultiTexCoord4sARB_Func = void Function(
    int target, int s, int t, int r, int q);
typedef TglMultiTexCoord4svARB_Native = Void Function(
    Uint32 target, Pointer<Int16> v);
typedef TglMultiTexCoord4svARB_Func = void Function(
    int target, Pointer<Int16> v);
