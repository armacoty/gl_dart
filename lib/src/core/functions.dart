import 'dart:io';
import 'package:ffi/ffi.dart';

import 'gl_typedefs.dart';
import 'dart:ffi';
import 'glext_typedefs.dart';
import 'wgl.dart';

enum GlVersion {
  GL_VERSION_1_1,
  GL_VERSION_1_2,
  GL_VERSION_1_3,
  GL_VERSION_1_4,
  GL_VERSION_1_5,

  GL_VERSION_2_0,
  GL_VERSION_2_1,

  GL_VERSION_3_0,
  GL_VERSION_3_1,
  GL_VERSION_3_2,
  GL_VERSION_3_3,

  GL_VERSION_4_0,
  GL_VERSION_4_1,
  GL_VERSION_4_2,
  GL_VERSION_4_3,
  GL_VERSION_4_4,
  GL_VERSION_4_5,
  GL_VERSION_4_6,
}

/// Class of binders of a dynamic library `opengl32.dll`/`libgl.so`
/// It takes the path to the dynamic library as an argument `customPath`.
/// If `customPath` is `null` and it will open the default files: `C:\Windows\System32\opengl32.dll` or `/usr/lib/x86_64-linux-gnu/libGL.so`
/// 
/// Example: 
/// 
/// ```
/// gl = Gl(
///   customPath: "<path-to-gl-file>",
///   version: GlVersion.GL_VERSION_X_X
/// );
/// ```
class Gl {
  TwglGetProcAddress_Func wglGetProcAddress;

  Gl({String customPath = null, GlVersion version = GlVersion.GL_VERSION_4_0}) {
    String path = null;
    if (customPath != null) {
      path = customPath;
    } else {
      if (Platform.isLinux) path = "/usr/lib/x86_64-linux-gnu/libGL.so";

      if (Platform.isWindows) path = "C:\\Windows\\System32\\opengl32.dll";
    }

    if (path == null)
      throw Exception(
          "Platform is not currently supported. (platform = ${Platform.operatingSystemVersion})");
    final dylib = DynamicLibrary.open(path);

    if (Platform.isWindows) {
      this.wglGetProcAddress = dylib
          .lookup<NativeFunction<TwglGetProcAddress_Native>>(
              "wglGetProcAddress")
          .asFunction();
    }
/*

########     ###    ########  ########    ##   
##     ##   ## ##   ##     ##    ##     ####   
##     ##  ##   ##  ##     ##    ##       ##   
########  ##     ## ########     ##       ##   
##        ######### ##   ##      ##       ##   
##        ##     ## ##    ##     ##       ##   
##        ##     ## ##     ##    ##     ###### 

 */

    /* GL_VERSION_1_1 */

    this.clearIndex = dylib
        .lookup<NativeFunction<TglClearIndex_Native>>('glClearIndex')
        .asFunction();
    this.clearColor = dylib
        .lookup<NativeFunction<TglClearColor_Native>>('glClearColor')
        .asFunction();
    this.clear =
        dylib.lookup<NativeFunction<TglClear_Native>>('glClear').asFunction();
    this.indexMask = dylib
        .lookup<NativeFunction<TglIndexMask_Native>>('glIndexMask')
        .asFunction();
    this.colorMask = dylib
        .lookup<NativeFunction<TglColorMask_Native>>('glColorMask')
        .asFunction();
    this.alphaFunc = dylib
        .lookup<NativeFunction<TglAlphaFunc_Native>>('glAlphaFunc')
        .asFunction();
    this.blendFunc = dylib
        .lookup<NativeFunction<TglBlendFunc_Native>>('glBlendFunc')
        .asFunction();
    this.logicOp = dylib
        .lookup<NativeFunction<TglLogicOp_Native>>('glLogicOp')
        .asFunction();
    this.cullFace = dylib
        .lookup<NativeFunction<TglCullFace_Native>>('glCullFace')
        .asFunction();
    this.frontFace = dylib
        .lookup<NativeFunction<TglFrontFace_Native>>('glFrontFace')
        .asFunction();
    this.pointSize = dylib
        .lookup<NativeFunction<TglPointSize_Native>>('glPointSize')
        .asFunction();
    this.lineWidth = dylib
        .lookup<NativeFunction<TglLineWidth_Native>>('glLineWidth')
        .asFunction();
    this.lineStipple = dylib
        .lookup<NativeFunction<TglLineStipple_Native>>('glLineStipple')
        .asFunction();
    this.polygonMode = dylib
        .lookup<NativeFunction<TglPolygonMode_Native>>('glPolygonMode')
        .asFunction();
    this.polygonOffset = dylib
        .lookup<NativeFunction<TglPolygonOffset_Native>>('glPolygonOffset')
        .asFunction();
    this.polygonStipple = dylib
        .lookup<NativeFunction<TglPolygonStipple_Native>>('glPolygonStipple')
        .asFunction();
    this.getPolygonStipple = dylib
        .lookup<NativeFunction<TglGetPolygonStipple_Native>>(
            'glGetPolygonStipple')
        .asFunction();
    this.edgeFlag = dylib
        .lookup<NativeFunction<TglEdgeFlag_Native>>('glEdgeFlag')
        .asFunction();
    this.edgeFlagv = dylib
        .lookup<NativeFunction<TglEdgeFlagv_Native>>('glEdgeFlagv')
        .asFunction();
    this.scissor = dylib
        .lookup<NativeFunction<TglScissor_Native>>('glScissor')
        .asFunction();
    this.clipPlane = dylib
        .lookup<NativeFunction<TglClipPlane_Native>>('glClipPlane')
        .asFunction();
    this.getClipPlane = dylib
        .lookup<NativeFunction<TglGetClipPlane_Native>>('glGetClipPlane')
        .asFunction();
    this.drawBuffer = dylib
        .lookup<NativeFunction<TglDrawBuffer_Native>>('glDrawBuffer')
        .asFunction();
    this.readBuffer = dylib
        .lookup<NativeFunction<TglReadBuffer_Native>>('glReadBuffer')
        .asFunction();
    this.enable =
        dylib.lookup<NativeFunction<TglEnable_Native>>('glEnable').asFunction();
    this.disable = dylib
        .lookup<NativeFunction<TglDisable_Native>>('glDisable')
        .asFunction();
    this.isEnabled = dylib
        .lookup<NativeFunction<TglIsEnabled_Native>>('glIsEnabled')
        .asFunction();
    this.enableClientState = dylib
        .lookup<NativeFunction<TglEnableClientState_Native>>(
            'glEnableClientState')
        .asFunction();
    this.disableClientState = dylib
        .lookup<NativeFunction<TglDisableClientState_Native>>(
            'glDisableClientState')
        .asFunction();
    this.getBooleanv = dylib
        .lookup<NativeFunction<TglGetBooleanv_Native>>('glGetBooleanv')
        .asFunction();
    this.getDoublev = dylib
        .lookup<NativeFunction<TglGetDoublev_Native>>('glGetDoublev')
        .asFunction();
    this.getFloatv = dylib
        .lookup<NativeFunction<TglGetFloatv_Native>>('glGetFloatv')
        .asFunction();
    this.getIntegerv = dylib
        .lookup<NativeFunction<TglGetIntegerv_Native>>('glGetIntegerv')
        .asFunction();
    this.pushAttrib = dylib
        .lookup<NativeFunction<TglPushAttrib_Native>>('glPushAttrib')
        .asFunction();
    this.popAttrib = dylib
        .lookup<NativeFunction<TglPopAttrib_Native>>('glPopAttrib')
        .asFunction();
    this.pushClientAttrib = dylib
        .lookup<NativeFunction<TglPushClientAttrib_Native>>(
            'glPushClientAttrib')
        .asFunction();
    this.popClientAttrib = dylib
        .lookup<NativeFunction<TglPopClientAttrib_Native>>('glPopClientAttrib')
        .asFunction();
    this.renderMode = dylib
        .lookup<NativeFunction<TglRenderMode_Native>>('glRenderMode')
        .asFunction();
    this.getError = dylib
        .lookup<NativeFunction<TglGetError_Native>>('glGetError')
        .asFunction();
    this.getString = dylib
        .lookup<NativeFunction<TglGetString_Native>>('glGetString')
        .asFunction();
    this.finish =
        dylib.lookup<NativeFunction<TglFinish_Native>>('glFinish').asFunction();
    this.flush =
        dylib.lookup<NativeFunction<TglFlush_Native>>('glFlush').asFunction();
    this.hint =
        dylib.lookup<NativeFunction<TglHint_Native>>('glHint').asFunction();
    this.clearDepth = dylib
        .lookup<NativeFunction<TglClearDepth_Native>>('glClearDepth')
        .asFunction();
    this.depthFunc = dylib
        .lookup<NativeFunction<TglDepthFunc_Native>>('glDepthFunc')
        .asFunction();
    this.depthMask = dylib
        .lookup<NativeFunction<TglDepthMask_Native>>('glDepthMask')
        .asFunction();
    this.depthRange = dylib
        .lookup<NativeFunction<TglDepthRange_Native>>('glDepthRange')
        .asFunction();
    this.clearAccum = dylib
        .lookup<NativeFunction<TglClearAccum_Native>>('glClearAccum')
        .asFunction();
    this.accum =
        dylib.lookup<NativeFunction<TglAccum_Native>>('glAccum').asFunction();
    this.matrixMode = dylib
        .lookup<NativeFunction<TglMatrixMode_Native>>('glMatrixMode')
        .asFunction();
    this.ortho =
        dylib.lookup<NativeFunction<TglOrtho_Native>>('glOrtho').asFunction();
    this.frustum = dylib
        .lookup<NativeFunction<TglFrustum_Native>>('glFrustum')
        .asFunction();
    this.viewport = dylib
        .lookup<NativeFunction<TglViewport_Native>>('glViewport')
        .asFunction();
    this.pushMatrix = dylib
        .lookup<NativeFunction<TglPushMatrix_Native>>('glPushMatrix')
        .asFunction();
    this.popMatrix = dylib
        .lookup<NativeFunction<TglPopMatrix_Native>>('glPopMatrix')
        .asFunction();
    this.loadIdentity = dylib
        .lookup<NativeFunction<TglLoadIdentity_Native>>('glLoadIdentity')
        .asFunction();
    this.loadMatrixd = dylib
        .lookup<NativeFunction<TglLoadMatrixd_Native>>('glLoadMatrixd')
        .asFunction();
    this.loadMatrixf = dylib
        .lookup<NativeFunction<TglLoadMatrixf_Native>>('glLoadMatrixf')
        .asFunction();
    this.multMatrixd = dylib
        .lookup<NativeFunction<TglMultMatrixd_Native>>('glMultMatrixd')
        .asFunction();
    this.multMatrixf = dylib
        .lookup<NativeFunction<TglMultMatrixf_Native>>('glMultMatrixf')
        .asFunction();
    this.rotated = dylib
        .lookup<NativeFunction<TglRotated_Native>>('glRotated')
        .asFunction();
    this.rotatef = dylib
        .lookup<NativeFunction<TglRotatef_Native>>('glRotatef')
        .asFunction();
    this.scaled =
        dylib.lookup<NativeFunction<TglScaled_Native>>('glScaled').asFunction();
    this.scalef =
        dylib.lookup<NativeFunction<TglScalef_Native>>('glScalef').asFunction();
    this.translated = dylib
        .lookup<NativeFunction<TglTranslated_Native>>('glTranslated')
        .asFunction();
    this.translatef = dylib
        .lookup<NativeFunction<TglTranslatef_Native>>('glTranslatef')
        .asFunction();
    this.isList =
        dylib.lookup<NativeFunction<TglIsList_Native>>('glIsList').asFunction();
    this.deleteLists = dylib
        .lookup<NativeFunction<TglDeleteLists_Native>>('glDeleteLists')
        .asFunction();
    this.genLists = dylib
        .lookup<NativeFunction<TglGenLists_Native>>('glGenLists')
        .asFunction();
    this.newList = dylib
        .lookup<NativeFunction<TglNewList_Native>>('glNewList')
        .asFunction();
    this.endList = dylib
        .lookup<NativeFunction<TglEndList_Native>>('glEndList')
        .asFunction();
    this.callList = dylib
        .lookup<NativeFunction<TglCallList_Native>>('glCallList')
        .asFunction();
    this.callLists = dylib
        .lookup<NativeFunction<TglCallLists_Native>>('glCallLists')
        .asFunction();
    this.listBase = dylib
        .lookup<NativeFunction<TglListBase_Native>>('glListBase')
        .asFunction();
    this.begin =
        dylib.lookup<NativeFunction<TglBegin_Native>>('glBegin').asFunction();
    this.end =
        dylib.lookup<NativeFunction<TglEnd_Native>>('glEnd').asFunction();
    this.vertex2d = dylib
        .lookup<NativeFunction<TglVertex2d_Native>>('glVertex2d')
        .asFunction();
    this.vertex2f = dylib
        .lookup<NativeFunction<TglVertex2f_Native>>('glVertex2f')
        .asFunction();
    this.vertex2i = dylib
        .lookup<NativeFunction<TglVertex2i_Native>>('glVertex2i')
        .asFunction();
    this.vertex2s = dylib
        .lookup<NativeFunction<TglVertex2s_Native>>('glVertex2s')
        .asFunction();
    this.vertex3d = dylib
        .lookup<NativeFunction<TglVertex3d_Native>>('glVertex3d')
        .asFunction();
    this.vertex3f = dylib
        .lookup<NativeFunction<TglVertex3f_Native>>('glVertex3f')
        .asFunction();
    this.vertex3i = dylib
        .lookup<NativeFunction<TglVertex3i_Native>>('glVertex3i')
        .asFunction();
    this.vertex3s = dylib
        .lookup<NativeFunction<TglVertex3s_Native>>('glVertex3s')
        .asFunction();
    this.vertex4d = dylib
        .lookup<NativeFunction<TglVertex4d_Native>>('glVertex4d')
        .asFunction();
    this.vertex4f = dylib
        .lookup<NativeFunction<TglVertex4f_Native>>('glVertex4f')
        .asFunction();
    this.vertex4i = dylib
        .lookup<NativeFunction<TglVertex4i_Native>>('glVertex4i')
        .asFunction();
    this.vertex4s = dylib
        .lookup<NativeFunction<TglVertex4s_Native>>('glVertex4s')
        .asFunction();
    this.vertex2dv = dylib
        .lookup<NativeFunction<TglVertex2dv_Native>>('glVertex2dv')
        .asFunction();
    this.vertex2fv = dylib
        .lookup<NativeFunction<TglVertex2fv_Native>>('glVertex2fv')
        .asFunction();
    this.vertex2iv = dylib
        .lookup<NativeFunction<TglVertex2iv_Native>>('glVertex2iv')
        .asFunction();
    this.vertex2sv = dylib
        .lookup<NativeFunction<TglVertex2sv_Native>>('glVertex2sv')
        .asFunction();
    this.vertex3dv = dylib
        .lookup<NativeFunction<TglVertex3dv_Native>>('glVertex3dv')
        .asFunction();
    this.vertex3fv = dylib
        .lookup<NativeFunction<TglVertex3fv_Native>>('glVertex3fv')
        .asFunction();
    this.vertex3iv = dylib
        .lookup<NativeFunction<TglVertex3iv_Native>>('glVertex3iv')
        .asFunction();
    this.vertex3sv = dylib
        .lookup<NativeFunction<TglVertex3sv_Native>>('glVertex3sv')
        .asFunction();
    this.vertex4dv = dylib
        .lookup<NativeFunction<TglVertex4dv_Native>>('glVertex4dv')
        .asFunction();
    this.vertex4fv = dylib
        .lookup<NativeFunction<TglVertex4fv_Native>>('glVertex4fv')
        .asFunction();
    this.vertex4iv = dylib
        .lookup<NativeFunction<TglVertex4iv_Native>>('glVertex4iv')
        .asFunction();
    this.vertex4sv = dylib
        .lookup<NativeFunction<TglVertex4sv_Native>>('glVertex4sv')
        .asFunction();
    this.normal3b = dylib
        .lookup<NativeFunction<TglNormal3b_Native>>('glNormal3b')
        .asFunction();
    this.normal3d = dylib
        .lookup<NativeFunction<TglNormal3d_Native>>('glNormal3d')
        .asFunction();
    this.normal3f = dylib
        .lookup<NativeFunction<TglNormal3f_Native>>('glNormal3f')
        .asFunction();
    this.normal3i = dylib
        .lookup<NativeFunction<TglNormal3i_Native>>('glNormal3i')
        .asFunction();
    this.normal3s = dylib
        .lookup<NativeFunction<TglNormal3s_Native>>('glNormal3s')
        .asFunction();
    this.normal3bv = dylib
        .lookup<NativeFunction<TglNormal3bv_Native>>('glNormal3bv')
        .asFunction();
    this.normal3dv = dylib
        .lookup<NativeFunction<TglNormal3dv_Native>>('glNormal3dv')
        .asFunction();
    this.normal3fv = dylib
        .lookup<NativeFunction<TglNormal3fv_Native>>('glNormal3fv')
        .asFunction();
    this.normal3iv = dylib
        .lookup<NativeFunction<TglNormal3iv_Native>>('glNormal3iv')
        .asFunction();
    this.normal3sv = dylib
        .lookup<NativeFunction<TglNormal3sv_Native>>('glNormal3sv')
        .asFunction();
    this.indexd =
        dylib.lookup<NativeFunction<TglIndexd_Native>>('glIndexd').asFunction();
    this.indexf =
        dylib.lookup<NativeFunction<TglIndexf_Native>>('glIndexf').asFunction();
    this.indexi =
        dylib.lookup<NativeFunction<TglIndexi_Native>>('glIndexi').asFunction();
    this.indexs =
        dylib.lookup<NativeFunction<TglIndexs_Native>>('glIndexs').asFunction();
    this.indexub = dylib
        .lookup<NativeFunction<TglIndexub_Native>>('glIndexub')
        .asFunction();
    this.indexdv = dylib
        .lookup<NativeFunction<TglIndexdv_Native>>('glIndexdv')
        .asFunction();
    this.indexfv = dylib
        .lookup<NativeFunction<TglIndexfv_Native>>('glIndexfv')
        .asFunction();
    this.indexiv = dylib
        .lookup<NativeFunction<TglIndexiv_Native>>('glIndexiv')
        .asFunction();
    this.indexsv = dylib
        .lookup<NativeFunction<TglIndexsv_Native>>('glIndexsv')
        .asFunction();
    this.indexubv = dylib
        .lookup<NativeFunction<TglIndexubv_Native>>('glIndexubv')
        .asFunction();
    this.color3b = dylib
        .lookup<NativeFunction<TglColor3b_Native>>('glColor3b')
        .asFunction();
    this.color3d = dylib
        .lookup<NativeFunction<TglColor3d_Native>>('glColor3d')
        .asFunction();
    this.color3f = dylib
        .lookup<NativeFunction<TglColor3f_Native>>('glColor3f')
        .asFunction();
    this.color3i = dylib
        .lookup<NativeFunction<TglColor3i_Native>>('glColor3i')
        .asFunction();
    this.color3s = dylib
        .lookup<NativeFunction<TglColor3s_Native>>('glColor3s')
        .asFunction();
    this.color3ub = dylib
        .lookup<NativeFunction<TglColor3ub_Native>>('glColor3ub')
        .asFunction();
    this.color3ui = dylib
        .lookup<NativeFunction<TglColor3ui_Native>>('glColor3ui')
        .asFunction();
    this.color3us = dylib
        .lookup<NativeFunction<TglColor3us_Native>>('glColor3us')
        .asFunction();
    this.color4b = dylib
        .lookup<NativeFunction<TglColor4b_Native>>('glColor4b')
        .asFunction();
    this.color4d = dylib
        .lookup<NativeFunction<TglColor4d_Native>>('glColor4d')
        .asFunction();
    this.color4f = dylib
        .lookup<NativeFunction<TglColor4f_Native>>('glColor4f')
        .asFunction();
    this.color4i = dylib
        .lookup<NativeFunction<TglColor4i_Native>>('glColor4i')
        .asFunction();
    this.color4s = dylib
        .lookup<NativeFunction<TglColor4s_Native>>('glColor4s')
        .asFunction();
    this.color4ub = dylib
        .lookup<NativeFunction<TglColor4ub_Native>>('glColor4ub')
        .asFunction();
    this.color4ui = dylib
        .lookup<NativeFunction<TglColor4ui_Native>>('glColor4ui')
        .asFunction();
    this.color4us = dylib
        .lookup<NativeFunction<TglColor4us_Native>>('glColor4us')
        .asFunction();
    this.color3bv = dylib
        .lookup<NativeFunction<TglColor3bv_Native>>('glColor3bv')
        .asFunction();
    this.color3dv = dylib
        .lookup<NativeFunction<TglColor3dv_Native>>('glColor3dv')
        .asFunction();
    this.color3fv = dylib
        .lookup<NativeFunction<TglColor3fv_Native>>('glColor3fv')
        .asFunction();
    this.color3iv = dylib
        .lookup<NativeFunction<TglColor3iv_Native>>('glColor3iv')
        .asFunction();
    this.color3sv = dylib
        .lookup<NativeFunction<TglColor3sv_Native>>('glColor3sv')
        .asFunction();
    this.color3ubv = dylib
        .lookup<NativeFunction<TglColor3ubv_Native>>('glColor3ubv')
        .asFunction();
    this.color3uiv = dylib
        .lookup<NativeFunction<TglColor3uiv_Native>>('glColor3uiv')
        .asFunction();
    this.color3usv = dylib
        .lookup<NativeFunction<TglColor3usv_Native>>('glColor3usv')
        .asFunction();
    this.color4bv = dylib
        .lookup<NativeFunction<TglColor4bv_Native>>('glColor4bv')
        .asFunction();
    this.color4dv = dylib
        .lookup<NativeFunction<TglColor4dv_Native>>('glColor4dv')
        .asFunction();
    this.color4fv = dylib
        .lookup<NativeFunction<TglColor4fv_Native>>('glColor4fv')
        .asFunction();
    this.color4iv = dylib
        .lookup<NativeFunction<TglColor4iv_Native>>('glColor4iv')
        .asFunction();
    this.color4sv = dylib
        .lookup<NativeFunction<TglColor4sv_Native>>('glColor4sv')
        .asFunction();
    this.color4ubv = dylib
        .lookup<NativeFunction<TglColor4ubv_Native>>('glColor4ubv')
        .asFunction();
    this.color4uiv = dylib
        .lookup<NativeFunction<TglColor4uiv_Native>>('glColor4uiv')
        .asFunction();
    this.color4usv = dylib
        .lookup<NativeFunction<TglColor4usv_Native>>('glColor4usv')
        .asFunction();
    this.texCoord1d = dylib
        .lookup<NativeFunction<TglTexCoord1d_Native>>('glTexCoord1d')
        .asFunction();
    this.texCoord1f = dylib
        .lookup<NativeFunction<TglTexCoord1f_Native>>('glTexCoord1f')
        .asFunction();
    this.texCoord1i = dylib
        .lookup<NativeFunction<TglTexCoord1i_Native>>('glTexCoord1i')
        .asFunction();
    this.texCoord1s = dylib
        .lookup<NativeFunction<TglTexCoord1s_Native>>('glTexCoord1s')
        .asFunction();
    this.texCoord2d = dylib
        .lookup<NativeFunction<TglTexCoord2d_Native>>('glTexCoord2d')
        .asFunction();
    this.texCoord2f = dylib
        .lookup<NativeFunction<TglTexCoord2f_Native>>('glTexCoord2f')
        .asFunction();
    this.texCoord2i = dylib
        .lookup<NativeFunction<TglTexCoord2i_Native>>('glTexCoord2i')
        .asFunction();
    this.texCoord2s = dylib
        .lookup<NativeFunction<TglTexCoord2s_Native>>('glTexCoord2s')
        .asFunction();
    this.texCoord3d = dylib
        .lookup<NativeFunction<TglTexCoord3d_Native>>('glTexCoord3d')
        .asFunction();
    this.texCoord3f = dylib
        .lookup<NativeFunction<TglTexCoord3f_Native>>('glTexCoord3f')
        .asFunction();
    this.texCoord3i = dylib
        .lookup<NativeFunction<TglTexCoord3i_Native>>('glTexCoord3i')
        .asFunction();
    this.texCoord3s = dylib
        .lookup<NativeFunction<TglTexCoord3s_Native>>('glTexCoord3s')
        .asFunction();
    this.texCoord4d = dylib
        .lookup<NativeFunction<TglTexCoord4d_Native>>('glTexCoord4d')
        .asFunction();
    this.texCoord4f = dylib
        .lookup<NativeFunction<TglTexCoord4f_Native>>('glTexCoord4f')
        .asFunction();
    this.texCoord4i = dylib
        .lookup<NativeFunction<TglTexCoord4i_Native>>('glTexCoord4i')
        .asFunction();
    this.texCoord4s = dylib
        .lookup<NativeFunction<TglTexCoord4s_Native>>('glTexCoord4s')
        .asFunction();
    this.texCoord1dv = dylib
        .lookup<NativeFunction<TglTexCoord1dv_Native>>('glTexCoord1dv')
        .asFunction();
    this.texCoord1fv = dylib
        .lookup<NativeFunction<TglTexCoord1fv_Native>>('glTexCoord1fv')
        .asFunction();
    this.texCoord1iv = dylib
        .lookup<NativeFunction<TglTexCoord1iv_Native>>('glTexCoord1iv')
        .asFunction();
    this.texCoord1sv = dylib
        .lookup<NativeFunction<TglTexCoord1sv_Native>>('glTexCoord1sv')
        .asFunction();
    this.texCoord2dv = dylib
        .lookup<NativeFunction<TglTexCoord2dv_Native>>('glTexCoord2dv')
        .asFunction();
    this.texCoord2fv = dylib
        .lookup<NativeFunction<TglTexCoord2fv_Native>>('glTexCoord2fv')
        .asFunction();
    this.texCoord2iv = dylib
        .lookup<NativeFunction<TglTexCoord2iv_Native>>('glTexCoord2iv')
        .asFunction();
    this.texCoord2sv = dylib
        .lookup<NativeFunction<TglTexCoord2sv_Native>>('glTexCoord2sv')
        .asFunction();
    this.texCoord3dv = dylib
        .lookup<NativeFunction<TglTexCoord3dv_Native>>('glTexCoord3dv')
        .asFunction();
    this.texCoord3fv = dylib
        .lookup<NativeFunction<TglTexCoord3fv_Native>>('glTexCoord3fv')
        .asFunction();
    this.texCoord3iv = dylib
        .lookup<NativeFunction<TglTexCoord3iv_Native>>('glTexCoord3iv')
        .asFunction();
    this.texCoord3sv = dylib
        .lookup<NativeFunction<TglTexCoord3sv_Native>>('glTexCoord3sv')
        .asFunction();
    this.texCoord4dv = dylib
        .lookup<NativeFunction<TglTexCoord4dv_Native>>('glTexCoord4dv')
        .asFunction();
    this.texCoord4fv = dylib
        .lookup<NativeFunction<TglTexCoord4fv_Native>>('glTexCoord4fv')
        .asFunction();
    this.texCoord4iv = dylib
        .lookup<NativeFunction<TglTexCoord4iv_Native>>('glTexCoord4iv')
        .asFunction();
    this.texCoord4sv = dylib
        .lookup<NativeFunction<TglTexCoord4sv_Native>>('glTexCoord4sv')
        .asFunction();
    this.rasterPos2d = dylib
        .lookup<NativeFunction<TglRasterPos2d_Native>>('glRasterPos2d')
        .asFunction();
    this.rasterPos2f = dylib
        .lookup<NativeFunction<TglRasterPos2f_Native>>('glRasterPos2f')
        .asFunction();
    this.rasterPos2i = dylib
        .lookup<NativeFunction<TglRasterPos2i_Native>>('glRasterPos2i')
        .asFunction();
    this.rasterPos2s = dylib
        .lookup<NativeFunction<TglRasterPos2s_Native>>('glRasterPos2s')
        .asFunction();
    this.rasterPos3d = dylib
        .lookup<NativeFunction<TglRasterPos3d_Native>>('glRasterPos3d')
        .asFunction();
    this.rasterPos3f = dylib
        .lookup<NativeFunction<TglRasterPos3f_Native>>('glRasterPos3f')
        .asFunction();
    this.rasterPos3i = dylib
        .lookup<NativeFunction<TglRasterPos3i_Native>>('glRasterPos3i')
        .asFunction();
    this.rasterPos3s = dylib
        .lookup<NativeFunction<TglRasterPos3s_Native>>('glRasterPos3s')
        .asFunction();
    this.rasterPos4d = dylib
        .lookup<NativeFunction<TglRasterPos4d_Native>>('glRasterPos4d')
        .asFunction();
    this.rasterPos4f = dylib
        .lookup<NativeFunction<TglRasterPos4f_Native>>('glRasterPos4f')
        .asFunction();
    this.rasterPos4i = dylib
        .lookup<NativeFunction<TglRasterPos4i_Native>>('glRasterPos4i')
        .asFunction();
    this.rasterPos4s = dylib
        .lookup<NativeFunction<TglRasterPos4s_Native>>('glRasterPos4s')
        .asFunction();
    this.rasterPos2dv = dylib
        .lookup<NativeFunction<TglRasterPos2dv_Native>>('glRasterPos2dv')
        .asFunction();
    this.rasterPos2fv = dylib
        .lookup<NativeFunction<TglRasterPos2fv_Native>>('glRasterPos2fv')
        .asFunction();
    this.rasterPos2iv = dylib
        .lookup<NativeFunction<TglRasterPos2iv_Native>>('glRasterPos2iv')
        .asFunction();
    this.rasterPos2sv = dylib
        .lookup<NativeFunction<TglRasterPos2sv_Native>>('glRasterPos2sv')
        .asFunction();
    this.rasterPos3dv = dylib
        .lookup<NativeFunction<TglRasterPos3dv_Native>>('glRasterPos3dv')
        .asFunction();
    this.rasterPos3fv = dylib
        .lookup<NativeFunction<TglRasterPos3fv_Native>>('glRasterPos3fv')
        .asFunction();
    this.rasterPos3iv = dylib
        .lookup<NativeFunction<TglRasterPos3iv_Native>>('glRasterPos3iv')
        .asFunction();
    this.rasterPos3sv = dylib
        .lookup<NativeFunction<TglRasterPos3sv_Native>>('glRasterPos3sv')
        .asFunction();
    this.rasterPos4dv = dylib
        .lookup<NativeFunction<TglRasterPos4dv_Native>>('glRasterPos4dv')
        .asFunction();
    this.rasterPos4fv = dylib
        .lookup<NativeFunction<TglRasterPos4fv_Native>>('glRasterPos4fv')
        .asFunction();
    this.rasterPos4iv = dylib
        .lookup<NativeFunction<TglRasterPos4iv_Native>>('glRasterPos4iv')
        .asFunction();
    this.rasterPos4sv = dylib
        .lookup<NativeFunction<TglRasterPos4sv_Native>>('glRasterPos4sv')
        .asFunction();
    this.rectd =
        dylib.lookup<NativeFunction<TglRectd_Native>>('glRectd').asFunction();
    this.rectf =
        dylib.lookup<NativeFunction<TglRectf_Native>>('glRectf').asFunction();
    this.recti =
        dylib.lookup<NativeFunction<TglRecti_Native>>('glRecti').asFunction();
    this.rects =
        dylib.lookup<NativeFunction<TglRects_Native>>('glRects').asFunction();
    this.rectdv =
        dylib.lookup<NativeFunction<TglRectdv_Native>>('glRectdv').asFunction();
    this.rectfv =
        dylib.lookup<NativeFunction<TglRectfv_Native>>('glRectfv').asFunction();
    this.rectiv =
        dylib.lookup<NativeFunction<TglRectiv_Native>>('glRectiv').asFunction();
    this.rectsv =
        dylib.lookup<NativeFunction<TglRectsv_Native>>('glRectsv').asFunction();
    this.vertexPointer = dylib
        .lookup<NativeFunction<TglVertexPointer_Native>>('glVertexPointer')
        .asFunction();
    this.normalPointer = dylib
        .lookup<NativeFunction<TglNormalPointer_Native>>('glNormalPointer')
        .asFunction();
    this.colorPointer = dylib
        .lookup<NativeFunction<TglColorPointer_Native>>('glColorPointer')
        .asFunction();
    this.indexPointer = dylib
        .lookup<NativeFunction<TglIndexPointer_Native>>('glIndexPointer')
        .asFunction();
    this.texCoordPointer = dylib
        .lookup<NativeFunction<TglTexCoordPointer_Native>>('glTexCoordPointer')
        .asFunction();
    this.edgeFlagPointer = dylib
        .lookup<NativeFunction<TglEdgeFlagPointer_Native>>('glEdgeFlagPointer')
        .asFunction();
    this.getPointerv = dylib
        .lookup<NativeFunction<TglGetPointerv_Native>>('glGetPointerv')
        .asFunction();
    this.arrayElement = dylib
        .lookup<NativeFunction<TglArrayElement_Native>>('glArrayElement')
        .asFunction();
    this.drawArrays = dylib
        .lookup<NativeFunction<TglDrawArrays_Native>>('glDrawArrays')
        .asFunction();
    this.drawElements = dylib
        .lookup<NativeFunction<TglDrawElements_Native>>('glDrawElements')
        .asFunction();
    this.interleavedArrays = dylib
        .lookup<NativeFunction<TglInterleavedArrays_Native>>(
            'glInterleavedArrays')
        .asFunction();
    this.shadeModel = dylib
        .lookup<NativeFunction<TglShadeModel_Native>>('glShadeModel')
        .asFunction();
    this.lightf =
        dylib.lookup<NativeFunction<TglLightf_Native>>('glLightf').asFunction();
    this.lighti =
        dylib.lookup<NativeFunction<TglLighti_Native>>('glLighti').asFunction();
    this.lightfv = dylib
        .lookup<NativeFunction<TglLightfv_Native>>('glLightfv')
        .asFunction();
    this.lightiv = dylib
        .lookup<NativeFunction<TglLightiv_Native>>('glLightiv')
        .asFunction();
    this.getLightfv = dylib
        .lookup<NativeFunction<TglGetLightfv_Native>>('glGetLightfv')
        .asFunction();
    this.getLightiv = dylib
        .lookup<NativeFunction<TglGetLightiv_Native>>('glGetLightiv')
        .asFunction();
    this.lightModelf = dylib
        .lookup<NativeFunction<TglLightModelf_Native>>('glLightModelf')
        .asFunction();
    this.lightModeli = dylib
        .lookup<NativeFunction<TglLightModeli_Native>>('glLightModeli')
        .asFunction();
    this.lightModelfv = dylib
        .lookup<NativeFunction<TglLightModelfv_Native>>('glLightModelfv')
        .asFunction();
    this.lightModeliv = dylib
        .lookup<NativeFunction<TglLightModeliv_Native>>('glLightModeliv')
        .asFunction();
    this.materialf = dylib
        .lookup<NativeFunction<TglMaterialf_Native>>('glMaterialf')
        .asFunction();
    this.materiali = dylib
        .lookup<NativeFunction<TglMateriali_Native>>('glMateriali')
        .asFunction();
    this.materialfv = dylib
        .lookup<NativeFunction<TglMaterialfv_Native>>('glMaterialfv')
        .asFunction();
    this.materialiv = dylib
        .lookup<NativeFunction<TglMaterialiv_Native>>('glMaterialiv')
        .asFunction();
    this.getMaterialfv = dylib
        .lookup<NativeFunction<TglGetMaterialfv_Native>>('glGetMaterialfv')
        .asFunction();
    this.getMaterialiv = dylib
        .lookup<NativeFunction<TglGetMaterialiv_Native>>('glGetMaterialiv')
        .asFunction();
    this.colorMaterial = dylib
        .lookup<NativeFunction<TglColorMaterial_Native>>('glColorMaterial')
        .asFunction();
    this.pixelZoom = dylib
        .lookup<NativeFunction<TglPixelZoom_Native>>('glPixelZoom')
        .asFunction();
    this.pixelStoref = dylib
        .lookup<NativeFunction<TglPixelStoref_Native>>('glPixelStoref')
        .asFunction();
    this.pixelStorei = dylib
        .lookup<NativeFunction<TglPixelStorei_Native>>('glPixelStorei')
        .asFunction();
    this.pixelTransferf = dylib
        .lookup<NativeFunction<TglPixelTransferf_Native>>('glPixelTransferf')
        .asFunction();
    this.pixelTransferi = dylib
        .lookup<NativeFunction<TglPixelTransferi_Native>>('glPixelTransferi')
        .asFunction();
    this.pixelMapfv = dylib
        .lookup<NativeFunction<TglPixelMapfv_Native>>('glPixelMapfv')
        .asFunction();
    this.pixelMapuiv = dylib
        .lookup<NativeFunction<TglPixelMapuiv_Native>>('glPixelMapuiv')
        .asFunction();
    this.pixelMapusv = dylib
        .lookup<NativeFunction<TglPixelMapusv_Native>>('glPixelMapusv')
        .asFunction();
    this.getPixelMapfv = dylib
        .lookup<NativeFunction<TglGetPixelMapfv_Native>>('glGetPixelMapfv')
        .asFunction();
    this.getPixelMapuiv = dylib
        .lookup<NativeFunction<TglGetPixelMapuiv_Native>>('glGetPixelMapuiv')
        .asFunction();
    this.getPixelMapusv = dylib
        .lookup<NativeFunction<TglGetPixelMapusv_Native>>('glGetPixelMapusv')
        .asFunction();
    this.bitmap =
        dylib.lookup<NativeFunction<TglBitmap_Native>>('glBitmap').asFunction();
    this.readPixels = dylib
        .lookup<NativeFunction<TglReadPixels_Native>>('glReadPixels')
        .asFunction();
    this.drawPixels = dylib
        .lookup<NativeFunction<TglDrawPixels_Native>>('glDrawPixels')
        .asFunction();
    this.copyPixels = dylib
        .lookup<NativeFunction<TglCopyPixels_Native>>('glCopyPixels')
        .asFunction();
    this.stencilFunc = dylib
        .lookup<NativeFunction<TglStencilFunc_Native>>('glStencilFunc')
        .asFunction();
    this.stencilMask = dylib
        .lookup<NativeFunction<TglStencilMask_Native>>('glStencilMask')
        .asFunction();
    this.stencilOp = dylib
        .lookup<NativeFunction<TglStencilOp_Native>>('glStencilOp')
        .asFunction();
    this.clearStencil = dylib
        .lookup<NativeFunction<TglClearStencil_Native>>('glClearStencil')
        .asFunction();
    this.texGend = dylib
        .lookup<NativeFunction<TglTexGend_Native>>('glTexGend')
        .asFunction();
    this.texGenf = dylib
        .lookup<NativeFunction<TglTexGenf_Native>>('glTexGenf')
        .asFunction();
    this.texGeni = dylib
        .lookup<NativeFunction<TglTexGeni_Native>>('glTexGeni')
        .asFunction();
    this.texGendv = dylib
        .lookup<NativeFunction<TglTexGendv_Native>>('glTexGendv')
        .asFunction();
    this.texGenfv = dylib
        .lookup<NativeFunction<TglTexGenfv_Native>>('glTexGenfv')
        .asFunction();
    this.texGeniv = dylib
        .lookup<NativeFunction<TglTexGeniv_Native>>('glTexGeniv')
        .asFunction();
    this.getTexGendv = dylib
        .lookup<NativeFunction<TglGetTexGendv_Native>>('glGetTexGendv')
        .asFunction();
    this.getTexGenfv = dylib
        .lookup<NativeFunction<TglGetTexGenfv_Native>>('glGetTexGenfv')
        .asFunction();
    this.getTexGeniv = dylib
        .lookup<NativeFunction<TglGetTexGeniv_Native>>('glGetTexGeniv')
        .asFunction();
    this.texEnvf = dylib
        .lookup<NativeFunction<TglTexEnvf_Native>>('glTexEnvf')
        .asFunction();
    this.texEnvi = dylib
        .lookup<NativeFunction<TglTexEnvi_Native>>('glTexEnvi')
        .asFunction();
    this.texEnvfv = dylib
        .lookup<NativeFunction<TglTexEnvfv_Native>>('glTexEnvfv')
        .asFunction();
    this.texEnviv = dylib
        .lookup<NativeFunction<TglTexEnviv_Native>>('glTexEnviv')
        .asFunction();
    this.getTexEnvfv = dylib
        .lookup<NativeFunction<TglGetTexEnvfv_Native>>('glGetTexEnvfv')
        .asFunction();
    this.getTexEnviv = dylib
        .lookup<NativeFunction<TglGetTexEnviv_Native>>('glGetTexEnviv')
        .asFunction();
    this.texParameterf = dylib
        .lookup<NativeFunction<TglTexParameterf_Native>>('glTexParameterf')
        .asFunction();
    this.texParameteri = dylib
        .lookup<NativeFunction<TglTexParameteri_Native>>('glTexParameteri')
        .asFunction();
    this.texParameterfv = dylib
        .lookup<NativeFunction<TglTexParameterfv_Native>>('glTexParameterfv')
        .asFunction();
    this.texParameteriv = dylib
        .lookup<NativeFunction<TglTexParameteriv_Native>>('glTexParameteriv')
        .asFunction();
    this.getTexParameterfv = dylib
        .lookup<NativeFunction<TglGetTexParameterfv_Native>>(
            'glGetTexParameterfv')
        .asFunction();
    this.getTexParameteriv = dylib
        .lookup<NativeFunction<TglGetTexParameteriv_Native>>(
            'glGetTexParameteriv')
        .asFunction();
    this.getTexLevelParameterfv = dylib
        .lookup<NativeFunction<TglGetTexLevelParameterfv_Native>>(
            'glGetTexLevelParameterfv')
        .asFunction();
    this.getTexLevelParameteriv = dylib
        .lookup<NativeFunction<TglGetTexLevelParameteriv_Native>>(
            'glGetTexLevelParameteriv')
        .asFunction();
    this.texImage1D = dylib
        .lookup<NativeFunction<TglTexImage1D_Native>>('glTexImage1D')
        .asFunction();
    this.texImage2D = dylib
        .lookup<NativeFunction<TglTexImage2D_Native>>('glTexImage2D')
        .asFunction();
    this.getTexImage = dylib
        .lookup<NativeFunction<TglGetTexImage_Native>>('glGetTexImage')
        .asFunction();
    this.genTextures = dylib
        .lookup<NativeFunction<TglGenTextures_Native>>('glGenTextures')
        .asFunction();
    this.deleteTextures = dylib
        .lookup<NativeFunction<TglDeleteTextures_Native>>('glDeleteTextures')
        .asFunction();
    this.bindTexture = dylib
        .lookup<NativeFunction<TglBindTexture_Native>>('glBindTexture')
        .asFunction();
    this.prioritizeTextures = dylib
        .lookup<NativeFunction<TglPrioritizeTextures_Native>>(
            'glPrioritizeTextures')
        .asFunction();
    this.areTexturesResident = dylib
        .lookup<NativeFunction<TglAreTexturesResident_Native>>(
            'glAreTexturesResident')
        .asFunction();
    this.isTexture = dylib
        .lookup<NativeFunction<TglIsTexture_Native>>('glIsTexture')
        .asFunction();
    this.texSubImage1D = dylib
        .lookup<NativeFunction<TglTexSubImage1D_Native>>('glTexSubImage1D')
        .asFunction();
    this.texSubImage2D = dylib
        .lookup<NativeFunction<TglTexSubImage2D_Native>>('glTexSubImage2D')
        .asFunction();
    this.copyTexImage1D = dylib
        .lookup<NativeFunction<TglCopyTexImage1D_Native>>('glCopyTexImage1D')
        .asFunction();
    this.copyTexImage2D = dylib
        .lookup<NativeFunction<TglCopyTexImage2D_Native>>('glCopyTexImage2D')
        .asFunction();
    this.copyTexSubImage1D = dylib
        .lookup<NativeFunction<TglCopyTexSubImage1D_Native>>(
            'glCopyTexSubImage1D')
        .asFunction();
    this.copyTexSubImage2D = dylib
        .lookup<NativeFunction<TglCopyTexSubImage2D_Native>>(
            'glCopyTexSubImage2D')
        .asFunction();
    this.map1d =
        dylib.lookup<NativeFunction<TglMap1d_Native>>('glMap1d').asFunction();
    this.map1f =
        dylib.lookup<NativeFunction<TglMap1f_Native>>('glMap1f').asFunction();
    this.map2d =
        dylib.lookup<NativeFunction<TglMap2d_Native>>('glMap2d').asFunction();
    this.map2f =
        dylib.lookup<NativeFunction<TglMap2f_Native>>('glMap2f').asFunction();
    this.getMapdv = dylib
        .lookup<NativeFunction<TglGetMapdv_Native>>('glGetMapdv')
        .asFunction();
    this.getMapfv = dylib
        .lookup<NativeFunction<TglGetMapfv_Native>>('glGetMapfv')
        .asFunction();
    this.getMapiv = dylib
        .lookup<NativeFunction<TglGetMapiv_Native>>('glGetMapiv')
        .asFunction();
    this.evalCoord1d = dylib
        .lookup<NativeFunction<TglEvalCoord1d_Native>>('glEvalCoord1d')
        .asFunction();
    this.evalCoord1f = dylib
        .lookup<NativeFunction<TglEvalCoord1f_Native>>('glEvalCoord1f')
        .asFunction();
    this.evalCoord1dv = dylib
        .lookup<NativeFunction<TglEvalCoord1dv_Native>>('glEvalCoord1dv')
        .asFunction();
    this.evalCoord1fv = dylib
        .lookup<NativeFunction<TglEvalCoord1fv_Native>>('glEvalCoord1fv')
        .asFunction();
    this.evalCoord2d = dylib
        .lookup<NativeFunction<TglEvalCoord2d_Native>>('glEvalCoord2d')
        .asFunction();
    this.evalCoord2f = dylib
        .lookup<NativeFunction<TglEvalCoord2f_Native>>('glEvalCoord2f')
        .asFunction();
    this.evalCoord2dv = dylib
        .lookup<NativeFunction<TglEvalCoord2dv_Native>>('glEvalCoord2dv')
        .asFunction();
    this.evalCoord2fv = dylib
        .lookup<NativeFunction<TglEvalCoord2fv_Native>>('glEvalCoord2fv')
        .asFunction();
    this.mapGrid1d = dylib
        .lookup<NativeFunction<TglMapGrid1d_Native>>('glMapGrid1d')
        .asFunction();
    this.mapGrid1f = dylib
        .lookup<NativeFunction<TglMapGrid1f_Native>>('glMapGrid1f')
        .asFunction();
    this.mapGrid2d = dylib
        .lookup<NativeFunction<TglMapGrid2d_Native>>('glMapGrid2d')
        .asFunction();
    this.mapGrid2f = dylib
        .lookup<NativeFunction<TglMapGrid2f_Native>>('glMapGrid2f')
        .asFunction();
    this.evalPoint1 = dylib
        .lookup<NativeFunction<TglEvalPoint1_Native>>('glEvalPoint1')
        .asFunction();
    this.evalPoint2 = dylib
        .lookup<NativeFunction<TglEvalPoint2_Native>>('glEvalPoint2')
        .asFunction();
    this.evalMesh1 = dylib
        .lookup<NativeFunction<TglEvalMesh1_Native>>('glEvalMesh1')
        .asFunction();
    this.evalMesh2 = dylib
        .lookup<NativeFunction<TglEvalMesh2_Native>>('glEvalMesh2')
        .asFunction();
    this.fogf =
        dylib.lookup<NativeFunction<TglFogf_Native>>('glFogf').asFunction();
    this.fogi =
        dylib.lookup<NativeFunction<TglFogi_Native>>('glFogi').asFunction();
    this.fogfv =
        dylib.lookup<NativeFunction<TglFogfv_Native>>('glFogfv').asFunction();
    this.fogiv =
        dylib.lookup<NativeFunction<TglFogiv_Native>>('glFogiv').asFunction();
    this.feedbackBuffer = dylib
        .lookup<NativeFunction<TglFeedbackBuffer_Native>>('glFeedbackBuffer')
        .asFunction();
    this.passThrough = dylib
        .lookup<NativeFunction<TglPassThrough_Native>>('glPassThrough')
        .asFunction();
    this.selectBuffer = dylib
        .lookup<NativeFunction<TglSelectBuffer_Native>>('glSelectBuffer')
        .asFunction();
    this.initNames = dylib
        .lookup<NativeFunction<TglInitNames_Native>>('glInitNames')
        .asFunction();
    this.loadName = dylib
        .lookup<NativeFunction<TglLoadName_Native>>('glLoadName')
        .asFunction();
    this.pushName = dylib
        .lookup<NativeFunction<TglPushName_Native>>('glPushName')
        .asFunction();
    this.popName = dylib
        .lookup<NativeFunction<TglPopName_Native>>('glPopName')
        .asFunction();

    /* GL_VERSION_1_2  */
    if (version.index >= GlVersion.GL_VERSION_1_2.index) {
      if (Platform.isWindows) {
        this.drawRangeElements =
            wglGetProcAddress(Utf8.toUtf8("glDrawRangeElements"))
                .cast<NativeFunction<TglDrawRangeElements_Native>>()
                .asFunction();
        this.texImage3D = wglGetProcAddress(Utf8.toUtf8("glTexImage3D"))
            .cast<NativeFunction<TglTexImage3D_Native>>()
            .asFunction();
        this.texSubImage3D = wglGetProcAddress(Utf8.toUtf8("glTexSubImage3D"))
            .cast<NativeFunction<TglTexSubImage3D_Native>>()
            .asFunction();
        this.copyTexSubImage3D =
            wglGetProcAddress(Utf8.toUtf8("glCopyTexSubImage3D"))
                .cast<NativeFunction<TglCopyTexSubImage3D_Native>>()
                .asFunction();
      } else {
        this.drawRangeElements = dylib
            .lookup<NativeFunction<TglDrawRangeElements_Native>>(
                'glDrawRangeElements')
            .asFunction();
        this.texImage3D = dylib
            .lookup<NativeFunction<TglTexImage3D_Native>>('glTexImage3D')
            .asFunction();
        this.texSubImage3D = dylib
            .lookup<NativeFunction<TglTexSubImage3D_Native>>('glTexSubImage3D')
            .asFunction();
        this.copyTexSubImage3D = dylib
            .lookup<NativeFunction<TglCopyTexSubImage3D_Native>>(
                'glCopyTexSubImage3D')
            .asFunction();
      }
    }
    // WTF GL_ARB_imaging
    /*
    this.colorTable = dylib
        .lookup<NativeFunction<TglColorTable_Native>>('glColorTable')
        .asFunction();
    this.colorSubTable = dylib
        .lookup<NativeFunction<TglColorSubTable_Native>>('glColorSubTable')
        .asFunction();
    this.colorTableParameteriv = dylib
        .lookup<NativeFunction<TglColorTableParameteriv_Native>>(
            'glColorTableParameteriv')
        .asFunction();
    this.colorTableParameterfv = dylib
        .lookup<NativeFunction<TglColorTableParameterfv_Native>>(
            'glColorTableParameterfv')
        .asFunction();
    this.copyColorSubTable = dylib
        .lookup<NativeFunction<TglCopyColorSubTable_Native>>(
            'glCopyColorSubTable')
        .asFunction();
    this.copyColorTable = dylib
        .lookup<NativeFunction<TglCopyColorTable_Native>>('glCopyColorTable')
        .asFunction();
    this.getColorTable = dylib
        .lookup<NativeFunction<TglGetColorTable_Native>>('glGetColorTable')
        .asFunction();
    this.getColorTableParameterfv = dylib
        .lookup<NativeFunction<TglGetColorTableParameterfv_Native>>(
            'glGetColorTableParameterfv')
        .asFunction();
    this.getColorTableParameteriv = dylib
        .lookup<NativeFunction<TglGetColorTableParameteriv_Native>>(
            'glGetColorTableParameteriv')
        .asFunction();
    this.blendEquation = dylib
        .lookup<NativeFunction<TglBlendEquation_Native>>('glBlendEquation')
        .asFunction();
    this.blendColor = dylib
        .lookup<NativeFunction<TglBlendColor_Native>>('glBlendColor')
        .asFunction();
    this.histogram = dylib
        .lookup<NativeFunction<TglHistogram_Native>>('glHistogram')
        .asFunction();
    this.resetHistogram = dylib
        .lookup<NativeFunction<TglResetHistogram_Native>>('glResetHistogram')
        .asFunction();
    this.getHistogram = dylib
        .lookup<NativeFunction<TglGetHistogram_Native>>('glGetHistogram')
        .asFunction();
    this.getHistogramParameterfv = dylib
        .lookup<NativeFunction<TglGetHistogramParameterfv_Native>>(
            'glGetHistogramParameterfv')
        .asFunction();
    this.getHistogramParameteriv = dylib
        .lookup<NativeFunction<TglGetHistogramParameteriv_Native>>(
            'glGetHistogramParameteriv')
        .asFunction();
    this.minmax =
        dylib.lookup<NativeFunction<TglMinmax_Native>>('glMinmax').asFunction();
    this.resetMinmax = dylib
        .lookup<NativeFunction<TglResetMinmax_Native>>('glResetMinmax')
        .asFunction();
    this.getMinmax = dylib
        .lookup<NativeFunction<TglGetMinmax_Native>>('glGetMinmax')
        .asFunction();
    this.getMinmaxParameterfv = dylib
        .lookup<NativeFunction<TglGetMinmaxParameterfv_Native>>(
            'glGetMinmaxParameterfv')
        .asFunction();
    this.getMinmaxParameteriv = dylib
        .lookup<NativeFunction<TglGetMinmaxParameteriv_Native>>(
            'glGetMinmaxParameteriv')
        .asFunction();
    this.convolutionFilter1D = dylib
        .lookup<NativeFunction<TglConvolutionFilter1D_Native>>(
            'glConvolutionFilter1D')
        .asFunction();
    this.convolutionFilter2D = dylib
        .lookup<NativeFunction<TglConvolutionFilter2D_Native>>(
            'glConvolutionFilter2D')
        .asFunction();
    this.convolutionParameterf = dylib
        .lookup<NativeFunction<TglConvolutionParameterf_Native>>(
            'glConvolutionParameterf')
        .asFunction();
    this.convolutionParameterfv = dylib
        .lookup<NativeFunction<TglConvolutionParameterfv_Native>>(
            'glConvolutionParameterfv')
        .asFunction();
    this.convolutionParameteri = dylib
        .lookup<NativeFunction<TglConvolutionParameteri_Native>>(
            'glConvolutionParameteri')
        .asFunction();
    this.convolutionParameteriv = dylib
        .lookup<NativeFunction<TglConvolutionParameteriv_Native>>(
            'glConvolutionParameteriv')
        .asFunction();
    this.copyConvolutionFilter1D = dylib
        .lookup<NativeFunction<TglCopyConvolutionFilter1D_Native>>(
            'glCopyConvolutionFilter1D')
        .asFunction();
    this.copyConvolutionFilter2D = dylib
        .lookup<NativeFunction<TglCopyConvolutionFilter2D_Native>>(
            'glCopyConvolutionFilter2D')
        .asFunction();
    this.getConvolutionFilter = dylib
        .lookup<NativeFunction<TglGetConvolutionFilter_Native>>(
            'glGetConvolutionFilter')
        .asFunction();
    this.getConvolutionParameterfv = dylib
        .lookup<NativeFunction<TglGetConvolutionParameterfv_Native>>(
            'glGetConvolutionParameterfv')
        .asFunction();
    this.getConvolutionParameteriv = dylib
        .lookup<NativeFunction<TglGetConvolutionParameteriv_Native>>(
            'glGetConvolutionParameteriv')
        .asFunction();
    this.separableFilter2D = dylib
        .lookup<NativeFunction<TglSeparableFilter2D_Native>>(
            'glSeparableFilter2D')
        .asFunction();
    this.getSeparableFilter = dylib
        .lookup<NativeFunction<TglGetSeparableFilter_Native>>(
            'glGetSeparableFilter')
        .asFunction();*/

    /* GL_VERSION_1_3 */
    if (version.index >= GlVersion.GL_VERSION_1_3.index) {
      if (Platform.isWindows) {
        this.colorTable = wglGetProcAddress(Utf8.toUtf8("glColorTable"))
            .cast<NativeFunction<TglColorTable_Native>>()
            .asFunction();
        this.colorSubTable = wglGetProcAddress(Utf8.toUtf8("glColorSubTable"))
            .cast<NativeFunction<TglColorSubTable_Native>>()
            .asFunction();
        this.colorTableParameteriv =
            wglGetProcAddress(Utf8.toUtf8("glColorTableParameteriv"))
                .cast<NativeFunction<TglColorTableParameteriv_Native>>()
                .asFunction();
        this.colorTableParameterfv =
            wglGetProcAddress(Utf8.toUtf8("glColorTableParameterfv"))
                .cast<NativeFunction<TglColorTableParameterfv_Native>>()
                .asFunction();
        this.copyColorSubTable =
            wglGetProcAddress(Utf8.toUtf8("glCopyColorSubTable"))
                .cast<NativeFunction<TglCopyColorSubTable_Native>>()
                .asFunction();
        this.copyColorTable = wglGetProcAddress(Utf8.toUtf8("glCopyColorTable"))
            .cast<NativeFunction<TglCopyColorTable_Native>>()
            .asFunction();
        this.getColorTable = wglGetProcAddress(Utf8.toUtf8("glGetColorTable"))
            .cast<NativeFunction<TglGetColorTable_Native>>()
            .asFunction();
        this.getColorTableParameterfv =
            wglGetProcAddress(Utf8.toUtf8("glGetColorTableParameterfv"))
                .cast<NativeFunction<TglGetColorTableParameterfv_Native>>()
                .asFunction();
        this.getColorTableParameteriv =
            wglGetProcAddress(Utf8.toUtf8("glGetColorTableParameteriv"))
                .cast<NativeFunction<TglGetColorTableParameteriv_Native>>()
                .asFunction();
        this.blendEquation = wglGetProcAddress(Utf8.toUtf8("glBlendEquation"))
            .cast<NativeFunction<TglBlendEquation_Native>>()
            .asFunction();
        this.blendColor = wglGetProcAddress(Utf8.toUtf8("glBlendColor"))
            .cast<NativeFunction<TglBlendColor_Native>>()
            .asFunction();
        this.histogram = wglGetProcAddress(Utf8.toUtf8("glHistogram"))
            .cast<NativeFunction<TglHistogram_Native>>()
            .asFunction();
        this.resetHistogram = wglGetProcAddress(Utf8.toUtf8("glResetHistogram"))
            .cast<NativeFunction<TglResetHistogram_Native>>()
            .asFunction();
        this.getHistogram = wglGetProcAddress(Utf8.toUtf8("glGetHistogram"))
            .cast<NativeFunction<TglGetHistogram_Native>>()
            .asFunction();
        this.getHistogramParameterfv =
            wglGetProcAddress(Utf8.toUtf8("glGetHistogramParameterfv"))
                .cast<NativeFunction<TglGetHistogramParameterfv_Native>>()
                .asFunction();
        this.getHistogramParameteriv =
            wglGetProcAddress(Utf8.toUtf8("glGetHistogramParameteriv"))
                .cast<NativeFunction<TglGetHistogramParameteriv_Native>>()
                .asFunction();
        this.minmax = wglGetProcAddress(Utf8.toUtf8("glMinmax"))
            .cast<NativeFunction<TglMinmax_Native>>()
            .asFunction();
        this.resetMinmax = wglGetProcAddress(Utf8.toUtf8("glResetMinmax"))
            .cast<NativeFunction<TglResetMinmax_Native>>()
            .asFunction();
        this.getMinmax = wglGetProcAddress(Utf8.toUtf8("glGetMinmax"))
            .cast<NativeFunction<TglGetMinmax_Native>>()
            .asFunction();
        this.getMinmaxParameterfv =
            wglGetProcAddress(Utf8.toUtf8("glGetMinmaxParameterfv"))
                .cast<NativeFunction<TglGetMinmaxParameterfv_Native>>()
                .asFunction();
        this.getMinmaxParameteriv =
            wglGetProcAddress(Utf8.toUtf8("glGetMinmaxParameteriv"))
                .cast<NativeFunction<TglGetMinmaxParameteriv_Native>>()
                .asFunction();
        this.convolutionFilter1D =
            wglGetProcAddress(Utf8.toUtf8("glConvolutionFilter1D"))
                .cast<NativeFunction<TglConvolutionFilter1D_Native>>()
                .asFunction();
        this.convolutionFilter2D =
            wglGetProcAddress(Utf8.toUtf8("glConvolutionFilter2D"))
                .cast<NativeFunction<TglConvolutionFilter2D_Native>>()
                .asFunction();
        this.convolutionParameterf =
            wglGetProcAddress(Utf8.toUtf8("glConvolutionParameterf"))
                .cast<NativeFunction<TglConvolutionParameterf_Native>>()
                .asFunction();
        this.convolutionParameterfv =
            wglGetProcAddress(Utf8.toUtf8("glConvolutionParameterfv"))
                .cast<NativeFunction<TglConvolutionParameterfv_Native>>()
                .asFunction();
        this.convolutionParameteri =
            wglGetProcAddress(Utf8.toUtf8("glConvolutionParameteri"))
                .cast<NativeFunction<TglConvolutionParameteri_Native>>()
                .asFunction();
        this.convolutionParameteriv =
            wglGetProcAddress(Utf8.toUtf8("glConvolutionParameteriv"))
                .cast<NativeFunction<TglConvolutionParameteriv_Native>>()
                .asFunction();
        this.copyConvolutionFilter1D =
            wglGetProcAddress(Utf8.toUtf8("glCopyConvolutionFilter1D"))
                .cast<NativeFunction<TglCopyConvolutionFilter1D_Native>>()
                .asFunction();
        this.copyConvolutionFilter2D =
            wglGetProcAddress(Utf8.toUtf8("glCopyConvolutionFilter2D"))
                .cast<NativeFunction<TglCopyConvolutionFilter2D_Native>>()
                .asFunction();
        this.getConvolutionFilter =
            wglGetProcAddress(Utf8.toUtf8("glGetConvolutionFilter"))
                .cast<NativeFunction<TglGetConvolutionFilter_Native>>()
                .asFunction();
        this.getConvolutionParameterfv =
            wglGetProcAddress(Utf8.toUtf8("glGetConvolutionParameterfv"))
                .cast<NativeFunction<TglGetConvolutionParameterfv_Native>>()
                .asFunction();
        this.getConvolutionParameteriv =
            wglGetProcAddress(Utf8.toUtf8("glGetConvolutionParameteriv"))
                .cast<NativeFunction<TglGetConvolutionParameteriv_Native>>()
                .asFunction();
        this.separableFilter2D =
            wglGetProcAddress(Utf8.toUtf8("glSeparableFilter2D"))
                .cast<NativeFunction<TglSeparableFilter2D_Native>>()
                .asFunction();
        this.getSeparableFilter =
            wglGetProcAddress(Utf8.toUtf8("glGetSeparableFilter"))
                .cast<NativeFunction<TglGetSeparableFilter_Native>>()
                .asFunction();
        this.activeTexture = wglGetProcAddress(Utf8.toUtf8("glActiveTexture"))
            .cast<NativeFunction<TglActiveTexture_Native>>()
            .asFunction();
        this.clientActiveTexture =
            wglGetProcAddress(Utf8.toUtf8("glClientActiveTexture"))
                .cast<NativeFunction<TglClientActiveTexture_Native>>()
                .asFunction();
        this.compressedTexImage1D =
            wglGetProcAddress(Utf8.toUtf8("glCompressedTexImage1D"))
                .cast<NativeFunction<TglCompressedTexImage1D_Native>>()
                .asFunction();
        this.compressedTexImage2D =
            wglGetProcAddress(Utf8.toUtf8("glCompressedTexImage2D"))
                .cast<NativeFunction<TglCompressedTexImage2D_Native>>()
                .asFunction();
        this.compressedTexImage3D =
            wglGetProcAddress(Utf8.toUtf8("glCompressedTexImage3D"))
                .cast<NativeFunction<TglCompressedTexImage3D_Native>>()
                .asFunction();
        this.compressedTexSubImage1D =
            wglGetProcAddress(Utf8.toUtf8("glCompressedTexSubImage1D"))
                .cast<NativeFunction<TglCompressedTexSubImage1D_Native>>()
                .asFunction();
        this.compressedTexSubImage2D =
            wglGetProcAddress(Utf8.toUtf8("glCompressedTexSubImage2D"))
                .cast<NativeFunction<TglCompressedTexSubImage2D_Native>>()
                .asFunction();
        this.compressedTexSubImage3D =
            wglGetProcAddress(Utf8.toUtf8("glCompressedTexSubImage3D"))
                .cast<NativeFunction<TglCompressedTexSubImage3D_Native>>()
                .asFunction();
        this.getCompressedTexImage =
            wglGetProcAddress(Utf8.toUtf8("glGetCompressedTexImage"))
                .cast<NativeFunction<TglGetCompressedTexImage_Native>>()
                .asFunction();
        this.multiTexCoord1d =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord1d"))
                .cast<NativeFunction<TglMultiTexCoord1d_Native>>()
                .asFunction();
        this.multiTexCoord1dv =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord1dv"))
                .cast<NativeFunction<TglMultiTexCoord1dv_Native>>()
                .asFunction();
        this.multiTexCoord1f =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord1f"))
                .cast<NativeFunction<TglMultiTexCoord1f_Native>>()
                .asFunction();
        this.multiTexCoord1fv =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord1fv"))
                .cast<NativeFunction<TglMultiTexCoord1fv_Native>>()
                .asFunction();
        this.multiTexCoord1i =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord1i"))
                .cast<NativeFunction<TglMultiTexCoord1i_Native>>()
                .asFunction();
        this.multiTexCoord1iv =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord1iv"))
                .cast<NativeFunction<TglMultiTexCoord1iv_Native>>()
                .asFunction();
        this.multiTexCoord1s =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord1s"))
                .cast<NativeFunction<TglMultiTexCoord1s_Native>>()
                .asFunction();
        this.multiTexCoord1sv =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord1sv"))
                .cast<NativeFunction<TglMultiTexCoord1sv_Native>>()
                .asFunction();
        this.multiTexCoord2d =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord2d"))
                .cast<NativeFunction<TglMultiTexCoord2d_Native>>()
                .asFunction();
        this.multiTexCoord2dv =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord2dv"))
                .cast<NativeFunction<TglMultiTexCoord2dv_Native>>()
                .asFunction();
        this.multiTexCoord2f =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord2f"))
                .cast<NativeFunction<TglMultiTexCoord2f_Native>>()
                .asFunction();
        this.multiTexCoord2fv =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord2fv"))
                .cast<NativeFunction<TglMultiTexCoord2fv_Native>>()
                .asFunction();
        this.multiTexCoord2i =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord2i"))
                .cast<NativeFunction<TglMultiTexCoord2i_Native>>()
                .asFunction();
        this.multiTexCoord2iv =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord2iv"))
                .cast<NativeFunction<TglMultiTexCoord2iv_Native>>()
                .asFunction();
        this.multiTexCoord2s =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord2s"))
                .cast<NativeFunction<TglMultiTexCoord2s_Native>>()
                .asFunction();
        this.multiTexCoord2sv =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord2sv"))
                .cast<NativeFunction<TglMultiTexCoord2sv_Native>>()
                .asFunction();
        this.multiTexCoord3d =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord3d"))
                .cast<NativeFunction<TglMultiTexCoord3d_Native>>()
                .asFunction();
        this.multiTexCoord3dv =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord3dv"))
                .cast<NativeFunction<TglMultiTexCoord3dv_Native>>()
                .asFunction();
        this.multiTexCoord3f =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord3f"))
                .cast<NativeFunction<TglMultiTexCoord3f_Native>>()
                .asFunction();
        this.multiTexCoord3fv =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord3fv"))
                .cast<NativeFunction<TglMultiTexCoord3fv_Native>>()
                .asFunction();
        this.multiTexCoord3i =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord3i"))
                .cast<NativeFunction<TglMultiTexCoord3i_Native>>()
                .asFunction();
        this.multiTexCoord3iv =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord3iv"))
                .cast<NativeFunction<TglMultiTexCoord3iv_Native>>()
                .asFunction();
        this.multiTexCoord3s =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord3s"))
                .cast<NativeFunction<TglMultiTexCoord3s_Native>>()
                .asFunction();
        this.multiTexCoord3sv =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord3sv"))
                .cast<NativeFunction<TglMultiTexCoord3sv_Native>>()
                .asFunction();
        this.multiTexCoord4d =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord4d"))
                .cast<NativeFunction<TglMultiTexCoord4d_Native>>()
                .asFunction();
        this.multiTexCoord4dv =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord4dv"))
                .cast<NativeFunction<TglMultiTexCoord4dv_Native>>()
                .asFunction();
        this.multiTexCoord4f =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord4f"))
                .cast<NativeFunction<TglMultiTexCoord4f_Native>>()
                .asFunction();
        this.multiTexCoord4fv =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord4fv"))
                .cast<NativeFunction<TglMultiTexCoord4fv_Native>>()
                .asFunction();
        this.multiTexCoord4i =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord4i"))
                .cast<NativeFunction<TglMultiTexCoord4i_Native>>()
                .asFunction();
        this.multiTexCoord4iv =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord4iv"))
                .cast<NativeFunction<TglMultiTexCoord4iv_Native>>()
                .asFunction();
        this.multiTexCoord4s =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord4s"))
                .cast<NativeFunction<TglMultiTexCoord4s_Native>>()
                .asFunction();
        this.multiTexCoord4sv =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord4sv"))
                .cast<NativeFunction<TglMultiTexCoord4sv_Native>>()
                .asFunction();
        this.loadTransposeMatrixd =
            wglGetProcAddress(Utf8.toUtf8("glLoadTransposeMatrixd"))
                .cast<NativeFunction<TglLoadTransposeMatrixd_Native>>()
                .asFunction();
        this.loadTransposeMatrixf =
            wglGetProcAddress(Utf8.toUtf8("glLoadTransposeMatrixf"))
                .cast<NativeFunction<TglLoadTransposeMatrixf_Native>>()
                .asFunction();
        this.multTransposeMatrixd =
            wglGetProcAddress(Utf8.toUtf8("glMultTransposeMatrixd"))
                .cast<NativeFunction<TglMultTransposeMatrixd_Native>>()
                .asFunction();
        this.multTransposeMatrixf =
            wglGetProcAddress(Utf8.toUtf8("glMultTransposeMatrixf"))
                .cast<NativeFunction<TglMultTransposeMatrixf_Native>>()
                .asFunction();
        this.sampleCoverage = wglGetProcAddress(Utf8.toUtf8("glSampleCoverage"))
            .cast<NativeFunction<TglSampleCoverage_Native>>()
            .asFunction();
      } else {
        this.activeTexture = dylib
            .lookup<NativeFunction<TglActiveTexture_Native>>('glActiveTexture')
            .asFunction();
        this.clientActiveTexture = dylib
            .lookup<NativeFunction<TglClientActiveTexture_Native>>(
                'glClientActiveTexture')
            .asFunction();
        this.compressedTexImage1D = dylib
            .lookup<NativeFunction<TglCompressedTexImage1D_Native>>(
                'glCompressedTexImage1D')
            .asFunction();
        this.compressedTexImage2D = dylib
            .lookup<NativeFunction<TglCompressedTexImage2D_Native>>(
                'glCompressedTexImage2D')
            .asFunction();
        this.compressedTexImage3D = dylib
            .lookup<NativeFunction<TglCompressedTexImage3D_Native>>(
                'glCompressedTexImage3D')
            .asFunction();
        this.compressedTexSubImage1D = dylib
            .lookup<NativeFunction<TglCompressedTexSubImage1D_Native>>(
                'glCompressedTexSubImage1D')
            .asFunction();
        this.compressedTexSubImage2D = dylib
            .lookup<NativeFunction<TglCompressedTexSubImage2D_Native>>(
                'glCompressedTexSubImage2D')
            .asFunction();
        this.compressedTexSubImage3D = dylib
            .lookup<NativeFunction<TglCompressedTexSubImage3D_Native>>(
                'glCompressedTexSubImage3D')
            .asFunction();
        this.getCompressedTexImage = dylib
            .lookup<NativeFunction<TglGetCompressedTexImage_Native>>(
                'glGetCompressedTexImage')
            .asFunction();
        this.multiTexCoord1d = dylib
            .lookup<NativeFunction<TglMultiTexCoord1d_Native>>(
                'glMultiTexCoord1d')
            .asFunction();
        this.multiTexCoord1dv = dylib
            .lookup<NativeFunction<TglMultiTexCoord1dv_Native>>(
                'glMultiTexCoord1dv')
            .asFunction();
        this.multiTexCoord1f = dylib
            .lookup<NativeFunction<TglMultiTexCoord1f_Native>>(
                'glMultiTexCoord1f')
            .asFunction();
        this.multiTexCoord1fv = dylib
            .lookup<NativeFunction<TglMultiTexCoord1fv_Native>>(
                'glMultiTexCoord1fv')
            .asFunction();
        this.multiTexCoord1i = dylib
            .lookup<NativeFunction<TglMultiTexCoord1i_Native>>(
                'glMultiTexCoord1i')
            .asFunction();
        this.multiTexCoord1iv = dylib
            .lookup<NativeFunction<TglMultiTexCoord1iv_Native>>(
                'glMultiTexCoord1iv')
            .asFunction();
        this.multiTexCoord1s = dylib
            .lookup<NativeFunction<TglMultiTexCoord1s_Native>>(
                'glMultiTexCoord1s')
            .asFunction();
        this.multiTexCoord1sv = dylib
            .lookup<NativeFunction<TglMultiTexCoord1sv_Native>>(
                'glMultiTexCoord1sv')
            .asFunction();
        this.multiTexCoord2d = dylib
            .lookup<NativeFunction<TglMultiTexCoord2d_Native>>(
                'glMultiTexCoord2d')
            .asFunction();
        this.multiTexCoord2dv = dylib
            .lookup<NativeFunction<TglMultiTexCoord2dv_Native>>(
                'glMultiTexCoord2dv')
            .asFunction();
        this.multiTexCoord2f = dylib
            .lookup<NativeFunction<TglMultiTexCoord2f_Native>>(
                'glMultiTexCoord2f')
            .asFunction();
        this.multiTexCoord2fv = dylib
            .lookup<NativeFunction<TglMultiTexCoord2fv_Native>>(
                'glMultiTexCoord2fv')
            .asFunction();
        this.multiTexCoord2i = dylib
            .lookup<NativeFunction<TglMultiTexCoord2i_Native>>(
                'glMultiTexCoord2i')
            .asFunction();
        this.multiTexCoord2iv = dylib
            .lookup<NativeFunction<TglMultiTexCoord2iv_Native>>(
                'glMultiTexCoord2iv')
            .asFunction();
        this.multiTexCoord2s = dylib
            .lookup<NativeFunction<TglMultiTexCoord2s_Native>>(
                'glMultiTexCoord2s')
            .asFunction();
        this.multiTexCoord2sv = dylib
            .lookup<NativeFunction<TglMultiTexCoord2sv_Native>>(
                'glMultiTexCoord2sv')
            .asFunction();
        this.multiTexCoord3d = dylib
            .lookup<NativeFunction<TglMultiTexCoord3d_Native>>(
                'glMultiTexCoord3d')
            .asFunction();
        this.multiTexCoord3dv = dylib
            .lookup<NativeFunction<TglMultiTexCoord3dv_Native>>(
                'glMultiTexCoord3dv')
            .asFunction();
        this.multiTexCoord3f = dylib
            .lookup<NativeFunction<TglMultiTexCoord3f_Native>>(
                'glMultiTexCoord3f')
            .asFunction();
        this.multiTexCoord3fv = dylib
            .lookup<NativeFunction<TglMultiTexCoord3fv_Native>>(
                'glMultiTexCoord3fv')
            .asFunction();
        this.multiTexCoord3i = dylib
            .lookup<NativeFunction<TglMultiTexCoord3i_Native>>(
                'glMultiTexCoord3i')
            .asFunction();
        this.multiTexCoord3iv = dylib
            .lookup<NativeFunction<TglMultiTexCoord3iv_Native>>(
                'glMultiTexCoord3iv')
            .asFunction();
        this.multiTexCoord3s = dylib
            .lookup<NativeFunction<TglMultiTexCoord3s_Native>>(
                'glMultiTexCoord3s')
            .asFunction();
        this.multiTexCoord3sv = dylib
            .lookup<NativeFunction<TglMultiTexCoord3sv_Native>>(
                'glMultiTexCoord3sv')
            .asFunction();
        this.multiTexCoord4d = dylib
            .lookup<NativeFunction<TglMultiTexCoord4d_Native>>(
                'glMultiTexCoord4d')
            .asFunction();
        this.multiTexCoord4dv = dylib
            .lookup<NativeFunction<TglMultiTexCoord4dv_Native>>(
                'glMultiTexCoord4dv')
            .asFunction();
        this.multiTexCoord4f = dylib
            .lookup<NativeFunction<TglMultiTexCoord4f_Native>>(
                'glMultiTexCoord4f')
            .asFunction();
        this.multiTexCoord4fv = dylib
            .lookup<NativeFunction<TglMultiTexCoord4fv_Native>>(
                'glMultiTexCoord4fv')
            .asFunction();
        this.multiTexCoord4i = dylib
            .lookup<NativeFunction<TglMultiTexCoord4i_Native>>(
                'glMultiTexCoord4i')
            .asFunction();
        this.multiTexCoord4iv = dylib
            .lookup<NativeFunction<TglMultiTexCoord4iv_Native>>(
                'glMultiTexCoord4iv')
            .asFunction();
        this.multiTexCoord4s = dylib
            .lookup<NativeFunction<TglMultiTexCoord4s_Native>>(
                'glMultiTexCoord4s')
            .asFunction();
        this.multiTexCoord4sv = dylib
            .lookup<NativeFunction<TglMultiTexCoord4sv_Native>>(
                'glMultiTexCoord4sv')
            .asFunction();
        this.loadTransposeMatrixd = dylib
            .lookup<NativeFunction<TglLoadTransposeMatrixd_Native>>(
                'glLoadTransposeMatrixd')
            .asFunction();
        this.loadTransposeMatrixf = dylib
            .lookup<NativeFunction<TglLoadTransposeMatrixf_Native>>(
                'glLoadTransposeMatrixf')
            .asFunction();
        this.multTransposeMatrixd = dylib
            .lookup<NativeFunction<TglMultTransposeMatrixd_Native>>(
                'glMultTransposeMatrixd')
            .asFunction();
        this.multTransposeMatrixf = dylib
            .lookup<NativeFunction<TglMultTransposeMatrixf_Native>>(
                'glMultTransposeMatrixf')
            .asFunction();
        this.sampleCoverage = dylib
            .lookup<NativeFunction<TglSampleCoverage_Native>>(
                'glSampleCoverage')
            .asFunction();
      }
    }

    /* GL_ARB_multitexture */
    // WTF
    /*
    if (Platform.isWindows) {
      this.activeTextureARB = wglGetProcAddress(Utf8.toUtf8("glActiveTextureARB")).cast<NativeFunction<TglActiveTextureARB_Native>>().asFunction();
      this.clientActiveTextureARB = wglGetProcAddress(Utf8.toUtf8("glClientActiveTextureARB")).cast<NativeFunction<TglClientActiveTextureARB_Native>>().asFunction();
      this.multiTexCoord1dARB = wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord1dARB")).cast<NativeFunction<TglMultiTexCoord1dARB_Native>>().asFunction();
      this.multiTexCoord1dvARB = wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord1dvARB")).cast<NativeFunction<TglMultiTexCoord1dvARB_Native>>().asFunction();
      this.multiTexCoord1fARB = wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord1fARB")).cast<NativeFunction<TglMultiTexCoord1fARB_Native>>().asFunction();
      this.multiTexCoord1fvARB = wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord1fvARB")).cast<NativeFunction<TglMultiTexCoord1fvARB_Native>>().asFunction();
      this.multiTexCoord1iARB = wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord1iARB")).cast<NativeFunction<TglMultiTexCoord1iARB_Native>>().asFunction();
      this.multiTexCoord1ivARB = wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord1ivARB")).cast<NativeFunction<TglMultiTexCoord1ivARB_Native>>().asFunction();
      this.multiTexCoord1sARB = wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord1sARB")).cast<NativeFunction<TglMultiTexCoord1sARB_Native>>().asFunction();
      this.multiTexCoord1svARB = wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord1svARB")).cast<NativeFunction<TglMultiTexCoord1svARB_Native>>().asFunction();
      this.multiTexCoord2dARB = wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord2dARB")).cast<NativeFunction<TglMultiTexCoord2dARB_Native>>().asFunction();
      this.multiTexCoord2dvARB = wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord2dvARB")).cast<NativeFunction<TglMultiTexCoord2dvARB_Native>>().asFunction();
      this.multiTexCoord2fARB = wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord2fARB")).cast<NativeFunction<TglMultiTexCoord2fARB_Native>>().asFunction();
      this.multiTexCoord2fvARB = wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord2fvARB")).cast<NativeFunction<TglMultiTexCoord2fvARB_Native>>().asFunction();
      this.multiTexCoord2iARB = wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord2iARB")).cast<NativeFunction<TglMultiTexCoord2iARB_Native>>().asFunction();
      this.multiTexCoord2ivARB = wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord2ivARB")).cast<NativeFunction<TglMultiTexCoord2ivARB_Native>>().asFunction();
      this.multiTexCoord2sARB = wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord2sARB")).cast<NativeFunction<TglMultiTexCoord2sARB_Native>>().asFunction();
      this.multiTexCoord2svARB = wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord2svARB")).cast<NativeFunction<TglMultiTexCoord2svARB_Native>>().asFunction();
      this.multiTexCoord3dARB = wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord3dARB")).cast<NativeFunction<TglMultiTexCoord3dARB_Native>>().asFunction();
      this.multiTexCoord3dvARB = wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord3dvARB")).cast<NativeFunction<TglMultiTexCoord3dvARB_Native>>().asFunction();
      this.multiTexCoord3fARB = wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord3fARB")).cast<NativeFunction<TglMultiTexCoord3fARB_Native>>().asFunction();
      this.multiTexCoord3fvARB = wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord3fvARB")).cast<NativeFunction<TglMultiTexCoord3fvARB_Native>>().asFunction();
      this.multiTexCoord3iARB = wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord3iARB")).cast<NativeFunction<TglMultiTexCoord3iARB_Native>>().asFunction();
      this.multiTexCoord3ivARB = wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord3ivARB")).cast<NativeFunction<TglMultiTexCoord3ivARB_Native>>().asFunction();
      this.multiTexCoord3sARB = wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord3sARB")).cast<NativeFunction<TglMultiTexCoord3sARB_Native>>().asFunction();
      this.multiTexCoord3svARB = wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord3svARB")).cast<NativeFunction<TglMultiTexCoord3svARB_Native>>().asFunction();
      this.multiTexCoord4dARB = wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord4dARB")).cast<NativeFunction<TglMultiTexCoord4dARB_Native>>().asFunction();
      this.multiTexCoord4dvARB = wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord4dvARB")).cast<NativeFunction<TglMultiTexCoord4dvARB_Native>>().asFunction();
      this.multiTexCoord4fARB = wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord4fARB")).cast<NativeFunction<TglMultiTexCoord4fARB_Native>>().asFunction();
      this.multiTexCoord4fvARB = wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord4fvARB")).cast<NativeFunction<TglMultiTexCoord4fvARB_Native>>().asFunction();
      this.multiTexCoord4iARB = wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord4iARB")).cast<NativeFunction<TglMultiTexCoord4iARB_Native>>().asFunction();
      this.multiTexCoord4ivARB = wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord4ivARB")).cast<NativeFunction<TglMultiTexCoord4ivARB_Native>>().asFunction();
      this.multiTexCoord4sARB = wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord4sARB")).cast<NativeFunction<TglMultiTexCoord4sARB_Native>>().asFunction();
      this.multiTexCoord4svARB = wglGetProcAddress(Utf8.toUtf8("glMultiTexCoord4svARB")).cast<NativeFunction<TglMultiTexCoord4svARB_Native>>().asFunction();
    } else {
      this.activeTextureARB = dylib.lookup<NativeFunction<TglActiveTextureARB_Native>>('glActiveTextureARB').asFunction();
      this.clientActiveTextureARB = dylib.lookup<NativeFunction<TglClientActiveTextureARB_Native>>('glClientActiveTextureARB').asFunction();
      this.multiTexCoord1dARB = dylib.lookup<NativeFunction<TglMultiTexCoord1dARB_Native>>('glMultiTexCoord1dARB').asFunction();
      this.multiTexCoord1dvARB = dylib.lookup<NativeFunction<TglMultiTexCoord1dvARB_Native>>('glMultiTexCoord1dvARB').asFunction();
      this.multiTexCoord1fARB = dylib.lookup<NativeFunction<TglMultiTexCoord1fARB_Native>>('glMultiTexCoord1fARB').asFunction();
      this.multiTexCoord1fvARB = dylib.lookup<NativeFunction<TglMultiTexCoord1fvARB_Native>>('glMultiTexCoord1fvARB').asFunction();
      this.multiTexCoord1iARB = dylib.lookup<NativeFunction<TglMultiTexCoord1iARB_Native>>('glMultiTexCoord1iARB').asFunction();
      this.multiTexCoord1ivARB = dylib.lookup<NativeFunction<TglMultiTexCoord1ivARB_Native>>('glMultiTexCoord1ivARB').asFunction();
      this.multiTexCoord1sARB = dylib.lookup<NativeFunction<TglMultiTexCoord1sARB_Native>>('glMultiTexCoord1sARB').asFunction();
      this.multiTexCoord1svARB = dylib.lookup<NativeFunction<TglMultiTexCoord1svARB_Native>>('glMultiTexCoord1svARB').asFunction();
      this.multiTexCoord2dARB = dylib.lookup<NativeFunction<TglMultiTexCoord2dARB_Native>>('glMultiTexCoord2dARB').asFunction();
      this.multiTexCoord2dvARB = dylib.lookup<NativeFunction<TglMultiTexCoord2dvARB_Native>>('glMultiTexCoord2dvARB').asFunction();
      this.multiTexCoord2fARB = dylib.lookup<NativeFunction<TglMultiTexCoord2fARB_Native>>('glMultiTexCoord2fARB').asFunction();
      this.multiTexCoord2fvARB = dylib.lookup<NativeFunction<TglMultiTexCoord2fvARB_Native>>('glMultiTexCoord2fvARB').asFunction();
      this.multiTexCoord2iARB = dylib.lookup<NativeFunction<TglMultiTexCoord2iARB_Native>>('glMultiTexCoord2iARB').asFunction();
      this.multiTexCoord2ivARB = dylib.lookup<NativeFunction<TglMultiTexCoord2ivARB_Native>>('glMultiTexCoord2ivARB').asFunction();
      this.multiTexCoord2sARB = dylib.lookup<NativeFunction<TglMultiTexCoord2sARB_Native>>('glMultiTexCoord2sARB').asFunction();
      this.multiTexCoord2svARB = dylib.lookup<NativeFunction<TglMultiTexCoord2svARB_Native>>('glMultiTexCoord2svARB').asFunction();
      this.multiTexCoord3dARB = dylib.lookup<NativeFunction<TglMultiTexCoord3dARB_Native>>('glMultiTexCoord3dARB').asFunction();
      this.multiTexCoord3dvARB = dylib.lookup<NativeFunction<TglMultiTexCoord3dvARB_Native>>('glMultiTexCoord3dvARB').asFunction();
      this.multiTexCoord3fARB = dylib.lookup<NativeFunction<TglMultiTexCoord3fARB_Native>>('glMultiTexCoord3fARB').asFunction();
      this.multiTexCoord3fvARB = dylib.lookup<NativeFunction<TglMultiTexCoord3fvARB_Native>>('glMultiTexCoord3fvARB').asFunction();
      this.multiTexCoord3iARB = dylib.lookup<NativeFunction<TglMultiTexCoord3iARB_Native>>('glMultiTexCoord3iARB').asFunction();
      this.multiTexCoord3ivARB = dylib.lookup<NativeFunction<TglMultiTexCoord3ivARB_Native>>('glMultiTexCoord3ivARB').asFunction();
      this.multiTexCoord3sARB = dylib.lookup<NativeFunction<TglMultiTexCoord3sARB_Native>>('glMultiTexCoord3sARB').asFunction();
      this.multiTexCoord3svARB = dylib.lookup<NativeFunction<TglMultiTexCoord3svARB_Native>>('glMultiTexCoord3svARB').asFunction();
      this.multiTexCoord4dARB = dylib.lookup<NativeFunction<TglMultiTexCoord4dARB_Native>>('glMultiTexCoord4dARB').asFunction();
      this.multiTexCoord4dvARB = dylib.lookup<NativeFunction<TglMultiTexCoord4dvARB_Native>>('glMultiTexCoord4dvARB').asFunction();
      this.multiTexCoord4fARB = dylib.lookup<NativeFunction<TglMultiTexCoord4fARB_Native>>('glMultiTexCoord4fARB').asFunction();
      this.multiTexCoord4fvARB = dylib.lookup<NativeFunction<TglMultiTexCoord4fvARB_Native>>('glMultiTexCoord4fvARB').asFunction();
      this.multiTexCoord4iARB = dylib.lookup<NativeFunction<TglMultiTexCoord4iARB_Native>>('glMultiTexCoord4iARB').asFunction();
      this.multiTexCoord4ivARB = dylib.lookup<NativeFunction<TglMultiTexCoord4ivARB_Native>>('glMultiTexCoord4ivARB').asFunction();
      this.multiTexCoord4sARB = dylib.lookup<NativeFunction<TglMultiTexCoord4sARB_Native>>('glMultiTexCoord4sARB').asFunction();
      this.multiTexCoord4svARB = dylib.lookup<NativeFunction<TglMultiTexCoord4svARB_Native>>('glMultiTexCoord4svARB').asFunction();
    }*/
    /*
    
########     ###    ########  ########  #######  
##     ##   ## ##   ##     ##    ##    ##     ## 
##     ##  ##   ##  ##     ##    ##           ## 
########  ##     ## ########     ##     #######  
##        ######### ##   ##      ##    ##        
##        ##     ## ##    ##     ##    ##        
##        ##     ## ##     ##    ##    ######### 

     */

    /* GL_VERSION_1_4 */
    if (version.index >= GlVersion.GL_VERSION_1_4.index) {
      if (Platform.isWindows) {
        this.blendFuncSeparate =
            wglGetProcAddress(Utf8.toUtf8("glBlendFuncSeparate"))
                .cast<NativeFunction<TglBlendFuncSeparate_Native>>()
                .asFunction();
        this.multiDrawArrays =
            wglGetProcAddress(Utf8.toUtf8("glMultiDrawArrays"))
                .cast<NativeFunction<TglMultiDrawArrays_Native>>()
                .asFunction();
        this.multiDrawElements =
            wglGetProcAddress(Utf8.toUtf8("glMultiDrawElements"))
                .cast<NativeFunction<TglMultiDrawElements_Native>>()
                .asFunction();
        this.pointParameterf =
            wglGetProcAddress(Utf8.toUtf8("glPointParameterf"))
                .cast<NativeFunction<TglPointParameterf_Native>>()
                .asFunction();
        this.pointParameterfv =
            wglGetProcAddress(Utf8.toUtf8("glPointParameterfv"))
                .cast<NativeFunction<TglPointParameterfv_Native>>()
                .asFunction();
        this.pointParameteri =
            wglGetProcAddress(Utf8.toUtf8("glPointParameteri"))
                .cast<NativeFunction<TglPointParameteri_Native>>()
                .asFunction();
        this.pointParameteriv =
            wglGetProcAddress(Utf8.toUtf8("glPointParameteriv"))
                .cast<NativeFunction<TglPointParameteriv_Native>>()
                .asFunction();
        this.fogCoordf = wglGetProcAddress(Utf8.toUtf8("glFogCoordf"))
            .cast<NativeFunction<TglFogCoordf_Native>>()
            .asFunction();
        this.fogCoordfv = wglGetProcAddress(Utf8.toUtf8("glFogCoordfv"))
            .cast<NativeFunction<TglFogCoordfv_Native>>()
            .asFunction();
        this.fogCoordd = wglGetProcAddress(Utf8.toUtf8("glFogCoordd"))
            .cast<NativeFunction<TglFogCoordd_Native>>()
            .asFunction();
        this.fogCoorddv = wglGetProcAddress(Utf8.toUtf8("glFogCoorddv"))
            .cast<NativeFunction<TglFogCoorddv_Native>>()
            .asFunction();
        this.fogCoordPointer =
            wglGetProcAddress(Utf8.toUtf8("glFogCoordPointer"))
                .cast<NativeFunction<TglFogCoordPointer_Native>>()
                .asFunction();
        this.secondaryColor3b =
            wglGetProcAddress(Utf8.toUtf8("glSecondaryColor3b"))
                .cast<NativeFunction<TglSecondaryColor3b_Native>>()
                .asFunction();
        this.secondaryColor3bv =
            wglGetProcAddress(Utf8.toUtf8("glSecondaryColor3bv"))
                .cast<NativeFunction<TglSecondaryColor3bv_Native>>()
                .asFunction();
        this.secondaryColor3d =
            wglGetProcAddress(Utf8.toUtf8("glSecondaryColor3d"))
                .cast<NativeFunction<TglSecondaryColor3d_Native>>()
                .asFunction();
        this.secondaryColor3dv =
            wglGetProcAddress(Utf8.toUtf8("glSecondaryColor3dv"))
                .cast<NativeFunction<TglSecondaryColor3dv_Native>>()
                .asFunction();
        this.secondaryColor3f =
            wglGetProcAddress(Utf8.toUtf8("glSecondaryColor3f"))
                .cast<NativeFunction<TglSecondaryColor3f_Native>>()
                .asFunction();
        this.secondaryColor3fv =
            wglGetProcAddress(Utf8.toUtf8("glSecondaryColor3fv"))
                .cast<NativeFunction<TglSecondaryColor3fv_Native>>()
                .asFunction();
        this.secondaryColor3i =
            wglGetProcAddress(Utf8.toUtf8("glSecondaryColor3i"))
                .cast<NativeFunction<TglSecondaryColor3i_Native>>()
                .asFunction();
        this.secondaryColor3iv =
            wglGetProcAddress(Utf8.toUtf8("glSecondaryColor3iv"))
                .cast<NativeFunction<TglSecondaryColor3iv_Native>>()
                .asFunction();
        this.secondaryColor3s =
            wglGetProcAddress(Utf8.toUtf8("glSecondaryColor3s"))
                .cast<NativeFunction<TglSecondaryColor3s_Native>>()
                .asFunction();
        this.secondaryColor3sv =
            wglGetProcAddress(Utf8.toUtf8("glSecondaryColor3sv"))
                .cast<NativeFunction<TglSecondaryColor3sv_Native>>()
                .asFunction();
        this.secondaryColor3ub =
            wglGetProcAddress(Utf8.toUtf8("glSecondaryColor3ub"))
                .cast<NativeFunction<TglSecondaryColor3ub_Native>>()
                .asFunction();
        this.secondaryColor3ubv =
            wglGetProcAddress(Utf8.toUtf8("glSecondaryColor3ubv"))
                .cast<NativeFunction<TglSecondaryColor3ubv_Native>>()
                .asFunction();
        this.secondaryColor3ui =
            wglGetProcAddress(Utf8.toUtf8("glSecondaryColor3ui"))
                .cast<NativeFunction<TglSecondaryColor3ui_Native>>()
                .asFunction();
        this.secondaryColor3uiv =
            wglGetProcAddress(Utf8.toUtf8("glSecondaryColor3uiv"))
                .cast<NativeFunction<TglSecondaryColor3uiv_Native>>()
                .asFunction();
        this.secondaryColor3us =
            wglGetProcAddress(Utf8.toUtf8("glSecondaryColor3us"))
                .cast<NativeFunction<TglSecondaryColor3us_Native>>()
                .asFunction();
        this.secondaryColor3usv =
            wglGetProcAddress(Utf8.toUtf8("glSecondaryColor3usv"))
                .cast<NativeFunction<TglSecondaryColor3usv_Native>>()
                .asFunction();
        this.secondaryColorPointer =
            wglGetProcAddress(Utf8.toUtf8("glSecondaryColorPointer"))
                .cast<NativeFunction<TglSecondaryColorPointer_Native>>()
                .asFunction();
        this.windowPos2d = wglGetProcAddress(Utf8.toUtf8("glWindowPos2d"))
            .cast<NativeFunction<TglWindowPos2d_Native>>()
            .asFunction();
        this.windowPos2dv = wglGetProcAddress(Utf8.toUtf8("glWindowPos2dv"))
            .cast<NativeFunction<TglWindowPos2dv_Native>>()
            .asFunction();
        this.windowPos2f = wglGetProcAddress(Utf8.toUtf8("glWindowPos2f"))
            .cast<NativeFunction<TglWindowPos2f_Native>>()
            .asFunction();
        this.windowPos2fv = wglGetProcAddress(Utf8.toUtf8("glWindowPos2fv"))
            .cast<NativeFunction<TglWindowPos2fv_Native>>()
            .asFunction();
        this.windowPos2i = wglGetProcAddress(Utf8.toUtf8("glWindowPos2i"))
            .cast<NativeFunction<TglWindowPos2i_Native>>()
            .asFunction();
        this.windowPos2iv = wglGetProcAddress(Utf8.toUtf8("glWindowPos2iv"))
            .cast<NativeFunction<TglWindowPos2iv_Native>>()
            .asFunction();
        this.windowPos2s = wglGetProcAddress(Utf8.toUtf8("glWindowPos2s"))
            .cast<NativeFunction<TglWindowPos2s_Native>>()
            .asFunction();
        this.windowPos2sv = wglGetProcAddress(Utf8.toUtf8("glWindowPos2sv"))
            .cast<NativeFunction<TglWindowPos2sv_Native>>()
            .asFunction();
        this.windowPos3d = wglGetProcAddress(Utf8.toUtf8("glWindowPos3d"))
            .cast<NativeFunction<TglWindowPos3d_Native>>()
            .asFunction();
        this.windowPos3dv = wglGetProcAddress(Utf8.toUtf8("glWindowPos3dv"))
            .cast<NativeFunction<TglWindowPos3dv_Native>>()
            .asFunction();
        this.windowPos3f = wglGetProcAddress(Utf8.toUtf8("glWindowPos3f"))
            .cast<NativeFunction<TglWindowPos3f_Native>>()
            .asFunction();
        this.windowPos3fv = wglGetProcAddress(Utf8.toUtf8("glWindowPos3fv"))
            .cast<NativeFunction<TglWindowPos3fv_Native>>()
            .asFunction();
        this.windowPos3i = wglGetProcAddress(Utf8.toUtf8("glWindowPos3i"))
            .cast<NativeFunction<TglWindowPos3i_Native>>()
            .asFunction();
        this.windowPos3iv = wglGetProcAddress(Utf8.toUtf8("glWindowPos3iv"))
            .cast<NativeFunction<TglWindowPos3iv_Native>>()
            .asFunction();
        this.windowPos3s = wglGetProcAddress(Utf8.toUtf8("glWindowPos3s"))
            .cast<NativeFunction<TglWindowPos3s_Native>>()
            .asFunction();
        this.windowPos3sv = wglGetProcAddress(Utf8.toUtf8("glWindowPos3sv"))
            .cast<NativeFunction<TglWindowPos3sv_Native>>()
            .asFunction();
      } else {
        this.blendFuncSeparate = dylib
            .lookup<NativeFunction<TglBlendFuncSeparate_Native>>(
                'glBlendFuncSeparate')
            .asFunction();
        this.multiDrawArrays = dylib
            .lookup<NativeFunction<TglMultiDrawArrays_Native>>(
                'glMultiDrawArrays')
            .asFunction();
        this.multiDrawElements = dylib
            .lookup<NativeFunction<TglMultiDrawElements_Native>>(
                'glMultiDrawElements')
            .asFunction();
        this.pointParameterf = dylib
            .lookup<NativeFunction<TglPointParameterf_Native>>(
                'glPointParameterf')
            .asFunction();
        this.pointParameterfv = dylib
            .lookup<NativeFunction<TglPointParameterfv_Native>>(
                'glPointParameterfv')
            .asFunction();
        this.pointParameteri = dylib
            .lookup<NativeFunction<TglPointParameteri_Native>>(
                'glPointParameteri')
            .asFunction();
        this.pointParameteriv = dylib
            .lookup<NativeFunction<TglPointParameteriv_Native>>(
                'glPointParameteriv')
            .asFunction();
        this.fogCoordf = dylib
            .lookup<NativeFunction<TglFogCoordf_Native>>('glFogCoordf')
            .asFunction();
        this.fogCoordfv = dylib
            .lookup<NativeFunction<TglFogCoordfv_Native>>('glFogCoordfv')
            .asFunction();
        this.fogCoordd = dylib
            .lookup<NativeFunction<TglFogCoordd_Native>>('glFogCoordd')
            .asFunction();
        this.fogCoorddv = dylib
            .lookup<NativeFunction<TglFogCoorddv_Native>>('glFogCoorddv')
            .asFunction();
        this.fogCoordPointer = dylib
            .lookup<NativeFunction<TglFogCoordPointer_Native>>(
                'glFogCoordPointer')
            .asFunction();
        this.secondaryColor3b = dylib
            .lookup<NativeFunction<TglSecondaryColor3b_Native>>(
                'glSecondaryColor3b')
            .asFunction();
        this.secondaryColor3bv = dylib
            .lookup<NativeFunction<TglSecondaryColor3bv_Native>>(
                'glSecondaryColor3bv')
            .asFunction();
        this.secondaryColor3d = dylib
            .lookup<NativeFunction<TglSecondaryColor3d_Native>>(
                'glSecondaryColor3d')
            .asFunction();
        this.secondaryColor3dv = dylib
            .lookup<NativeFunction<TglSecondaryColor3dv_Native>>(
                'glSecondaryColor3dv')
            .asFunction();
        this.secondaryColor3f = dylib
            .lookup<NativeFunction<TglSecondaryColor3f_Native>>(
                'glSecondaryColor3f')
            .asFunction();
        this.secondaryColor3fv = dylib
            .lookup<NativeFunction<TglSecondaryColor3fv_Native>>(
                'glSecondaryColor3fv')
            .asFunction();
        this.secondaryColor3i = dylib
            .lookup<NativeFunction<TglSecondaryColor3i_Native>>(
                'glSecondaryColor3i')
            .asFunction();
        this.secondaryColor3iv = dylib
            .lookup<NativeFunction<TglSecondaryColor3iv_Native>>(
                'glSecondaryColor3iv')
            .asFunction();
        this.secondaryColor3s = dylib
            .lookup<NativeFunction<TglSecondaryColor3s_Native>>(
                'glSecondaryColor3s')
            .asFunction();
        this.secondaryColor3sv = dylib
            .lookup<NativeFunction<TglSecondaryColor3sv_Native>>(
                'glSecondaryColor3sv')
            .asFunction();
        this.secondaryColor3ub = dylib
            .lookup<NativeFunction<TglSecondaryColor3ub_Native>>(
                'glSecondaryColor3ub')
            .asFunction();
        this.secondaryColor3ubv = dylib
            .lookup<NativeFunction<TglSecondaryColor3ubv_Native>>(
                'glSecondaryColor3ubv')
            .asFunction();
        this.secondaryColor3ui = dylib
            .lookup<NativeFunction<TglSecondaryColor3ui_Native>>(
                'glSecondaryColor3ui')
            .asFunction();
        this.secondaryColor3uiv = dylib
            .lookup<NativeFunction<TglSecondaryColor3uiv_Native>>(
                'glSecondaryColor3uiv')
            .asFunction();
        this.secondaryColor3us = dylib
            .lookup<NativeFunction<TglSecondaryColor3us_Native>>(
                'glSecondaryColor3us')
            .asFunction();
        this.secondaryColor3usv = dylib
            .lookup<NativeFunction<TglSecondaryColor3usv_Native>>(
                'glSecondaryColor3usv')
            .asFunction();
        this.secondaryColorPointer = dylib
            .lookup<NativeFunction<TglSecondaryColorPointer_Native>>(
                'glSecondaryColorPointer')
            .asFunction();
        this.windowPos2d = dylib
            .lookup<NativeFunction<TglWindowPos2d_Native>>('glWindowPos2d')
            .asFunction();
        this.windowPos2dv = dylib
            .lookup<NativeFunction<TglWindowPos2dv_Native>>('glWindowPos2dv')
            .asFunction();
        this.windowPos2f = dylib
            .lookup<NativeFunction<TglWindowPos2f_Native>>('glWindowPos2f')
            .asFunction();
        this.windowPos2fv = dylib
            .lookup<NativeFunction<TglWindowPos2fv_Native>>('glWindowPos2fv')
            .asFunction();
        this.windowPos2i = dylib
            .lookup<NativeFunction<TglWindowPos2i_Native>>('glWindowPos2i')
            .asFunction();
        this.windowPos2iv = dylib
            .lookup<NativeFunction<TglWindowPos2iv_Native>>('glWindowPos2iv')
            .asFunction();
        this.windowPos2s = dylib
            .lookup<NativeFunction<TglWindowPos2s_Native>>('glWindowPos2s')
            .asFunction();
        this.windowPos2sv = dylib
            .lookup<NativeFunction<TglWindowPos2sv_Native>>('glWindowPos2sv')
            .asFunction();
        this.windowPos3d = dylib
            .lookup<NativeFunction<TglWindowPos3d_Native>>('glWindowPos3d')
            .asFunction();
        this.windowPos3dv = dylib
            .lookup<NativeFunction<TglWindowPos3dv_Native>>('glWindowPos3dv')
            .asFunction();
        this.windowPos3f = dylib
            .lookup<NativeFunction<TglWindowPos3f_Native>>('glWindowPos3f')
            .asFunction();
        this.windowPos3fv = dylib
            .lookup<NativeFunction<TglWindowPos3fv_Native>>('glWindowPos3fv')
            .asFunction();
        this.windowPos3i = dylib
            .lookup<NativeFunction<TglWindowPos3i_Native>>('glWindowPos3i')
            .asFunction();
        this.windowPos3iv = dylib
            .lookup<NativeFunction<TglWindowPos3iv_Native>>('glWindowPos3iv')
            .asFunction();
        this.windowPos3s = dylib
            .lookup<NativeFunction<TglWindowPos3s_Native>>('glWindowPos3s')
            .asFunction();
        this.windowPos3sv = dylib
            .lookup<NativeFunction<TglWindowPos3sv_Native>>('glWindowPos3sv')
            .asFunction();
      }
    }
    /* GL_VERSION_1_5 */
    if (version.index >= GlVersion.GL_VERSION_1_5.index) {
      if (Platform.isWindows) {
        this.genQueries = wglGetProcAddress(Utf8.toUtf8("glGenQueries"))
            .cast<NativeFunction<TglGenQueries_Native>>()
            .asFunction();
        this.deleteQueries = wglGetProcAddress(Utf8.toUtf8("glDeleteQueries"))
            .cast<NativeFunction<TglDeleteQueries_Native>>()
            .asFunction();
        this.isQuery = wglGetProcAddress(Utf8.toUtf8("glIsQuery"))
            .cast<NativeFunction<TglIsQuery_Native>>()
            .asFunction();
        this.beginQuery = wglGetProcAddress(Utf8.toUtf8("glBeginQuery"))
            .cast<NativeFunction<TglBeginQuery_Native>>()
            .asFunction();
        this.endQuery = wglGetProcAddress(Utf8.toUtf8("glEndQuery"))
            .cast<NativeFunction<TglEndQuery_Native>>()
            .asFunction();
        this.getQueryiv = wglGetProcAddress(Utf8.toUtf8("glGetQueryiv"))
            .cast<NativeFunction<TglGetQueryiv_Native>>()
            .asFunction();
        this.getQueryObjectiv =
            wglGetProcAddress(Utf8.toUtf8("glGetQueryObjectiv"))
                .cast<NativeFunction<TglGetQueryObjectiv_Native>>()
                .asFunction();
        this.getQueryObjectuiv =
            wglGetProcAddress(Utf8.toUtf8("glGetQueryObjectuiv"))
                .cast<NativeFunction<TglGetQueryObjectuiv_Native>>()
                .asFunction();
        this.bindBuffer = wglGetProcAddress(Utf8.toUtf8("glBindBuffer"))
            .cast<NativeFunction<TglBindBuffer_Native>>()
            .asFunction();
        this.deleteBuffers = wglGetProcAddress(Utf8.toUtf8("glDeleteBuffers"))
            .cast<NativeFunction<TglDeleteBuffers_Native>>()
            .asFunction();
        this.genBuffers = wglGetProcAddress(Utf8.toUtf8("glGenBuffers"))
            .cast<NativeFunction<TglGenBuffers_Native>>()
            .asFunction();
        this.isBuffer = wglGetProcAddress(Utf8.toUtf8("glIsBuffer"))
            .cast<NativeFunction<TglIsBuffer_Native>>()
            .asFunction();
        this.bufferData = wglGetProcAddress(Utf8.toUtf8("glBufferData"))
            .cast<NativeFunction<TglBufferData_Native>>()
            .asFunction();
        this.bufferSubData = wglGetProcAddress(Utf8.toUtf8("glBufferSubData"))
            .cast<NativeFunction<TglBufferSubData_Native>>()
            .asFunction();
        this.getBufferSubData =
            wglGetProcAddress(Utf8.toUtf8("glGetBufferSubData"))
                .cast<NativeFunction<TglGetBufferSubData_Native>>()
                .asFunction();
        this.mapBuffer = wglGetProcAddress(Utf8.toUtf8("glMapBuffer"))
            .cast<NativeFunction<TglMapBuffer_Native>>()
            .asFunction();
        this.unmapBuffer = wglGetProcAddress(Utf8.toUtf8("glUnmapBuffer"))
            .cast<NativeFunction<TglUnmapBuffer_Native>>()
            .asFunction();
        this.getBufferParameteriv =
            wglGetProcAddress(Utf8.toUtf8("glGetBufferParameteriv"))
                .cast<NativeFunction<TglGetBufferParameteriv_Native>>()
                .asFunction();
        this.getBufferPointerv =
            wglGetProcAddress(Utf8.toUtf8("glGetBufferPointerv"))
                .cast<NativeFunction<TglGetBufferPointerv_Native>>()
                .asFunction();
      } else {
        this.genQueries = dylib
            .lookup<NativeFunction<TglGenQueries_Native>>('glGenQueries')
            .asFunction();
        this.deleteQueries = dylib
            .lookup<NativeFunction<TglDeleteQueries_Native>>('glDeleteQueries')
            .asFunction();
        this.isQuery = dylib
            .lookup<NativeFunction<TglIsQuery_Native>>('glIsQuery')
            .asFunction();
        this.beginQuery = dylib
            .lookup<NativeFunction<TglBeginQuery_Native>>('glBeginQuery')
            .asFunction();
        this.endQuery = dylib
            .lookup<NativeFunction<TglEndQuery_Native>>('glEndQuery')
            .asFunction();
        this.getQueryiv = dylib
            .lookup<NativeFunction<TglGetQueryiv_Native>>('glGetQueryiv')
            .asFunction();
        this.getQueryObjectiv = dylib
            .lookup<NativeFunction<TglGetQueryObjectiv_Native>>(
                'glGetQueryObjectiv')
            .asFunction();
        this.getQueryObjectuiv = dylib
            .lookup<NativeFunction<TglGetQueryObjectuiv_Native>>(
                'glGetQueryObjectuiv')
            .asFunction();
        this.bindBuffer = dylib
            .lookup<NativeFunction<TglBindBuffer_Native>>('glBindBuffer')
            .asFunction();
        this.deleteBuffers = dylib
            .lookup<NativeFunction<TglDeleteBuffers_Native>>('glDeleteBuffers')
            .asFunction();
        this.genBuffers = dylib
            .lookup<NativeFunction<TglGenBuffers_Native>>('glGenBuffers')
            .asFunction();
        this.isBuffer = dylib
            .lookup<NativeFunction<TglIsBuffer_Native>>('glIsBuffer')
            .asFunction();
        this.bufferData = dylib
            .lookup<NativeFunction<TglBufferData_Native>>('glBufferData')
            .asFunction();
        this.bufferSubData = dylib
            .lookup<NativeFunction<TglBufferSubData_Native>>('glBufferSubData')
            .asFunction();
        this.getBufferSubData = dylib
            .lookup<NativeFunction<TglGetBufferSubData_Native>>(
                'glGetBufferSubData')
            .asFunction();
        this.mapBuffer = dylib
            .lookup<NativeFunction<TglMapBuffer_Native>>('glMapBuffer')
            .asFunction();
        this.unmapBuffer = dylib
            .lookup<NativeFunction<TglUnmapBuffer_Native>>('glUnmapBuffer')
            .asFunction();
        this.getBufferParameteriv = dylib
            .lookup<NativeFunction<TglGetBufferParameteriv_Native>>(
                'glGetBufferParameteriv')
            .asFunction();
        this.getBufferPointerv = dylib
            .lookup<NativeFunction<TglGetBufferPointerv_Native>>(
                'glGetBufferPointerv')
            .asFunction();
      }
    }
    /* GL_VERSION_2_0 */
    if (version.index >= GlVersion.GL_VERSION_2_0.index) {
      if (Platform.isWindows) {
        this.blendEquationSeparate =
            wglGetProcAddress(Utf8.toUtf8("glBlendEquationSeparate"))
                .cast<NativeFunction<TglBlendEquationSeparate_Native>>()
                .asFunction();
        this.drawBuffers = wglGetProcAddress(Utf8.toUtf8("glDrawBuffers"))
            .cast<NativeFunction<TglDrawBuffers_Native>>()
            .asFunction();
        this.stencilOpSeparate =
            wglGetProcAddress(Utf8.toUtf8("glStencilOpSeparate"))
                .cast<NativeFunction<TglStencilOpSeparate_Native>>()
                .asFunction();
        this.stencilFuncSeparate =
            wglGetProcAddress(Utf8.toUtf8("glStencilFuncSeparate"))
                .cast<NativeFunction<TglStencilFuncSeparate_Native>>()
                .asFunction();
        this.stencilMaskSeparate =
            wglGetProcAddress(Utf8.toUtf8("glStencilMaskSeparate"))
                .cast<NativeFunction<TglStencilMaskSeparate_Native>>()
                .asFunction();
        this.attachShader = wglGetProcAddress(Utf8.toUtf8("glAttachShader"))
            .cast<NativeFunction<TglAttachShader_Native>>()
            .asFunction();
        this.bindAttribLocation =
            wglGetProcAddress(Utf8.toUtf8("glBindAttribLocation"))
                .cast<NativeFunction<TglBindAttribLocation_Native>>()
                .asFunction();
        this.compileShader = wglGetProcAddress(Utf8.toUtf8("glCompileShader"))
            .cast<NativeFunction<TglCompileShader_Native>>()
            .asFunction();
        this.createProgram = wglGetProcAddress(Utf8.toUtf8("glCreateProgram"))
            .cast<NativeFunction<TglCreateProgram_Native>>()
            .asFunction();
        this.createShader = wglGetProcAddress(Utf8.toUtf8("glCreateShader"))
            .cast<NativeFunction<TglCreateShader_Native>>()
            .asFunction();
        this.deleteProgram = wglGetProcAddress(Utf8.toUtf8("glDeleteProgram"))
            .cast<NativeFunction<TglDeleteProgram_Native>>()
            .asFunction();
        this.deleteShader = wglGetProcAddress(Utf8.toUtf8("glDeleteShader"))
            .cast<NativeFunction<TglDeleteShader_Native>>()
            .asFunction();
        this.detachShader = wglGetProcAddress(Utf8.toUtf8("glDetachShader"))
            .cast<NativeFunction<TglDetachShader_Native>>()
            .asFunction();
        this.disableVertexAttribArray =
            wglGetProcAddress(Utf8.toUtf8("glDisableVertexAttribArray"))
                .cast<NativeFunction<TglDisableVertexAttribArray_Native>>()
                .asFunction();
        this.enableVertexAttribArray =
            wglGetProcAddress(Utf8.toUtf8("glEnableVertexAttribArray"))
                .cast<NativeFunction<TglEnableVertexAttribArray_Native>>()
                .asFunction();
        this.getActiveAttrib =
            wglGetProcAddress(Utf8.toUtf8("glGetActiveAttrib"))
                .cast<NativeFunction<TglGetActiveAttrib_Native>>()
                .asFunction();
        this.getActiveUniform =
            wglGetProcAddress(Utf8.toUtf8("glGetActiveUniform"))
                .cast<NativeFunction<TglGetActiveUniform_Native>>()
                .asFunction();
        this.getAttachedShaders =
            wglGetProcAddress(Utf8.toUtf8("glGetAttachedShaders"))
                .cast<NativeFunction<TglGetAttachedShaders_Native>>()
                .asFunction();
        this.getAttribLocation =
            wglGetProcAddress(Utf8.toUtf8("glGetAttribLocation"))
                .cast<NativeFunction<TglGetAttribLocation_Native>>()
                .asFunction();
        this.getProgramiv = wglGetProcAddress(Utf8.toUtf8("glGetProgramiv"))
            .cast<NativeFunction<TglGetProgramiv_Native>>()
            .asFunction();
        this.getProgramInfoLog =
            wglGetProcAddress(Utf8.toUtf8("glGetProgramInfoLog"))
                .cast<NativeFunction<TglGetProgramInfoLog_Native>>()
                .asFunction();
        this.getShaderiv = wglGetProcAddress(Utf8.toUtf8("glGetShaderiv"))
            .cast<NativeFunction<TglGetShaderiv_Native>>()
            .asFunction();
        this.getShaderInfoLog =
            wglGetProcAddress(Utf8.toUtf8("glGetShaderInfoLog"))
                .cast<NativeFunction<TglGetShaderInfoLog_Native>>()
                .asFunction();
        this.getShaderSource =
            wglGetProcAddress(Utf8.toUtf8("glGetShaderSource"))
                .cast<NativeFunction<TglGetShaderSource_Native>>()
                .asFunction();
        this.getUniformLocation =
            wglGetProcAddress(Utf8.toUtf8("glGetUniformLocation"))
                .cast<NativeFunction<TglGetUniformLocation_Native>>()
                .asFunction();
        this.getUniformfv = wglGetProcAddress(Utf8.toUtf8("glGetUniformfv"))
            .cast<NativeFunction<TglGetUniformfv_Native>>()
            .asFunction();
        this.getUniformiv = wglGetProcAddress(Utf8.toUtf8("glGetUniformiv"))
            .cast<NativeFunction<TglGetUniformiv_Native>>()
            .asFunction();
        this.getVertexAttribdv =
            wglGetProcAddress(Utf8.toUtf8("glGetVertexAttribdv"))
                .cast<NativeFunction<TglGetVertexAttribdv_Native>>()
                .asFunction();
        this.getVertexAttribfv =
            wglGetProcAddress(Utf8.toUtf8("glGetVertexAttribfv"))
                .cast<NativeFunction<TglGetVertexAttribfv_Native>>()
                .asFunction();
        this.getVertexAttribiv =
            wglGetProcAddress(Utf8.toUtf8("glGetVertexAttribiv"))
                .cast<NativeFunction<TglGetVertexAttribiv_Native>>()
                .asFunction();
        this.getVertexAttribPointerv =
            wglGetProcAddress(Utf8.toUtf8("glGetVertexAttribPointerv"))
                .cast<NativeFunction<TglGetVertexAttribPointerv_Native>>()
                .asFunction();
        this.isProgram = wglGetProcAddress(Utf8.toUtf8("glIsProgram"))
            .cast<NativeFunction<TglIsProgram_Native>>()
            .asFunction();
        this.isShader = wglGetProcAddress(Utf8.toUtf8("glIsShader"))
            .cast<NativeFunction<TglIsShader_Native>>()
            .asFunction();
        this.linkProgram = wglGetProcAddress(Utf8.toUtf8("glLinkProgram"))
            .cast<NativeFunction<TglLinkProgram_Native>>()
            .asFunction();
        this.shaderSource = wglGetProcAddress(Utf8.toUtf8("glShaderSource"))
            .cast<NativeFunction<TglShaderSource_Native>>()
            .asFunction();
        this.useProgram = wglGetProcAddress(Utf8.toUtf8("glUseProgram"))
            .cast<NativeFunction<TglUseProgram_Native>>()
            .asFunction();
        this.uniform1f = wglGetProcAddress(Utf8.toUtf8("glUniform1f"))
            .cast<NativeFunction<TglUniform1f_Native>>()
            .asFunction();
        this.uniform2f = wglGetProcAddress(Utf8.toUtf8("glUniform2f"))
            .cast<NativeFunction<TglUniform2f_Native>>()
            .asFunction();
        this.uniform3f = wglGetProcAddress(Utf8.toUtf8("glUniform3f"))
            .cast<NativeFunction<TglUniform3f_Native>>()
            .asFunction();
        this.uniform4f = wglGetProcAddress(Utf8.toUtf8("glUniform4f"))
            .cast<NativeFunction<TglUniform4f_Native>>()
            .asFunction();
        this.uniform1i = wglGetProcAddress(Utf8.toUtf8("glUniform1i"))
            .cast<NativeFunction<TglUniform1i_Native>>()
            .asFunction();
        this.uniform2i = wglGetProcAddress(Utf8.toUtf8("glUniform2i"))
            .cast<NativeFunction<TglUniform2i_Native>>()
            .asFunction();
        this.uniform3i = wglGetProcAddress(Utf8.toUtf8("glUniform3i"))
            .cast<NativeFunction<TglUniform3i_Native>>()
            .asFunction();
        this.uniform4i = wglGetProcAddress(Utf8.toUtf8("glUniform4i"))
            .cast<NativeFunction<TglUniform4i_Native>>()
            .asFunction();
        this.uniform1fv = wglGetProcAddress(Utf8.toUtf8("glUniform1fv"))
            .cast<NativeFunction<TglUniform1fv_Native>>()
            .asFunction();
        this.uniform2fv = wglGetProcAddress(Utf8.toUtf8("glUniform2fv"))
            .cast<NativeFunction<TglUniform2fv_Native>>()
            .asFunction();
        this.uniform3fv = wglGetProcAddress(Utf8.toUtf8("glUniform3fv"))
            .cast<NativeFunction<TglUniform3fv_Native>>()
            .asFunction();
        this.uniform4fv = wglGetProcAddress(Utf8.toUtf8("glUniform4fv"))
            .cast<NativeFunction<TglUniform4fv_Native>>()
            .asFunction();
        this.uniform1iv = wglGetProcAddress(Utf8.toUtf8("glUniform1iv"))
            .cast<NativeFunction<TglUniform1iv_Native>>()
            .asFunction();
        this.uniform2iv = wglGetProcAddress(Utf8.toUtf8("glUniform2iv"))
            .cast<NativeFunction<TglUniform2iv_Native>>()
            .asFunction();
        this.uniform3iv = wglGetProcAddress(Utf8.toUtf8("glUniform3iv"))
            .cast<NativeFunction<TglUniform3iv_Native>>()
            .asFunction();
        this.uniform4iv = wglGetProcAddress(Utf8.toUtf8("glUniform4iv"))
            .cast<NativeFunction<TglUniform4iv_Native>>()
            .asFunction();
        this.uniformMatrix2fv =
            wglGetProcAddress(Utf8.toUtf8("glUniformMatrix2fv"))
                .cast<NativeFunction<TglUniformMatrix2fv_Native>>()
                .asFunction();
        this.uniformMatrix3fv =
            wglGetProcAddress(Utf8.toUtf8("glUniformMatrix3fv"))
                .cast<NativeFunction<TglUniformMatrix3fv_Native>>()
                .asFunction();
        this.uniformMatrix4fv =
            wglGetProcAddress(Utf8.toUtf8("glUniformMatrix4fv"))
                .cast<NativeFunction<TglUniformMatrix4fv_Native>>()
                .asFunction();
        this.validateProgram =
            wglGetProcAddress(Utf8.toUtf8("glValidateProgram"))
                .cast<NativeFunction<TglValidateProgram_Native>>()
                .asFunction();
        this.vertexAttrib1d = wglGetProcAddress(Utf8.toUtf8("glVertexAttrib1d"))
            .cast<NativeFunction<TglVertexAttrib1d_Native>>()
            .asFunction();
        this.vertexAttrib1dv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttrib1dv"))
                .cast<NativeFunction<TglVertexAttrib1dv_Native>>()
                .asFunction();
        this.vertexAttrib1f = wglGetProcAddress(Utf8.toUtf8("glVertexAttrib1f"))
            .cast<NativeFunction<TglVertexAttrib1f_Native>>()
            .asFunction();
        this.vertexAttrib1fv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttrib1fv"))
                .cast<NativeFunction<TglVertexAttrib1fv_Native>>()
                .asFunction();
        this.vertexAttrib1s = wglGetProcAddress(Utf8.toUtf8("glVertexAttrib1s"))
            .cast<NativeFunction<TglVertexAttrib1s_Native>>()
            .asFunction();
        this.vertexAttrib1sv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttrib1sv"))
                .cast<NativeFunction<TglVertexAttrib1sv_Native>>()
                .asFunction();
        this.vertexAttrib2d = wglGetProcAddress(Utf8.toUtf8("glVertexAttrib2d"))
            .cast<NativeFunction<TglVertexAttrib2d_Native>>()
            .asFunction();
        this.vertexAttrib2dv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttrib2dv"))
                .cast<NativeFunction<TglVertexAttrib2dv_Native>>()
                .asFunction();
        this.vertexAttrib2f = wglGetProcAddress(Utf8.toUtf8("glVertexAttrib2f"))
            .cast<NativeFunction<TglVertexAttrib2f_Native>>()
            .asFunction();
        this.vertexAttrib2fv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttrib2fv"))
                .cast<NativeFunction<TglVertexAttrib2fv_Native>>()
                .asFunction();
        this.vertexAttrib2s = wglGetProcAddress(Utf8.toUtf8("glVertexAttrib2s"))
            .cast<NativeFunction<TglVertexAttrib2s_Native>>()
            .asFunction();
        this.vertexAttrib2sv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttrib2sv"))
                .cast<NativeFunction<TglVertexAttrib2sv_Native>>()
                .asFunction();
        this.vertexAttrib3d = wglGetProcAddress(Utf8.toUtf8("glVertexAttrib3d"))
            .cast<NativeFunction<TglVertexAttrib3d_Native>>()
            .asFunction();
        this.vertexAttrib3dv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttrib3dv"))
                .cast<NativeFunction<TglVertexAttrib3dv_Native>>()
                .asFunction();
        this.vertexAttrib3f = wglGetProcAddress(Utf8.toUtf8("glVertexAttrib3f"))
            .cast<NativeFunction<TglVertexAttrib3f_Native>>()
            .asFunction();
        this.vertexAttrib3fv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttrib3fv"))
                .cast<NativeFunction<TglVertexAttrib3fv_Native>>()
                .asFunction();
        this.vertexAttrib3s = wglGetProcAddress(Utf8.toUtf8("glVertexAttrib3s"))
            .cast<NativeFunction<TglVertexAttrib3s_Native>>()
            .asFunction();
        this.vertexAttrib3sv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttrib3sv"))
                .cast<NativeFunction<TglVertexAttrib3sv_Native>>()
                .asFunction();
        this.vertexAttrib4Nbv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttrib4Nbv"))
                .cast<NativeFunction<TglVertexAttrib4Nbv_Native>>()
                .asFunction();
        this.vertexAttrib4Niv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttrib4Niv"))
                .cast<NativeFunction<TglVertexAttrib4Niv_Native>>()
                .asFunction();
        this.vertexAttrib4Nsv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttrib4Nsv"))
                .cast<NativeFunction<TglVertexAttrib4Nsv_Native>>()
                .asFunction();
        this.vertexAttrib4Nub =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttrib4Nub"))
                .cast<NativeFunction<TglVertexAttrib4Nub_Native>>()
                .asFunction();
        this.vertexAttrib4Nubv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttrib4Nubv"))
                .cast<NativeFunction<TglVertexAttrib4Nubv_Native>>()
                .asFunction();
        this.vertexAttrib4Nuiv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttrib4Nuiv"))
                .cast<NativeFunction<TglVertexAttrib4Nuiv_Native>>()
                .asFunction();
        this.vertexAttrib4Nusv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttrib4Nusv"))
                .cast<NativeFunction<TglVertexAttrib4Nusv_Native>>()
                .asFunction();
        this.vertexAttrib4bv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttrib4bv"))
                .cast<NativeFunction<TglVertexAttrib4bv_Native>>()
                .asFunction();
        this.vertexAttrib4d = wglGetProcAddress(Utf8.toUtf8("glVertexAttrib4d"))
            .cast<NativeFunction<TglVertexAttrib4d_Native>>()
            .asFunction();
        this.vertexAttrib4dv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttrib4dv"))
                .cast<NativeFunction<TglVertexAttrib4dv_Native>>()
                .asFunction();
        this.vertexAttrib4f = wglGetProcAddress(Utf8.toUtf8("glVertexAttrib4f"))
            .cast<NativeFunction<TglVertexAttrib4f_Native>>()
            .asFunction();
        this.vertexAttrib4fv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttrib4fv"))
                .cast<NativeFunction<TglVertexAttrib4fv_Native>>()
                .asFunction();
        this.vertexAttrib4iv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttrib4iv"))
                .cast<NativeFunction<TglVertexAttrib4iv_Native>>()
                .asFunction();
        this.vertexAttrib4s = wglGetProcAddress(Utf8.toUtf8("glVertexAttrib4s"))
            .cast<NativeFunction<TglVertexAttrib4s_Native>>()
            .asFunction();
        this.vertexAttrib4sv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttrib4sv"))
                .cast<NativeFunction<TglVertexAttrib4sv_Native>>()
                .asFunction();
        this.vertexAttrib4ubv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttrib4ubv"))
                .cast<NativeFunction<TglVertexAttrib4ubv_Native>>()
                .asFunction();
        this.vertexAttrib4uiv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttrib4uiv"))
                .cast<NativeFunction<TglVertexAttrib4uiv_Native>>()
                .asFunction();
        this.vertexAttrib4usv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttrib4usv"))
                .cast<NativeFunction<TglVertexAttrib4usv_Native>>()
                .asFunction();
        this.vertexAttribPointer =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribPointer"))
                .cast<NativeFunction<TglVertexAttribPointer_Native>>()
                .asFunction();
      } else {
        this.blendEquationSeparate = dylib
            .lookup<NativeFunction<TglBlendEquationSeparate_Native>>(
                'glBlendEquationSeparate')
            .asFunction();
        this.drawBuffers = dylib
            .lookup<NativeFunction<TglDrawBuffers_Native>>('glDrawBuffers')
            .asFunction();
        this.stencilOpSeparate = dylib
            .lookup<NativeFunction<TglStencilOpSeparate_Native>>(
                'glStencilOpSeparate')
            .asFunction();
        this.stencilFuncSeparate = dylib
            .lookup<NativeFunction<TglStencilFuncSeparate_Native>>(
                'glStencilFuncSeparate')
            .asFunction();
        this.stencilMaskSeparate = dylib
            .lookup<NativeFunction<TglStencilMaskSeparate_Native>>(
                'glStencilMaskSeparate')
            .asFunction();
        this.attachShader = dylib
            .lookup<NativeFunction<TglAttachShader_Native>>('glAttachShader')
            .asFunction();
        this.bindAttribLocation = dylib
            .lookup<NativeFunction<TglBindAttribLocation_Native>>(
                'glBindAttribLocation')
            .asFunction();
        this.compileShader = dylib
            .lookup<NativeFunction<TglCompileShader_Native>>('glCompileShader')
            .asFunction();
        this.createProgram = dylib
            .lookup<NativeFunction<TglCreateProgram_Native>>('glCreateProgram')
            .asFunction();
        this.createShader = dylib
            .lookup<NativeFunction<TglCreateShader_Native>>('glCreateShader')
            .asFunction();
        this.deleteProgram = dylib
            .lookup<NativeFunction<TglDeleteProgram_Native>>('glDeleteProgram')
            .asFunction();
        this.deleteShader = dylib
            .lookup<NativeFunction<TglDeleteShader_Native>>('glDeleteShader')
            .asFunction();
        this.detachShader = dylib
            .lookup<NativeFunction<TglDetachShader_Native>>('glDetachShader')
            .asFunction();
        this.disableVertexAttribArray = dylib
            .lookup<NativeFunction<TglDisableVertexAttribArray_Native>>(
                'glDisableVertexAttribArray')
            .asFunction();
        this.enableVertexAttribArray = dylib
            .lookup<NativeFunction<TglEnableVertexAttribArray_Native>>(
                'glEnableVertexAttribArray')
            .asFunction();
        this.getActiveAttrib = dylib
            .lookup<NativeFunction<TglGetActiveAttrib_Native>>(
                'glGetActiveAttrib')
            .asFunction();
        this.getActiveUniform = dylib
            .lookup<NativeFunction<TglGetActiveUniform_Native>>(
                'glGetActiveUniform')
            .asFunction();
        this.getAttachedShaders = dylib
            .lookup<NativeFunction<TglGetAttachedShaders_Native>>(
                'glGetAttachedShaders')
            .asFunction();
        this.getAttribLocation = dylib
            .lookup<NativeFunction<TglGetAttribLocation_Native>>(
                'glGetAttribLocation')
            .asFunction();
        this.getProgramiv = dylib
            .lookup<NativeFunction<TglGetProgramiv_Native>>('glGetProgramiv')
            .asFunction();
        this.getProgramInfoLog = dylib
            .lookup<NativeFunction<TglGetProgramInfoLog_Native>>(
                'glGetProgramInfoLog')
            .asFunction();
        this.getShaderiv = dylib
            .lookup<NativeFunction<TglGetShaderiv_Native>>('glGetShaderiv')
            .asFunction();
        this.getShaderInfoLog = dylib
            .lookup<NativeFunction<TglGetShaderInfoLog_Native>>(
                'glGetShaderInfoLog')
            .asFunction();
        this.getShaderSource = dylib
            .lookup<NativeFunction<TglGetShaderSource_Native>>(
                'glGetShaderSource')
            .asFunction();
        this.getUniformLocation = dylib
            .lookup<NativeFunction<TglGetUniformLocation_Native>>(
                'glGetUniformLocation')
            .asFunction();
        this.getUniformfv = dylib
            .lookup<NativeFunction<TglGetUniformfv_Native>>('glGetUniformfv')
            .asFunction();
        this.getUniformiv = dylib
            .lookup<NativeFunction<TglGetUniformiv_Native>>('glGetUniformiv')
            .asFunction();
        this.getVertexAttribdv = dylib
            .lookup<NativeFunction<TglGetVertexAttribdv_Native>>(
                'glGetVertexAttribdv')
            .asFunction();
        this.getVertexAttribfv = dylib
            .lookup<NativeFunction<TglGetVertexAttribfv_Native>>(
                'glGetVertexAttribfv')
            .asFunction();
        this.getVertexAttribiv = dylib
            .lookup<NativeFunction<TglGetVertexAttribiv_Native>>(
                'glGetVertexAttribiv')
            .asFunction();
        this.getVertexAttribPointerv = dylib
            .lookup<NativeFunction<TglGetVertexAttribPointerv_Native>>(
                'glGetVertexAttribPointerv')
            .asFunction();
        this.isProgram = dylib
            .lookup<NativeFunction<TglIsProgram_Native>>('glIsProgram')
            .asFunction();
        this.isShader = dylib
            .lookup<NativeFunction<TglIsShader_Native>>('glIsShader')
            .asFunction();
        this.linkProgram = dylib
            .lookup<NativeFunction<TglLinkProgram_Native>>('glLinkProgram')
            .asFunction();
        this.shaderSource = dylib
            .lookup<NativeFunction<TglShaderSource_Native>>('glShaderSource')
            .asFunction();
        this.useProgram = dylib
            .lookup<NativeFunction<TglUseProgram_Native>>('glUseProgram')
            .asFunction();
        this.uniform1f = dylib
            .lookup<NativeFunction<TglUniform1f_Native>>('glUniform1f')
            .asFunction();
        this.uniform2f = dylib
            .lookup<NativeFunction<TglUniform2f_Native>>('glUniform2f')
            .asFunction();
        this.uniform3f = dylib
            .lookup<NativeFunction<TglUniform3f_Native>>('glUniform3f')
            .asFunction();
        this.uniform4f = dylib
            .lookup<NativeFunction<TglUniform4f_Native>>('glUniform4f')
            .asFunction();
        this.uniform1i = dylib
            .lookup<NativeFunction<TglUniform1i_Native>>('glUniform1i')
            .asFunction();
        this.uniform2i = dylib
            .lookup<NativeFunction<TglUniform2i_Native>>('glUniform2i')
            .asFunction();
        this.uniform3i = dylib
            .lookup<NativeFunction<TglUniform3i_Native>>('glUniform3i')
            .asFunction();
        this.uniform4i = dylib
            .lookup<NativeFunction<TglUniform4i_Native>>('glUniform4i')
            .asFunction();
        this.uniform1fv = dylib
            .lookup<NativeFunction<TglUniform1fv_Native>>('glUniform1fv')
            .asFunction();
        this.uniform2fv = dylib
            .lookup<NativeFunction<TglUniform2fv_Native>>('glUniform2fv')
            .asFunction();
        this.uniform3fv = dylib
            .lookup<NativeFunction<TglUniform3fv_Native>>('glUniform3fv')
            .asFunction();
        this.uniform4fv = dylib
            .lookup<NativeFunction<TglUniform4fv_Native>>('glUniform4fv')
            .asFunction();
        this.uniform1iv = dylib
            .lookup<NativeFunction<TglUniform1iv_Native>>('glUniform1iv')
            .asFunction();
        this.uniform2iv = dylib
            .lookup<NativeFunction<TglUniform2iv_Native>>('glUniform2iv')
            .asFunction();
        this.uniform3iv = dylib
            .lookup<NativeFunction<TglUniform3iv_Native>>('glUniform3iv')
            .asFunction();
        this.uniform4iv = dylib
            .lookup<NativeFunction<TglUniform4iv_Native>>('glUniform4iv')
            .asFunction();
        this.uniformMatrix2fv = dylib
            .lookup<NativeFunction<TglUniformMatrix2fv_Native>>(
                'glUniformMatrix2fv')
            .asFunction();
        this.uniformMatrix3fv = dylib
            .lookup<NativeFunction<TglUniformMatrix3fv_Native>>(
                'glUniformMatrix3fv')
            .asFunction();
        this.uniformMatrix4fv = dylib
            .lookup<NativeFunction<TglUniformMatrix4fv_Native>>(
                'glUniformMatrix4fv')
            .asFunction();
        this.validateProgram = dylib
            .lookup<NativeFunction<TglValidateProgram_Native>>(
                'glValidateProgram')
            .asFunction();
        this.vertexAttrib1d = dylib
            .lookup<NativeFunction<TglVertexAttrib1d_Native>>(
                'glVertexAttrib1d')
            .asFunction();
        this.vertexAttrib1dv = dylib
            .lookup<NativeFunction<TglVertexAttrib1dv_Native>>(
                'glVertexAttrib1dv')
            .asFunction();
        this.vertexAttrib1f = dylib
            .lookup<NativeFunction<TglVertexAttrib1f_Native>>(
                'glVertexAttrib1f')
            .asFunction();
        this.vertexAttrib1fv = dylib
            .lookup<NativeFunction<TglVertexAttrib1fv_Native>>(
                'glVertexAttrib1fv')
            .asFunction();
        this.vertexAttrib1s = dylib
            .lookup<NativeFunction<TglVertexAttrib1s_Native>>(
                'glVertexAttrib1s')
            .asFunction();
        this.vertexAttrib1sv = dylib
            .lookup<NativeFunction<TglVertexAttrib1sv_Native>>(
                'glVertexAttrib1sv')
            .asFunction();
        this.vertexAttrib2d = dylib
            .lookup<NativeFunction<TglVertexAttrib2d_Native>>(
                'glVertexAttrib2d')
            .asFunction();
        this.vertexAttrib2dv = dylib
            .lookup<NativeFunction<TglVertexAttrib2dv_Native>>(
                'glVertexAttrib2dv')
            .asFunction();
        this.vertexAttrib2f = dylib
            .lookup<NativeFunction<TglVertexAttrib2f_Native>>(
                'glVertexAttrib2f')
            .asFunction();
        this.vertexAttrib2fv = dylib
            .lookup<NativeFunction<TglVertexAttrib2fv_Native>>(
                'glVertexAttrib2fv')
            .asFunction();
        this.vertexAttrib2s = dylib
            .lookup<NativeFunction<TglVertexAttrib2s_Native>>(
                'glVertexAttrib2s')
            .asFunction();
        this.vertexAttrib2sv = dylib
            .lookup<NativeFunction<TglVertexAttrib2sv_Native>>(
                'glVertexAttrib2sv')
            .asFunction();
        this.vertexAttrib3d = dylib
            .lookup<NativeFunction<TglVertexAttrib3d_Native>>(
                'glVertexAttrib3d')
            .asFunction();
        this.vertexAttrib3dv = dylib
            .lookup<NativeFunction<TglVertexAttrib3dv_Native>>(
                'glVertexAttrib3dv')
            .asFunction();
        this.vertexAttrib3f = dylib
            .lookup<NativeFunction<TglVertexAttrib3f_Native>>(
                'glVertexAttrib3f')
            .asFunction();
        this.vertexAttrib3fv = dylib
            .lookup<NativeFunction<TglVertexAttrib3fv_Native>>(
                'glVertexAttrib3fv')
            .asFunction();
        this.vertexAttrib3s = dylib
            .lookup<NativeFunction<TglVertexAttrib3s_Native>>(
                'glVertexAttrib3s')
            .asFunction();
        this.vertexAttrib3sv = dylib
            .lookup<NativeFunction<TglVertexAttrib3sv_Native>>(
                'glVertexAttrib3sv')
            .asFunction();
        this.vertexAttrib4Nbv = dylib
            .lookup<NativeFunction<TglVertexAttrib4Nbv_Native>>(
                'glVertexAttrib4Nbv')
            .asFunction();
        this.vertexAttrib4Niv = dylib
            .lookup<NativeFunction<TglVertexAttrib4Niv_Native>>(
                'glVertexAttrib4Niv')
            .asFunction();
        this.vertexAttrib4Nsv = dylib
            .lookup<NativeFunction<TglVertexAttrib4Nsv_Native>>(
                'glVertexAttrib4Nsv')
            .asFunction();
        this.vertexAttrib4Nub = dylib
            .lookup<NativeFunction<TglVertexAttrib4Nub_Native>>(
                'glVertexAttrib4Nub')
            .asFunction();
        this.vertexAttrib4Nubv = dylib
            .lookup<NativeFunction<TglVertexAttrib4Nubv_Native>>(
                'glVertexAttrib4Nubv')
            .asFunction();
        this.vertexAttrib4Nuiv = dylib
            .lookup<NativeFunction<TglVertexAttrib4Nuiv_Native>>(
                'glVertexAttrib4Nuiv')
            .asFunction();
        this.vertexAttrib4Nusv = dylib
            .lookup<NativeFunction<TglVertexAttrib4Nusv_Native>>(
                'glVertexAttrib4Nusv')
            .asFunction();
        this.vertexAttrib4bv = dylib
            .lookup<NativeFunction<TglVertexAttrib4bv_Native>>(
                'glVertexAttrib4bv')
            .asFunction();
        this.vertexAttrib4d = dylib
            .lookup<NativeFunction<TglVertexAttrib4d_Native>>(
                'glVertexAttrib4d')
            .asFunction();
        this.vertexAttrib4dv = dylib
            .lookup<NativeFunction<TglVertexAttrib4dv_Native>>(
                'glVertexAttrib4dv')
            .asFunction();
        this.vertexAttrib4f = dylib
            .lookup<NativeFunction<TglVertexAttrib4f_Native>>(
                'glVertexAttrib4f')
            .asFunction();
        this.vertexAttrib4fv = dylib
            .lookup<NativeFunction<TglVertexAttrib4fv_Native>>(
                'glVertexAttrib4fv')
            .asFunction();
        this.vertexAttrib4iv = dylib
            .lookup<NativeFunction<TglVertexAttrib4iv_Native>>(
                'glVertexAttrib4iv')
            .asFunction();
        this.vertexAttrib4s = dylib
            .lookup<NativeFunction<TglVertexAttrib4s_Native>>(
                'glVertexAttrib4s')
            .asFunction();
        this.vertexAttrib4sv = dylib
            .lookup<NativeFunction<TglVertexAttrib4sv_Native>>(
                'glVertexAttrib4sv')
            .asFunction();
        this.vertexAttrib4ubv = dylib
            .lookup<NativeFunction<TglVertexAttrib4ubv_Native>>(
                'glVertexAttrib4ubv')
            .asFunction();
        this.vertexAttrib4uiv = dylib
            .lookup<NativeFunction<TglVertexAttrib4uiv_Native>>(
                'glVertexAttrib4uiv')
            .asFunction();
        this.vertexAttrib4usv = dylib
            .lookup<NativeFunction<TglVertexAttrib4usv_Native>>(
                'glVertexAttrib4usv')
            .asFunction();
        this.vertexAttribPointer = dylib
            .lookup<NativeFunction<TglVertexAttribPointer_Native>>(
                'glVertexAttribPointer')
            .asFunction();
      }
    }
    /* GL_VERSION_2_1 */
    if (version.index >= GlVersion.GL_VERSION_2_1.index) {
      if (Platform.isWindows) {
        this.uniformMatrix2x3fv =
            wglGetProcAddress(Utf8.toUtf8("glUniformMatrix2x3fv"))
                .cast<NativeFunction<TglUniformMatrix2x3fv_Native>>()
                .asFunction();
        this.uniformMatrix3x2fv =
            wglGetProcAddress(Utf8.toUtf8("glUniformMatrix3x2fv"))
                .cast<NativeFunction<TglUniformMatrix3x2fv_Native>>()
                .asFunction();
        this.uniformMatrix2x4fv =
            wglGetProcAddress(Utf8.toUtf8("glUniformMatrix2x4fv"))
                .cast<NativeFunction<TglUniformMatrix2x4fv_Native>>()
                .asFunction();
        this.uniformMatrix4x2fv =
            wglGetProcAddress(Utf8.toUtf8("glUniformMatrix4x2fv"))
                .cast<NativeFunction<TglUniformMatrix4x2fv_Native>>()
                .asFunction();
        this.uniformMatrix3x4fv =
            wglGetProcAddress(Utf8.toUtf8("glUniformMatrix3x4fv"))
                .cast<NativeFunction<TglUniformMatrix3x4fv_Native>>()
                .asFunction();
        this.uniformMatrix4x3fv =
            wglGetProcAddress(Utf8.toUtf8("glUniformMatrix4x3fv"))
                .cast<NativeFunction<TglUniformMatrix4x3fv_Native>>()
                .asFunction();
      } else {
        this.uniformMatrix2x3fv = dylib
            .lookup<NativeFunction<TglUniformMatrix2x3fv_Native>>(
                'glUniformMatrix2x3fv')
            .asFunction();
        this.uniformMatrix3x2fv = dylib
            .lookup<NativeFunction<TglUniformMatrix3x2fv_Native>>(
                'glUniformMatrix3x2fv')
            .asFunction();
        this.uniformMatrix2x4fv = dylib
            .lookup<NativeFunction<TglUniformMatrix2x4fv_Native>>(
                'glUniformMatrix2x4fv')
            .asFunction();
        this.uniformMatrix4x2fv = dylib
            .lookup<NativeFunction<TglUniformMatrix4x2fv_Native>>(
                'glUniformMatrix4x2fv')
            .asFunction();
        this.uniformMatrix3x4fv = dylib
            .lookup<NativeFunction<TglUniformMatrix3x4fv_Native>>(
                'glUniformMatrix3x4fv')
            .asFunction();
        this.uniformMatrix4x3fv = dylib
            .lookup<NativeFunction<TglUniformMatrix4x3fv_Native>>(
                'glUniformMatrix4x3fv')
            .asFunction();
      }
    }

    /* GL_VERSION_3_0 */
    if (version.index >= GlVersion.GL_VERSION_3_0.index) {
      if (Platform.isWindows) {
        this.colorMaski = wglGetProcAddress(Utf8.toUtf8("glColorMaski"))
            .cast<NativeFunction<TglColorMaski_Native>>()
            .asFunction();
        this.getBooleani_v = wglGetProcAddress(Utf8.toUtf8("glGetBooleani_v"))
            .cast<NativeFunction<TglGetBooleani_v_Native>>()
            .asFunction();
        this.getIntegeri_v = wglGetProcAddress(Utf8.toUtf8("glGetIntegeri_v"))
            .cast<NativeFunction<TglGetIntegeri_v_Native>>()
            .asFunction();
        this.enablei = wglGetProcAddress(Utf8.toUtf8("glEnablei"))
            .cast<NativeFunction<TglEnablei_Native>>()
            .asFunction();
        this.disablei = wglGetProcAddress(Utf8.toUtf8("glDisablei"))
            .cast<NativeFunction<TglDisablei_Native>>()
            .asFunction();
        this.isEnabledi = wglGetProcAddress(Utf8.toUtf8("glIsEnabledi"))
            .cast<NativeFunction<TglIsEnabledi_Native>>()
            .asFunction();
        this.beginTransformFeedback =
            wglGetProcAddress(Utf8.toUtf8("glBeginTransformFeedback"))
                .cast<NativeFunction<TglBeginTransformFeedback_Native>>()
                .asFunction();
        this.endTransformFeedback =
            wglGetProcAddress(Utf8.toUtf8("glEndTransformFeedback"))
                .cast<NativeFunction<TglEndTransformFeedback_Native>>()
                .asFunction();
        this.bindBufferRange =
            wglGetProcAddress(Utf8.toUtf8("glBindBufferRange"))
                .cast<NativeFunction<TglBindBufferRange_Native>>()
                .asFunction();
        this.bindBufferBase = wglGetProcAddress(Utf8.toUtf8("glBindBufferBase"))
            .cast<NativeFunction<TglBindBufferBase_Native>>()
            .asFunction();
        this.transformFeedbackVaryings =
            wglGetProcAddress(Utf8.toUtf8("glTransformFeedbackVaryings"))
                .cast<NativeFunction<TglTransformFeedbackVaryings_Native>>()
                .asFunction();
        this.getTransformFeedbackVarying =
            wglGetProcAddress(Utf8.toUtf8("glGetTransformFeedbackVarying"))
                .cast<NativeFunction<TglGetTransformFeedbackVarying_Native>>()
                .asFunction();
        this.clampColor = wglGetProcAddress(Utf8.toUtf8("glClampColor"))
            .cast<NativeFunction<TglClampColor_Native>>()
            .asFunction();
        this.beginConditionalRender =
            wglGetProcAddress(Utf8.toUtf8("glBeginConditionalRender"))
                .cast<NativeFunction<TglBeginConditionalRender_Native>>()
                .asFunction();
        this.endConditionalRender =
            wglGetProcAddress(Utf8.toUtf8("glEndConditionalRender"))
                .cast<NativeFunction<TglEndConditionalRender_Native>>()
                .asFunction();
        this.vertexAttribIPointer =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribIPointer"))
                .cast<NativeFunction<TglVertexAttribIPointer_Native>>()
                .asFunction();
        this.getVertexAttribIiv =
            wglGetProcAddress(Utf8.toUtf8("glGetVertexAttribIiv"))
                .cast<NativeFunction<TglGetVertexAttribIiv_Native>>()
                .asFunction();
        this.getVertexAttribIuiv =
            wglGetProcAddress(Utf8.toUtf8("glGetVertexAttribIuiv"))
                .cast<NativeFunction<TglGetVertexAttribIuiv_Native>>()
                .asFunction();
        this.vertexAttribI1i =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribI1i"))
                .cast<NativeFunction<TglVertexAttribI1i_Native>>()
                .asFunction();
        this.vertexAttribI2i =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribI2i"))
                .cast<NativeFunction<TglVertexAttribI2i_Native>>()
                .asFunction();
        this.vertexAttribI3i =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribI3i"))
                .cast<NativeFunction<TglVertexAttribI3i_Native>>()
                .asFunction();
        this.vertexAttribI4i =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribI4i"))
                .cast<NativeFunction<TglVertexAttribI4i_Native>>()
                .asFunction();
        this.vertexAttribI1ui =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribI1ui"))
                .cast<NativeFunction<TglVertexAttribI1ui_Native>>()
                .asFunction();
        this.vertexAttribI2ui =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribI2ui"))
                .cast<NativeFunction<TglVertexAttribI2ui_Native>>()
                .asFunction();
        this.vertexAttribI3ui =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribI3ui"))
                .cast<NativeFunction<TglVertexAttribI3ui_Native>>()
                .asFunction();
        this.vertexAttribI4ui =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribI4ui"))
                .cast<NativeFunction<TglVertexAttribI4ui_Native>>()
                .asFunction();
        this.vertexAttribI1iv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribI1iv"))
                .cast<NativeFunction<TglVertexAttribI1iv_Native>>()
                .asFunction();
        this.vertexAttribI2iv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribI2iv"))
                .cast<NativeFunction<TglVertexAttribI2iv_Native>>()
                .asFunction();
        this.vertexAttribI3iv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribI3iv"))
                .cast<NativeFunction<TglVertexAttribI3iv_Native>>()
                .asFunction();
        this.vertexAttribI4iv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribI4iv"))
                .cast<NativeFunction<TglVertexAttribI4iv_Native>>()
                .asFunction();
        this.vertexAttribI1uiv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribI1uiv"))
                .cast<NativeFunction<TglVertexAttribI1uiv_Native>>()
                .asFunction();
        this.vertexAttribI2uiv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribI2uiv"))
                .cast<NativeFunction<TglVertexAttribI2uiv_Native>>()
                .asFunction();
        this.vertexAttribI3uiv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribI3uiv"))
                .cast<NativeFunction<TglVertexAttribI3uiv_Native>>()
                .asFunction();
        this.vertexAttribI4uiv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribI4uiv"))
                .cast<NativeFunction<TglVertexAttribI4uiv_Native>>()
                .asFunction();
        this.vertexAttribI4bv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribI4bv"))
                .cast<NativeFunction<TglVertexAttribI4bv_Native>>()
                .asFunction();
        this.vertexAttribI4sv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribI4sv"))
                .cast<NativeFunction<TglVertexAttribI4sv_Native>>()
                .asFunction();
        this.vertexAttribI4ubv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribI4ubv"))
                .cast<NativeFunction<TglVertexAttribI4ubv_Native>>()
                .asFunction();
        this.vertexAttribI4usv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribI4usv"))
                .cast<NativeFunction<TglVertexAttribI4usv_Native>>()
                .asFunction();
        this.getUniformuiv = wglGetProcAddress(Utf8.toUtf8("glGetUniformuiv"))
            .cast<NativeFunction<TglGetUniformuiv_Native>>()
            .asFunction();
        this.bindFragDataLocation =
            wglGetProcAddress(Utf8.toUtf8("glBindFragDataLocation"))
                .cast<NativeFunction<TglBindFragDataLocation_Native>>()
                .asFunction();
        this.getFragDataLocation =
            wglGetProcAddress(Utf8.toUtf8("glGetFragDataLocation"))
                .cast<NativeFunction<TglGetFragDataLocation_Native>>()
                .asFunction();
        this.uniform1ui = wglGetProcAddress(Utf8.toUtf8("glUniform1ui"))
            .cast<NativeFunction<TglUniform1ui_Native>>()
            .asFunction();
        this.uniform2ui = wglGetProcAddress(Utf8.toUtf8("glUniform2ui"))
            .cast<NativeFunction<TglUniform2ui_Native>>()
            .asFunction();
        this.uniform3ui = wglGetProcAddress(Utf8.toUtf8("glUniform3ui"))
            .cast<NativeFunction<TglUniform3ui_Native>>()
            .asFunction();
        this.uniform4ui = wglGetProcAddress(Utf8.toUtf8("glUniform4ui"))
            .cast<NativeFunction<TglUniform4ui_Native>>()
            .asFunction();
        this.uniform1uiv = wglGetProcAddress(Utf8.toUtf8("glUniform1uiv"))
            .cast<NativeFunction<TglUniform1uiv_Native>>()
            .asFunction();
        this.uniform2uiv = wglGetProcAddress(Utf8.toUtf8("glUniform2uiv"))
            .cast<NativeFunction<TglUniform2uiv_Native>>()
            .asFunction();
        this.uniform3uiv = wglGetProcAddress(Utf8.toUtf8("glUniform3uiv"))
            .cast<NativeFunction<TglUniform3uiv_Native>>()
            .asFunction();
        this.uniform4uiv = wglGetProcAddress(Utf8.toUtf8("glUniform4uiv"))
            .cast<NativeFunction<TglUniform4uiv_Native>>()
            .asFunction();
        this.texParameterIiv =
            wglGetProcAddress(Utf8.toUtf8("glTexParameterIiv"))
                .cast<NativeFunction<TglTexParameterIiv_Native>>()
                .asFunction();
        this.texParameterIuiv =
            wglGetProcAddress(Utf8.toUtf8("glTexParameterIuiv"))
                .cast<NativeFunction<TglTexParameterIuiv_Native>>()
                .asFunction();
        this.getTexParameterIiv =
            wglGetProcAddress(Utf8.toUtf8("glGetTexParameterIiv"))
                .cast<NativeFunction<TglGetTexParameterIiv_Native>>()
                .asFunction();
        this.getTexParameterIuiv =
            wglGetProcAddress(Utf8.toUtf8("glGetTexParameterIuiv"))
                .cast<NativeFunction<TglGetTexParameterIuiv_Native>>()
                .asFunction();
        this.clearBufferiv = wglGetProcAddress(Utf8.toUtf8("glClearBufferiv"))
            .cast<NativeFunction<TglClearBufferiv_Native>>()
            .asFunction();
        this.clearBufferuiv = wglGetProcAddress(Utf8.toUtf8("glClearBufferuiv"))
            .cast<NativeFunction<TglClearBufferuiv_Native>>()
            .asFunction();
        this.clearBufferfv = wglGetProcAddress(Utf8.toUtf8("glClearBufferfv"))
            .cast<NativeFunction<TglClearBufferfv_Native>>()
            .asFunction();
        this.clearBufferfi = wglGetProcAddress(Utf8.toUtf8("glClearBufferfi"))
            .cast<NativeFunction<TglClearBufferfi_Native>>()
            .asFunction();
        this.getStringi = wglGetProcAddress(Utf8.toUtf8("glGetStringi"))
            .cast<NativeFunction<TglGetStringi_Native>>()
            .asFunction();
        this.isRenderbuffer = wglGetProcAddress(Utf8.toUtf8("glIsRenderbuffer"))
            .cast<NativeFunction<TglIsRenderbuffer_Native>>()
            .asFunction();
        this.bindRenderbuffer =
            wglGetProcAddress(Utf8.toUtf8("glBindRenderbuffer"))
                .cast<NativeFunction<TglBindRenderbuffer_Native>>()
                .asFunction();
        this.deleteRenderbuffers =
            wglGetProcAddress(Utf8.toUtf8("glDeleteRenderbuffers"))
                .cast<NativeFunction<TglDeleteRenderbuffers_Native>>()
                .asFunction();
        this.genRenderbuffers =
            wglGetProcAddress(Utf8.toUtf8("glGenRenderbuffers"))
                .cast<NativeFunction<TglGenRenderbuffers_Native>>()
                .asFunction();
        this.renderbufferStorage =
            wglGetProcAddress(Utf8.toUtf8("glRenderbufferStorage"))
                .cast<NativeFunction<TglRenderbufferStorage_Native>>()
                .asFunction();
        this.getRenderbufferParameteriv =
            wglGetProcAddress(Utf8.toUtf8("glGetRenderbufferParameteriv"))
                .cast<NativeFunction<TglGetRenderbufferParameteriv_Native>>()
                .asFunction();
        this.isFramebuffer = wglGetProcAddress(Utf8.toUtf8("glIsFramebuffer"))
            .cast<NativeFunction<TglIsFramebuffer_Native>>()
            .asFunction();
        this.bindFramebuffer =
            wglGetProcAddress(Utf8.toUtf8("glBindFramebuffer"))
                .cast<NativeFunction<TglBindFramebuffer_Native>>()
                .asFunction();
        this.deleteFramebuffers =
            wglGetProcAddress(Utf8.toUtf8("glDeleteFramebuffers"))
                .cast<NativeFunction<TglDeleteFramebuffers_Native>>()
                .asFunction();
        this.genFramebuffers =
            wglGetProcAddress(Utf8.toUtf8("glGenFramebuffers"))
                .cast<NativeFunction<TglGenFramebuffers_Native>>()
                .asFunction();
        this.checkFramebufferStatus =
            wglGetProcAddress(Utf8.toUtf8("glCheckFramebufferStatus"))
                .cast<NativeFunction<TglCheckFramebufferStatus_Native>>()
                .asFunction();
        this.framebufferTexture1D =
            wglGetProcAddress(Utf8.toUtf8("glFramebufferTexture1D"))
                .cast<NativeFunction<TglFramebufferTexture1D_Native>>()
                .asFunction();
        this.framebufferTexture2D =
            wglGetProcAddress(Utf8.toUtf8("glFramebufferTexture2D"))
                .cast<NativeFunction<TglFramebufferTexture2D_Native>>()
                .asFunction();
        this.framebufferTexture3D =
            wglGetProcAddress(Utf8.toUtf8("glFramebufferTexture3D"))
                .cast<NativeFunction<TglFramebufferTexture3D_Native>>()
                .asFunction();
        this.framebufferRenderbuffer =
            wglGetProcAddress(Utf8.toUtf8("glFramebufferRenderbuffer"))
                .cast<NativeFunction<TglFramebufferRenderbuffer_Native>>()
                .asFunction();
        this.getFramebufferAttachmentParameteriv = wglGetProcAddress(
                Utf8.toUtf8("glGetFramebufferAttachmentParameteriv"))
            .cast<
                NativeFunction<TglGetFramebufferAttachmentParameteriv_Native>>()
            .asFunction();
        this.generateMipmap = wglGetProcAddress(Utf8.toUtf8("glGenerateMipmap"))
            .cast<NativeFunction<TglGenerateMipmap_Native>>()
            .asFunction();
        this.blitFramebuffer =
            wglGetProcAddress(Utf8.toUtf8("glBlitFramebuffer"))
                .cast<NativeFunction<TglBlitFramebuffer_Native>>()
                .asFunction();
        this.renderbufferStorageMultisample = wglGetProcAddress(
                Utf8.toUtf8("glRenderbufferStorageMultisample"))
            .cast<NativeFunction<TglRenderbufferStorageMultisample_Native>>()
            .asFunction();
        this.framebufferTextureLayer =
            wglGetProcAddress(Utf8.toUtf8("glFramebufferTextureLayer"))
                .cast<NativeFunction<TglFramebufferTextureLayer_Native>>()
                .asFunction();
        this.mapBufferRange = wglGetProcAddress(Utf8.toUtf8("glMapBufferRange"))
            .cast<NativeFunction<TglMapBufferRange_Native>>()
            .asFunction();
        this.flushMappedBufferRange =
            wglGetProcAddress(Utf8.toUtf8("glFlushMappedBufferRange"))
                .cast<NativeFunction<TglFlushMappedBufferRange_Native>>()
                .asFunction();
        this.bindVertexArray =
            wglGetProcAddress(Utf8.toUtf8("glBindVertexArray"))
                .cast<NativeFunction<TglBindVertexArray_Native>>()
                .asFunction();
        this.deleteVertexArrays =
            wglGetProcAddress(Utf8.toUtf8("glDeleteVertexArrays"))
                .cast<NativeFunction<TglDeleteVertexArrays_Native>>()
                .asFunction();
        this.genVertexArrays =
            wglGetProcAddress(Utf8.toUtf8("glGenVertexArrays"))
                .cast<NativeFunction<TglGenVertexArrays_Native>>()
                .asFunction();
        this.isVertexArray = wglGetProcAddress(Utf8.toUtf8("glIsVertexArray"))
            .cast<NativeFunction<TglIsVertexArray_Native>>()
            .asFunction();
      } else {
        this.colorMaski = dylib
            .lookup<NativeFunction<TglColorMaski_Native>>('glColorMaski')
            .asFunction();
        this.getBooleani_v = dylib
            .lookup<NativeFunction<TglGetBooleani_v_Native>>('glGetBooleani_v')
            .asFunction();
        this.getIntegeri_v = dylib
            .lookup<NativeFunction<TglGetIntegeri_v_Native>>('glGetIntegeri_v')
            .asFunction();
        this.enablei = dylib
            .lookup<NativeFunction<TglEnablei_Native>>('glEnablei')
            .asFunction();
        this.disablei = dylib
            .lookup<NativeFunction<TglDisablei_Native>>('glDisablei')
            .asFunction();
        this.isEnabledi = dylib
            .lookup<NativeFunction<TglIsEnabledi_Native>>('glIsEnabledi')
            .asFunction();
        this.beginTransformFeedback = dylib
            .lookup<NativeFunction<TglBeginTransformFeedback_Native>>(
                'glBeginTransformFeedback')
            .asFunction();
        this.endTransformFeedback = dylib
            .lookup<NativeFunction<TglEndTransformFeedback_Native>>(
                'glEndTransformFeedback')
            .asFunction();
        this.bindBufferRange = dylib
            .lookup<NativeFunction<TglBindBufferRange_Native>>(
                'glBindBufferRange')
            .asFunction();
        this.bindBufferBase = dylib
            .lookup<NativeFunction<TglBindBufferBase_Native>>(
                'glBindBufferBase')
            .asFunction();
        this.transformFeedbackVaryings = dylib
            .lookup<NativeFunction<TglTransformFeedbackVaryings_Native>>(
                'glTransformFeedbackVaryings')
            .asFunction();
        this.getTransformFeedbackVarying = dylib
            .lookup<NativeFunction<TglGetTransformFeedbackVarying_Native>>(
                'glGetTransformFeedbackVarying')
            .asFunction();
        this.clampColor = dylib
            .lookup<NativeFunction<TglClampColor_Native>>('glClampColor')
            .asFunction();
        this.beginConditionalRender = dylib
            .lookup<NativeFunction<TglBeginConditionalRender_Native>>(
                'glBeginConditionalRender')
            .asFunction();
        this.endConditionalRender = dylib
            .lookup<NativeFunction<TglEndConditionalRender_Native>>(
                'glEndConditionalRender')
            .asFunction();
        this.vertexAttribIPointer = dylib
            .lookup<NativeFunction<TglVertexAttribIPointer_Native>>(
                'glVertexAttribIPointer')
            .asFunction();
        this.getVertexAttribIiv = dylib
            .lookup<NativeFunction<TglGetVertexAttribIiv_Native>>(
                'glGetVertexAttribIiv')
            .asFunction();
        this.getVertexAttribIuiv = dylib
            .lookup<NativeFunction<TglGetVertexAttribIuiv_Native>>(
                'glGetVertexAttribIuiv')
            .asFunction();
        this.vertexAttribI1i = dylib
            .lookup<NativeFunction<TglVertexAttribI1i_Native>>(
                'glVertexAttribI1i')
            .asFunction();
        this.vertexAttribI2i = dylib
            .lookup<NativeFunction<TglVertexAttribI2i_Native>>(
                'glVertexAttribI2i')
            .asFunction();
        this.vertexAttribI3i = dylib
            .lookup<NativeFunction<TglVertexAttribI3i_Native>>(
                'glVertexAttribI3i')
            .asFunction();
        this.vertexAttribI4i = dylib
            .lookup<NativeFunction<TglVertexAttribI4i_Native>>(
                'glVertexAttribI4i')
            .asFunction();
        this.vertexAttribI1ui = dylib
            .lookup<NativeFunction<TglVertexAttribI1ui_Native>>(
                'glVertexAttribI1ui')
            .asFunction();
        this.vertexAttribI2ui = dylib
            .lookup<NativeFunction<TglVertexAttribI2ui_Native>>(
                'glVertexAttribI2ui')
            .asFunction();
        this.vertexAttribI3ui = dylib
            .lookup<NativeFunction<TglVertexAttribI3ui_Native>>(
                'glVertexAttribI3ui')
            .asFunction();
        this.vertexAttribI4ui = dylib
            .lookup<NativeFunction<TglVertexAttribI4ui_Native>>(
                'glVertexAttribI4ui')
            .asFunction();
        this.vertexAttribI1iv = dylib
            .lookup<NativeFunction<TglVertexAttribI1iv_Native>>(
                'glVertexAttribI1iv')
            .asFunction();
        this.vertexAttribI2iv = dylib
            .lookup<NativeFunction<TglVertexAttribI2iv_Native>>(
                'glVertexAttribI2iv')
            .asFunction();
        this.vertexAttribI3iv = dylib
            .lookup<NativeFunction<TglVertexAttribI3iv_Native>>(
                'glVertexAttribI3iv')
            .asFunction();
        this.vertexAttribI4iv = dylib
            .lookup<NativeFunction<TglVertexAttribI4iv_Native>>(
                'glVertexAttribI4iv')
            .asFunction();
        this.vertexAttribI1uiv = dylib
            .lookup<NativeFunction<TglVertexAttribI1uiv_Native>>(
                'glVertexAttribI1uiv')
            .asFunction();
        this.vertexAttribI2uiv = dylib
            .lookup<NativeFunction<TglVertexAttribI2uiv_Native>>(
                'glVertexAttribI2uiv')
            .asFunction();
        this.vertexAttribI3uiv = dylib
            .lookup<NativeFunction<TglVertexAttribI3uiv_Native>>(
                'glVertexAttribI3uiv')
            .asFunction();
        this.vertexAttribI4uiv = dylib
            .lookup<NativeFunction<TglVertexAttribI4uiv_Native>>(
                'glVertexAttribI4uiv')
            .asFunction();
        this.vertexAttribI4bv = dylib
            .lookup<NativeFunction<TglVertexAttribI4bv_Native>>(
                'glVertexAttribI4bv')
            .asFunction();
        this.vertexAttribI4sv = dylib
            .lookup<NativeFunction<TglVertexAttribI4sv_Native>>(
                'glVertexAttribI4sv')
            .asFunction();
        this.vertexAttribI4ubv = dylib
            .lookup<NativeFunction<TglVertexAttribI4ubv_Native>>(
                'glVertexAttribI4ubv')
            .asFunction();
        this.vertexAttribI4usv = dylib
            .lookup<NativeFunction<TglVertexAttribI4usv_Native>>(
                'glVertexAttribI4usv')
            .asFunction();
        this.getUniformuiv = dylib
            .lookup<NativeFunction<TglGetUniformuiv_Native>>('glGetUniformuiv')
            .asFunction();
        this.bindFragDataLocation = dylib
            .lookup<NativeFunction<TglBindFragDataLocation_Native>>(
                'glBindFragDataLocation')
            .asFunction();
        this.getFragDataLocation = dylib
            .lookup<NativeFunction<TglGetFragDataLocation_Native>>(
                'glGetFragDataLocation')
            .asFunction();
        this.uniform1ui = dylib
            .lookup<NativeFunction<TglUniform1ui_Native>>('glUniform1ui')
            .asFunction();
        this.uniform2ui = dylib
            .lookup<NativeFunction<TglUniform2ui_Native>>('glUniform2ui')
            .asFunction();
        this.uniform3ui = dylib
            .lookup<NativeFunction<TglUniform3ui_Native>>('glUniform3ui')
            .asFunction();
        this.uniform4ui = dylib
            .lookup<NativeFunction<TglUniform4ui_Native>>('glUniform4ui')
            .asFunction();
        this.uniform1uiv = dylib
            .lookup<NativeFunction<TglUniform1uiv_Native>>('glUniform1uiv')
            .asFunction();
        this.uniform2uiv = dylib
            .lookup<NativeFunction<TglUniform2uiv_Native>>('glUniform2uiv')
            .asFunction();
        this.uniform3uiv = dylib
            .lookup<NativeFunction<TglUniform3uiv_Native>>('glUniform3uiv')
            .asFunction();
        this.uniform4uiv = dylib
            .lookup<NativeFunction<TglUniform4uiv_Native>>('glUniform4uiv')
            .asFunction();
        this.texParameterIiv = dylib
            .lookup<NativeFunction<TglTexParameterIiv_Native>>(
                'glTexParameterIiv')
            .asFunction();
        this.texParameterIuiv = dylib
            .lookup<NativeFunction<TglTexParameterIuiv_Native>>(
                'glTexParameterIuiv')
            .asFunction();
        this.getTexParameterIiv = dylib
            .lookup<NativeFunction<TglGetTexParameterIiv_Native>>(
                'glGetTexParameterIiv')
            .asFunction();
        this.getTexParameterIuiv = dylib
            .lookup<NativeFunction<TglGetTexParameterIuiv_Native>>(
                'glGetTexParameterIuiv')
            .asFunction();
        this.clearBufferiv = dylib
            .lookup<NativeFunction<TglClearBufferiv_Native>>('glClearBufferiv')
            .asFunction();
        this.clearBufferuiv = dylib
            .lookup<NativeFunction<TglClearBufferuiv_Native>>(
                'glClearBufferuiv')
            .asFunction();
        this.clearBufferfv = dylib
            .lookup<NativeFunction<TglClearBufferfv_Native>>('glClearBufferfv')
            .asFunction();
        this.clearBufferfi = dylib
            .lookup<NativeFunction<TglClearBufferfi_Native>>('glClearBufferfi')
            .asFunction();
        this.getStringi = dylib
            .lookup<NativeFunction<TglGetStringi_Native>>('glGetStringi')
            .asFunction();
        this.isRenderbuffer = dylib
            .lookup<NativeFunction<TglIsRenderbuffer_Native>>(
                'glIsRenderbuffer')
            .asFunction();
        this.bindRenderbuffer = dylib
            .lookup<NativeFunction<TglBindRenderbuffer_Native>>(
                'glBindRenderbuffer')
            .asFunction();
        this.deleteRenderbuffers = dylib
            .lookup<NativeFunction<TglDeleteRenderbuffers_Native>>(
                'glDeleteRenderbuffers')
            .asFunction();
        this.genRenderbuffers = dylib
            .lookup<NativeFunction<TglGenRenderbuffers_Native>>(
                'glGenRenderbuffers')
            .asFunction();
        this.renderbufferStorage = dylib
            .lookup<NativeFunction<TglRenderbufferStorage_Native>>(
                'glRenderbufferStorage')
            .asFunction();
        this.getRenderbufferParameteriv = dylib
            .lookup<NativeFunction<TglGetRenderbufferParameteriv_Native>>(
                'glGetRenderbufferParameteriv')
            .asFunction();
        this.isFramebuffer = dylib
            .lookup<NativeFunction<TglIsFramebuffer_Native>>('glIsFramebuffer')
            .asFunction();
        this.bindFramebuffer = dylib
            .lookup<NativeFunction<TglBindFramebuffer_Native>>(
                'glBindFramebuffer')
            .asFunction();
        this.deleteFramebuffers = dylib
            .lookup<NativeFunction<TglDeleteFramebuffers_Native>>(
                'glDeleteFramebuffers')
            .asFunction();
        this.genFramebuffers = dylib
            .lookup<NativeFunction<TglGenFramebuffers_Native>>(
                'glGenFramebuffers')
            .asFunction();
        this.checkFramebufferStatus = dylib
            .lookup<NativeFunction<TglCheckFramebufferStatus_Native>>(
                'glCheckFramebufferStatus')
            .asFunction();
        this.framebufferTexture1D = dylib
            .lookup<NativeFunction<TglFramebufferTexture1D_Native>>(
                'glFramebufferTexture1D')
            .asFunction();
        this.framebufferTexture2D = dylib
            .lookup<NativeFunction<TglFramebufferTexture2D_Native>>(
                'glFramebufferTexture2D')
            .asFunction();
        this.framebufferTexture3D = dylib
            .lookup<NativeFunction<TglFramebufferTexture3D_Native>>(
                'glFramebufferTexture3D')
            .asFunction();
        this.framebufferRenderbuffer = dylib
            .lookup<NativeFunction<TglFramebufferRenderbuffer_Native>>(
                'glFramebufferRenderbuffer')
            .asFunction();
        this.getFramebufferAttachmentParameteriv = dylib
            .lookup<
                    NativeFunction<
                        TglGetFramebufferAttachmentParameteriv_Native>>(
                'glGetFramebufferAttachmentParameteriv')
            .asFunction();
        this.generateMipmap = dylib
            .lookup<NativeFunction<TglGenerateMipmap_Native>>(
                'glGenerateMipmap')
            .asFunction();
        this.blitFramebuffer = dylib
            .lookup<NativeFunction<TglBlitFramebuffer_Native>>(
                'glBlitFramebuffer')
            .asFunction();
        this.renderbufferStorageMultisample = dylib
            .lookup<NativeFunction<TglRenderbufferStorageMultisample_Native>>(
                'glRenderbufferStorageMultisample')
            .asFunction();
        this.framebufferTextureLayer = dylib
            .lookup<NativeFunction<TglFramebufferTextureLayer_Native>>(
                'glFramebufferTextureLayer')
            .asFunction();
        this.mapBufferRange = dylib
            .lookup<NativeFunction<TglMapBufferRange_Native>>(
                'glMapBufferRange')
            .asFunction();
        this.flushMappedBufferRange = dylib
            .lookup<NativeFunction<TglFlushMappedBufferRange_Native>>(
                'glFlushMappedBufferRange')
            .asFunction();
        this.bindVertexArray = dylib
            .lookup<NativeFunction<TglBindVertexArray_Native>>(
                'glBindVertexArray')
            .asFunction();
        this.deleteVertexArrays = dylib
            .lookup<NativeFunction<TglDeleteVertexArrays_Native>>(
                'glDeleteVertexArrays')
            .asFunction();
        this.genVertexArrays = dylib
            .lookup<NativeFunction<TglGenVertexArrays_Native>>(
                'glGenVertexArrays')
            .asFunction();
        this.isVertexArray = dylib
            .lookup<NativeFunction<TglIsVertexArray_Native>>('glIsVertexArray')
            .asFunction();
      }
    }

    /* GL_VERSION_3_1 */
    if (version.index >= GlVersion.GL_VERSION_3_1.index) {
      if (Platform.isWindows) {
        this.drawArraysInstanced =
            wglGetProcAddress(Utf8.toUtf8("glDrawArraysInstanced"))
                .cast<NativeFunction<TglDrawArraysInstanced_Native>>()
                .asFunction();
        this.drawElementsInstanced =
            wglGetProcAddress(Utf8.toUtf8("glDrawElementsInstanced"))
                .cast<NativeFunction<TglDrawElementsInstanced_Native>>()
                .asFunction();
        this.texBuffer = wglGetProcAddress(Utf8.toUtf8("glTexBuffer"))
            .cast<NativeFunction<TglTexBuffer_Native>>()
            .asFunction();
        this.primitiveRestartIndex =
            wglGetProcAddress(Utf8.toUtf8("glPrimitiveRestartIndex"))
                .cast<NativeFunction<TglPrimitiveRestartIndex_Native>>()
                .asFunction();
        this.copyBufferSubData =
            wglGetProcAddress(Utf8.toUtf8("glCopyBufferSubData"))
                .cast<NativeFunction<TglCopyBufferSubData_Native>>()
                .asFunction();
        this.getUniformIndices =
            wglGetProcAddress(Utf8.toUtf8("glGetUniformIndices"))
                .cast<NativeFunction<TglGetUniformIndices_Native>>()
                .asFunction();
        this.getActiveUniformsiv =
            wglGetProcAddress(Utf8.toUtf8("glGetActiveUniformsiv"))
                .cast<NativeFunction<TglGetActiveUniformsiv_Native>>()
                .asFunction();
        this.getActiveUniformName =
            wglGetProcAddress(Utf8.toUtf8("glGetActiveUniformName"))
                .cast<NativeFunction<TglGetActiveUniformName_Native>>()
                .asFunction();
        this.getUniformBlockIndex =
            wglGetProcAddress(Utf8.toUtf8("glGetUniformBlockIndex"))
                .cast<NativeFunction<TglGetUniformBlockIndex_Native>>()
                .asFunction();
        this.getActiveUniformBlockiv =
            wglGetProcAddress(Utf8.toUtf8("glGetActiveUniformBlockiv"))
                .cast<NativeFunction<TglGetActiveUniformBlockiv_Native>>()
                .asFunction();
        this.getActiveUniformBlockName =
            wglGetProcAddress(Utf8.toUtf8("glGetActiveUniformBlockName"))
                .cast<NativeFunction<TglGetActiveUniformBlockName_Native>>()
                .asFunction();
        this.uniformBlockBinding =
            wglGetProcAddress(Utf8.toUtf8("glUniformBlockBinding"))
                .cast<NativeFunction<TglUniformBlockBinding_Native>>()
                .asFunction();
      } else {
        this.drawArraysInstanced = dylib
            .lookup<NativeFunction<TglDrawArraysInstanced_Native>>(
                'glDrawArraysInstanced')
            .asFunction();
        this.drawElementsInstanced = dylib
            .lookup<NativeFunction<TglDrawElementsInstanced_Native>>(
                'glDrawElementsInstanced')
            .asFunction();
        this.texBuffer = dylib
            .lookup<NativeFunction<TglTexBuffer_Native>>('glTexBuffer')
            .asFunction();
        this.primitiveRestartIndex = dylib
            .lookup<NativeFunction<TglPrimitiveRestartIndex_Native>>(
                'glPrimitiveRestartIndex')
            .asFunction();
        // WTF GL_ARB_copy_buffer
        this.copyBufferSubData = dylib
            .lookup<NativeFunction<TglCopyBufferSubData_Native>>(
                'glCopyBufferSubData')
            .asFunction();
        // WTF GL_ARB_uniform_buffer_object
        this.getUniformIndices = dylib
            .lookup<NativeFunction<TglGetUniformIndices_Native>>(
                'glGetUniformIndices')
            .asFunction();
        // WTF GL_ARB_uniform_buffer_object
        this.getActiveUniformsiv = dylib
            .lookup<NativeFunction<TglGetActiveUniformsiv_Native>>(
                'glGetActiveUniformsiv')
            .asFunction();
        this.getActiveUniformName = dylib
            .lookup<NativeFunction<TglGetActiveUniformName_Native>>(
                'glGetActiveUniformName')
            .asFunction();
        this.getUniformBlockIndex = dylib
            .lookup<NativeFunction<TglGetUniformBlockIndex_Native>>(
                'glGetUniformBlockIndex')
            .asFunction();
        this.getActiveUniformBlockiv = dylib
            .lookup<NativeFunction<TglGetActiveUniformBlockiv_Native>>(
                'glGetActiveUniformBlockiv')
            .asFunction();
        this.getActiveUniformBlockName = dylib
            .lookup<NativeFunction<TglGetActiveUniformBlockName_Native>>(
                'glGetActiveUniformBlockName')
            .asFunction();
        this.uniformBlockBinding = dylib
            .lookup<NativeFunction<TglUniformBlockBinding_Native>>(
                'glUniformBlockBinding')
            .asFunction();
      }
    }

    /* GL_VERSION_3_2 */
    if (version.index >= GlVersion.GL_VERSION_3_2.index) {
      if (Platform.isWindows) {
        this.drawElementsBaseVertex =
            wglGetProcAddress(Utf8.toUtf8("glDrawElementsBaseVertex"))
                .cast<NativeFunction<TglDrawElementsBaseVertex_Native>>()
                .asFunction();
        this.drawRangeElementsBaseVertex =
            wglGetProcAddress(Utf8.toUtf8("glDrawRangeElementsBaseVertex"))
                .cast<NativeFunction<TglDrawRangeElementsBaseVertex_Native>>()
                .asFunction();
        this.drawElementsInstancedBaseVertex = wglGetProcAddress(
                Utf8.toUtf8("glDrawElementsInstancedBaseVertex"))
            .cast<NativeFunction<TglDrawElementsInstancedBaseVertex_Native>>()
            .asFunction();
        this.multiDrawElementsBaseVertex =
            wglGetProcAddress(Utf8.toUtf8("glMultiDrawElementsBaseVertex"))
                .cast<NativeFunction<TglMultiDrawElementsBaseVertex_Native>>()
                .asFunction();
        this.provokingVertex =
            wglGetProcAddress(Utf8.toUtf8("glProvokingVertex"))
                .cast<NativeFunction<TglProvokingVertex_Native>>()
                .asFunction();
        this.fenceSync = wglGetProcAddress(Utf8.toUtf8("glFenceSync"))
            .cast<NativeFunction<TglFenceSync_Native>>()
            .asFunction();
        this.isSync = wglGetProcAddress(Utf8.toUtf8("glIsSync"))
            .cast<NativeFunction<TglIsSync_Native>>()
            .asFunction();
        this.deleteSync = wglGetProcAddress(Utf8.toUtf8("glDeleteSync"))
            .cast<NativeFunction<TglDeleteSync_Native>>()
            .asFunction();
        this.clientWaitSync = wglGetProcAddress(Utf8.toUtf8("glClientWaitSync"))
            .cast<NativeFunction<TglClientWaitSync_Native>>()
            .asFunction();
        this.waitSync = wglGetProcAddress(Utf8.toUtf8("glWaitSync"))
            .cast<NativeFunction<TglWaitSync_Native>>()
            .asFunction();
        this.getInteger64v = wglGetProcAddress(Utf8.toUtf8("glGetInteger64v"))
            .cast<NativeFunction<TglGetInteger64v_Native>>()
            .asFunction();
        this.getSynciv = wglGetProcAddress(Utf8.toUtf8("glGetSynciv"))
            .cast<NativeFunction<TglGetSynciv_Native>>()
            .asFunction();
        this.getInteger64i_v =
            wglGetProcAddress(Utf8.toUtf8("glGetInteger64i_v"))
                .cast<NativeFunction<TglGetInteger64i_v_Native>>()
                .asFunction();
        this.getBufferParameteri64v =
            wglGetProcAddress(Utf8.toUtf8("glGetBufferParameteri64v"))
                .cast<NativeFunction<TglGetBufferParameteri64v_Native>>()
                .asFunction();
        this.framebufferTexture =
            wglGetProcAddress(Utf8.toUtf8("glFramebufferTexture"))
                .cast<NativeFunction<TglFramebufferTexture_Native>>()
                .asFunction();
        this.texImage2DMultisample =
            wglGetProcAddress(Utf8.toUtf8("glTexImage2DMultisample"))
                .cast<NativeFunction<TglTexImage2DMultisample_Native>>()
                .asFunction();
        this.texImage3DMultisample =
            wglGetProcAddress(Utf8.toUtf8("glTexImage3DMultisample"))
                .cast<NativeFunction<TglTexImage3DMultisample_Native>>()
                .asFunction();
        this.getMultisamplefv =
            wglGetProcAddress(Utf8.toUtf8("glGetMultisamplefv"))
                .cast<NativeFunction<TglGetMultisamplefv_Native>>()
                .asFunction();
        this.sampleMaski = wglGetProcAddress(Utf8.toUtf8("glSampleMaski"))
            .cast<NativeFunction<TglSampleMaski_Native>>()
            .asFunction();
      } else {
        this.drawElementsBaseVertex = dylib
            .lookup<NativeFunction<TglDrawElementsBaseVertex_Native>>(
                'glDrawElementsBaseVertex')
            .asFunction();
        this.drawRangeElementsBaseVertex = dylib
            .lookup<NativeFunction<TglDrawRangeElementsBaseVertex_Native>>(
                'glDrawRangeElementsBaseVertex')
            .asFunction();
        this.drawElementsInstancedBaseVertex = dylib
            .lookup<NativeFunction<TglDrawElementsInstancedBaseVertex_Native>>(
                'glDrawElementsInstancedBaseVertex')
            .asFunction();
        this.multiDrawElementsBaseVertex = dylib
            .lookup<NativeFunction<TglMultiDrawElementsBaseVertex_Native>>(
                'glMultiDrawElementsBaseVertex')
            .asFunction();
        this.provokingVertex = dylib
            .lookup<NativeFunction<TglProvokingVertex_Native>>(
                'glProvokingVertex')
            .asFunction();
        this.fenceSync = dylib
            .lookup<NativeFunction<TglFenceSync_Native>>('glFenceSync')
            .asFunction();
        this.isSync = dylib
            .lookup<NativeFunction<TglIsSync_Native>>('glIsSync')
            .asFunction();
        this.deleteSync = dylib
            .lookup<NativeFunction<TglDeleteSync_Native>>('glDeleteSync')
            .asFunction();
        this.clientWaitSync = dylib
            .lookup<NativeFunction<TglClientWaitSync_Native>>(
                'glClientWaitSync')
            .asFunction();
        this.waitSync = dylib
            .lookup<NativeFunction<TglWaitSync_Native>>('glWaitSync')
            .asFunction();
        this.getInteger64v = dylib
            .lookup<NativeFunction<TglGetInteger64v_Native>>('glGetInteger64v')
            .asFunction();
        this.getSynciv = dylib
            .lookup<NativeFunction<TglGetSynciv_Native>>('glGetSynciv')
            .asFunction();
        this.getInteger64i_v = dylib
            .lookup<NativeFunction<TglGetInteger64i_v_Native>>(
                'glGetInteger64i_v')
            .asFunction();
        this.getBufferParameteri64v = dylib
            .lookup<NativeFunction<TglGetBufferParameteri64v_Native>>(
                'glGetBufferParameteri64v')
            .asFunction();
        this.framebufferTexture = dylib
            .lookup<NativeFunction<TglFramebufferTexture_Native>>(
                'glFramebufferTexture')
            .asFunction();
        this.texImage2DMultisample = dylib
            .lookup<NativeFunction<TglTexImage2DMultisample_Native>>(
                'glTexImage2DMultisample')
            .asFunction();
        this.texImage3DMultisample = dylib
            .lookup<NativeFunction<TglTexImage3DMultisample_Native>>(
                'glTexImage3DMultisample')
            .asFunction();
        this.getMultisamplefv = dylib
            .lookup<NativeFunction<TglGetMultisamplefv_Native>>(
                'glGetMultisamplefv')
            .asFunction();
        this.sampleMaski = dylib
            .lookup<NativeFunction<TglSampleMaski_Native>>('glSampleMaski')
            .asFunction();
      }
    }

    /* GL_VERSION_3_3 */
    if (version.index >= GlVersion.GL_VERSION_3_3.index) {
      if (Platform.isWindows) {
        this.bindFragDataLocationIndexed =
            wglGetProcAddress(Utf8.toUtf8("glBindFragDataLocationIndexed"))
                .cast<NativeFunction<TglBindFragDataLocationIndexed_Native>>()
                .asFunction();
        this.getFragDataIndex =
            wglGetProcAddress(Utf8.toUtf8("glGetFragDataIndex"))
                .cast<NativeFunction<TglGetFragDataIndex_Native>>()
                .asFunction();
        this.genSamplers = wglGetProcAddress(Utf8.toUtf8("glGenSamplers"))
            .cast<NativeFunction<TglGenSamplers_Native>>()
            .asFunction();
        this.deleteSamplers = wglGetProcAddress(Utf8.toUtf8("glDeleteSamplers"))
            .cast<NativeFunction<TglDeleteSamplers_Native>>()
            .asFunction();
        this.isSampler = wglGetProcAddress(Utf8.toUtf8("glIsSampler"))
            .cast<NativeFunction<TglIsSampler_Native>>()
            .asFunction();
        this.bindSampler = wglGetProcAddress(Utf8.toUtf8("glBindSampler"))
            .cast<NativeFunction<TglBindSampler_Native>>()
            .asFunction();
        this.samplerParameteri =
            wglGetProcAddress(Utf8.toUtf8("glSamplerParameteri"))
                .cast<NativeFunction<TglSamplerParameteri_Native>>()
                .asFunction();
        this.samplerParameteriv =
            wglGetProcAddress(Utf8.toUtf8("glSamplerParameteriv"))
                .cast<NativeFunction<TglSamplerParameteriv_Native>>()
                .asFunction();
        this.samplerParameterf =
            wglGetProcAddress(Utf8.toUtf8("glSamplerParameterf"))
                .cast<NativeFunction<TglSamplerParameterf_Native>>()
                .asFunction();
        this.samplerParameterfv =
            wglGetProcAddress(Utf8.toUtf8("glSamplerParameterfv"))
                .cast<NativeFunction<TglSamplerParameterfv_Native>>()
                .asFunction();
        this.samplerParameterIiv =
            wglGetProcAddress(Utf8.toUtf8("glSamplerParameterIiv"))
                .cast<NativeFunction<TglSamplerParameterIiv_Native>>()
                .asFunction();
        this.samplerParameterIuiv =
            wglGetProcAddress(Utf8.toUtf8("glSamplerParameterIuiv"))
                .cast<NativeFunction<TglSamplerParameterIuiv_Native>>()
                .asFunction();
        this.getSamplerParameteriv =
            wglGetProcAddress(Utf8.toUtf8("glGetSamplerParameteriv"))
                .cast<NativeFunction<TglGetSamplerParameteriv_Native>>()
                .asFunction();
        this.getSamplerParameterIiv =
            wglGetProcAddress(Utf8.toUtf8("glGetSamplerParameterIiv"))
                .cast<NativeFunction<TglGetSamplerParameterIiv_Native>>()
                .asFunction();
        this.getSamplerParameterfv =
            wglGetProcAddress(Utf8.toUtf8("glGetSamplerParameterfv"))
                .cast<NativeFunction<TglGetSamplerParameterfv_Native>>()
                .asFunction();
        this.getSamplerParameterIuiv =
            wglGetProcAddress(Utf8.toUtf8("glGetSamplerParameterIuiv"))
                .cast<NativeFunction<TglGetSamplerParameterIuiv_Native>>()
                .asFunction();
        this.queryCounter = wglGetProcAddress(Utf8.toUtf8("glQueryCounter"))
            .cast<NativeFunction<TglQueryCounter_Native>>()
            .asFunction();
        this.getQueryObjecti64v =
            wglGetProcAddress(Utf8.toUtf8("glGetQueryObjecti64v"))
                .cast<NativeFunction<TglGetQueryObjecti64v_Native>>()
                .asFunction();
        this.getQueryObjectui64v =
            wglGetProcAddress(Utf8.toUtf8("glGetQueryObjectui64v"))
                .cast<NativeFunction<TglGetQueryObjectui64v_Native>>()
                .asFunction();
        this.vertexAttribDivisor =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribDivisor"))
                .cast<NativeFunction<TglVertexAttribDivisor_Native>>()
                .asFunction();
        this.vertexAttribP1ui =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribP1ui"))
                .cast<NativeFunction<TglVertexAttribP1ui_Native>>()
                .asFunction();
        this.vertexAttribP1uiv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribP1uiv"))
                .cast<NativeFunction<TglVertexAttribP1uiv_Native>>()
                .asFunction();
        this.vertexAttribP2ui =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribP2ui"))
                .cast<NativeFunction<TglVertexAttribP2ui_Native>>()
                .asFunction();
        this.vertexAttribP2uiv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribP2uiv"))
                .cast<NativeFunction<TglVertexAttribP2uiv_Native>>()
                .asFunction();
        this.vertexAttribP3ui =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribP3ui"))
                .cast<NativeFunction<TglVertexAttribP3ui_Native>>()
                .asFunction();
        this.vertexAttribP3uiv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribP3uiv"))
                .cast<NativeFunction<TglVertexAttribP3uiv_Native>>()
                .asFunction();
        this.vertexAttribP4ui =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribP4ui"))
                .cast<NativeFunction<TglVertexAttribP4ui_Native>>()
                .asFunction();
        this.vertexAttribP4uiv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribP4uiv"))
                .cast<NativeFunction<TglVertexAttribP4uiv_Native>>()
                .asFunction();
        this.vertexP2ui = wglGetProcAddress(Utf8.toUtf8("glVertexP2ui"))
            .cast<NativeFunction<TglVertexP2ui_Native>>()
            .asFunction();
        this.vertexP2uiv = wglGetProcAddress(Utf8.toUtf8("glVertexP2uiv"))
            .cast<NativeFunction<TglVertexP2uiv_Native>>()
            .asFunction();
        this.vertexP3ui = wglGetProcAddress(Utf8.toUtf8("glVertexP3ui"))
            .cast<NativeFunction<TglVertexP3ui_Native>>()
            .asFunction();
        this.vertexP3uiv = wglGetProcAddress(Utf8.toUtf8("glVertexP3uiv"))
            .cast<NativeFunction<TglVertexP3uiv_Native>>()
            .asFunction();
        this.vertexP4ui = wglGetProcAddress(Utf8.toUtf8("glVertexP4ui"))
            .cast<NativeFunction<TglVertexP4ui_Native>>()
            .asFunction();
        this.vertexP4uiv = wglGetProcAddress(Utf8.toUtf8("glVertexP4uiv"))
            .cast<NativeFunction<TglVertexP4uiv_Native>>()
            .asFunction();
        this.texCoordP1ui = wglGetProcAddress(Utf8.toUtf8("glTexCoordP1ui"))
            .cast<NativeFunction<TglTexCoordP1ui_Native>>()
            .asFunction();
        this.texCoordP1uiv = wglGetProcAddress(Utf8.toUtf8("glTexCoordP1uiv"))
            .cast<NativeFunction<TglTexCoordP1uiv_Native>>()
            .asFunction();
        this.texCoordP2ui = wglGetProcAddress(Utf8.toUtf8("glTexCoordP2ui"))
            .cast<NativeFunction<TglTexCoordP2ui_Native>>()
            .asFunction();
        this.texCoordP2uiv = wglGetProcAddress(Utf8.toUtf8("glTexCoordP2uiv"))
            .cast<NativeFunction<TglTexCoordP2uiv_Native>>()
            .asFunction();
        this.texCoordP3ui = wglGetProcAddress(Utf8.toUtf8("glTexCoordP3ui"))
            .cast<NativeFunction<TglTexCoordP3ui_Native>>()
            .asFunction();
        this.texCoordP3uiv = wglGetProcAddress(Utf8.toUtf8("glTexCoordP3uiv"))
            .cast<NativeFunction<TglTexCoordP3uiv_Native>>()
            .asFunction();
        this.texCoordP4ui = wglGetProcAddress(Utf8.toUtf8("glTexCoordP4ui"))
            .cast<NativeFunction<TglTexCoordP4ui_Native>>()
            .asFunction();
        this.texCoordP4uiv = wglGetProcAddress(Utf8.toUtf8("glTexCoordP4uiv"))
            .cast<NativeFunction<TglTexCoordP4uiv_Native>>()
            .asFunction();
        this.multiTexCoordP1ui =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoordP1ui"))
                .cast<NativeFunction<TglMultiTexCoordP1ui_Native>>()
                .asFunction();
        this.multiTexCoordP1uiv =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoordP1uiv"))
                .cast<NativeFunction<TglMultiTexCoordP1uiv_Native>>()
                .asFunction();
        this.multiTexCoordP2ui =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoordP2ui"))
                .cast<NativeFunction<TglMultiTexCoordP2ui_Native>>()
                .asFunction();
        this.multiTexCoordP2uiv =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoordP2uiv"))
                .cast<NativeFunction<TglMultiTexCoordP2uiv_Native>>()
                .asFunction();
        this.multiTexCoordP3ui =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoordP3ui"))
                .cast<NativeFunction<TglMultiTexCoordP3ui_Native>>()
                .asFunction();
        this.multiTexCoordP3uiv =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoordP3uiv"))
                .cast<NativeFunction<TglMultiTexCoordP3uiv_Native>>()
                .asFunction();
        this.multiTexCoordP4ui =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoordP4ui"))
                .cast<NativeFunction<TglMultiTexCoordP4ui_Native>>()
                .asFunction();
        this.multiTexCoordP4uiv =
            wglGetProcAddress(Utf8.toUtf8("glMultiTexCoordP4uiv"))
                .cast<NativeFunction<TglMultiTexCoordP4uiv_Native>>()
                .asFunction();
        this.normalP3ui = wglGetProcAddress(Utf8.toUtf8("glNormalP3ui"))
            .cast<NativeFunction<TglNormalP3ui_Native>>()
            .asFunction();
        this.normalP3uiv = wglGetProcAddress(Utf8.toUtf8("glNormalP3uiv"))
            .cast<NativeFunction<TglNormalP3uiv_Native>>()
            .asFunction();
        this.colorP3ui = wglGetProcAddress(Utf8.toUtf8("glColorP3ui"))
            .cast<NativeFunction<TglColorP3ui_Native>>()
            .asFunction();
        this.colorP3uiv = wglGetProcAddress(Utf8.toUtf8("glColorP3uiv"))
            .cast<NativeFunction<TglColorP3uiv_Native>>()
            .asFunction();
        this.colorP4ui = wglGetProcAddress(Utf8.toUtf8("glColorP4ui"))
            .cast<NativeFunction<TglColorP4ui_Native>>()
            .asFunction();
        this.colorP4uiv = wglGetProcAddress(Utf8.toUtf8("glColorP4uiv"))
            .cast<NativeFunction<TglColorP4uiv_Native>>()
            .asFunction();
        this.secondaryColorP3ui =
            wglGetProcAddress(Utf8.toUtf8("glSecondaryColorP3ui"))
                .cast<NativeFunction<TglSecondaryColorP3ui_Native>>()
                .asFunction();
        this.secondaryColorP3uiv =
            wglGetProcAddress(Utf8.toUtf8("glSecondaryColorP3uiv"))
                .cast<NativeFunction<TglSecondaryColorP3uiv_Native>>()
                .asFunction();
      } else {
        this.bindFragDataLocationIndexed = dylib
            .lookup<NativeFunction<TglBindFragDataLocationIndexed_Native>>(
                'glBindFragDataLocationIndexed')
            .asFunction();
        this.getFragDataIndex = dylib
            .lookup<NativeFunction<TglGetFragDataIndex_Native>>(
                'glGetFragDataIndex')
            .asFunction();
        this.genSamplers = dylib
            .lookup<NativeFunction<TglGenSamplers_Native>>('glGenSamplers')
            .asFunction();
        this.deleteSamplers = dylib
            .lookup<NativeFunction<TglDeleteSamplers_Native>>(
                'glDeleteSamplers')
            .asFunction();
        this.isSampler = dylib
            .lookup<NativeFunction<TglIsSampler_Native>>('glIsSampler')
            .asFunction();
        this.bindSampler = dylib
            .lookup<NativeFunction<TglBindSampler_Native>>('glBindSampler')
            .asFunction();
        this.samplerParameteri = dylib
            .lookup<NativeFunction<TglSamplerParameteri_Native>>(
                'glSamplerParameteri')
            .asFunction();
        this.samplerParameteriv = dylib
            .lookup<NativeFunction<TglSamplerParameteriv_Native>>(
                'glSamplerParameteriv')
            .asFunction();
        this.samplerParameterf = dylib
            .lookup<NativeFunction<TglSamplerParameterf_Native>>(
                'glSamplerParameterf')
            .asFunction();
        this.samplerParameterfv = dylib
            .lookup<NativeFunction<TglSamplerParameterfv_Native>>(
                'glSamplerParameterfv')
            .asFunction();
        this.samplerParameterIiv = dylib
            .lookup<NativeFunction<TglSamplerParameterIiv_Native>>(
                'glSamplerParameterIiv')
            .asFunction();
        this.samplerParameterIuiv = dylib
            .lookup<NativeFunction<TglSamplerParameterIuiv_Native>>(
                'glSamplerParameterIuiv')
            .asFunction();
        this.getSamplerParameteriv = dylib
            .lookup<NativeFunction<TglGetSamplerParameteriv_Native>>(
                'glGetSamplerParameteriv')
            .asFunction();
        this.getSamplerParameterIiv = dylib
            .lookup<NativeFunction<TglGetSamplerParameterIiv_Native>>(
                'glGetSamplerParameterIiv')
            .asFunction();
        this.getSamplerParameterfv = dylib
            .lookup<NativeFunction<TglGetSamplerParameterfv_Native>>(
                'glGetSamplerParameterfv')
            .asFunction();
        this.getSamplerParameterIuiv = dylib
            .lookup<NativeFunction<TglGetSamplerParameterIuiv_Native>>(
                'glGetSamplerParameterIuiv')
            .asFunction();
        this.queryCounter = dylib
            .lookup<NativeFunction<TglQueryCounter_Native>>('glQueryCounter')
            .asFunction();
        this.getQueryObjecti64v = dylib
            .lookup<NativeFunction<TglGetQueryObjecti64v_Native>>(
                'glGetQueryObjecti64v')
            .asFunction();
        this.getQueryObjectui64v = dylib
            .lookup<NativeFunction<TglGetQueryObjectui64v_Native>>(
                'glGetQueryObjectui64v')
            .asFunction();
        this.vertexAttribDivisor = dylib
            .lookup<NativeFunction<TglVertexAttribDivisor_Native>>(
                'glVertexAttribDivisor')
            .asFunction();
        this.vertexAttribP1ui = dylib
            .lookup<NativeFunction<TglVertexAttribP1ui_Native>>(
                'glVertexAttribP1ui')
            .asFunction();
        this.vertexAttribP1uiv = dylib
            .lookup<NativeFunction<TglVertexAttribP1uiv_Native>>(
                'glVertexAttribP1uiv')
            .asFunction();
        this.vertexAttribP2ui = dylib
            .lookup<NativeFunction<TglVertexAttribP2ui_Native>>(
                'glVertexAttribP2ui')
            .asFunction();
        this.vertexAttribP2uiv = dylib
            .lookup<NativeFunction<TglVertexAttribP2uiv_Native>>(
                'glVertexAttribP2uiv')
            .asFunction();
        this.vertexAttribP3ui = dylib
            .lookup<NativeFunction<TglVertexAttribP3ui_Native>>(
                'glVertexAttribP3ui')
            .asFunction();
        this.vertexAttribP3uiv = dylib
            .lookup<NativeFunction<TglVertexAttribP3uiv_Native>>(
                'glVertexAttribP3uiv')
            .asFunction();
        this.vertexAttribP4ui = dylib
            .lookup<NativeFunction<TglVertexAttribP4ui_Native>>(
                'glVertexAttribP4ui')
            .asFunction();
        this.vertexAttribP4uiv = dylib
            .lookup<NativeFunction<TglVertexAttribP4uiv_Native>>(
                'glVertexAttribP4uiv')
            .asFunction();
        this.vertexP2ui = dylib
            .lookup<NativeFunction<TglVertexP2ui_Native>>('glVertexP2ui')
            .asFunction();
        this.vertexP2uiv = dylib
            .lookup<NativeFunction<TglVertexP2uiv_Native>>('glVertexP2uiv')
            .asFunction();
        this.vertexP3ui = dylib
            .lookup<NativeFunction<TglVertexP3ui_Native>>('glVertexP3ui')
            .asFunction();
        this.vertexP3uiv = dylib
            .lookup<NativeFunction<TglVertexP3uiv_Native>>('glVertexP3uiv')
            .asFunction();
        this.vertexP4ui = dylib
            .lookup<NativeFunction<TglVertexP4ui_Native>>('glVertexP4ui')
            .asFunction();
        this.vertexP4uiv = dylib
            .lookup<NativeFunction<TglVertexP4uiv_Native>>('glVertexP4uiv')
            .asFunction();
        this.texCoordP1ui = dylib
            .lookup<NativeFunction<TglTexCoordP1ui_Native>>('glTexCoordP1ui')
            .asFunction();
        this.texCoordP1uiv = dylib
            .lookup<NativeFunction<TglTexCoordP1uiv_Native>>('glTexCoordP1uiv')
            .asFunction();
        this.texCoordP2ui = dylib
            .lookup<NativeFunction<TglTexCoordP2ui_Native>>('glTexCoordP2ui')
            .asFunction();
        this.texCoordP2uiv = dylib
            .lookup<NativeFunction<TglTexCoordP2uiv_Native>>('glTexCoordP2uiv')
            .asFunction();
        this.texCoordP3ui = dylib
            .lookup<NativeFunction<TglTexCoordP3ui_Native>>('glTexCoordP3ui')
            .asFunction();
        this.texCoordP3uiv = dylib
            .lookup<NativeFunction<TglTexCoordP3uiv_Native>>('glTexCoordP3uiv')
            .asFunction();
        this.texCoordP4ui = dylib
            .lookup<NativeFunction<TglTexCoordP4ui_Native>>('glTexCoordP4ui')
            .asFunction();
        this.texCoordP4uiv = dylib
            .lookup<NativeFunction<TglTexCoordP4uiv_Native>>('glTexCoordP4uiv')
            .asFunction();
        this.multiTexCoordP1ui = dylib
            .lookup<NativeFunction<TglMultiTexCoordP1ui_Native>>(
                'glMultiTexCoordP1ui')
            .asFunction();
        this.multiTexCoordP1uiv = dylib
            .lookup<NativeFunction<TglMultiTexCoordP1uiv_Native>>(
                'glMultiTexCoordP1uiv')
            .asFunction();
        this.multiTexCoordP2ui = dylib
            .lookup<NativeFunction<TglMultiTexCoordP2ui_Native>>(
                'glMultiTexCoordP2ui')
            .asFunction();
        this.multiTexCoordP2uiv = dylib
            .lookup<NativeFunction<TglMultiTexCoordP2uiv_Native>>(
                'glMultiTexCoordP2uiv')
            .asFunction();
        this.multiTexCoordP3ui = dylib
            .lookup<NativeFunction<TglMultiTexCoordP3ui_Native>>(
                'glMultiTexCoordP3ui')
            .asFunction();
        this.multiTexCoordP3uiv = dylib
            .lookup<NativeFunction<TglMultiTexCoordP3uiv_Native>>(
                'glMultiTexCoordP3uiv')
            .asFunction();
        this.multiTexCoordP4ui = dylib
            .lookup<NativeFunction<TglMultiTexCoordP4ui_Native>>(
                'glMultiTexCoordP4ui')
            .asFunction();
        this.multiTexCoordP4uiv = dylib
            .lookup<NativeFunction<TglMultiTexCoordP4uiv_Native>>(
                'glMultiTexCoordP4uiv')
            .asFunction();
        this.normalP3ui = dylib
            .lookup<NativeFunction<TglNormalP3ui_Native>>('glNormalP3ui')
            .asFunction();
        this.normalP3uiv = dylib
            .lookup<NativeFunction<TglNormalP3uiv_Native>>('glNormalP3uiv')
            .asFunction();
        this.colorP3ui = dylib
            .lookup<NativeFunction<TglColorP3ui_Native>>('glColorP3ui')
            .asFunction();
        this.colorP3uiv = dylib
            .lookup<NativeFunction<TglColorP3uiv_Native>>('glColorP3uiv')
            .asFunction();
        this.colorP4ui = dylib
            .lookup<NativeFunction<TglColorP4ui_Native>>('glColorP4ui')
            .asFunction();
        this.colorP4uiv = dylib
            .lookup<NativeFunction<TglColorP4uiv_Native>>('glColorP4uiv')
            .asFunction();
        this.secondaryColorP3ui = dylib
            .lookup<NativeFunction<TglSecondaryColorP3ui_Native>>(
                'glSecondaryColorP3ui')
            .asFunction();
        this.secondaryColorP3uiv = dylib
            .lookup<NativeFunction<TglSecondaryColorP3uiv_Native>>(
                'glSecondaryColorP3uiv')
            .asFunction();
      }
    }

    /* GL_VERSION_4_0 */
    if (version.index >= GlVersion.GL_VERSION_4_0.index) {
      if (Platform.isWindows) {
        this.minSampleShading =
            wglGetProcAddress(Utf8.toUtf8("glMinSampleShading"))
                .cast<NativeFunction<TglMinSampleShading_Native>>()
                .asFunction();
        this.blendEquationi = wglGetProcAddress(Utf8.toUtf8("glBlendEquationi"))
            .cast<NativeFunction<TglBlendEquationi_Native>>()
            .asFunction();
        this.blendEquationSeparatei =
            wglGetProcAddress(Utf8.toUtf8("glBlendEquationSeparatei"))
                .cast<NativeFunction<TglBlendEquationSeparatei_Native>>()
                .asFunction();
        this.blendFunci = wglGetProcAddress(Utf8.toUtf8("glBlendFunci"))
            .cast<NativeFunction<TglBlendFunci_Native>>()
            .asFunction();
        this.blendFuncSeparatei =
            wglGetProcAddress(Utf8.toUtf8("glBlendFuncSeparatei"))
                .cast<NativeFunction<TglBlendFuncSeparatei_Native>>()
                .asFunction();
        this.drawArraysIndirect =
            wglGetProcAddress(Utf8.toUtf8("glDrawArraysIndirect"))
                .cast<NativeFunction<TglDrawArraysIndirect_Native>>()
                .asFunction();
        this.drawElementsIndirect =
            wglGetProcAddress(Utf8.toUtf8("glDrawElementsIndirect"))
                .cast<NativeFunction<TglDrawElementsIndirect_Native>>()
                .asFunction();
        this.uniform1d = wglGetProcAddress(Utf8.toUtf8("glUniform1d"))
            .cast<NativeFunction<TglUniform1d_Native>>()
            .asFunction();
        this.uniform2d = wglGetProcAddress(Utf8.toUtf8("glUniform2d"))
            .cast<NativeFunction<TglUniform2d_Native>>()
            .asFunction();
        this.uniform3d = wglGetProcAddress(Utf8.toUtf8("glUniform3d"))
            .cast<NativeFunction<TglUniform3d_Native>>()
            .asFunction();
        this.uniform4d = wglGetProcAddress(Utf8.toUtf8("glUniform4d"))
            .cast<NativeFunction<TglUniform4d_Native>>()
            .asFunction();
        this.uniform1dv = wglGetProcAddress(Utf8.toUtf8("glUniform1dv"))
            .cast<NativeFunction<TglUniform1dv_Native>>()
            .asFunction();
        this.uniform2dv = wglGetProcAddress(Utf8.toUtf8("glUniform2dv"))
            .cast<NativeFunction<TglUniform2dv_Native>>()
            .asFunction();
        this.uniform3dv = wglGetProcAddress(Utf8.toUtf8("glUniform3dv"))
            .cast<NativeFunction<TglUniform3dv_Native>>()
            .asFunction();
        this.uniform4dv = wglGetProcAddress(Utf8.toUtf8("glUniform4dv"))
            .cast<NativeFunction<TglUniform4dv_Native>>()
            .asFunction();
        this.uniformMatrix2dv =
            wglGetProcAddress(Utf8.toUtf8("glUniformMatrix2dv"))
                .cast<NativeFunction<TglUniformMatrix2dv_Native>>()
                .asFunction();
        this.uniformMatrix3dv =
            wglGetProcAddress(Utf8.toUtf8("glUniformMatrix3dv"))
                .cast<NativeFunction<TglUniformMatrix3dv_Native>>()
                .asFunction();
        this.uniformMatrix4dv =
            wglGetProcAddress(Utf8.toUtf8("glUniformMatrix4dv"))
                .cast<NativeFunction<TglUniformMatrix4dv_Native>>()
                .asFunction();
        this.uniformMatrix2x3dv =
            wglGetProcAddress(Utf8.toUtf8("glUniformMatrix2x3dv"))
                .cast<NativeFunction<TglUniformMatrix2x3dv_Native>>()
                .asFunction();
        this.uniformMatrix2x4dv =
            wglGetProcAddress(Utf8.toUtf8("glUniformMatrix2x4dv"))
                .cast<NativeFunction<TglUniformMatrix2x4dv_Native>>()
                .asFunction();
        this.uniformMatrix3x2dv =
            wglGetProcAddress(Utf8.toUtf8("glUniformMatrix3x2dv"))
                .cast<NativeFunction<TglUniformMatrix3x2dv_Native>>()
                .asFunction();
        this.uniformMatrix3x4dv =
            wglGetProcAddress(Utf8.toUtf8("glUniformMatrix3x4dv"))
                .cast<NativeFunction<TglUniformMatrix3x4dv_Native>>()
                .asFunction();
        this.uniformMatrix4x2dv =
            wglGetProcAddress(Utf8.toUtf8("glUniformMatrix4x2dv"))
                .cast<NativeFunction<TglUniformMatrix4x2dv_Native>>()
                .asFunction();
        this.uniformMatrix4x3dv =
            wglGetProcAddress(Utf8.toUtf8("glUniformMatrix4x3dv"))
                .cast<NativeFunction<TglUniformMatrix4x3dv_Native>>()
                .asFunction();
        this.getUniformdv = wglGetProcAddress(Utf8.toUtf8("glGetUniformdv"))
            .cast<NativeFunction<TglGetUniformdv_Native>>()
            .asFunction();
        this.getSubroutineUniformLocation =
            wglGetProcAddress(Utf8.toUtf8("glGetSubroutineUniformLocation"))
                .cast<NativeFunction<TglGetSubroutineUniformLocation_Native>>()
                .asFunction();
        this.getSubroutineIndex =
            wglGetProcAddress(Utf8.toUtf8("glGetSubroutineIndex"))
                .cast<NativeFunction<TglGetSubroutineIndex_Native>>()
                .asFunction();
        this.getActiveSubroutineUniformiv =
            wglGetProcAddress(Utf8.toUtf8("glGetActiveSubroutineUniformiv"))
                .cast<NativeFunction<TglGetActiveSubroutineUniformiv_Native>>()
                .asFunction();
        this.getActiveSubroutineUniformName = wglGetProcAddress(
                Utf8.toUtf8("glGetActiveSubroutineUniformName"))
            .cast<NativeFunction<TglGetActiveSubroutineUniformName_Native>>()
            .asFunction();
        this.getActiveSubroutineName =
            wglGetProcAddress(Utf8.toUtf8("glGetActiveSubroutineName"))
                .cast<NativeFunction<TglGetActiveSubroutineName_Native>>()
                .asFunction();
        this.uniformSubroutinesuiv =
            wglGetProcAddress(Utf8.toUtf8("glUniformSubroutinesuiv"))
                .cast<NativeFunction<TglUniformSubroutinesuiv_Native>>()
                .asFunction();
        this.getUniformSubroutineuiv =
            wglGetProcAddress(Utf8.toUtf8("glGetUniformSubroutineuiv"))
                .cast<NativeFunction<TglGetUniformSubroutineuiv_Native>>()
                .asFunction();
        this.getProgramStageiv =
            wglGetProcAddress(Utf8.toUtf8("glGetProgramStageiv"))
                .cast<NativeFunction<TglGetProgramStageiv_Native>>()
                .asFunction();
        this.patchParameteri =
            wglGetProcAddress(Utf8.toUtf8("glPatchParameteri"))
                .cast<NativeFunction<TglPatchParameteri_Native>>()
                .asFunction();
        this.patchParameterfv =
            wglGetProcAddress(Utf8.toUtf8("glPatchParameterfv"))
                .cast<NativeFunction<TglPatchParameterfv_Native>>()
                .asFunction();
        this.bindTransformFeedback =
            wglGetProcAddress(Utf8.toUtf8("glBindTransformFeedback"))
                .cast<NativeFunction<TglBindTransformFeedback_Native>>()
                .asFunction();
        this.deleteTransformFeedbacks =
            wglGetProcAddress(Utf8.toUtf8("glDeleteTransformFeedbacks"))
                .cast<NativeFunction<TglDeleteTransformFeedbacks_Native>>()
                .asFunction();
        this.genTransformFeedbacks =
            wglGetProcAddress(Utf8.toUtf8("glGenTransformFeedbacks"))
                .cast<NativeFunction<TglGenTransformFeedbacks_Native>>()
                .asFunction();
        this.isTransformFeedback =
            wglGetProcAddress(Utf8.toUtf8("glIsTransformFeedback"))
                .cast<NativeFunction<TglIsTransformFeedback_Native>>()
                .asFunction();
        this.pauseTransformFeedback =
            wglGetProcAddress(Utf8.toUtf8("glPauseTransformFeedback"))
                .cast<NativeFunction<TglPauseTransformFeedback_Native>>()
                .asFunction();
        this.resumeTransformFeedback =
            wglGetProcAddress(Utf8.toUtf8("glResumeTransformFeedback"))
                .cast<NativeFunction<TglResumeTransformFeedback_Native>>()
                .asFunction();
        this.drawTransformFeedback =
            wglGetProcAddress(Utf8.toUtf8("glDrawTransformFeedback"))
                .cast<NativeFunction<TglDrawTransformFeedback_Native>>()
                .asFunction();
        this.drawTransformFeedbackStream =
            wglGetProcAddress(Utf8.toUtf8("glDrawTransformFeedbackStream"))
                .cast<NativeFunction<TglDrawTransformFeedbackStream_Native>>()
                .asFunction();
        this.beginQueryIndexed =
            wglGetProcAddress(Utf8.toUtf8("glBeginQueryIndexed"))
                .cast<NativeFunction<TglBeginQueryIndexed_Native>>()
                .asFunction();
        this.endQueryIndexed =
            wglGetProcAddress(Utf8.toUtf8("glEndQueryIndexed"))
                .cast<NativeFunction<TglEndQueryIndexed_Native>>()
                .asFunction();
        this.getQueryIndexediv =
            wglGetProcAddress(Utf8.toUtf8("glGetQueryIndexediv"))
                .cast<NativeFunction<TglGetQueryIndexediv_Native>>()
                .asFunction();
      } else {
        this.minSampleShading = dylib
            .lookup<NativeFunction<TglMinSampleShading_Native>>(
                'glMinSampleShading')
            .asFunction();
        this.blendEquationi = dylib
            .lookup<NativeFunction<TglBlendEquationi_Native>>(
                'glBlendEquationi')
            .asFunction();
        this.blendEquationSeparatei = dylib
            .lookup<NativeFunction<TglBlendEquationSeparatei_Native>>(
                'glBlendEquationSeparatei')
            .asFunction();
        this.blendFunci = dylib
            .lookup<NativeFunction<TglBlendFunci_Native>>('glBlendFunci')
            .asFunction();
        this.blendFuncSeparatei = dylib
            .lookup<NativeFunction<TglBlendFuncSeparatei_Native>>(
                'glBlendFuncSeparatei')
            .asFunction();
        this.drawArraysIndirect = dylib
            .lookup<NativeFunction<TglDrawArraysIndirect_Native>>(
                'glDrawArraysIndirect')
            .asFunction();
        this.drawElementsIndirect = dylib
            .lookup<NativeFunction<TglDrawElementsIndirect_Native>>(
                'glDrawElementsIndirect')
            .asFunction();
        this.uniform1d = dylib
            .lookup<NativeFunction<TglUniform1d_Native>>('glUniform1d')
            .asFunction();
        this.uniform2d = dylib
            .lookup<NativeFunction<TglUniform2d_Native>>('glUniform2d')
            .asFunction();
        this.uniform3d = dylib
            .lookup<NativeFunction<TglUniform3d_Native>>('glUniform3d')
            .asFunction();
        this.uniform4d = dylib
            .lookup<NativeFunction<TglUniform4d_Native>>('glUniform4d')
            .asFunction();
        this.uniform1dv = dylib
            .lookup<NativeFunction<TglUniform1dv_Native>>('glUniform1dv')
            .asFunction();
        this.uniform2dv = dylib
            .lookup<NativeFunction<TglUniform2dv_Native>>('glUniform2dv')
            .asFunction();
        this.uniform3dv = dylib
            .lookup<NativeFunction<TglUniform3dv_Native>>('glUniform3dv')
            .asFunction();
        this.uniform4dv = dylib
            .lookup<NativeFunction<TglUniform4dv_Native>>('glUniform4dv')
            .asFunction();
        this.uniformMatrix2dv = dylib
            .lookup<NativeFunction<TglUniformMatrix2dv_Native>>(
                'glUniformMatrix2dv')
            .asFunction();
        this.uniformMatrix3dv = dylib
            .lookup<NativeFunction<TglUniformMatrix3dv_Native>>(
                'glUniformMatrix3dv')
            .asFunction();
        this.uniformMatrix4dv = dylib
            .lookup<NativeFunction<TglUniformMatrix4dv_Native>>(
                'glUniformMatrix4dv')
            .asFunction();
        this.uniformMatrix2x3dv = dylib
            .lookup<NativeFunction<TglUniformMatrix2x3dv_Native>>(
                'glUniformMatrix2x3dv')
            .asFunction();
        this.uniformMatrix2x4dv = dylib
            .lookup<NativeFunction<TglUniformMatrix2x4dv_Native>>(
                'glUniformMatrix2x4dv')
            .asFunction();
        this.uniformMatrix3x2dv = dylib
            .lookup<NativeFunction<TglUniformMatrix3x2dv_Native>>(
                'glUniformMatrix3x2dv')
            .asFunction();
        this.uniformMatrix3x4dv = dylib
            .lookup<NativeFunction<TglUniformMatrix3x4dv_Native>>(
                'glUniformMatrix3x4dv')
            .asFunction();
        this.uniformMatrix4x2dv = dylib
            .lookup<NativeFunction<TglUniformMatrix4x2dv_Native>>(
                'glUniformMatrix4x2dv')
            .asFunction();
        this.uniformMatrix4x3dv = dylib
            .lookup<NativeFunction<TglUniformMatrix4x3dv_Native>>(
                'glUniformMatrix4x3dv')
            .asFunction();
        this.getUniformdv = dylib
            .lookup<NativeFunction<TglGetUniformdv_Native>>('glGetUniformdv')
            .asFunction();
        this.getSubroutineUniformLocation = dylib
            .lookup<NativeFunction<TglGetSubroutineUniformLocation_Native>>(
                'glGetSubroutineUniformLocation')
            .asFunction();
        this.getSubroutineIndex = dylib
            .lookup<NativeFunction<TglGetSubroutineIndex_Native>>(
                'glGetSubroutineIndex')
            .asFunction();
        this.getActiveSubroutineUniformiv = dylib
            .lookup<NativeFunction<TglGetActiveSubroutineUniformiv_Native>>(
                'glGetActiveSubroutineUniformiv')
            .asFunction();
        this.getActiveSubroutineUniformName = dylib
            .lookup<NativeFunction<TglGetActiveSubroutineUniformName_Native>>(
                'glGetActiveSubroutineUniformName')
            .asFunction();
        this.getActiveSubroutineName = dylib
            .lookup<NativeFunction<TglGetActiveSubroutineName_Native>>(
                'glGetActiveSubroutineName')
            .asFunction();
        this.uniformSubroutinesuiv = dylib
            .lookup<NativeFunction<TglUniformSubroutinesuiv_Native>>(
                'glUniformSubroutinesuiv')
            .asFunction();
        this.getUniformSubroutineuiv = dylib
            .lookup<NativeFunction<TglGetUniformSubroutineuiv_Native>>(
                'glGetUniformSubroutineuiv')
            .asFunction();
        this.getProgramStageiv = dylib
            .lookup<NativeFunction<TglGetProgramStageiv_Native>>(
                'glGetProgramStageiv')
            .asFunction();
        this.patchParameteri = dylib
            .lookup<NativeFunction<TglPatchParameteri_Native>>(
                'glPatchParameteri')
            .asFunction();
        this.patchParameterfv = dylib
            .lookup<NativeFunction<TglPatchParameterfv_Native>>(
                'glPatchParameterfv')
            .asFunction();
        this.bindTransformFeedback = dylib
            .lookup<NativeFunction<TglBindTransformFeedback_Native>>(
                'glBindTransformFeedback')
            .asFunction();
        this.deleteTransformFeedbacks = dylib
            .lookup<NativeFunction<TglDeleteTransformFeedbacks_Native>>(
                'glDeleteTransformFeedbacks')
            .asFunction();
        this.genTransformFeedbacks = dylib
            .lookup<NativeFunction<TglGenTransformFeedbacks_Native>>(
                'glGenTransformFeedbacks')
            .asFunction();
        this.isTransformFeedback = dylib
            .lookup<NativeFunction<TglIsTransformFeedback_Native>>(
                'glIsTransformFeedback')
            .asFunction();
        this.pauseTransformFeedback = dylib
            .lookup<NativeFunction<TglPauseTransformFeedback_Native>>(
                'glPauseTransformFeedback')
            .asFunction();
        this.resumeTransformFeedback = dylib
            .lookup<NativeFunction<TglResumeTransformFeedback_Native>>(
                'glResumeTransformFeedback')
            .asFunction();
        this.drawTransformFeedback = dylib
            .lookup<NativeFunction<TglDrawTransformFeedback_Native>>(
                'glDrawTransformFeedback')
            .asFunction();
        this.drawTransformFeedbackStream = dylib
            .lookup<NativeFunction<TglDrawTransformFeedbackStream_Native>>(
                'glDrawTransformFeedbackStream')
            .asFunction();
        this.beginQueryIndexed = dylib
            .lookup<NativeFunction<TglBeginQueryIndexed_Native>>(
                'glBeginQueryIndexed')
            .asFunction();
        this.endQueryIndexed = dylib
            .lookup<NativeFunction<TglEndQueryIndexed_Native>>(
                'glEndQueryIndexed')
            .asFunction();
        this.getQueryIndexediv = dylib
            .lookup<NativeFunction<TglGetQueryIndexediv_Native>>(
                'glGetQueryIndexediv')
            .asFunction();
      }
    }

    /* GL_VERSION_4_1 */
    if (version.index >= GlVersion.GL_VERSION_4_1.index) {
      if (Platform.isWindows) {
        this.releaseShaderCompiler =
            wglGetProcAddress(Utf8.toUtf8("glReleaseShaderCompiler"))
                .cast<NativeFunction<TglReleaseShaderCompiler_Native>>()
                .asFunction();
        this.shaderBinary = wglGetProcAddress(Utf8.toUtf8("glShaderBinary"))
            .cast<NativeFunction<TglShaderBinary_Native>>()
            .asFunction();
        this.getShaderPrecisionFormat =
            wglGetProcAddress(Utf8.toUtf8("glGetShaderPrecisionFormat"))
                .cast<NativeFunction<TglGetShaderPrecisionFormat_Native>>()
                .asFunction();
        this.depthRangef = wglGetProcAddress(Utf8.toUtf8("glDepthRangef"))
            .cast<NativeFunction<TglDepthRangef_Native>>()
            .asFunction();
        this.clearDepthf = wglGetProcAddress(Utf8.toUtf8("glClearDepthf"))
            .cast<NativeFunction<TglClearDepthf_Native>>()
            .asFunction();
        this.getProgramBinary =
            wglGetProcAddress(Utf8.toUtf8("glGetProgramBinary"))
                .cast<NativeFunction<TglGetProgramBinary_Native>>()
                .asFunction();
        this.programBinary = wglGetProcAddress(Utf8.toUtf8("glProgramBinary"))
            .cast<NativeFunction<TglProgramBinary_Native>>()
            .asFunction();
        this.programParameteri =
            wglGetProcAddress(Utf8.toUtf8("glProgramParameteri"))
                .cast<NativeFunction<TglProgramParameteri_Native>>()
                .asFunction();
        this.useProgramStages =
            wglGetProcAddress(Utf8.toUtf8("glUseProgramStages"))
                .cast<NativeFunction<TglUseProgramStages_Native>>()
                .asFunction();
        this.activeShaderProgram =
            wglGetProcAddress(Utf8.toUtf8("glActiveShaderProgram"))
                .cast<NativeFunction<TglActiveShaderProgram_Native>>()
                .asFunction();
        this.createShaderProgramv =
            wglGetProcAddress(Utf8.toUtf8("glCreateShaderProgramv"))
                .cast<NativeFunction<TglCreateShaderProgramv_Native>>()
                .asFunction();
        this.bindProgramPipeline =
            wglGetProcAddress(Utf8.toUtf8("glBindProgramPipeline"))
                .cast<NativeFunction<TglBindProgramPipeline_Native>>()
                .asFunction();
        this.deleteProgramPipelines =
            wglGetProcAddress(Utf8.toUtf8("glDeleteProgramPipelines"))
                .cast<NativeFunction<TglDeleteProgramPipelines_Native>>()
                .asFunction();
        this.genProgramPipelines =
            wglGetProcAddress(Utf8.toUtf8("glGenProgramPipelines"))
                .cast<NativeFunction<TglGenProgramPipelines_Native>>()
                .asFunction();
        this.isProgramPipeline =
            wglGetProcAddress(Utf8.toUtf8("glIsProgramPipeline"))
                .cast<NativeFunction<TglIsProgramPipeline_Native>>()
                .asFunction();
        this.getProgramPipelineiv =
            wglGetProcAddress(Utf8.toUtf8("glGetProgramPipelineiv"))
                .cast<NativeFunction<TglGetProgramPipelineiv_Native>>()
                .asFunction();
        this.programUniform1i =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniform1i"))
                .cast<NativeFunction<TglProgramUniform1i_Native>>()
                .asFunction();
        this.programUniform1iv =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniform1iv"))
                .cast<NativeFunction<TglProgramUniform1iv_Native>>()
                .asFunction();
        this.programUniform1f =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniform1f"))
                .cast<NativeFunction<TglProgramUniform1f_Native>>()
                .asFunction();
        this.programUniform1fv =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniform1fv"))
                .cast<NativeFunction<TglProgramUniform1fv_Native>>()
                .asFunction();
        this.programUniform1d =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniform1d"))
                .cast<NativeFunction<TglProgramUniform1d_Native>>()
                .asFunction();
        this.programUniform1dv =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniform1dv"))
                .cast<NativeFunction<TglProgramUniform1dv_Native>>()
                .asFunction();
        this.programUniform1ui =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniform1ui"))
                .cast<NativeFunction<TglProgramUniform1ui_Native>>()
                .asFunction();
        this.programUniform1uiv =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniform1uiv"))
                .cast<NativeFunction<TglProgramUniform1uiv_Native>>()
                .asFunction();
        this.programUniform2i =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniform2i"))
                .cast<NativeFunction<TglProgramUniform2i_Native>>()
                .asFunction();
        this.programUniform2iv =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniform2iv"))
                .cast<NativeFunction<TglProgramUniform2iv_Native>>()
                .asFunction();
        this.programUniform2f =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniform2f"))
                .cast<NativeFunction<TglProgramUniform2f_Native>>()
                .asFunction();
        this.programUniform2fv =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniform2fv"))
                .cast<NativeFunction<TglProgramUniform2fv_Native>>()
                .asFunction();
        this.programUniform2d =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniform2d"))
                .cast<NativeFunction<TglProgramUniform2d_Native>>()
                .asFunction();
        this.programUniform2dv =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniform2dv"))
                .cast<NativeFunction<TglProgramUniform2dv_Native>>()
                .asFunction();
        this.programUniform2ui =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniform2ui"))
                .cast<NativeFunction<TglProgramUniform2ui_Native>>()
                .asFunction();
        this.programUniform2uiv =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniform2uiv"))
                .cast<NativeFunction<TglProgramUniform2uiv_Native>>()
                .asFunction();
        this.programUniform3i =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniform3i"))
                .cast<NativeFunction<TglProgramUniform3i_Native>>()
                .asFunction();
        this.programUniform3iv =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniform3iv"))
                .cast<NativeFunction<TglProgramUniform3iv_Native>>()
                .asFunction();
        this.programUniform3f =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniform3f"))
                .cast<NativeFunction<TglProgramUniform3f_Native>>()
                .asFunction();
        this.programUniform3fv =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniform3fv"))
                .cast<NativeFunction<TglProgramUniform3fv_Native>>()
                .asFunction();
        this.programUniform3d =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniform3d"))
                .cast<NativeFunction<TglProgramUniform3d_Native>>()
                .asFunction();
        this.programUniform3dv =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniform3dv"))
                .cast<NativeFunction<TglProgramUniform3dv_Native>>()
                .asFunction();
        this.programUniform3ui =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniform3ui"))
                .cast<NativeFunction<TglProgramUniform3ui_Native>>()
                .asFunction();
        this.programUniform3uiv =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniform3uiv"))
                .cast<NativeFunction<TglProgramUniform3uiv_Native>>()
                .asFunction();
        this.programUniform4i =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniform4i"))
                .cast<NativeFunction<TglProgramUniform4i_Native>>()
                .asFunction();
        this.programUniform4iv =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniform4iv"))
                .cast<NativeFunction<TglProgramUniform4iv_Native>>()
                .asFunction();
        this.programUniform4f =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniform4f"))
                .cast<NativeFunction<TglProgramUniform4f_Native>>()
                .asFunction();
        this.programUniform4fv =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniform4fv"))
                .cast<NativeFunction<TglProgramUniform4fv_Native>>()
                .asFunction();
        this.programUniform4d =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniform4d"))
                .cast<NativeFunction<TglProgramUniform4d_Native>>()
                .asFunction();
        this.programUniform4dv =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniform4dv"))
                .cast<NativeFunction<TglProgramUniform4dv_Native>>()
                .asFunction();
        this.programUniform4ui =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniform4ui"))
                .cast<NativeFunction<TglProgramUniform4ui_Native>>()
                .asFunction();
        this.programUniform4uiv =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniform4uiv"))
                .cast<NativeFunction<TglProgramUniform4uiv_Native>>()
                .asFunction();
        this.programUniformMatrix2fv =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniformMatrix2fv"))
                .cast<NativeFunction<TglProgramUniformMatrix2fv_Native>>()
                .asFunction();
        this.programUniformMatrix3fv =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniformMatrix3fv"))
                .cast<NativeFunction<TglProgramUniformMatrix3fv_Native>>()
                .asFunction();
        this.programUniformMatrix4fv =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniformMatrix4fv"))
                .cast<NativeFunction<TglProgramUniformMatrix4fv_Native>>()
                .asFunction();
        this.programUniformMatrix2dv =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniformMatrix2dv"))
                .cast<NativeFunction<TglProgramUniformMatrix2dv_Native>>()
                .asFunction();
        this.programUniformMatrix3dv =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniformMatrix3dv"))
                .cast<NativeFunction<TglProgramUniformMatrix3dv_Native>>()
                .asFunction();
        this.programUniformMatrix4dv =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniformMatrix4dv"))
                .cast<NativeFunction<TglProgramUniformMatrix4dv_Native>>()
                .asFunction();
        this.programUniformMatrix2x3fv =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniformMatrix2x3fv"))
                .cast<NativeFunction<TglProgramUniformMatrix2x3fv_Native>>()
                .asFunction();
        this.programUniformMatrix3x2fv =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniformMatrix3x2fv"))
                .cast<NativeFunction<TglProgramUniformMatrix3x2fv_Native>>()
                .asFunction();
        this.programUniformMatrix2x4fv =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniformMatrix2x4fv"))
                .cast<NativeFunction<TglProgramUniformMatrix2x4fv_Native>>()
                .asFunction();
        this.programUniformMatrix4x2fv =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniformMatrix4x2fv"))
                .cast<NativeFunction<TglProgramUniformMatrix4x2fv_Native>>()
                .asFunction();
        this.programUniformMatrix3x4fv =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniformMatrix3x4fv"))
                .cast<NativeFunction<TglProgramUniformMatrix3x4fv_Native>>()
                .asFunction();
        this.programUniformMatrix4x3fv =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniformMatrix4x3fv"))
                .cast<NativeFunction<TglProgramUniformMatrix4x3fv_Native>>()
                .asFunction();
        this.programUniformMatrix2x3dv =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniformMatrix2x3dv"))
                .cast<NativeFunction<TglProgramUniformMatrix2x3dv_Native>>()
                .asFunction();
        this.programUniformMatrix3x2dv =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniformMatrix3x2dv"))
                .cast<NativeFunction<TglProgramUniformMatrix3x2dv_Native>>()
                .asFunction();
        this.programUniformMatrix2x4dv =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniformMatrix2x4dv"))
                .cast<NativeFunction<TglProgramUniformMatrix2x4dv_Native>>()
                .asFunction();
        this.programUniformMatrix4x2dv =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniformMatrix4x2dv"))
                .cast<NativeFunction<TglProgramUniformMatrix4x2dv_Native>>()
                .asFunction();
        this.programUniformMatrix3x4dv =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniformMatrix3x4dv"))
                .cast<NativeFunction<TglProgramUniformMatrix3x4dv_Native>>()
                .asFunction();
        this.programUniformMatrix4x3dv =
            wglGetProcAddress(Utf8.toUtf8("glProgramUniformMatrix4x3dv"))
                .cast<NativeFunction<TglProgramUniformMatrix4x3dv_Native>>()
                .asFunction();
        this.validateProgramPipeline =
            wglGetProcAddress(Utf8.toUtf8("glValidateProgramPipeline"))
                .cast<NativeFunction<TglValidateProgramPipeline_Native>>()
                .asFunction();
        this.getProgramPipelineInfoLog =
            wglGetProcAddress(Utf8.toUtf8("glGetProgramPipelineInfoLog"))
                .cast<NativeFunction<TglGetProgramPipelineInfoLog_Native>>()
                .asFunction();
        this.vertexAttribL1d =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribL1d"))
                .cast<NativeFunction<TglVertexAttribL1d_Native>>()
                .asFunction();
        this.vertexAttribL2d =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribL2d"))
                .cast<NativeFunction<TglVertexAttribL2d_Native>>()
                .asFunction();
        this.vertexAttribL3d =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribL3d"))
                .cast<NativeFunction<TglVertexAttribL3d_Native>>()
                .asFunction();
        this.vertexAttribL4d =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribL4d"))
                .cast<NativeFunction<TglVertexAttribL4d_Native>>()
                .asFunction();
        this.vertexAttribL1dv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribL1dv"))
                .cast<NativeFunction<TglVertexAttribL1dv_Native>>()
                .asFunction();
        this.vertexAttribL2dv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribL2dv"))
                .cast<NativeFunction<TglVertexAttribL2dv_Native>>()
                .asFunction();
        this.vertexAttribL3dv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribL3dv"))
                .cast<NativeFunction<TglVertexAttribL3dv_Native>>()
                .asFunction();
        this.vertexAttribL4dv =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribL4dv"))
                .cast<NativeFunction<TglVertexAttribL4dv_Native>>()
                .asFunction();
        this.vertexAttribLPointer =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribLPointer"))
                .cast<NativeFunction<TglVertexAttribLPointer_Native>>()
                .asFunction();
        this.getVertexAttribLdv =
            wglGetProcAddress(Utf8.toUtf8("glGetVertexAttribLdv"))
                .cast<NativeFunction<TglGetVertexAttribLdv_Native>>()
                .asFunction();
        this.viewportArrayv = wglGetProcAddress(Utf8.toUtf8("glViewportArrayv"))
            .cast<NativeFunction<TglViewportArrayv_Native>>()
            .asFunction();
        this.viewportIndexedf =
            wglGetProcAddress(Utf8.toUtf8("glViewportIndexedf"))
                .cast<NativeFunction<TglViewportIndexedf_Native>>()
                .asFunction();
        this.viewportIndexedfv =
            wglGetProcAddress(Utf8.toUtf8("glViewportIndexedfv"))
                .cast<NativeFunction<TglViewportIndexedfv_Native>>()
                .asFunction();
        this.scissorArrayv = wglGetProcAddress(Utf8.toUtf8("glScissorArrayv"))
            .cast<NativeFunction<TglScissorArrayv_Native>>()
            .asFunction();
        this.scissorIndexed = wglGetProcAddress(Utf8.toUtf8("glScissorIndexed"))
            .cast<NativeFunction<TglScissorIndexed_Native>>()
            .asFunction();
        this.scissorIndexedv =
            wglGetProcAddress(Utf8.toUtf8("glScissorIndexedv"))
                .cast<NativeFunction<TglScissorIndexedv_Native>>()
                .asFunction();
        this.depthRangeArrayv =
            wglGetProcAddress(Utf8.toUtf8("glDepthRangeArrayv"))
                .cast<NativeFunction<TglDepthRangeArrayv_Native>>()
                .asFunction();
        this.depthRangeIndexed =
            wglGetProcAddress(Utf8.toUtf8("glDepthRangeIndexed"))
                .cast<NativeFunction<TglDepthRangeIndexed_Native>>()
                .asFunction();
        this.getFloati_v = wglGetProcAddress(Utf8.toUtf8("glGetFloati_v"))
            .cast<NativeFunction<TglGetFloati_v_Native>>()
            .asFunction();
        this.getDoublei_v = wglGetProcAddress(Utf8.toUtf8("glGetDoublei_v"))
            .cast<NativeFunction<TglGetDoublei_v_Native>>()
            .asFunction();
      } else {
        this.releaseShaderCompiler = dylib
            .lookup<NativeFunction<TglReleaseShaderCompiler_Native>>(
                'glReleaseShaderCompiler')
            .asFunction();
        this.shaderBinary = dylib
            .lookup<NativeFunction<TglShaderBinary_Native>>('glShaderBinary')
            .asFunction();
        this.getShaderPrecisionFormat = dylib
            .lookup<NativeFunction<TglGetShaderPrecisionFormat_Native>>(
                'glGetShaderPrecisionFormat')
            .asFunction();
        this.depthRangef = dylib
            .lookup<NativeFunction<TglDepthRangef_Native>>('glDepthRangef')
            .asFunction();
        this.clearDepthf = dylib
            .lookup<NativeFunction<TglClearDepthf_Native>>('glClearDepthf')
            .asFunction();
        this.getProgramBinary = dylib
            .lookup<NativeFunction<TglGetProgramBinary_Native>>(
                'glGetProgramBinary')
            .asFunction();
        this.programBinary = dylib
            .lookup<NativeFunction<TglProgramBinary_Native>>('glProgramBinary')
            .asFunction();
        this.programParameteri = dylib
            .lookup<NativeFunction<TglProgramParameteri_Native>>(
                'glProgramParameteri')
            .asFunction();
        this.useProgramStages = dylib
            .lookup<NativeFunction<TglUseProgramStages_Native>>(
                'glUseProgramStages')
            .asFunction();
        this.activeShaderProgram = dylib
            .lookup<NativeFunction<TglActiveShaderProgram_Native>>(
                'glActiveShaderProgram')
            .asFunction();
        this.createShaderProgramv = dylib
            .lookup<NativeFunction<TglCreateShaderProgramv_Native>>(
                'glCreateShaderProgramv')
            .asFunction();
        this.bindProgramPipeline = dylib
            .lookup<NativeFunction<TglBindProgramPipeline_Native>>(
                'glBindProgramPipeline')
            .asFunction();
        this.deleteProgramPipelines = dylib
            .lookup<NativeFunction<TglDeleteProgramPipelines_Native>>(
                'glDeleteProgramPipelines')
            .asFunction();
        this.genProgramPipelines = dylib
            .lookup<NativeFunction<TglGenProgramPipelines_Native>>(
                'glGenProgramPipelines')
            .asFunction();
        this.isProgramPipeline = dylib
            .lookup<NativeFunction<TglIsProgramPipeline_Native>>(
                'glIsProgramPipeline')
            .asFunction();
        this.getProgramPipelineiv = dylib
            .lookup<NativeFunction<TglGetProgramPipelineiv_Native>>(
                'glGetProgramPipelineiv')
            .asFunction();
        this.programUniform1i = dylib
            .lookup<NativeFunction<TglProgramUniform1i_Native>>(
                'glProgramUniform1i')
            .asFunction();
        this.programUniform1iv = dylib
            .lookup<NativeFunction<TglProgramUniform1iv_Native>>(
                'glProgramUniform1iv')
            .asFunction();
        this.programUniform1f = dylib
            .lookup<NativeFunction<TglProgramUniform1f_Native>>(
                'glProgramUniform1f')
            .asFunction();
        this.programUniform1fv = dylib
            .lookup<NativeFunction<TglProgramUniform1fv_Native>>(
                'glProgramUniform1fv')
            .asFunction();
        this.programUniform1d = dylib
            .lookup<NativeFunction<TglProgramUniform1d_Native>>(
                'glProgramUniform1d')
            .asFunction();
        this.programUniform1dv = dylib
            .lookup<NativeFunction<TglProgramUniform1dv_Native>>(
                'glProgramUniform1dv')
            .asFunction();
        this.programUniform1ui = dylib
            .lookup<NativeFunction<TglProgramUniform1ui_Native>>(
                'glProgramUniform1ui')
            .asFunction();
        this.programUniform1uiv = dylib
            .lookup<NativeFunction<TglProgramUniform1uiv_Native>>(
                'glProgramUniform1uiv')
            .asFunction();
        this.programUniform2i = dylib
            .lookup<NativeFunction<TglProgramUniform2i_Native>>(
                'glProgramUniform2i')
            .asFunction();
        this.programUniform2iv = dylib
            .lookup<NativeFunction<TglProgramUniform2iv_Native>>(
                'glProgramUniform2iv')
            .asFunction();
        this.programUniform2f = dylib
            .lookup<NativeFunction<TglProgramUniform2f_Native>>(
                'glProgramUniform2f')
            .asFunction();
        this.programUniform2fv = dylib
            .lookup<NativeFunction<TglProgramUniform2fv_Native>>(
                'glProgramUniform2fv')
            .asFunction();
        this.programUniform2d = dylib
            .lookup<NativeFunction<TglProgramUniform2d_Native>>(
                'glProgramUniform2d')
            .asFunction();
        this.programUniform2dv = dylib
            .lookup<NativeFunction<TglProgramUniform2dv_Native>>(
                'glProgramUniform2dv')
            .asFunction();
        this.programUniform2ui = dylib
            .lookup<NativeFunction<TglProgramUniform2ui_Native>>(
                'glProgramUniform2ui')
            .asFunction();
        this.programUniform2uiv = dylib
            .lookup<NativeFunction<TglProgramUniform2uiv_Native>>(
                'glProgramUniform2uiv')
            .asFunction();
        this.programUniform3i = dylib
            .lookup<NativeFunction<TglProgramUniform3i_Native>>(
                'glProgramUniform3i')
            .asFunction();
        this.programUniform3iv = dylib
            .lookup<NativeFunction<TglProgramUniform3iv_Native>>(
                'glProgramUniform3iv')
            .asFunction();
        this.programUniform3f = dylib
            .lookup<NativeFunction<TglProgramUniform3f_Native>>(
                'glProgramUniform3f')
            .asFunction();
        this.programUniform3fv = dylib
            .lookup<NativeFunction<TglProgramUniform3fv_Native>>(
                'glProgramUniform3fv')
            .asFunction();
        this.programUniform3d = dylib
            .lookup<NativeFunction<TglProgramUniform3d_Native>>(
                'glProgramUniform3d')
            .asFunction();
        this.programUniform3dv = dylib
            .lookup<NativeFunction<TglProgramUniform3dv_Native>>(
                'glProgramUniform3dv')
            .asFunction();
        this.programUniform3ui = dylib
            .lookup<NativeFunction<TglProgramUniform3ui_Native>>(
                'glProgramUniform3ui')
            .asFunction();
        this.programUniform3uiv = dylib
            .lookup<NativeFunction<TglProgramUniform3uiv_Native>>(
                'glProgramUniform3uiv')
            .asFunction();
        this.programUniform4i = dylib
            .lookup<NativeFunction<TglProgramUniform4i_Native>>(
                'glProgramUniform4i')
            .asFunction();
        this.programUniform4iv = dylib
            .lookup<NativeFunction<TglProgramUniform4iv_Native>>(
                'glProgramUniform4iv')
            .asFunction();
        this.programUniform4f = dylib
            .lookup<NativeFunction<TglProgramUniform4f_Native>>(
                'glProgramUniform4f')
            .asFunction();
        this.programUniform4fv = dylib
            .lookup<NativeFunction<TglProgramUniform4fv_Native>>(
                'glProgramUniform4fv')
            .asFunction();
        this.programUniform4d = dylib
            .lookup<NativeFunction<TglProgramUniform4d_Native>>(
                'glProgramUniform4d')
            .asFunction();
        this.programUniform4dv = dylib
            .lookup<NativeFunction<TglProgramUniform4dv_Native>>(
                'glProgramUniform4dv')
            .asFunction();
        this.programUniform4ui = dylib
            .lookup<NativeFunction<TglProgramUniform4ui_Native>>(
                'glProgramUniform4ui')
            .asFunction();
        this.programUniform4uiv = dylib
            .lookup<NativeFunction<TglProgramUniform4uiv_Native>>(
                'glProgramUniform4uiv')
            .asFunction();
        this.programUniformMatrix2fv = dylib
            .lookup<NativeFunction<TglProgramUniformMatrix2fv_Native>>(
                'glProgramUniformMatrix2fv')
            .asFunction();
        this.programUniformMatrix3fv = dylib
            .lookup<NativeFunction<TglProgramUniformMatrix3fv_Native>>(
                'glProgramUniformMatrix3fv')
            .asFunction();
        this.programUniformMatrix4fv = dylib
            .lookup<NativeFunction<TglProgramUniformMatrix4fv_Native>>(
                'glProgramUniformMatrix4fv')
            .asFunction();
        this.programUniformMatrix2dv = dylib
            .lookup<NativeFunction<TglProgramUniformMatrix2dv_Native>>(
                'glProgramUniformMatrix2dv')
            .asFunction();
        this.programUniformMatrix3dv = dylib
            .lookup<NativeFunction<TglProgramUniformMatrix3dv_Native>>(
                'glProgramUniformMatrix3dv')
            .asFunction();
        this.programUniformMatrix4dv = dylib
            .lookup<NativeFunction<TglProgramUniformMatrix4dv_Native>>(
                'glProgramUniformMatrix4dv')
            .asFunction();
        this.programUniformMatrix2x3fv = dylib
            .lookup<NativeFunction<TglProgramUniformMatrix2x3fv_Native>>(
                'glProgramUniformMatrix2x3fv')
            .asFunction();
        this.programUniformMatrix3x2fv = dylib
            .lookup<NativeFunction<TglProgramUniformMatrix3x2fv_Native>>(
                'glProgramUniformMatrix3x2fv')
            .asFunction();
        this.programUniformMatrix2x4fv = dylib
            .lookup<NativeFunction<TglProgramUniformMatrix2x4fv_Native>>(
                'glProgramUniformMatrix2x4fv')
            .asFunction();
        this.programUniformMatrix4x2fv = dylib
            .lookup<NativeFunction<TglProgramUniformMatrix4x2fv_Native>>(
                'glProgramUniformMatrix4x2fv')
            .asFunction();
        this.programUniformMatrix3x4fv = dylib
            .lookup<NativeFunction<TglProgramUniformMatrix3x4fv_Native>>(
                'glProgramUniformMatrix3x4fv')
            .asFunction();
        this.programUniformMatrix4x3fv = dylib
            .lookup<NativeFunction<TglProgramUniformMatrix4x3fv_Native>>(
                'glProgramUniformMatrix4x3fv')
            .asFunction();
        this.programUniformMatrix2x3dv = dylib
            .lookup<NativeFunction<TglProgramUniformMatrix2x3dv_Native>>(
                'glProgramUniformMatrix2x3dv')
            .asFunction();
        this.programUniformMatrix3x2dv = dylib
            .lookup<NativeFunction<TglProgramUniformMatrix3x2dv_Native>>(
                'glProgramUniformMatrix3x2dv')
            .asFunction();
        this.programUniformMatrix2x4dv = dylib
            .lookup<NativeFunction<TglProgramUniformMatrix2x4dv_Native>>(
                'glProgramUniformMatrix2x4dv')
            .asFunction();
        this.programUniformMatrix4x2dv = dylib
            .lookup<NativeFunction<TglProgramUniformMatrix4x2dv_Native>>(
                'glProgramUniformMatrix4x2dv')
            .asFunction();
        this.programUniformMatrix3x4dv = dylib
            .lookup<NativeFunction<TglProgramUniformMatrix3x4dv_Native>>(
                'glProgramUniformMatrix3x4dv')
            .asFunction();
        this.programUniformMatrix4x3dv = dylib
            .lookup<NativeFunction<TglProgramUniformMatrix4x3dv_Native>>(
                'glProgramUniformMatrix4x3dv')
            .asFunction();
        this.validateProgramPipeline = dylib
            .lookup<NativeFunction<TglValidateProgramPipeline_Native>>(
                'glValidateProgramPipeline')
            .asFunction();
        this.getProgramPipelineInfoLog = dylib
            .lookup<NativeFunction<TglGetProgramPipelineInfoLog_Native>>(
                'glGetProgramPipelineInfoLog')
            .asFunction();
        this.vertexAttribL1d = dylib
            .lookup<NativeFunction<TglVertexAttribL1d_Native>>(
                'glVertexAttribL1d')
            .asFunction();
        this.vertexAttribL2d = dylib
            .lookup<NativeFunction<TglVertexAttribL2d_Native>>(
                'glVertexAttribL2d')
            .asFunction();
        this.vertexAttribL3d = dylib
            .lookup<NativeFunction<TglVertexAttribL3d_Native>>(
                'glVertexAttribL3d')
            .asFunction();
        this.vertexAttribL4d = dylib
            .lookup<NativeFunction<TglVertexAttribL4d_Native>>(
                'glVertexAttribL4d')
            .asFunction();
        this.vertexAttribL1dv = dylib
            .lookup<NativeFunction<TglVertexAttribL1dv_Native>>(
                'glVertexAttribL1dv')
            .asFunction();
        this.vertexAttribL2dv = dylib
            .lookup<NativeFunction<TglVertexAttribL2dv_Native>>(
                'glVertexAttribL2dv')
            .asFunction();
        this.vertexAttribL3dv = dylib
            .lookup<NativeFunction<TglVertexAttribL3dv_Native>>(
                'glVertexAttribL3dv')
            .asFunction();
        this.vertexAttribL4dv = dylib
            .lookup<NativeFunction<TglVertexAttribL4dv_Native>>(
                'glVertexAttribL4dv')
            .asFunction();
        this.vertexAttribLPointer = dylib
            .lookup<NativeFunction<TglVertexAttribLPointer_Native>>(
                'glVertexAttribLPointer')
            .asFunction();
        this.getVertexAttribLdv = dylib
            .lookup<NativeFunction<TglGetVertexAttribLdv_Native>>(
                'glGetVertexAttribLdv')
            .asFunction();
        this.viewportArrayv = dylib
            .lookup<NativeFunction<TglViewportArrayv_Native>>(
                'glViewportArrayv')
            .asFunction();
        this.viewportIndexedf = dylib
            .lookup<NativeFunction<TglViewportIndexedf_Native>>(
                'glViewportIndexedf')
            .asFunction();
        this.viewportIndexedfv = dylib
            .lookup<NativeFunction<TglViewportIndexedfv_Native>>(
                'glViewportIndexedfv')
            .asFunction();
        this.scissorArrayv = dylib
            .lookup<NativeFunction<TglScissorArrayv_Native>>('glScissorArrayv')
            .asFunction();
        this.scissorIndexed = dylib
            .lookup<NativeFunction<TglScissorIndexed_Native>>(
                'glScissorIndexed')
            .asFunction();
        this.scissorIndexedv = dylib
            .lookup<NativeFunction<TglScissorIndexedv_Native>>(
                'glScissorIndexedv')
            .asFunction();
        this.depthRangeArrayv = dylib
            .lookup<NativeFunction<TglDepthRangeArrayv_Native>>(
                'glDepthRangeArrayv')
            .asFunction();
        this.depthRangeIndexed = dylib
            .lookup<NativeFunction<TglDepthRangeIndexed_Native>>(
                'glDepthRangeIndexed')
            .asFunction();
        this.getFloati_v = dylib
            .lookup<NativeFunction<TglGetFloati_v_Native>>('glGetFloati_v')
            .asFunction();
        this.getDoublei_v = dylib
            .lookup<NativeFunction<TglGetDoublei_v_Native>>('glGetDoublei_v')
            .asFunction();
      }
    }
    /* GL_VERSION_4_2 */
    if (version.index >= GlVersion.GL_VERSION_4_2.index) {
      if (Platform.isWindows) {
        this.drawArraysInstancedBaseInstance = wglGetProcAddress(
                Utf8.toUtf8("glDrawArraysInstancedBaseInstance"))
            .cast<NativeFunction<TglDrawArraysInstancedBaseInstance_Native>>()
            .asFunction();
        this.drawElementsInstancedBaseInstance = wglGetProcAddress(
                Utf8.toUtf8("glDrawElementsInstancedBaseInstance"))
            .cast<NativeFunction<TglDrawElementsInstancedBaseInstance_Native>>()
            .asFunction();
        this.drawElementsInstancedBaseVertexBaseInstance = wglGetProcAddress(
                Utf8.toUtf8("glDrawElementsInstancedBaseVertexBaseInstance"))
            .cast<
                NativeFunction<
                    TglDrawElementsInstancedBaseVertexBaseInstance_Native>>()
            .asFunction();
        this.getInternalformativ =
            wglGetProcAddress(Utf8.toUtf8("glGetInternalformativ"))
                .cast<NativeFunction<TglGetInternalformativ_Native>>()
                .asFunction();
        this.getActiveAtomicCounterBufferiv = wglGetProcAddress(
                Utf8.toUtf8("glGetActiveAtomicCounterBufferiv"))
            .cast<NativeFunction<TglGetActiveAtomicCounterBufferiv_Native>>()
            .asFunction();
        this.bindImageTexture =
            wglGetProcAddress(Utf8.toUtf8("glBindImageTexture"))
                .cast<NativeFunction<TglBindImageTexture_Native>>()
                .asFunction();
        this.memoryBarrier = wglGetProcAddress(Utf8.toUtf8("glMemoryBarrier"))
            .cast<NativeFunction<TglMemoryBarrier_Native>>()
            .asFunction();
        this.texStorage1D = wglGetProcAddress(Utf8.toUtf8("glTexStorage1D"))
            .cast<NativeFunction<TglTexStorage1D_Native>>()
            .asFunction();
        this.texStorage2D = wglGetProcAddress(Utf8.toUtf8("glTexStorage2D"))
            .cast<NativeFunction<TglTexStorage2D_Native>>()
            .asFunction();
        this.texStorage3D = wglGetProcAddress(Utf8.toUtf8("glTexStorage3D"))
            .cast<NativeFunction<TglTexStorage3D_Native>>()
            .asFunction();
        this.drawTransformFeedbackInstanced = wglGetProcAddress(
                Utf8.toUtf8("glDrawTransformFeedbackInstanced"))
            .cast<NativeFunction<TglDrawTransformFeedbackInstanced_Native>>()
            .asFunction();
        this.drawTransformFeedbackStreamInstanced = wglGetProcAddress(
                Utf8.toUtf8("glDrawTransformFeedbackStreamInstanced"))
            .cast<
                NativeFunction<
                    TglDrawTransformFeedbackStreamInstanced_Native>>()
            .asFunction();
      } else {
        this.drawArraysInstancedBaseInstance = dylib
            .lookup<NativeFunction<TglDrawArraysInstancedBaseInstance_Native>>(
                'glDrawArraysInstancedBaseInstance')
            .asFunction();
        this.drawElementsInstancedBaseInstance = dylib
            .lookup<
                    NativeFunction<
                        TglDrawElementsInstancedBaseInstance_Native>>(
                'glDrawElementsInstancedBaseInstance')
            .asFunction();
        this.drawElementsInstancedBaseVertexBaseInstance = dylib
            .lookup<
                    NativeFunction<
                        TglDrawElementsInstancedBaseVertexBaseInstance_Native>>(
                'glDrawElementsInstancedBaseVertexBaseInstance')
            .asFunction();
        this.getInternalformativ = dylib
            .lookup<NativeFunction<TglGetInternalformativ_Native>>(
                'glGetInternalformativ')
            .asFunction();
        this.getActiveAtomicCounterBufferiv = dylib
            .lookup<NativeFunction<TglGetActiveAtomicCounterBufferiv_Native>>(
                'glGetActiveAtomicCounterBufferiv')
            .asFunction();
        this.bindImageTexture = dylib
            .lookup<NativeFunction<TglBindImageTexture_Native>>(
                'glBindImageTexture')
            .asFunction();
        this.memoryBarrier = dylib
            .lookup<NativeFunction<TglMemoryBarrier_Native>>('glMemoryBarrier')
            .asFunction();
        this.texStorage1D = dylib
            .lookup<NativeFunction<TglTexStorage1D_Native>>('glTexStorage1D')
            .asFunction();
        this.texStorage2D = dylib
            .lookup<NativeFunction<TglTexStorage2D_Native>>('glTexStorage2D')
            .asFunction();
        this.texStorage3D = dylib
            .lookup<NativeFunction<TglTexStorage3D_Native>>('glTexStorage3D')
            .asFunction();
        this.drawTransformFeedbackInstanced = dylib
            .lookup<NativeFunction<TglDrawTransformFeedbackInstanced_Native>>(
                'glDrawTransformFeedbackInstanced')
            .asFunction();
        this.drawTransformFeedbackStreamInstanced = dylib
            .lookup<
                    NativeFunction<
                        TglDrawTransformFeedbackStreamInstanced_Native>>(
                'glDrawTransformFeedbackStreamInstanced')
            .asFunction();
      }
    }

    /* GL_VERSION_4_3 */
    if (version.index >= GlVersion.GL_VERSION_4_3.index) {
      if (Platform.isWindows) {
        this.clearBufferData =
            wglGetProcAddress(Utf8.toUtf8("glClearBufferData"))
                .cast<NativeFunction<TglClearBufferData_Native>>()
                .asFunction();
        this.clearBufferSubData =
            wglGetProcAddress(Utf8.toUtf8("glClearBufferSubData"))
                .cast<NativeFunction<TglClearBufferSubData_Native>>()
                .asFunction();
        this.dispatchCompute =
            wglGetProcAddress(Utf8.toUtf8("glDispatchCompute"))
                .cast<NativeFunction<TglDispatchCompute_Native>>()
                .asFunction();
        this.dispatchComputeIndirect =
            wglGetProcAddress(Utf8.toUtf8("glDispatchComputeIndirect"))
                .cast<NativeFunction<TglDispatchComputeIndirect_Native>>()
                .asFunction();
        this.copyImageSubData =
            wglGetProcAddress(Utf8.toUtf8("glCopyImageSubData"))
                .cast<NativeFunction<TglCopyImageSubData_Native>>()
                .asFunction();
        this.framebufferParameteri =
            wglGetProcAddress(Utf8.toUtf8("glFramebufferParameteri"))
                .cast<NativeFunction<TglFramebufferParameteri_Native>>()
                .asFunction();
        this.getFramebufferParameteriv =
            wglGetProcAddress(Utf8.toUtf8("glGetFramebufferParameteriv"))
                .cast<NativeFunction<TglGetFramebufferParameteriv_Native>>()
                .asFunction();
        this.getInternalformati64v =
            wglGetProcAddress(Utf8.toUtf8("glGetInternalformati64v"))
                .cast<NativeFunction<TglGetInternalformati64v_Native>>()
                .asFunction();
        this.invalidateTexSubImage =
            wglGetProcAddress(Utf8.toUtf8("glInvalidateTexSubImage"))
                .cast<NativeFunction<TglInvalidateTexSubImage_Native>>()
                .asFunction();
        this.invalidateTexImage =
            wglGetProcAddress(Utf8.toUtf8("glInvalidateTexImage"))
                .cast<NativeFunction<TglInvalidateTexImage_Native>>()
                .asFunction();
        this.invalidateBufferSubData =
            wglGetProcAddress(Utf8.toUtf8("glInvalidateBufferSubData"))
                .cast<NativeFunction<TglInvalidateBufferSubData_Native>>()
                .asFunction();
        this.invalidateBufferData =
            wglGetProcAddress(Utf8.toUtf8("glInvalidateBufferData"))
                .cast<NativeFunction<TglInvalidateBufferData_Native>>()
                .asFunction();
        this.invalidateFramebuffer =
            wglGetProcAddress(Utf8.toUtf8("glInvalidateFramebuffer"))
                .cast<NativeFunction<TglInvalidateFramebuffer_Native>>()
                .asFunction();
        this.invalidateSubFramebuffer =
            wglGetProcAddress(Utf8.toUtf8("glInvalidateSubFramebuffer"))
                .cast<NativeFunction<TglInvalidateSubFramebuffer_Native>>()
                .asFunction();
        this.multiDrawArraysIndirect =
            wglGetProcAddress(Utf8.toUtf8("glMultiDrawArraysIndirect"))
                .cast<NativeFunction<TglMultiDrawArraysIndirect_Native>>()
                .asFunction();
        this.multiDrawElementsIndirect =
            wglGetProcAddress(Utf8.toUtf8("glMultiDrawElementsIndirect"))
                .cast<NativeFunction<TglMultiDrawElementsIndirect_Native>>()
                .asFunction();
        this.getProgramInterfaceiv =
            wglGetProcAddress(Utf8.toUtf8("glGetProgramInterfaceiv"))
                .cast<NativeFunction<TglGetProgramInterfaceiv_Native>>()
                .asFunction();
        this.getProgramResourceIndex =
            wglGetProcAddress(Utf8.toUtf8("glGetProgramResourceIndex"))
                .cast<NativeFunction<TglGetProgramResourceIndex_Native>>()
                .asFunction();
        this.getProgramResourceName =
            wglGetProcAddress(Utf8.toUtf8("glGetProgramResourceName"))
                .cast<NativeFunction<TglGetProgramResourceName_Native>>()
                .asFunction();
        this.getProgramResourceiv =
            wglGetProcAddress(Utf8.toUtf8("glGetProgramResourceiv"))
                .cast<NativeFunction<TglGetProgramResourceiv_Native>>()
                .asFunction();
        this.getProgramResourceLocation =
            wglGetProcAddress(Utf8.toUtf8("glGetProgramResourceLocation"))
                .cast<NativeFunction<TglGetProgramResourceLocation_Native>>()
                .asFunction();
        this.getProgramResourceLocationIndex = wglGetProcAddress(
                Utf8.toUtf8("glGetProgramResourceLocationIndex"))
            .cast<NativeFunction<TglGetProgramResourceLocationIndex_Native>>()
            .asFunction();
        this.shaderStorageBlockBinding =
            wglGetProcAddress(Utf8.toUtf8("glShaderStorageBlockBinding"))
                .cast<NativeFunction<TglShaderStorageBlockBinding_Native>>()
                .asFunction();
        this.texBufferRange = wglGetProcAddress(Utf8.toUtf8("glTexBufferRange"))
            .cast<NativeFunction<TglTexBufferRange_Native>>()
            .asFunction();
        this.texStorage2DMultisample =
            wglGetProcAddress(Utf8.toUtf8("glTexStorage2DMultisample"))
                .cast<NativeFunction<TglTexStorage2DMultisample_Native>>()
                .asFunction();
        this.texStorage3DMultisample =
            wglGetProcAddress(Utf8.toUtf8("glTexStorage3DMultisample"))
                .cast<NativeFunction<TglTexStorage3DMultisample_Native>>()
                .asFunction();
        this.textureView = wglGetProcAddress(Utf8.toUtf8("glTextureView"))
            .cast<NativeFunction<TglTextureView_Native>>()
            .asFunction();
        this.bindVertexBuffer =
            wglGetProcAddress(Utf8.toUtf8("glBindVertexBuffer"))
                .cast<NativeFunction<TglBindVertexBuffer_Native>>()
                .asFunction();
        this.vertexAttribFormat =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribFormat"))
                .cast<NativeFunction<TglVertexAttribFormat_Native>>()
                .asFunction();
        this.vertexAttribIFormat =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribIFormat"))
                .cast<NativeFunction<TglVertexAttribIFormat_Native>>()
                .asFunction();
        this.vertexAttribLFormat =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribLFormat"))
                .cast<NativeFunction<TglVertexAttribLFormat_Native>>()
                .asFunction();
        this.vertexAttribBinding =
            wglGetProcAddress(Utf8.toUtf8("glVertexAttribBinding"))
                .cast<NativeFunction<TglVertexAttribBinding_Native>>()
                .asFunction();
        this.vertexBindingDivisor =
            wglGetProcAddress(Utf8.toUtf8("glVertexBindingDivisor"))
                .cast<NativeFunction<TglVertexBindingDivisor_Native>>()
                .asFunction();
        this.debugMessageControl =
            wglGetProcAddress(Utf8.toUtf8("glDebugMessageControl"))
                .cast<NativeFunction<TglDebugMessageControl_Native>>()
                .asFunction();
        this.debugMessageInsert =
            wglGetProcAddress(Utf8.toUtf8("glDebugMessageInsert"))
                .cast<NativeFunction<TglDebugMessageInsert_Native>>()
                .asFunction();
        this.debugMessageCallback =
            wglGetProcAddress(Utf8.toUtf8("glDebugMessageCallback"))
                .cast<NativeFunction<TglDebugMessageCallback_Native>>()
                .asFunction();
        this.getDebugMessageLog =
            wglGetProcAddress(Utf8.toUtf8("glGetDebugMessageLog"))
                .cast<NativeFunction<TglGetDebugMessageLog_Native>>()
                .asFunction();
        this.pushDebugGroup = wglGetProcAddress(Utf8.toUtf8("glPushDebugGroup"))
            .cast<NativeFunction<TglPushDebugGroup_Native>>()
            .asFunction();
        this.popDebugGroup = wglGetProcAddress(Utf8.toUtf8("glPopDebugGroup"))
            .cast<NativeFunction<TglPopDebugGroup_Native>>()
            .asFunction();
        this.objectLabel = wglGetProcAddress(Utf8.toUtf8("glObjectLabel"))
            .cast<NativeFunction<TglObjectLabel_Native>>()
            .asFunction();
        this.getObjectLabel = wglGetProcAddress(Utf8.toUtf8("glGetObjectLabel"))
            .cast<NativeFunction<TglGetObjectLabel_Native>>()
            .asFunction();
        this.objectPtrLabel = wglGetProcAddress(Utf8.toUtf8("glObjectPtrLabel"))
            .cast<NativeFunction<TglObjectPtrLabel_Native>>()
            .asFunction();
        this.getObjectPtrLabel =
            wglGetProcAddress(Utf8.toUtf8("glGetObjectPtrLabel"))
                .cast<NativeFunction<TglGetObjectPtrLabel_Native>>()
                .asFunction();
      } else {
        this.clearBufferData = dylib
            .lookup<NativeFunction<TglClearBufferData_Native>>(
                'glClearBufferData')
            .asFunction();
        this.clearBufferSubData = dylib
            .lookup<NativeFunction<TglClearBufferSubData_Native>>(
                'glClearBufferSubData')
            .asFunction();
        this.dispatchCompute = dylib
            .lookup<NativeFunction<TglDispatchCompute_Native>>(
                'glDispatchCompute')
            .asFunction();
        this.dispatchComputeIndirect = dylib
            .lookup<NativeFunction<TglDispatchComputeIndirect_Native>>(
                'glDispatchComputeIndirect')
            .asFunction();
        this.copyImageSubData = dylib
            .lookup<NativeFunction<TglCopyImageSubData_Native>>(
                'glCopyImageSubData')
            .asFunction();
        this.framebufferParameteri = dylib
            .lookup<NativeFunction<TglFramebufferParameteri_Native>>(
                'glFramebufferParameteri')
            .asFunction();
        this.getFramebufferParameteriv = dylib
            .lookup<NativeFunction<TglGetFramebufferParameteriv_Native>>(
                'glGetFramebufferParameteriv')
            .asFunction();
        this.getInternalformati64v = dylib
            .lookup<NativeFunction<TglGetInternalformati64v_Native>>(
                'glGetInternalformati64v')
            .asFunction();
        this.invalidateTexSubImage = dylib
            .lookup<NativeFunction<TglInvalidateTexSubImage_Native>>(
                'glInvalidateTexSubImage')
            .asFunction();
        this.invalidateTexImage = dylib
            .lookup<NativeFunction<TglInvalidateTexImage_Native>>(
                'glInvalidateTexImage')
            .asFunction();
        this.invalidateBufferSubData = dylib
            .lookup<NativeFunction<TglInvalidateBufferSubData_Native>>(
                'glInvalidateBufferSubData')
            .asFunction();
        this.invalidateBufferData = dylib
            .lookup<NativeFunction<TglInvalidateBufferData_Native>>(
                'glInvalidateBufferData')
            .asFunction();
        this.invalidateFramebuffer = dylib
            .lookup<NativeFunction<TglInvalidateFramebuffer_Native>>(
                'glInvalidateFramebuffer')
            .asFunction();
        this.invalidateSubFramebuffer = dylib
            .lookup<NativeFunction<TglInvalidateSubFramebuffer_Native>>(
                'glInvalidateSubFramebuffer')
            .asFunction();
        this.multiDrawArraysIndirect = dylib
            .lookup<NativeFunction<TglMultiDrawArraysIndirect_Native>>(
                'glMultiDrawArraysIndirect')
            .asFunction();
        this.multiDrawElementsIndirect = dylib
            .lookup<NativeFunction<TglMultiDrawElementsIndirect_Native>>(
                'glMultiDrawElementsIndirect')
            .asFunction();
        this.getProgramInterfaceiv = dylib
            .lookup<NativeFunction<TglGetProgramInterfaceiv_Native>>(
                'glGetProgramInterfaceiv')
            .asFunction();
        this.getProgramResourceIndex = dylib
            .lookup<NativeFunction<TglGetProgramResourceIndex_Native>>(
                'glGetProgramResourceIndex')
            .asFunction();
        this.getProgramResourceName = dylib
            .lookup<NativeFunction<TglGetProgramResourceName_Native>>(
                'glGetProgramResourceName')
            .asFunction();
        this.getProgramResourceiv = dylib
            .lookup<NativeFunction<TglGetProgramResourceiv_Native>>(
                'glGetProgramResourceiv')
            .asFunction();
        this.getProgramResourceLocation = dylib
            .lookup<NativeFunction<TglGetProgramResourceLocation_Native>>(
                'glGetProgramResourceLocation')
            .asFunction();
        this.getProgramResourceLocationIndex = dylib
            .lookup<NativeFunction<TglGetProgramResourceLocationIndex_Native>>(
                'glGetProgramResourceLocationIndex')
            .asFunction();
        this.shaderStorageBlockBinding = dylib
            .lookup<NativeFunction<TglShaderStorageBlockBinding_Native>>(
                'glShaderStorageBlockBinding')
            .asFunction();
        this.texBufferRange = dylib
            .lookup<NativeFunction<TglTexBufferRange_Native>>(
                'glTexBufferRange')
            .asFunction();
        this.texStorage2DMultisample = dylib
            .lookup<NativeFunction<TglTexStorage2DMultisample_Native>>(
                'glTexStorage2DMultisample')
            .asFunction();
        this.texStorage3DMultisample = dylib
            .lookup<NativeFunction<TglTexStorage3DMultisample_Native>>(
                'glTexStorage3DMultisample')
            .asFunction();
        this.textureView = dylib
            .lookup<NativeFunction<TglTextureView_Native>>('glTextureView')
            .asFunction();
        this.bindVertexBuffer = dylib
            .lookup<NativeFunction<TglBindVertexBuffer_Native>>(
                'glBindVertexBuffer')
            .asFunction();
        this.vertexAttribFormat = dylib
            .lookup<NativeFunction<TglVertexAttribFormat_Native>>(
                'glVertexAttribFormat')
            .asFunction();
        this.vertexAttribIFormat = dylib
            .lookup<NativeFunction<TglVertexAttribIFormat_Native>>(
                'glVertexAttribIFormat')
            .asFunction();
        this.vertexAttribLFormat = dylib
            .lookup<NativeFunction<TglVertexAttribLFormat_Native>>(
                'glVertexAttribLFormat')
            .asFunction();
        this.vertexAttribBinding = dylib
            .lookup<NativeFunction<TglVertexAttribBinding_Native>>(
                'glVertexAttribBinding')
            .asFunction();
        this.vertexBindingDivisor = dylib
            .lookup<NativeFunction<TglVertexBindingDivisor_Native>>(
                'glVertexBindingDivisor')
            .asFunction();
        this.debugMessageControl = dylib
            .lookup<NativeFunction<TglDebugMessageControl_Native>>(
                'glDebugMessageControl')
            .asFunction();
        this.debugMessageInsert = dylib
            .lookup<NativeFunction<TglDebugMessageInsert_Native>>(
                'glDebugMessageInsert')
            .asFunction();
        this.debugMessageCallback = dylib
            .lookup<NativeFunction<TglDebugMessageCallback_Native>>(
                'glDebugMessageCallback')
            .asFunction();
        this.getDebugMessageLog = dylib
            .lookup<NativeFunction<TglGetDebugMessageLog_Native>>(
                'glGetDebugMessageLog')
            .asFunction();
        this.pushDebugGroup = dylib
            .lookup<NativeFunction<TglPushDebugGroup_Native>>(
                'glPushDebugGroup')
            .asFunction();
        this.popDebugGroup = dylib
            .lookup<NativeFunction<TglPopDebugGroup_Native>>('glPopDebugGroup')
            .asFunction();
        this.objectLabel = dylib
            .lookup<NativeFunction<TglObjectLabel_Native>>('glObjectLabel')
            .asFunction();
        this.getObjectLabel = dylib
            .lookup<NativeFunction<TglGetObjectLabel_Native>>(
                'glGetObjectLabel')
            .asFunction();
        this.objectPtrLabel = dylib
            .lookup<NativeFunction<TglObjectPtrLabel_Native>>(
                'glObjectPtrLabel')
            .asFunction();
        this.getObjectPtrLabel = dylib
            .lookup<NativeFunction<TglGetObjectPtrLabel_Native>>(
                'glGetObjectPtrLabel')
            .asFunction();
      }
    }
    /* GL_VERSION_4_4 */
    if (version.index >= GlVersion.GL_VERSION_4_4.index) {
      if (Platform.isWindows) {
        this.bufferStorage = wglGetProcAddress(Utf8.toUtf8("glBufferStorage"))
            .cast<NativeFunction<TglBufferStorage_Native>>()
            .asFunction();
        this.clearTexImage = wglGetProcAddress(Utf8.toUtf8("glClearTexImage"))
            .cast<NativeFunction<TglClearTexImage_Native>>()
            .asFunction();
        this.clearTexSubImage =
            wglGetProcAddress(Utf8.toUtf8("glClearTexSubImage"))
                .cast<NativeFunction<TglClearTexSubImage_Native>>()
                .asFunction();
        this.bindBuffersBase =
            wglGetProcAddress(Utf8.toUtf8("glBindBuffersBase"))
                .cast<NativeFunction<TglBindBuffersBase_Native>>()
                .asFunction();
        this.bindBuffersRange =
            wglGetProcAddress(Utf8.toUtf8("glBindBuffersRange"))
                .cast<NativeFunction<TglBindBuffersRange_Native>>()
                .asFunction();
        this.bindTextures = wglGetProcAddress(Utf8.toUtf8("glBindTextures"))
            .cast<NativeFunction<TglBindTextures_Native>>()
            .asFunction();
        this.bindSamplers = wglGetProcAddress(Utf8.toUtf8("glBindSamplers"))
            .cast<NativeFunction<TglBindSamplers_Native>>()
            .asFunction();
        this.bindImageTextures =
            wglGetProcAddress(Utf8.toUtf8("glBindImageTextures"))
                .cast<NativeFunction<TglBindImageTextures_Native>>()
                .asFunction();
        this.bindVertexBuffers =
            wglGetProcAddress(Utf8.toUtf8("glBindVertexBuffers"))
                .cast<NativeFunction<TglBindVertexBuffers_Native>>()
                .asFunction();
      } else {
        this.bufferStorage = dylib
            .lookup<NativeFunction<TglBufferStorage_Native>>('glBufferStorage')
            .asFunction();
        this.clearTexImage = dylib
            .lookup<NativeFunction<TglClearTexImage_Native>>('glClearTexImage')
            .asFunction();
        this.clearTexSubImage = dylib
            .lookup<NativeFunction<TglClearTexSubImage_Native>>(
                'glClearTexSubImage')
            .asFunction();
        this.bindBuffersBase = dylib
            .lookup<NativeFunction<TglBindBuffersBase_Native>>(
                'glBindBuffersBase')
            .asFunction();
        this.bindBuffersRange = dylib
            .lookup<NativeFunction<TglBindBuffersRange_Native>>(
                'glBindBuffersRange')
            .asFunction();
        this.bindTextures = dylib
            .lookup<NativeFunction<TglBindTextures_Native>>('glBindTextures')
            .asFunction();
        this.bindSamplers = dylib
            .lookup<NativeFunction<TglBindSamplers_Native>>('glBindSamplers')
            .asFunction();
        this.bindImageTextures = dylib
            .lookup<NativeFunction<TglBindImageTextures_Native>>(
                'glBindImageTextures')
            .asFunction();
        this.bindVertexBuffers = dylib
            .lookup<NativeFunction<TglBindVertexBuffers_Native>>(
                'glBindVertexBuffers')
            .asFunction();
      }
    }

    /* GL_VERSION_4_5 */
    if (version.index >= GlVersion.GL_VERSION_4_5.index) {
      if (Platform.isWindows) {
        this.clipControl = wglGetProcAddress(Utf8.toUtf8("glClipControl"))
            .cast<NativeFunction<TglClipControl_Native>>()
            .asFunction();
        this.createTransformFeedbacks =
            wglGetProcAddress(Utf8.toUtf8("glCreateTransformFeedbacks"))
                .cast<NativeFunction<TglCreateTransformFeedbacks_Native>>()
                .asFunction();
        this.transformFeedbackBufferBase =
            wglGetProcAddress(Utf8.toUtf8("glTransformFeedbackBufferBase"))
                .cast<NativeFunction<TglTransformFeedbackBufferBase_Native>>()
                .asFunction();
        this.transformFeedbackBufferRange =
            wglGetProcAddress(Utf8.toUtf8("glTransformFeedbackBufferRange"))
                .cast<NativeFunction<TglTransformFeedbackBufferRange_Native>>()
                .asFunction();
        this.getTransformFeedbackiv =
            wglGetProcAddress(Utf8.toUtf8("glGetTransformFeedbackiv"))
                .cast<NativeFunction<TglGetTransformFeedbackiv_Native>>()
                .asFunction();
        this.getTransformFeedbacki_v =
            wglGetProcAddress(Utf8.toUtf8("glGetTransformFeedbacki_v"))
                .cast<NativeFunction<TglGetTransformFeedbacki_v_Native>>()
                .asFunction();
        this.getTransformFeedbacki64_v =
            wglGetProcAddress(Utf8.toUtf8("glGetTransformFeedbacki64_v"))
                .cast<NativeFunction<TglGetTransformFeedbacki64_v_Native>>()
                .asFunction();
        this.createBuffers = wglGetProcAddress(Utf8.toUtf8("glCreateBuffers"))
            .cast<NativeFunction<TglCreateBuffers_Native>>()
            .asFunction();
        this.namedBufferStorage =
            wglGetProcAddress(Utf8.toUtf8("glNamedBufferStorage"))
                .cast<NativeFunction<TglNamedBufferStorage_Native>>()
                .asFunction();
        this.namedBufferData =
            wglGetProcAddress(Utf8.toUtf8("glNamedBufferData"))
                .cast<NativeFunction<TglNamedBufferData_Native>>()
                .asFunction();
        this.namedBufferSubData =
            wglGetProcAddress(Utf8.toUtf8("glNamedBufferSubData"))
                .cast<NativeFunction<TglNamedBufferSubData_Native>>()
                .asFunction();
        this.copyNamedBufferSubData =
            wglGetProcAddress(Utf8.toUtf8("glCopyNamedBufferSubData"))
                .cast<NativeFunction<TglCopyNamedBufferSubData_Native>>()
                .asFunction();
        this.clearNamedBufferData =
            wglGetProcAddress(Utf8.toUtf8("glClearNamedBufferData"))
                .cast<NativeFunction<TglClearNamedBufferData_Native>>()
                .asFunction();
        this.clearNamedBufferSubData =
            wglGetProcAddress(Utf8.toUtf8("glClearNamedBufferSubData"))
                .cast<NativeFunction<TglClearNamedBufferSubData_Native>>()
                .asFunction();
        this.mapNamedBuffer = wglGetProcAddress(Utf8.toUtf8("glMapNamedBuffer"))
            .cast<NativeFunction<TglMapNamedBuffer_Native>>()
            .asFunction();
        this.mapNamedBufferRange =
            wglGetProcAddress(Utf8.toUtf8("glMapNamedBufferRange"))
                .cast<NativeFunction<TglMapNamedBufferRange_Native>>()
                .asFunction();
        this.unmapNamedBuffer =
            wglGetProcAddress(Utf8.toUtf8("glUnmapNamedBuffer"))
                .cast<NativeFunction<TglUnmapNamedBuffer_Native>>()
                .asFunction();
        this.flushMappedNamedBufferRange =
            wglGetProcAddress(Utf8.toUtf8("glFlushMappedNamedBufferRange"))
                .cast<NativeFunction<TglFlushMappedNamedBufferRange_Native>>()
                .asFunction();
        this.getNamedBufferParameteriv =
            wglGetProcAddress(Utf8.toUtf8("glGetNamedBufferParameteriv"))
                .cast<NativeFunction<TglGetNamedBufferParameteriv_Native>>()
                .asFunction();
        this.getNamedBufferParameteri64v =
            wglGetProcAddress(Utf8.toUtf8("glGetNamedBufferParameteri64v"))
                .cast<NativeFunction<TglGetNamedBufferParameteri64v_Native>>()
                .asFunction();
        this.getNamedBufferPointerv =
            wglGetProcAddress(Utf8.toUtf8("glGetNamedBufferPointerv"))
                .cast<NativeFunction<TglGetNamedBufferPointerv_Native>>()
                .asFunction();
        this.getNamedBufferSubData =
            wglGetProcAddress(Utf8.toUtf8("glGetNamedBufferSubData"))
                .cast<NativeFunction<TglGetNamedBufferSubData_Native>>()
                .asFunction();
        this.createFramebuffers =
            wglGetProcAddress(Utf8.toUtf8("glCreateFramebuffers"))
                .cast<NativeFunction<TglCreateFramebuffers_Native>>()
                .asFunction();
        this.namedFramebufferRenderbuffer =
            wglGetProcAddress(Utf8.toUtf8("glNamedFramebufferRenderbuffer"))
                .cast<NativeFunction<TglNamedFramebufferRenderbuffer_Native>>()
                .asFunction();
        this.namedFramebufferParameteri =
            wglGetProcAddress(Utf8.toUtf8("glNamedFramebufferParameteri"))
                .cast<NativeFunction<TglNamedFramebufferParameteri_Native>>()
                .asFunction();
        this.namedFramebufferTexture =
            wglGetProcAddress(Utf8.toUtf8("glNamedFramebufferTexture"))
                .cast<NativeFunction<TglNamedFramebufferTexture_Native>>()
                .asFunction();
        this.namedFramebufferTextureLayer =
            wglGetProcAddress(Utf8.toUtf8("glNamedFramebufferTextureLayer"))
                .cast<NativeFunction<TglNamedFramebufferTextureLayer_Native>>()
                .asFunction();
        this.namedFramebufferDrawBuffer =
            wglGetProcAddress(Utf8.toUtf8("glNamedFramebufferDrawBuffer"))
                .cast<NativeFunction<TglNamedFramebufferDrawBuffer_Native>>()
                .asFunction();
        this.namedFramebufferDrawBuffers =
            wglGetProcAddress(Utf8.toUtf8("glNamedFramebufferDrawBuffers"))
                .cast<NativeFunction<TglNamedFramebufferDrawBuffers_Native>>()
                .asFunction();
        this.namedFramebufferReadBuffer =
            wglGetProcAddress(Utf8.toUtf8("glNamedFramebufferReadBuffer"))
                .cast<NativeFunction<TglNamedFramebufferReadBuffer_Native>>()
                .asFunction();
        this.invalidateNamedFramebufferData = wglGetProcAddress(
                Utf8.toUtf8("glInvalidateNamedFramebufferData"))
            .cast<NativeFunction<TglInvalidateNamedFramebufferData_Native>>()
            .asFunction();
        this.invalidateNamedFramebufferSubData = wglGetProcAddress(
                Utf8.toUtf8("glInvalidateNamedFramebufferSubData"))
            .cast<NativeFunction<TglInvalidateNamedFramebufferSubData_Native>>()
            .asFunction();
        this.clearNamedFramebufferiv =
            wglGetProcAddress(Utf8.toUtf8("glClearNamedFramebufferiv"))
                .cast<NativeFunction<TglClearNamedFramebufferiv_Native>>()
                .asFunction();
        this.clearNamedFramebufferuiv =
            wglGetProcAddress(Utf8.toUtf8("glClearNamedFramebufferuiv"))
                .cast<NativeFunction<TglClearNamedFramebufferuiv_Native>>()
                .asFunction();
        this.clearNamedFramebufferfv =
            wglGetProcAddress(Utf8.toUtf8("glClearNamedFramebufferfv"))
                .cast<NativeFunction<TglClearNamedFramebufferfv_Native>>()
                .asFunction();
        this.clearNamedFramebufferfi =
            wglGetProcAddress(Utf8.toUtf8("glClearNamedFramebufferfi"))
                .cast<NativeFunction<TglClearNamedFramebufferfi_Native>>()
                .asFunction();
        this.blitNamedFramebuffer =
            wglGetProcAddress(Utf8.toUtf8("glBlitNamedFramebuffer"))
                .cast<NativeFunction<TglBlitNamedFramebuffer_Native>>()
                .asFunction();
        this.checkNamedFramebufferStatus =
            wglGetProcAddress(Utf8.toUtf8("glCheckNamedFramebufferStatus"))
                .cast<NativeFunction<TglCheckNamedFramebufferStatus_Native>>()
                .asFunction();
        this.getNamedFramebufferParameteriv = wglGetProcAddress(
                Utf8.toUtf8("glGetNamedFramebufferParameteriv"))
            .cast<NativeFunction<TglGetNamedFramebufferParameteriv_Native>>()
            .asFunction();
        this.getNamedFramebufferAttachmentParameteriv = wglGetProcAddress(
                Utf8.toUtf8("glGetNamedFramebufferAttachmentParameteriv"))
            .cast<
                NativeFunction<
                    TglGetNamedFramebufferAttachmentParameteriv_Native>>()
            .asFunction();
        this.createRenderbuffers =
            wglGetProcAddress(Utf8.toUtf8("glCreateRenderbuffers"))
                .cast<NativeFunction<TglCreateRenderbuffers_Native>>()
                .asFunction();
        this.namedRenderbufferStorage =
            wglGetProcAddress(Utf8.toUtf8("glNamedRenderbufferStorage"))
                .cast<NativeFunction<TglNamedRenderbufferStorage_Native>>()
                .asFunction();
        this.namedRenderbufferStorageMultisample = wglGetProcAddress(
                Utf8.toUtf8("glNamedRenderbufferStorageMultisample"))
            .cast<
                NativeFunction<TglNamedRenderbufferStorageMultisample_Native>>()
            .asFunction();
        this.getNamedRenderbufferParameteriv = wglGetProcAddress(
                Utf8.toUtf8("glGetNamedRenderbufferParameteriv"))
            .cast<NativeFunction<TglGetNamedRenderbufferParameteriv_Native>>()
            .asFunction();
        this.createTextures = wglGetProcAddress(Utf8.toUtf8("glCreateTextures"))
            .cast<NativeFunction<TglCreateTextures_Native>>()
            .asFunction();
        this.textureBuffer = wglGetProcAddress(Utf8.toUtf8("glTextureBuffer"))
            .cast<NativeFunction<TglTextureBuffer_Native>>()
            .asFunction();
        this.textureBufferRange =
            wglGetProcAddress(Utf8.toUtf8("glTextureBufferRange"))
                .cast<NativeFunction<TglTextureBufferRange_Native>>()
                .asFunction();
        this.textureStorage1D =
            wglGetProcAddress(Utf8.toUtf8("glTextureStorage1D"))
                .cast<NativeFunction<TglTextureStorage1D_Native>>()
                .asFunction();
        this.textureStorage2D =
            wglGetProcAddress(Utf8.toUtf8("glTextureStorage2D"))
                .cast<NativeFunction<TglTextureStorage2D_Native>>()
                .asFunction();
        this.textureStorage3D =
            wglGetProcAddress(Utf8.toUtf8("glTextureStorage3D"))
                .cast<NativeFunction<TglTextureStorage3D_Native>>()
                .asFunction();
        this.textureStorage2DMultisample =
            wglGetProcAddress(Utf8.toUtf8("glTextureStorage2DMultisample"))
                .cast<NativeFunction<TglTextureStorage2DMultisample_Native>>()
                .asFunction();
        this.textureStorage3DMultisample =
            wglGetProcAddress(Utf8.toUtf8("glTextureStorage3DMultisample"))
                .cast<NativeFunction<TglTextureStorage3DMultisample_Native>>()
                .asFunction();
        this.textureSubImage1D =
            wglGetProcAddress(Utf8.toUtf8("glTextureSubImage1D"))
                .cast<NativeFunction<TglTextureSubImage1D_Native>>()
                .asFunction();
        this.textureSubImage2D =
            wglGetProcAddress(Utf8.toUtf8("glTextureSubImage2D"))
                .cast<NativeFunction<TglTextureSubImage2D_Native>>()
                .asFunction();
        this.textureSubImage3D =
            wglGetProcAddress(Utf8.toUtf8("glTextureSubImage3D"))
                .cast<NativeFunction<TglTextureSubImage3D_Native>>()
                .asFunction();
        this.compressedTextureSubImage1D =
            wglGetProcAddress(Utf8.toUtf8("glCompressedTextureSubImage1D"))
                .cast<NativeFunction<TglCompressedTextureSubImage1D_Native>>()
                .asFunction();
        this.compressedTextureSubImage2D =
            wglGetProcAddress(Utf8.toUtf8("glCompressedTextureSubImage2D"))
                .cast<NativeFunction<TglCompressedTextureSubImage2D_Native>>()
                .asFunction();
        this.compressedTextureSubImage3D =
            wglGetProcAddress(Utf8.toUtf8("glCompressedTextureSubImage3D"))
                .cast<NativeFunction<TglCompressedTextureSubImage3D_Native>>()
                .asFunction();
        this.copyTextureSubImage1D =
            wglGetProcAddress(Utf8.toUtf8("glCopyTextureSubImage1D"))
                .cast<NativeFunction<TglCopyTextureSubImage1D_Native>>()
                .asFunction();
        this.copyTextureSubImage2D =
            wglGetProcAddress(Utf8.toUtf8("glCopyTextureSubImage2D"))
                .cast<NativeFunction<TglCopyTextureSubImage2D_Native>>()
                .asFunction();
        this.copyTextureSubImage3D =
            wglGetProcAddress(Utf8.toUtf8("glCopyTextureSubImage3D"))
                .cast<NativeFunction<TglCopyTextureSubImage3D_Native>>()
                .asFunction();
        this.textureParameterf =
            wglGetProcAddress(Utf8.toUtf8("glTextureParameterf"))
                .cast<NativeFunction<TglTextureParameterf_Native>>()
                .asFunction();
        this.textureParameterfv =
            wglGetProcAddress(Utf8.toUtf8("glTextureParameterfv"))
                .cast<NativeFunction<TglTextureParameterfv_Native>>()
                .asFunction();
        this.textureParameteri =
            wglGetProcAddress(Utf8.toUtf8("glTextureParameteri"))
                .cast<NativeFunction<TglTextureParameteri_Native>>()
                .asFunction();
        this.textureParameterIiv =
            wglGetProcAddress(Utf8.toUtf8("glTextureParameterIiv"))
                .cast<NativeFunction<TglTextureParameterIiv_Native>>()
                .asFunction();
        this.textureParameterIuiv =
            wglGetProcAddress(Utf8.toUtf8("glTextureParameterIuiv"))
                .cast<NativeFunction<TglTextureParameterIuiv_Native>>()
                .asFunction();
        this.textureParameteriv =
            wglGetProcAddress(Utf8.toUtf8("glTextureParameteriv"))
                .cast<NativeFunction<TglTextureParameteriv_Native>>()
                .asFunction();
        this.generateTextureMipmap =
            wglGetProcAddress(Utf8.toUtf8("glGenerateTextureMipmap"))
                .cast<NativeFunction<TglGenerateTextureMipmap_Native>>()
                .asFunction();
        this.bindTextureUnit =
            wglGetProcAddress(Utf8.toUtf8("glBindTextureUnit"))
                .cast<NativeFunction<TglBindTextureUnit_Native>>()
                .asFunction();
        this.getTextureImage =
            wglGetProcAddress(Utf8.toUtf8("glGetTextureImage"))
                .cast<NativeFunction<TglGetTextureImage_Native>>()
                .asFunction();
        this.getCompressedTextureImage =
            wglGetProcAddress(Utf8.toUtf8("glGetCompressedTextureImage"))
                .cast<NativeFunction<TglGetCompressedTextureImage_Native>>()
                .asFunction();
        this.getTextureLevelParameterfv =
            wglGetProcAddress(Utf8.toUtf8("glGetTextureLevelParameterfv"))
                .cast<NativeFunction<TglGetTextureLevelParameterfv_Native>>()
                .asFunction();
        this.getTextureLevelParameteriv =
            wglGetProcAddress(Utf8.toUtf8("glGetTextureLevelParameteriv"))
                .cast<NativeFunction<TglGetTextureLevelParameteriv_Native>>()
                .asFunction();
        this.getTextureParameterfv =
            wglGetProcAddress(Utf8.toUtf8("glGetTextureParameterfv"))
                .cast<NativeFunction<TglGetTextureParameterfv_Native>>()
                .asFunction();
        this.getTextureParameterIiv =
            wglGetProcAddress(Utf8.toUtf8("glGetTextureParameterIiv"))
                .cast<NativeFunction<TglGetTextureParameterIiv_Native>>()
                .asFunction();
        this.getTextureParameterIuiv =
            wglGetProcAddress(Utf8.toUtf8("glGetTextureParameterIuiv"))
                .cast<NativeFunction<TglGetTextureParameterIuiv_Native>>()
                .asFunction();
        this.getTextureParameteriv =
            wglGetProcAddress(Utf8.toUtf8("glGetTextureParameteriv"))
                .cast<NativeFunction<TglGetTextureParameteriv_Native>>()
                .asFunction();
        this.createVertexArrays =
            wglGetProcAddress(Utf8.toUtf8("glCreateVertexArrays"))
                .cast<NativeFunction<TglCreateVertexArrays_Native>>()
                .asFunction();
        this.disableVertexArrayAttrib =
            wglGetProcAddress(Utf8.toUtf8("glDisableVertexArrayAttrib"))
                .cast<NativeFunction<TglDisableVertexArrayAttrib_Native>>()
                .asFunction();
        this.enableVertexArrayAttrib =
            wglGetProcAddress(Utf8.toUtf8("glEnableVertexArrayAttrib"))
                .cast<NativeFunction<TglEnableVertexArrayAttrib_Native>>()
                .asFunction();
        this.vertexArrayElementBuffer =
            wglGetProcAddress(Utf8.toUtf8("glVertexArrayElementBuffer"))
                .cast<NativeFunction<TglVertexArrayElementBuffer_Native>>()
                .asFunction();
        this.vertexArrayVertexBuffer =
            wglGetProcAddress(Utf8.toUtf8("glVertexArrayVertexBuffer"))
                .cast<NativeFunction<TglVertexArrayVertexBuffer_Native>>()
                .asFunction();
        this.vertexArrayVertexBuffers =
            wglGetProcAddress(Utf8.toUtf8("glVertexArrayVertexBuffers"))
                .cast<NativeFunction<TglVertexArrayVertexBuffers_Native>>()
                .asFunction();
        this.vertexArrayAttribBinding =
            wglGetProcAddress(Utf8.toUtf8("glVertexArrayAttribBinding"))
                .cast<NativeFunction<TglVertexArrayAttribBinding_Native>>()
                .asFunction();
        this.vertexArrayAttribFormat =
            wglGetProcAddress(Utf8.toUtf8("glVertexArrayAttribFormat"))
                .cast<NativeFunction<TglVertexArrayAttribFormat_Native>>()
                .asFunction();
        this.vertexArrayAttribIFormat =
            wglGetProcAddress(Utf8.toUtf8("glVertexArrayAttribIFormat"))
                .cast<NativeFunction<TglVertexArrayAttribIFormat_Native>>()
                .asFunction();
        this.vertexArrayAttribLFormat =
            wglGetProcAddress(Utf8.toUtf8("glVertexArrayAttribLFormat"))
                .cast<NativeFunction<TglVertexArrayAttribLFormat_Native>>()
                .asFunction();
        this.vertexArrayBindingDivisor =
            wglGetProcAddress(Utf8.toUtf8("glVertexArrayBindingDivisor"))
                .cast<NativeFunction<TglVertexArrayBindingDivisor_Native>>()
                .asFunction();
        this.getVertexArrayiv =
            wglGetProcAddress(Utf8.toUtf8("glGetVertexArrayiv"))
                .cast<NativeFunction<TglGetVertexArrayiv_Native>>()
                .asFunction();
        this.getVertexArrayIndexediv =
            wglGetProcAddress(Utf8.toUtf8("glGetVertexArrayIndexediv"))
                .cast<NativeFunction<TglGetVertexArrayIndexediv_Native>>()
                .asFunction();
        this.getVertexArrayIndexed64iv =
            wglGetProcAddress(Utf8.toUtf8("glGetVertexArrayIndexed64iv"))
                .cast<NativeFunction<TglGetVertexArrayIndexed64iv_Native>>()
                .asFunction();
        this.createSamplers = wglGetProcAddress(Utf8.toUtf8("glCreateSamplers"))
            .cast<NativeFunction<TglCreateSamplers_Native>>()
            .asFunction();
        this.createProgramPipelines =
            wglGetProcAddress(Utf8.toUtf8("glCreateProgramPipelines"))
                .cast<NativeFunction<TglCreateProgramPipelines_Native>>()
                .asFunction();
        this.createQueries = wglGetProcAddress(Utf8.toUtf8("glCreateQueries"))
            .cast<NativeFunction<TglCreateQueries_Native>>()
            .asFunction();
        this.getQueryBufferObjecti64v =
            wglGetProcAddress(Utf8.toUtf8("glGetQueryBufferObjecti64v"))
                .cast<NativeFunction<TglGetQueryBufferObjecti64v_Native>>()
                .asFunction();
        this.getQueryBufferObjectiv =
            wglGetProcAddress(Utf8.toUtf8("glGetQueryBufferObjectiv"))
                .cast<NativeFunction<TglGetQueryBufferObjectiv_Native>>()
                .asFunction();
        this.getQueryBufferObjectui64v =
            wglGetProcAddress(Utf8.toUtf8("glGetQueryBufferObjectui64v"))
                .cast<NativeFunction<TglGetQueryBufferObjectui64v_Native>>()
                .asFunction();
        this.getQueryBufferObjectuiv =
            wglGetProcAddress(Utf8.toUtf8("glGetQueryBufferObjectuiv"))
                .cast<NativeFunction<TglGetQueryBufferObjectuiv_Native>>()
                .asFunction();
        this.memoryBarrierByRegion =
            wglGetProcAddress(Utf8.toUtf8("glMemoryBarrierByRegion"))
                .cast<NativeFunction<TglMemoryBarrierByRegion_Native>>()
                .asFunction();
        this.getTextureSubImage =
            wglGetProcAddress(Utf8.toUtf8("glGetTextureSubImage"))
                .cast<NativeFunction<TglGetTextureSubImage_Native>>()
                .asFunction();
        this.getCompressedTextureSubImage =
            wglGetProcAddress(Utf8.toUtf8("glGetCompressedTextureSubImage"))
                .cast<NativeFunction<TglGetCompressedTextureSubImage_Native>>()
                .asFunction();
        this.getGraphicsResetStatus =
            wglGetProcAddress(Utf8.toUtf8("glGetGraphicsResetStatus"))
                .cast<NativeFunction<TglGetGraphicsResetStatus_Native>>()
                .asFunction();
        this.getnCompressedTexImage =
            wglGetProcAddress(Utf8.toUtf8("glGetnCompressedTexImage"))
                .cast<NativeFunction<TglGetnCompressedTexImage_Native>>()
                .asFunction();
        this.getnTexImage = wglGetProcAddress(Utf8.toUtf8("glGetnTexImage"))
            .cast<NativeFunction<TglGetnTexImage_Native>>()
            .asFunction();
        this.getnUniformdv = wglGetProcAddress(Utf8.toUtf8("glGetnUniformdv"))
            .cast<NativeFunction<TglGetnUniformdv_Native>>()
            .asFunction();
        this.getnUniformfv = wglGetProcAddress(Utf8.toUtf8("glGetnUniformfv"))
            .cast<NativeFunction<TglGetnUniformfv_Native>>()
            .asFunction();
        this.getnUniformiv = wglGetProcAddress(Utf8.toUtf8("glGetnUniformiv"))
            .cast<NativeFunction<TglGetnUniformiv_Native>>()
            .asFunction();
        this.getnUniformuiv = wglGetProcAddress(Utf8.toUtf8("glGetnUniformuiv"))
            .cast<NativeFunction<TglGetnUniformuiv_Native>>()
            .asFunction();
        this.readnPixels = wglGetProcAddress(Utf8.toUtf8("glReadnPixels"))
            .cast<NativeFunction<TglReadnPixels_Native>>()
            .asFunction();
        this.getnMapdv = wglGetProcAddress(Utf8.toUtf8("glGetnMapdv"))
            .cast<NativeFunction<TglGetnMapdv_Native>>()
            .asFunction();
        this.getnMapfv = wglGetProcAddress(Utf8.toUtf8("glGetnMapfv"))
            .cast<NativeFunction<TglGetnMapfv_Native>>()
            .asFunction();
        this.getnMapiv = wglGetProcAddress(Utf8.toUtf8("glGetnMapiv"))
            .cast<NativeFunction<TglGetnMapiv_Native>>()
            .asFunction();
        this.getnPixelMapfv = wglGetProcAddress(Utf8.toUtf8("glGetnPixelMapfv"))
            .cast<NativeFunction<TglGetnPixelMapfv_Native>>()
            .asFunction();
        this.getnPixelMapuiv =
            wglGetProcAddress(Utf8.toUtf8("glGetnPixelMapuiv"))
                .cast<NativeFunction<TglGetnPixelMapuiv_Native>>()
                .asFunction();
        this.getnPixelMapusv =
            wglGetProcAddress(Utf8.toUtf8("glGetnPixelMapusv"))
                .cast<NativeFunction<TglGetnPixelMapusv_Native>>()
                .asFunction();
        this.getnPolygonStipple =
            wglGetProcAddress(Utf8.toUtf8("glGetnPolygonStipple"))
                .cast<NativeFunction<TglGetnPolygonStipple_Native>>()
                .asFunction();
        this.getnColorTable = wglGetProcAddress(Utf8.toUtf8("glGetnColorTable"))
            .cast<NativeFunction<TglGetnColorTable_Native>>()
            .asFunction();
        this.getnConvolutionFilter =
            wglGetProcAddress(Utf8.toUtf8("glGetnConvolutionFilter"))
                .cast<NativeFunction<TglGetnConvolutionFilter_Native>>()
                .asFunction();
        this.getnSeparableFilter =
            wglGetProcAddress(Utf8.toUtf8("glGetnSeparableFilter"))
                .cast<NativeFunction<TglGetnSeparableFilter_Native>>()
                .asFunction();
        this.getnHistogram = wglGetProcAddress(Utf8.toUtf8("glGetnHistogram"))
            .cast<NativeFunction<TglGetnHistogram_Native>>()
            .asFunction();
        this.getnMinmax = wglGetProcAddress(Utf8.toUtf8("glGetnMinmax"))
            .cast<NativeFunction<TglGetnMinmax_Native>>()
            .asFunction();
        this.textureBarrier = wglGetProcAddress(Utf8.toUtf8("glTextureBarrier"))
            .cast<NativeFunction<TglTextureBarrier_Native>>()
            .asFunction();
      } else {
        this.clipControl = dylib
            .lookup<NativeFunction<TglClipControl_Native>>('glClipControl')
            .asFunction();
        this.createTransformFeedbacks = dylib
            .lookup<NativeFunction<TglCreateTransformFeedbacks_Native>>(
                'glCreateTransformFeedbacks')
            .asFunction();
        this.transformFeedbackBufferBase = dylib
            .lookup<NativeFunction<TglTransformFeedbackBufferBase_Native>>(
                'glTransformFeedbackBufferBase')
            .asFunction();
        this.transformFeedbackBufferRange = dylib
            .lookup<NativeFunction<TglTransformFeedbackBufferRange_Native>>(
                'glTransformFeedbackBufferRange')
            .asFunction();
        this.getTransformFeedbackiv = dylib
            .lookup<NativeFunction<TglGetTransformFeedbackiv_Native>>(
                'glGetTransformFeedbackiv')
            .asFunction();
        this.getTransformFeedbacki_v = dylib
            .lookup<NativeFunction<TglGetTransformFeedbacki_v_Native>>(
                'glGetTransformFeedbacki_v')
            .asFunction();
        this.getTransformFeedbacki64_v = dylib
            .lookup<NativeFunction<TglGetTransformFeedbacki64_v_Native>>(
                'glGetTransformFeedbacki64_v')
            .asFunction();
        this.createBuffers = dylib
            .lookup<NativeFunction<TglCreateBuffers_Native>>('glCreateBuffers')
            .asFunction();
        this.namedBufferStorage = dylib
            .lookup<NativeFunction<TglNamedBufferStorage_Native>>(
                'glNamedBufferStorage')
            .asFunction();
        this.namedBufferData = dylib
            .lookup<NativeFunction<TglNamedBufferData_Native>>(
                'glNamedBufferData')
            .asFunction();
        this.namedBufferSubData = dylib
            .lookup<NativeFunction<TglNamedBufferSubData_Native>>(
                'glNamedBufferSubData')
            .asFunction();
        this.copyNamedBufferSubData = dylib
            .lookup<NativeFunction<TglCopyNamedBufferSubData_Native>>(
                'glCopyNamedBufferSubData')
            .asFunction();
        this.clearNamedBufferData = dylib
            .lookup<NativeFunction<TglClearNamedBufferData_Native>>(
                'glClearNamedBufferData')
            .asFunction();
        this.clearNamedBufferSubData = dylib
            .lookup<NativeFunction<TglClearNamedBufferSubData_Native>>(
                'glClearNamedBufferSubData')
            .asFunction();
        this.mapNamedBuffer = dylib
            .lookup<NativeFunction<TglMapNamedBuffer_Native>>(
                'glMapNamedBuffer')
            .asFunction();
        this.mapNamedBufferRange = dylib
            .lookup<NativeFunction<TglMapNamedBufferRange_Native>>(
                'glMapNamedBufferRange')
            .asFunction();
        this.unmapNamedBuffer = dylib
            .lookup<NativeFunction<TglUnmapNamedBuffer_Native>>(
                'glUnmapNamedBuffer')
            .asFunction();
        this.flushMappedNamedBufferRange = dylib
            .lookup<NativeFunction<TglFlushMappedNamedBufferRange_Native>>(
                'glFlushMappedNamedBufferRange')
            .asFunction();
        this.getNamedBufferParameteriv = dylib
            .lookup<NativeFunction<TglGetNamedBufferParameteriv_Native>>(
                'glGetNamedBufferParameteriv')
            .asFunction();
        this.getNamedBufferParameteri64v = dylib
            .lookup<NativeFunction<TglGetNamedBufferParameteri64v_Native>>(
                'glGetNamedBufferParameteri64v')
            .asFunction();
        this.getNamedBufferPointerv = dylib
            .lookup<NativeFunction<TglGetNamedBufferPointerv_Native>>(
                'glGetNamedBufferPointerv')
            .asFunction();
        this.getNamedBufferSubData = dylib
            .lookup<NativeFunction<TglGetNamedBufferSubData_Native>>(
                'glGetNamedBufferSubData')
            .asFunction();
        this.createFramebuffers = dylib
            .lookup<NativeFunction<TglCreateFramebuffers_Native>>(
                'glCreateFramebuffers')
            .asFunction();
        this.namedFramebufferRenderbuffer = dylib
            .lookup<NativeFunction<TglNamedFramebufferRenderbuffer_Native>>(
                'glNamedFramebufferRenderbuffer')
            .asFunction();
        this.namedFramebufferParameteri = dylib
            .lookup<NativeFunction<TglNamedFramebufferParameteri_Native>>(
                'glNamedFramebufferParameteri')
            .asFunction();
        this.namedFramebufferTexture = dylib
            .lookup<NativeFunction<TglNamedFramebufferTexture_Native>>(
                'glNamedFramebufferTexture')
            .asFunction();
        this.namedFramebufferTextureLayer = dylib
            .lookup<NativeFunction<TglNamedFramebufferTextureLayer_Native>>(
                'glNamedFramebufferTextureLayer')
            .asFunction();
        this.namedFramebufferDrawBuffer = dylib
            .lookup<NativeFunction<TglNamedFramebufferDrawBuffer_Native>>(
                'glNamedFramebufferDrawBuffer')
            .asFunction();
        this.namedFramebufferDrawBuffers = dylib
            .lookup<NativeFunction<TglNamedFramebufferDrawBuffers_Native>>(
                'glNamedFramebufferDrawBuffers')
            .asFunction();
        this.namedFramebufferReadBuffer = dylib
            .lookup<NativeFunction<TglNamedFramebufferReadBuffer_Native>>(
                'glNamedFramebufferReadBuffer')
            .asFunction();
        this.invalidateNamedFramebufferData = dylib
            .lookup<NativeFunction<TglInvalidateNamedFramebufferData_Native>>(
                'glInvalidateNamedFramebufferData')
            .asFunction();
        this.invalidateNamedFramebufferSubData = dylib
            .lookup<
                    NativeFunction<
                        TglInvalidateNamedFramebufferSubData_Native>>(
                'glInvalidateNamedFramebufferSubData')
            .asFunction();
        this.clearNamedFramebufferiv = dylib
            .lookup<NativeFunction<TglClearNamedFramebufferiv_Native>>(
                'glClearNamedFramebufferiv')
            .asFunction();
        this.clearNamedFramebufferuiv = dylib
            .lookup<NativeFunction<TglClearNamedFramebufferuiv_Native>>(
                'glClearNamedFramebufferuiv')
            .asFunction();
        this.clearNamedFramebufferfv = dylib
            .lookup<NativeFunction<TglClearNamedFramebufferfv_Native>>(
                'glClearNamedFramebufferfv')
            .asFunction();
        this.clearNamedFramebufferfi = dylib
            .lookup<NativeFunction<TglClearNamedFramebufferfi_Native>>(
                'glClearNamedFramebufferfi')
            .asFunction();
        this.blitNamedFramebuffer = dylib
            .lookup<NativeFunction<TglBlitNamedFramebuffer_Native>>(
                'glBlitNamedFramebuffer')
            .asFunction();
        this.checkNamedFramebufferStatus = dylib
            .lookup<NativeFunction<TglCheckNamedFramebufferStatus_Native>>(
                'glCheckNamedFramebufferStatus')
            .asFunction();
        this.getNamedFramebufferParameteriv = dylib
            .lookup<NativeFunction<TglGetNamedFramebufferParameteriv_Native>>(
                'glGetNamedFramebufferParameteriv')
            .asFunction();
        this.getNamedFramebufferAttachmentParameteriv = dylib
            .lookup<
                    NativeFunction<
                        TglGetNamedFramebufferAttachmentParameteriv_Native>>(
                'glGetNamedFramebufferAttachmentParameteriv')
            .asFunction();
        this.createRenderbuffers = dylib
            .lookup<NativeFunction<TglCreateRenderbuffers_Native>>(
                'glCreateRenderbuffers')
            .asFunction();
        this.namedRenderbufferStorage = dylib
            .lookup<NativeFunction<TglNamedRenderbufferStorage_Native>>(
                'glNamedRenderbufferStorage')
            .asFunction();
        this.namedRenderbufferStorageMultisample = dylib
            .lookup<
                    NativeFunction<
                        TglNamedRenderbufferStorageMultisample_Native>>(
                'glNamedRenderbufferStorageMultisample')
            .asFunction();
        this.getNamedRenderbufferParameteriv = dylib
            .lookup<NativeFunction<TglGetNamedRenderbufferParameteriv_Native>>(
                'glGetNamedRenderbufferParameteriv')
            .asFunction();
        this.createTextures = dylib
            .lookup<NativeFunction<TglCreateTextures_Native>>(
                'glCreateTextures')
            .asFunction();
        this.textureBuffer = dylib
            .lookup<NativeFunction<TglTextureBuffer_Native>>('glTextureBuffer')
            .asFunction();
        this.textureBufferRange = dylib
            .lookup<NativeFunction<TglTextureBufferRange_Native>>(
                'glTextureBufferRange')
            .asFunction();
        this.textureStorage1D = dylib
            .lookup<NativeFunction<TglTextureStorage1D_Native>>(
                'glTextureStorage1D')
            .asFunction();
        this.textureStorage2D = dylib
            .lookup<NativeFunction<TglTextureStorage2D_Native>>(
                'glTextureStorage2D')
            .asFunction();
        this.textureStorage3D = dylib
            .lookup<NativeFunction<TglTextureStorage3D_Native>>(
                'glTextureStorage3D')
            .asFunction();
        this.textureStorage2DMultisample = dylib
            .lookup<NativeFunction<TglTextureStorage2DMultisample_Native>>(
                'glTextureStorage2DMultisample')
            .asFunction();
        this.textureStorage3DMultisample = dylib
            .lookup<NativeFunction<TglTextureStorage3DMultisample_Native>>(
                'glTextureStorage3DMultisample')
            .asFunction();
        this.textureSubImage1D = dylib
            .lookup<NativeFunction<TglTextureSubImage1D_Native>>(
                'glTextureSubImage1D')
            .asFunction();
        this.textureSubImage2D = dylib
            .lookup<NativeFunction<TglTextureSubImage2D_Native>>(
                'glTextureSubImage2D')
            .asFunction();
        this.textureSubImage3D = dylib
            .lookup<NativeFunction<TglTextureSubImage3D_Native>>(
                'glTextureSubImage3D')
            .asFunction();
        this.compressedTextureSubImage1D = dylib
            .lookup<NativeFunction<TglCompressedTextureSubImage1D_Native>>(
                'glCompressedTextureSubImage1D')
            .asFunction();
        this.compressedTextureSubImage2D = dylib
            .lookup<NativeFunction<TglCompressedTextureSubImage2D_Native>>(
                'glCompressedTextureSubImage2D')
            .asFunction();
        this.compressedTextureSubImage3D = dylib
            .lookup<NativeFunction<TglCompressedTextureSubImage3D_Native>>(
                'glCompressedTextureSubImage3D')
            .asFunction();
        this.copyTextureSubImage1D = dylib
            .lookup<NativeFunction<TglCopyTextureSubImage1D_Native>>(
                'glCopyTextureSubImage1D')
            .asFunction();
        this.copyTextureSubImage2D = dylib
            .lookup<NativeFunction<TglCopyTextureSubImage2D_Native>>(
                'glCopyTextureSubImage2D')
            .asFunction();
        this.copyTextureSubImage3D = dylib
            .lookup<NativeFunction<TglCopyTextureSubImage3D_Native>>(
                'glCopyTextureSubImage3D')
            .asFunction();
        this.textureParameterf = dylib
            .lookup<NativeFunction<TglTextureParameterf_Native>>(
                'glTextureParameterf')
            .asFunction();
        this.textureParameterfv = dylib
            .lookup<NativeFunction<TglTextureParameterfv_Native>>(
                'glTextureParameterfv')
            .asFunction();
        this.textureParameteri = dylib
            .lookup<NativeFunction<TglTextureParameteri_Native>>(
                'glTextureParameteri')
            .asFunction();
        this.textureParameterIiv = dylib
            .lookup<NativeFunction<TglTextureParameterIiv_Native>>(
                'glTextureParameterIiv')
            .asFunction();
        this.textureParameterIuiv = dylib
            .lookup<NativeFunction<TglTextureParameterIuiv_Native>>(
                'glTextureParameterIuiv')
            .asFunction();
        this.textureParameteriv = dylib
            .lookup<NativeFunction<TglTextureParameteriv_Native>>(
                'glTextureParameteriv')
            .asFunction();
        this.generateTextureMipmap = dylib
            .lookup<NativeFunction<TglGenerateTextureMipmap_Native>>(
                'glGenerateTextureMipmap')
            .asFunction();
        this.bindTextureUnit = dylib
            .lookup<NativeFunction<TglBindTextureUnit_Native>>(
                'glBindTextureUnit')
            .asFunction();
        this.getTextureImage = dylib
            .lookup<NativeFunction<TglGetTextureImage_Native>>(
                'glGetTextureImage')
            .asFunction();
        this.getCompressedTextureImage = dylib
            .lookup<NativeFunction<TglGetCompressedTextureImage_Native>>(
                'glGetCompressedTextureImage')
            .asFunction();
        this.getTextureLevelParameterfv = dylib
            .lookup<NativeFunction<TglGetTextureLevelParameterfv_Native>>(
                'glGetTextureLevelParameterfv')
            .asFunction();
        this.getTextureLevelParameteriv = dylib
            .lookup<NativeFunction<TglGetTextureLevelParameteriv_Native>>(
                'glGetTextureLevelParameteriv')
            .asFunction();
        this.getTextureParameterfv = dylib
            .lookup<NativeFunction<TglGetTextureParameterfv_Native>>(
                'glGetTextureParameterfv')
            .asFunction();
        this.getTextureParameterIiv = dylib
            .lookup<NativeFunction<TglGetTextureParameterIiv_Native>>(
                'glGetTextureParameterIiv')
            .asFunction();
        this.getTextureParameterIuiv = dylib
            .lookup<NativeFunction<TglGetTextureParameterIuiv_Native>>(
                'glGetTextureParameterIuiv')
            .asFunction();
        this.getTextureParameteriv = dylib
            .lookup<NativeFunction<TglGetTextureParameteriv_Native>>(
                'glGetTextureParameteriv')
            .asFunction();
        this.createVertexArrays = dylib
            .lookup<NativeFunction<TglCreateVertexArrays_Native>>(
                'glCreateVertexArrays')
            .asFunction();
        this.disableVertexArrayAttrib = dylib
            .lookup<NativeFunction<TglDisableVertexArrayAttrib_Native>>(
                'glDisableVertexArrayAttrib')
            .asFunction();
        this.enableVertexArrayAttrib = dylib
            .lookup<NativeFunction<TglEnableVertexArrayAttrib_Native>>(
                'glEnableVertexArrayAttrib')
            .asFunction();
        this.vertexArrayElementBuffer = dylib
            .lookup<NativeFunction<TglVertexArrayElementBuffer_Native>>(
                'glVertexArrayElementBuffer')
            .asFunction();
        this.vertexArrayVertexBuffer = dylib
            .lookup<NativeFunction<TglVertexArrayVertexBuffer_Native>>(
                'glVertexArrayVertexBuffer')
            .asFunction();
        this.vertexArrayVertexBuffers = dylib
            .lookup<NativeFunction<TglVertexArrayVertexBuffers_Native>>(
                'glVertexArrayVertexBuffers')
            .asFunction();
        this.vertexArrayAttribBinding = dylib
            .lookup<NativeFunction<TglVertexArrayAttribBinding_Native>>(
                'glVertexArrayAttribBinding')
            .asFunction();
        this.vertexArrayAttribFormat = dylib
            .lookup<NativeFunction<TglVertexArrayAttribFormat_Native>>(
                'glVertexArrayAttribFormat')
            .asFunction();
        this.vertexArrayAttribIFormat = dylib
            .lookup<NativeFunction<TglVertexArrayAttribIFormat_Native>>(
                'glVertexArrayAttribIFormat')
            .asFunction();
        this.vertexArrayAttribLFormat = dylib
            .lookup<NativeFunction<TglVertexArrayAttribLFormat_Native>>(
                'glVertexArrayAttribLFormat')
            .asFunction();
        this.vertexArrayBindingDivisor = dylib
            .lookup<NativeFunction<TglVertexArrayBindingDivisor_Native>>(
                'glVertexArrayBindingDivisor')
            .asFunction();
        this.getVertexArrayiv = dylib
            .lookup<NativeFunction<TglGetVertexArrayiv_Native>>(
                'glGetVertexArrayiv')
            .asFunction();
        this.getVertexArrayIndexediv = dylib
            .lookup<NativeFunction<TglGetVertexArrayIndexediv_Native>>(
                'glGetVertexArrayIndexediv')
            .asFunction();
        this.getVertexArrayIndexed64iv = dylib
            .lookup<NativeFunction<TglGetVertexArrayIndexed64iv_Native>>(
                'glGetVertexArrayIndexed64iv')
            .asFunction();
        this.createSamplers = dylib
            .lookup<NativeFunction<TglCreateSamplers_Native>>(
                'glCreateSamplers')
            .asFunction();
        this.createProgramPipelines = dylib
            .lookup<NativeFunction<TglCreateProgramPipelines_Native>>(
                'glCreateProgramPipelines')
            .asFunction();
        this.createQueries = dylib
            .lookup<NativeFunction<TglCreateQueries_Native>>('glCreateQueries')
            .asFunction();
        this.getQueryBufferObjecti64v = dylib
            .lookup<NativeFunction<TglGetQueryBufferObjecti64v_Native>>(
                'glGetQueryBufferObjecti64v')
            .asFunction();
        this.getQueryBufferObjectiv = dylib
            .lookup<NativeFunction<TglGetQueryBufferObjectiv_Native>>(
                'glGetQueryBufferObjectiv')
            .asFunction();
        this.getQueryBufferObjectui64v = dylib
            .lookup<NativeFunction<TglGetQueryBufferObjectui64v_Native>>(
                'glGetQueryBufferObjectui64v')
            .asFunction();
        this.getQueryBufferObjectuiv = dylib
            .lookup<NativeFunction<TglGetQueryBufferObjectuiv_Native>>(
                'glGetQueryBufferObjectuiv')
            .asFunction();
        this.memoryBarrierByRegion = dylib
            .lookup<NativeFunction<TglMemoryBarrierByRegion_Native>>(
                'glMemoryBarrierByRegion')
            .asFunction();
        this.getTextureSubImage = dylib
            .lookup<NativeFunction<TglGetTextureSubImage_Native>>(
                'glGetTextureSubImage')
            .asFunction();
        this.getCompressedTextureSubImage = dylib
            .lookup<NativeFunction<TglGetCompressedTextureSubImage_Native>>(
                'glGetCompressedTextureSubImage')
            .asFunction();
        this.getGraphicsResetStatus = dylib
            .lookup<NativeFunction<TglGetGraphicsResetStatus_Native>>(
                'glGetGraphicsResetStatus')
            .asFunction();
        this.getnCompressedTexImage = dylib
            .lookup<NativeFunction<TglGetnCompressedTexImage_Native>>(
                'glGetnCompressedTexImage')
            .asFunction();
        this.getnTexImage = dylib
            .lookup<NativeFunction<TglGetnTexImage_Native>>('glGetnTexImage')
            .asFunction();
        this.getnUniformdv = dylib
            .lookup<NativeFunction<TglGetnUniformdv_Native>>('glGetnUniformdv')
            .asFunction();
        this.getnUniformfv = dylib
            .lookup<NativeFunction<TglGetnUniformfv_Native>>('glGetnUniformfv')
            .asFunction();
        this.getnUniformiv = dylib
            .lookup<NativeFunction<TglGetnUniformiv_Native>>('glGetnUniformiv')
            .asFunction();
        this.getnUniformuiv = dylib
            .lookup<NativeFunction<TglGetnUniformuiv_Native>>(
                'glGetnUniformuiv')
            .asFunction();
        this.readnPixels = dylib
            .lookup<NativeFunction<TglReadnPixels_Native>>('glReadnPixels')
            .asFunction();
        this.getnMapdv = dylib
            .lookup<NativeFunction<TglGetnMapdv_Native>>('glGetnMapdv')
            .asFunction();
        this.getnMapfv = dylib
            .lookup<NativeFunction<TglGetnMapfv_Native>>('glGetnMapfv')
            .asFunction();
        this.getnMapiv = dylib
            .lookup<NativeFunction<TglGetnMapiv_Native>>('glGetnMapiv')
            .asFunction();
        this.getnPixelMapfv = dylib
            .lookup<NativeFunction<TglGetnPixelMapfv_Native>>(
                'glGetnPixelMapfv')
            .asFunction();
        this.getnPixelMapuiv = dylib
            .lookup<NativeFunction<TglGetnPixelMapuiv_Native>>(
                'glGetnPixelMapuiv')
            .asFunction();
        this.getnPixelMapusv = dylib
            .lookup<NativeFunction<TglGetnPixelMapusv_Native>>(
                'glGetnPixelMapusv')
            .asFunction();
        this.getnPolygonStipple = dylib
            .lookup<NativeFunction<TglGetnPolygonStipple_Native>>(
                'glGetnPolygonStipple')
            .asFunction();
        this.getnColorTable = dylib
            .lookup<NativeFunction<TglGetnColorTable_Native>>(
                'glGetnColorTable')
            .asFunction();
        this.getnConvolutionFilter = dylib
            .lookup<NativeFunction<TglGetnConvolutionFilter_Native>>(
                'glGetnConvolutionFilter')
            .asFunction();
        this.getnSeparableFilter = dylib
            .lookup<NativeFunction<TglGetnSeparableFilter_Native>>(
                'glGetnSeparableFilter')
            .asFunction();
        this.getnHistogram = dylib
            .lookup<NativeFunction<TglGetnHistogram_Native>>('glGetnHistogram')
            .asFunction();
        this.getnMinmax = dylib
            .lookup<NativeFunction<TglGetnMinmax_Native>>('glGetnMinmax')
            .asFunction();
        this.textureBarrier = dylib
            .lookup<NativeFunction<TglTextureBarrier_Native>>(
                'glTextureBarrier')
            .asFunction();
      }
    }
    /* GL_VERSION_4_6 */
    if (version.index == GlVersion.GL_VERSION_4_6.index) {
      if (Platform.isWindows) {
        this.specializeShader =
            wglGetProcAddress(Utf8.toUtf8("glSpecializeShader"))
                .cast<NativeFunction<TglSpecializeShader_Native>>()
                .asFunction();
        this.multiDrawArraysIndirectCount =
            wglGetProcAddress(Utf8.toUtf8("glMultiDrawArraysIndirectCount"))
                .cast<NativeFunction<TglMultiDrawArraysIndirectCount_Native>>()
                .asFunction();
        this.multiDrawElementsIndirectCount = wglGetProcAddress(
                Utf8.toUtf8("glMultiDrawElementsIndirectCount"))
            .cast<NativeFunction<TglMultiDrawElementsIndirectCount_Native>>()
            .asFunction();
        this.polygonOffsetClamp =
            wglGetProcAddress(Utf8.toUtf8("glPolygonOffsetClamp"))
                .cast<NativeFunction<TglPolygonOffsetClamp_Native>>()
                .asFunction();
      } else {
        this.specializeShader = dylib
            .lookup<NativeFunction<TglSpecializeShader_Native>>(
                'glSpecializeShader')
            .asFunction();
        this.multiDrawArraysIndirectCount = dylib
            .lookup<NativeFunction<TglMultiDrawArraysIndirectCount_Native>>(
                'glMultiDrawArraysIndirectCount')
            .asFunction();
        this.multiDrawElementsIndirectCount = dylib
            .lookup<NativeFunction<TglMultiDrawElementsIndirectCount_Native>>(
                'glMultiDrawElementsIndirectCount')
            .asFunction();
        this.polygonOffsetClamp = dylib
            .lookup<NativeFunction<TglPolygonOffsetClamp_Native>>(
                'glPolygonOffsetClamp')
            .asFunction();
      }
    }
  }
/*
########     ###    ########  ########    ##   
##     ##   ## ##   ##     ##    ##     ####   
##     ##  ##   ##  ##     ##    ##       ##   
########  ##     ## ########     ##       ##   
##        ######### ##   ##      ##       ##   
##        ##     ## ##    ##     ##       ##   
##        ##     ## ##     ##    ##     ###### 

 */
  TglClearIndex_Func clearIndex;
  TglClearColor_Func clearColor;
  TglClear_Func clear;
  TglIndexMask_Func indexMask;
  TglColorMask_Func colorMask;
  TglAlphaFunc_Func alphaFunc;
  TglBlendFunc_Func blendFunc;
  TglLogicOp_Func logicOp;
  TglCullFace_Func cullFace;
  TglFrontFace_Func frontFace;
  TglPointSize_Func pointSize;
  TglLineWidth_Func lineWidth;
  TglLineStipple_Func lineStipple;
  TglPolygonMode_Func polygonMode;
  TglPolygonOffset_Func polygonOffset;
  TglPolygonStipple_Func polygonStipple;
  TglGetPolygonStipple_Func getPolygonStipple;
  TglEdgeFlag_Func edgeFlag;
  TglEdgeFlagv_Func edgeFlagv;
  TglScissor_Func scissor;
  TglClipPlane_Func clipPlane;
  TglGetClipPlane_Func getClipPlane;
  TglDrawBuffer_Func drawBuffer;
  TglReadBuffer_Func readBuffer;
  TglEnable_Func enable;
  TglDisable_Func disable;
  TglIsEnabled_Func isEnabled;
  TglEnableClientState_Func enableClientState;
  TglDisableClientState_Func disableClientState;
  TglGetBooleanv_Func getBooleanv;
  TglGetDoublev_Func getDoublev;
  TglGetFloatv_Func getFloatv;
  TglGetIntegerv_Func getIntegerv;
  TglPushAttrib_Func pushAttrib;
  TglPopAttrib_Func popAttrib;
  TglPushClientAttrib_Func pushClientAttrib;
  TglPopClientAttrib_Func popClientAttrib;
  TglRenderMode_Func renderMode;
  TglGetError_Func getError;
  TglGetString_Func getString;
  TglFinish_Func finish;
  TglFlush_Func flush;
  TglHint_Func hint;
  TglClearDepth_Func clearDepth;
  TglDepthFunc_Func depthFunc;
  TglDepthMask_Func depthMask;
  TglDepthRange_Func depthRange;
  TglClearAccum_Func clearAccum;
  TglAccum_Func accum;
  TglMatrixMode_Func matrixMode;
  TglOrtho_Func ortho;
  TglFrustum_Func frustum;
  TglViewport_Func viewport;
  TglPushMatrix_Func pushMatrix;
  TglPopMatrix_Func popMatrix;
  TglLoadIdentity_Func loadIdentity;
  TglLoadMatrixd_Func loadMatrixd;
  TglLoadMatrixf_Func loadMatrixf;
  TglMultMatrixd_Func multMatrixd;
  TglMultMatrixf_Func multMatrixf;
  TglRotated_Func rotated;
  TglRotatef_Func rotatef;
  TglScaled_Func scaled;
  TglScalef_Func scalef;
  TglTranslated_Func translated;
  TglTranslatef_Func translatef;
  TglIsList_Func isList;
  TglDeleteLists_Func deleteLists;
  TglGenLists_Func genLists;
  TglNewList_Func newList;
  TglEndList_Func endList;
  TglCallList_Func callList;
  TglCallLists_Func callLists;
  TglListBase_Func listBase;
  TglBegin_Func begin;
  TglEnd_Func end;
  TglVertex2d_Func vertex2d;
  TglVertex2f_Func vertex2f;
  TglVertex2i_Func vertex2i;
  TglVertex2s_Func vertex2s;
  TglVertex3d_Func vertex3d;
  TglVertex3f_Func vertex3f;
  TglVertex3i_Func vertex3i;
  TglVertex3s_Func vertex3s;
  TglVertex4d_Func vertex4d;
  TglVertex4f_Func vertex4f;
  TglVertex4i_Func vertex4i;
  TglVertex4s_Func vertex4s;
  TglVertex2dv_Func vertex2dv;
  TglVertex2fv_Func vertex2fv;
  TglVertex2iv_Func vertex2iv;
  TglVertex2sv_Func vertex2sv;
  TglVertex3dv_Func vertex3dv;
  TglVertex3fv_Func vertex3fv;
  TglVertex3iv_Func vertex3iv;
  TglVertex3sv_Func vertex3sv;
  TglVertex4dv_Func vertex4dv;
  TglVertex4fv_Func vertex4fv;
  TglVertex4iv_Func vertex4iv;
  TglVertex4sv_Func vertex4sv;
  TglNormal3b_Func normal3b;
  TglNormal3d_Func normal3d;
  TglNormal3f_Func normal3f;
  TglNormal3i_Func normal3i;
  TglNormal3s_Func normal3s;
  TglNormal3bv_Func normal3bv;
  TglNormal3dv_Func normal3dv;
  TglNormal3fv_Func normal3fv;
  TglNormal3iv_Func normal3iv;
  TglNormal3sv_Func normal3sv;
  TglIndexd_Func indexd;
  TglIndexf_Func indexf;
  TglIndexi_Func indexi;
  TglIndexs_Func indexs;
  TglIndexub_Func indexub;
  TglIndexdv_Func indexdv;
  TglIndexfv_Func indexfv;
  TglIndexiv_Func indexiv;
  TglIndexsv_Func indexsv;
  TglIndexubv_Func indexubv;
  TglColor3b_Func color3b;
  TglColor3d_Func color3d;
  TglColor3f_Func color3f;
  TglColor3i_Func color3i;
  TglColor3s_Func color3s;
  TglColor3ub_Func color3ub;
  TglColor3ui_Func color3ui;
  TglColor3us_Func color3us;
  TglColor4b_Func color4b;
  TglColor4d_Func color4d;
  TglColor4f_Func color4f;
  TglColor4i_Func color4i;
  TglColor4s_Func color4s;
  TglColor4ub_Func color4ub;
  TglColor4ui_Func color4ui;
  TglColor4us_Func color4us;
  TglColor3bv_Func color3bv;
  TglColor3dv_Func color3dv;
  TglColor3fv_Func color3fv;
  TglColor3iv_Func color3iv;
  TglColor3sv_Func color3sv;
  TglColor3ubv_Func color3ubv;
  TglColor3uiv_Func color3uiv;
  TglColor3usv_Func color3usv;
  TglColor4bv_Func color4bv;
  TglColor4dv_Func color4dv;
  TglColor4fv_Func color4fv;
  TglColor4iv_Func color4iv;
  TglColor4sv_Func color4sv;
  TglColor4ubv_Func color4ubv;
  TglColor4uiv_Func color4uiv;
  TglColor4usv_Func color4usv;
  TglTexCoord1d_Func texCoord1d;
  TglTexCoord1f_Func texCoord1f;
  TglTexCoord1i_Func texCoord1i;
  TglTexCoord1s_Func texCoord1s;
  TglTexCoord2d_Func texCoord2d;
  TglTexCoord2f_Func texCoord2f;
  TglTexCoord2i_Func texCoord2i;
  TglTexCoord2s_Func texCoord2s;
  TglTexCoord3d_Func texCoord3d;
  TglTexCoord3f_Func texCoord3f;
  TglTexCoord3i_Func texCoord3i;
  TglTexCoord3s_Func texCoord3s;
  TglTexCoord4d_Func texCoord4d;
  TglTexCoord4f_Func texCoord4f;
  TglTexCoord4i_Func texCoord4i;
  TglTexCoord4s_Func texCoord4s;
  TglTexCoord1dv_Func texCoord1dv;
  TglTexCoord1fv_Func texCoord1fv;
  TglTexCoord1iv_Func texCoord1iv;
  TglTexCoord1sv_Func texCoord1sv;
  TglTexCoord2dv_Func texCoord2dv;
  TglTexCoord2fv_Func texCoord2fv;
  TglTexCoord2iv_Func texCoord2iv;
  TglTexCoord2sv_Func texCoord2sv;
  TglTexCoord3dv_Func texCoord3dv;
  TglTexCoord3fv_Func texCoord3fv;
  TglTexCoord3iv_Func texCoord3iv;
  TglTexCoord3sv_Func texCoord3sv;
  TglTexCoord4dv_Func texCoord4dv;
  TglTexCoord4fv_Func texCoord4fv;
  TglTexCoord4iv_Func texCoord4iv;
  TglTexCoord4sv_Func texCoord4sv;
  TglRasterPos2d_Func rasterPos2d;
  TglRasterPos2f_Func rasterPos2f;
  TglRasterPos2i_Func rasterPos2i;
  TglRasterPos2s_Func rasterPos2s;
  TglRasterPos3d_Func rasterPos3d;
  TglRasterPos3f_Func rasterPos3f;
  TglRasterPos3i_Func rasterPos3i;
  TglRasterPos3s_Func rasterPos3s;
  TglRasterPos4d_Func rasterPos4d;
  TglRasterPos4f_Func rasterPos4f;
  TglRasterPos4i_Func rasterPos4i;
  TglRasterPos4s_Func rasterPos4s;
  TglRasterPos2dv_Func rasterPos2dv;
  TglRasterPos2fv_Func rasterPos2fv;
  TglRasterPos2iv_Func rasterPos2iv;
  TglRasterPos2sv_Func rasterPos2sv;
  TglRasterPos3dv_Func rasterPos3dv;
  TglRasterPos3fv_Func rasterPos3fv;
  TglRasterPos3iv_Func rasterPos3iv;
  TglRasterPos3sv_Func rasterPos3sv;
  TglRasterPos4dv_Func rasterPos4dv;
  TglRasterPos4fv_Func rasterPos4fv;
  TglRasterPos4iv_Func rasterPos4iv;
  TglRasterPos4sv_Func rasterPos4sv;
  TglRectd_Func rectd;
  TglRectf_Func rectf;
  TglRecti_Func recti;
  TglRects_Func rects;
  TglRectdv_Func rectdv;
  TglRectfv_Func rectfv;
  TglRectiv_Func rectiv;
  TglRectsv_Func rectsv;
  TglVertexPointer_Func vertexPointer;
  TglNormalPointer_Func normalPointer;
  TglColorPointer_Func colorPointer;
  TglIndexPointer_Func indexPointer;
  TglTexCoordPointer_Func texCoordPointer;
  TglEdgeFlagPointer_Func edgeFlagPointer;
  TglGetPointerv_Func getPointerv;
  TglArrayElement_Func arrayElement;
  TglDrawArrays_Func drawArrays;
  TglDrawElements_Func drawElements;
  TglInterleavedArrays_Func interleavedArrays;
  TglShadeModel_Func shadeModel;
  TglLightf_Func lightf;
  TglLighti_Func lighti;
  TglLightfv_Func lightfv;
  TglLightiv_Func lightiv;
  TglGetLightfv_Func getLightfv;
  TglGetLightiv_Func getLightiv;
  TglLightModelf_Func lightModelf;
  TglLightModeli_Func lightModeli;
  TglLightModelfv_Func lightModelfv;
  TglLightModeliv_Func lightModeliv;
  TglMaterialf_Func materialf;
  TglMateriali_Func materiali;
  TglMaterialfv_Func materialfv;
  TglMaterialiv_Func materialiv;
  TglGetMaterialfv_Func getMaterialfv;
  TglGetMaterialiv_Func getMaterialiv;
  TglColorMaterial_Func colorMaterial;
  TglPixelZoom_Func pixelZoom;
  TglPixelStoref_Func pixelStoref;
  TglPixelStorei_Func pixelStorei;
  TglPixelTransferf_Func pixelTransferf;
  TglPixelTransferi_Func pixelTransferi;
  TglPixelMapfv_Func pixelMapfv;
  TglPixelMapuiv_Func pixelMapuiv;
  TglPixelMapusv_Func pixelMapusv;
  TglGetPixelMapfv_Func getPixelMapfv;
  TglGetPixelMapuiv_Func getPixelMapuiv;
  TglGetPixelMapusv_Func getPixelMapusv;
  TglBitmap_Func bitmap;
  TglReadPixels_Func readPixels;
  TglDrawPixels_Func drawPixels;
  TglCopyPixels_Func copyPixels;
  TglStencilFunc_Func stencilFunc;
  TglStencilMask_Func stencilMask;
  TglStencilOp_Func stencilOp;
  TglClearStencil_Func clearStencil;
  TglTexGend_Func texGend;
  TglTexGenf_Func texGenf;
  TglTexGeni_Func texGeni;
  TglTexGendv_Func texGendv;
  TglTexGenfv_Func texGenfv;
  TglTexGeniv_Func texGeniv;
  TglGetTexGendv_Func getTexGendv;
  TglGetTexGenfv_Func getTexGenfv;
  TglGetTexGeniv_Func getTexGeniv;
  TglTexEnvf_Func texEnvf;
  TglTexEnvi_Func texEnvi;
  TglTexEnvfv_Func texEnvfv;
  TglTexEnviv_Func texEnviv;
  TglGetTexEnvfv_Func getTexEnvfv;
  TglGetTexEnviv_Func getTexEnviv;
  TglTexParameterf_Func texParameterf;
  TglTexParameteri_Func texParameteri;
  TglTexParameterfv_Func texParameterfv;
  TglTexParameteriv_Func texParameteriv;
  TglGetTexParameterfv_Func getTexParameterfv;
  TglGetTexParameteriv_Func getTexParameteriv;
  TglGetTexLevelParameterfv_Func getTexLevelParameterfv;
  TglGetTexLevelParameteriv_Func getTexLevelParameteriv;
  TglTexImage1D_Func texImage1D;
  TglTexImage2D_Func texImage2D;
  TglGetTexImage_Func getTexImage;
  TglGenTextures_Func genTextures;
  TglDeleteTextures_Func deleteTextures;
  TglBindTexture_Func bindTexture;
  TglPrioritizeTextures_Func prioritizeTextures;
  TglAreTexturesResident_Func areTexturesResident;
  TglIsTexture_Func isTexture;
  TglTexSubImage1D_Func texSubImage1D;
  TglTexSubImage2D_Func texSubImage2D;
  TglCopyTexImage1D_Func copyTexImage1D;
  TglCopyTexImage2D_Func copyTexImage2D;
  TglCopyTexSubImage1D_Func copyTexSubImage1D;
  TglCopyTexSubImage2D_Func copyTexSubImage2D;
  TglMap1d_Func map1d;
  TglMap1f_Func map1f;
  TglMap2d_Func map2d;
  TglMap2f_Func map2f;
  TglGetMapdv_Func getMapdv;
  TglGetMapfv_Func getMapfv;
  TglGetMapiv_Func getMapiv;
  TglEvalCoord1d_Func evalCoord1d;
  TglEvalCoord1f_Func evalCoord1f;
  TglEvalCoord1dv_Func evalCoord1dv;
  TglEvalCoord1fv_Func evalCoord1fv;
  TglEvalCoord2d_Func evalCoord2d;
  TglEvalCoord2f_Func evalCoord2f;
  TglEvalCoord2dv_Func evalCoord2dv;
  TglEvalCoord2fv_Func evalCoord2fv;
  TglMapGrid1d_Func mapGrid1d;
  TglMapGrid1f_Func mapGrid1f;
  TglMapGrid2d_Func mapGrid2d;
  TglMapGrid2f_Func mapGrid2f;
  TglEvalPoint1_Func evalPoint1;
  TglEvalPoint2_Func evalPoint2;
  TglEvalMesh1_Func evalMesh1;
  TglEvalMesh2_Func evalMesh2;
  TglFogf_Func fogf;
  TglFogi_Func fogi;
  TglFogfv_Func fogfv;
  TglFogiv_Func fogiv;
  TglFeedbackBuffer_Func feedbackBuffer;
  TglPassThrough_Func passThrough;
  TglSelectBuffer_Func selectBuffer;
  TglInitNames_Func initNames;
  TglLoadName_Func loadName;
  TglPushName_Func pushName;
  TglPopName_Func popName;
  TglDrawRangeElements_Func drawRangeElements;
  TglTexImage3D_Func texImage3D;
  TglTexSubImage3D_Func texSubImage3D;
  TglCopyTexSubImage3D_Func copyTexSubImage3D;
  TglColorTable_Func colorTable;
  TglColorSubTable_Func colorSubTable;
  TglColorTableParameteriv_Func colorTableParameteriv;
  TglColorTableParameterfv_Func colorTableParameterfv;
  TglCopyColorSubTable_Func copyColorSubTable;
  TglCopyColorTable_Func copyColorTable;
  TglGetColorTable_Func getColorTable;
  TglGetColorTableParameterfv_Func getColorTableParameterfv;
  TglGetColorTableParameteriv_Func getColorTableParameteriv;
  TglBlendEquation_Func blendEquation;
  TglBlendColor_Func blendColor;
  TglHistogram_Func histogram;
  TglResetHistogram_Func resetHistogram;
  TglGetHistogram_Func getHistogram;
  TglGetHistogramParameterfv_Func getHistogramParameterfv;
  TglGetHistogramParameteriv_Func getHistogramParameteriv;
  TglMinmax_Func minmax;
  TglResetMinmax_Func resetMinmax;
  TglGetMinmax_Func getMinmax;
  TglGetMinmaxParameterfv_Func getMinmaxParameterfv;
  TglGetMinmaxParameteriv_Func getMinmaxParameteriv;
  TglConvolutionFilter1D_Func convolutionFilter1D;
  TglConvolutionFilter2D_Func convolutionFilter2D;
  TglConvolutionParameterf_Func convolutionParameterf;
  TglConvolutionParameterfv_Func convolutionParameterfv;
  TglConvolutionParameteri_Func convolutionParameteri;
  TglConvolutionParameteriv_Func convolutionParameteriv;
  TglCopyConvolutionFilter1D_Func copyConvolutionFilter1D;
  TglCopyConvolutionFilter2D_Func copyConvolutionFilter2D;
  TglGetConvolutionFilter_Func getConvolutionFilter;
  TglGetConvolutionParameterfv_Func getConvolutionParameterfv;
  TglGetConvolutionParameteriv_Func getConvolutionParameteriv;
  TglSeparableFilter2D_Func separableFilter2D;
  TglGetSeparableFilter_Func getSeparableFilter;
  TglActiveTexture_Func activeTexture;
  TglClientActiveTexture_Func clientActiveTexture;
  TglCompressedTexImage1D_Func compressedTexImage1D;
  TglCompressedTexImage2D_Func compressedTexImage2D;
  TglCompressedTexImage3D_Func compressedTexImage3D;
  TglCompressedTexSubImage1D_Func compressedTexSubImage1D;
  TglCompressedTexSubImage2D_Func compressedTexSubImage2D;
  TglCompressedTexSubImage3D_Func compressedTexSubImage3D;
  TglGetCompressedTexImage_Func getCompressedTexImage;
  TglMultiTexCoord1d_Func multiTexCoord1d;
  TglMultiTexCoord1dv_Func multiTexCoord1dv;
  TglMultiTexCoord1f_Func multiTexCoord1f;
  TglMultiTexCoord1fv_Func multiTexCoord1fv;
  TglMultiTexCoord1i_Func multiTexCoord1i;
  TglMultiTexCoord1iv_Func multiTexCoord1iv;
  TglMultiTexCoord1s_Func multiTexCoord1s;
  TglMultiTexCoord1sv_Func multiTexCoord1sv;
  TglMultiTexCoord2d_Func multiTexCoord2d;
  TglMultiTexCoord2dv_Func multiTexCoord2dv;
  TglMultiTexCoord2f_Func multiTexCoord2f;
  TglMultiTexCoord2fv_Func multiTexCoord2fv;
  TglMultiTexCoord2i_Func multiTexCoord2i;
  TglMultiTexCoord2iv_Func multiTexCoord2iv;
  TglMultiTexCoord2s_Func multiTexCoord2s;
  TglMultiTexCoord2sv_Func multiTexCoord2sv;
  TglMultiTexCoord3d_Func multiTexCoord3d;
  TglMultiTexCoord3dv_Func multiTexCoord3dv;
  TglMultiTexCoord3f_Func multiTexCoord3f;
  TglMultiTexCoord3fv_Func multiTexCoord3fv;
  TglMultiTexCoord3i_Func multiTexCoord3i;
  TglMultiTexCoord3iv_Func multiTexCoord3iv;
  TglMultiTexCoord3s_Func multiTexCoord3s;
  TglMultiTexCoord3sv_Func multiTexCoord3sv;
  TglMultiTexCoord4d_Func multiTexCoord4d;
  TglMultiTexCoord4dv_Func multiTexCoord4dv;
  TglMultiTexCoord4f_Func multiTexCoord4f;
  TglMultiTexCoord4fv_Func multiTexCoord4fv;
  TglMultiTexCoord4i_Func multiTexCoord4i;
  TglMultiTexCoord4iv_Func multiTexCoord4iv;
  TglMultiTexCoord4s_Func multiTexCoord4s;
  TglMultiTexCoord4sv_Func multiTexCoord4sv;
  TglLoadTransposeMatrixd_Func loadTransposeMatrixd;
  TglLoadTransposeMatrixf_Func loadTransposeMatrixf;
  TglMultTransposeMatrixd_Func multTransposeMatrixd;
  TglMultTransposeMatrixf_Func multTransposeMatrixf;
  TglSampleCoverage_Func sampleCoverage;
  TglActiveTextureARB_Func activeTextureARB;
  TglClientActiveTextureARB_Func clientActiveTextureARB;
  TglMultiTexCoord1dARB_Func multiTexCoord1dARB;
  TglMultiTexCoord1dvARB_Func multiTexCoord1dvARB;
  TglMultiTexCoord1fARB_Func multiTexCoord1fARB;
  TglMultiTexCoord1fvARB_Func multiTexCoord1fvARB;
  TglMultiTexCoord1iARB_Func multiTexCoord1iARB;
  TglMultiTexCoord1ivARB_Func multiTexCoord1ivARB;
  TglMultiTexCoord1sARB_Func multiTexCoord1sARB;
  TglMultiTexCoord1svARB_Func multiTexCoord1svARB;
  TglMultiTexCoord2dARB_Func multiTexCoord2dARB;
  TglMultiTexCoord2dvARB_Func multiTexCoord2dvARB;
  TglMultiTexCoord2fARB_Func multiTexCoord2fARB;
  TglMultiTexCoord2fvARB_Func multiTexCoord2fvARB;
  TglMultiTexCoord2iARB_Func multiTexCoord2iARB;
  TglMultiTexCoord2ivARB_Func multiTexCoord2ivARB;
  TglMultiTexCoord2sARB_Func multiTexCoord2sARB;
  TglMultiTexCoord2svARB_Func multiTexCoord2svARB;
  TglMultiTexCoord3dARB_Func multiTexCoord3dARB;
  TglMultiTexCoord3dvARB_Func multiTexCoord3dvARB;
  TglMultiTexCoord3fARB_Func multiTexCoord3fARB;
  TglMultiTexCoord3fvARB_Func multiTexCoord3fvARB;
  TglMultiTexCoord3iARB_Func multiTexCoord3iARB;
  TglMultiTexCoord3ivARB_Func multiTexCoord3ivARB;
  TglMultiTexCoord3sARB_Func multiTexCoord3sARB;
  TglMultiTexCoord3svARB_Func multiTexCoord3svARB;
  TglMultiTexCoord4dARB_Func multiTexCoord4dARB;
  TglMultiTexCoord4dvARB_Func multiTexCoord4dvARB;
  TglMultiTexCoord4fARB_Func multiTexCoord4fARB;
  TglMultiTexCoord4fvARB_Func multiTexCoord4fvARB;
  TglMultiTexCoord4iARB_Func multiTexCoord4iARB;
  TglMultiTexCoord4ivARB_Func multiTexCoord4ivARB;
  TglMultiTexCoord4sARB_Func multiTexCoord4sARB;
  TglMultiTexCoord4svARB_Func multiTexCoord4svARB;
/*
########     ###    ########  ########  #######  
##     ##   ## ##   ##     ##    ##    ##     ## 
##     ##  ##   ##  ##     ##    ##           ## 
########  ##     ## ########     ##     #######  
##        ######### ##   ##      ##    ##        
##        ##     ## ##    ##     ##    ##        
##        ##     ## ##     ##    ##    ######### 
*/
  TglBlendFuncSeparate_Func blendFuncSeparate;
  TglMultiDrawArrays_Func multiDrawArrays;
  TglMultiDrawElements_Func multiDrawElements;
  TglPointParameterf_Func pointParameterf;
  TglPointParameterfv_Func pointParameterfv;
  TglPointParameteri_Func pointParameteri;
  TglPointParameteriv_Func pointParameteriv;
  TglFogCoordf_Func fogCoordf;
  TglFogCoordfv_Func fogCoordfv;
  TglFogCoordd_Func fogCoordd;
  TglFogCoorddv_Func fogCoorddv;
  TglFogCoordPointer_Func fogCoordPointer;
  TglSecondaryColor3b_Func secondaryColor3b;
  TglSecondaryColor3bv_Func secondaryColor3bv;
  TglSecondaryColor3d_Func secondaryColor3d;
  TglSecondaryColor3dv_Func secondaryColor3dv;
  TglSecondaryColor3f_Func secondaryColor3f;
  TglSecondaryColor3fv_Func secondaryColor3fv;
  TglSecondaryColor3i_Func secondaryColor3i;
  TglSecondaryColor3iv_Func secondaryColor3iv;
  TglSecondaryColor3s_Func secondaryColor3s;
  TglSecondaryColor3sv_Func secondaryColor3sv;
  TglSecondaryColor3ub_Func secondaryColor3ub;
  TglSecondaryColor3ubv_Func secondaryColor3ubv;
  TglSecondaryColor3ui_Func secondaryColor3ui;
  TglSecondaryColor3uiv_Func secondaryColor3uiv;
  TglSecondaryColor3us_Func secondaryColor3us;
  TglSecondaryColor3usv_Func secondaryColor3usv;
  TglSecondaryColorPointer_Func secondaryColorPointer;
  TglWindowPos2d_Func windowPos2d;
  TglWindowPos2dv_Func windowPos2dv;
  TglWindowPos2f_Func windowPos2f;
  TglWindowPos2fv_Func windowPos2fv;
  TglWindowPos2i_Func windowPos2i;
  TglWindowPos2iv_Func windowPos2iv;
  TglWindowPos2s_Func windowPos2s;
  TglWindowPos2sv_Func windowPos2sv;
  TglWindowPos3d_Func windowPos3d;
  TglWindowPos3dv_Func windowPos3dv;
  TglWindowPos3f_Func windowPos3f;
  TglWindowPos3fv_Func windowPos3fv;
  TglWindowPos3i_Func windowPos3i;
  TglWindowPos3iv_Func windowPos3iv;
  TglWindowPos3s_Func windowPos3s;
  TglWindowPos3sv_Func windowPos3sv;
  TglGenQueries_Func genQueries;
  TglDeleteQueries_Func deleteQueries;
  TglIsQuery_Func isQuery;
  TglBeginQuery_Func beginQuery;
  TglEndQuery_Func endQuery;
  TglGetQueryiv_Func getQueryiv;
  TglGetQueryObjectiv_Func getQueryObjectiv;
  TglGetQueryObjectuiv_Func getQueryObjectuiv;
  TglBindBuffer_Func bindBuffer;
  TglDeleteBuffers_Func deleteBuffers;
  TglGenBuffers_Func genBuffers;
  TglIsBuffer_Func isBuffer;
  TglBufferData_Func bufferData;
  TglBufferSubData_Func bufferSubData;
  TglGetBufferSubData_Func getBufferSubData;
  TglMapBuffer_Func mapBuffer;
  TglUnmapBuffer_Func unmapBuffer;
  TglGetBufferParameteriv_Func getBufferParameteriv;
  TglGetBufferPointerv_Func getBufferPointerv;
  TglBlendEquationSeparate_Func blendEquationSeparate;
  TglDrawBuffers_Func drawBuffers;
  TglStencilOpSeparate_Func stencilOpSeparate;
  TglStencilFuncSeparate_Func stencilFuncSeparate;
  TglStencilMaskSeparate_Func stencilMaskSeparate;
  TglAttachShader_Func attachShader;
  TglBindAttribLocation_Func bindAttribLocation;
  TglCompileShader_Func compileShader;
  TglCreateProgram_Func createProgram;
  TglCreateShader_Func createShader;
  TglDeleteProgram_Func deleteProgram;
  TglDeleteShader_Func deleteShader;
  TglDetachShader_Func detachShader;
  TglDisableVertexAttribArray_Func disableVertexAttribArray;
  TglEnableVertexAttribArray_Func enableVertexAttribArray;
  TglGetActiveAttrib_Func getActiveAttrib;
  TglGetActiveUniform_Func getActiveUniform;
  TglGetAttachedShaders_Func getAttachedShaders;
  TglGetAttribLocation_Func getAttribLocation;
  TglGetProgramiv_Func getProgramiv;
  TglGetProgramInfoLog_Func getProgramInfoLog;
  TglGetShaderiv_Func getShaderiv;
  TglGetShaderInfoLog_Func getShaderInfoLog;
  TglGetShaderSource_Func getShaderSource;
  TglGetUniformLocation_Func getUniformLocation;
  TglGetUniformfv_Func getUniformfv;
  TglGetUniformiv_Func getUniformiv;
  TglGetVertexAttribdv_Func getVertexAttribdv;
  TglGetVertexAttribfv_Func getVertexAttribfv;
  TglGetVertexAttribiv_Func getVertexAttribiv;
  TglGetVertexAttribPointerv_Func getVertexAttribPointerv;
  TglIsProgram_Func isProgram;
  TglIsShader_Func isShader;
  TglLinkProgram_Func linkProgram;
  TglShaderSource_Func shaderSource;
  TglUseProgram_Func useProgram;
  TglUniform1f_Func uniform1f;
  TglUniform2f_Func uniform2f;
  TglUniform3f_Func uniform3f;
  TglUniform4f_Func uniform4f;
  TglUniform1i_Func uniform1i;
  TglUniform2i_Func uniform2i;
  TglUniform3i_Func uniform3i;
  TglUniform4i_Func uniform4i;
  TglUniform1fv_Func uniform1fv;
  TglUniform2fv_Func uniform2fv;
  TglUniform3fv_Func uniform3fv;
  TglUniform4fv_Func uniform4fv;
  TglUniform1iv_Func uniform1iv;
  TglUniform2iv_Func uniform2iv;
  TglUniform3iv_Func uniform3iv;
  TglUniform4iv_Func uniform4iv;
  TglUniformMatrix2fv_Func uniformMatrix2fv;
  TglUniformMatrix3fv_Func uniformMatrix3fv;
  TglUniformMatrix4fv_Func uniformMatrix4fv;
  TglValidateProgram_Func validateProgram;
  TglVertexAttrib1d_Func vertexAttrib1d;
  TglVertexAttrib1dv_Func vertexAttrib1dv;
  TglVertexAttrib1f_Func vertexAttrib1f;
  TglVertexAttrib1fv_Func vertexAttrib1fv;
  TglVertexAttrib1s_Func vertexAttrib1s;
  TglVertexAttrib1sv_Func vertexAttrib1sv;
  TglVertexAttrib2d_Func vertexAttrib2d;
  TglVertexAttrib2dv_Func vertexAttrib2dv;
  TglVertexAttrib2f_Func vertexAttrib2f;
  TglVertexAttrib2fv_Func vertexAttrib2fv;
  TglVertexAttrib2s_Func vertexAttrib2s;
  TglVertexAttrib2sv_Func vertexAttrib2sv;
  TglVertexAttrib3d_Func vertexAttrib3d;
  TglVertexAttrib3dv_Func vertexAttrib3dv;
  TglVertexAttrib3f_Func vertexAttrib3f;
  TglVertexAttrib3fv_Func vertexAttrib3fv;
  TglVertexAttrib3s_Func vertexAttrib3s;
  TglVertexAttrib3sv_Func vertexAttrib3sv;
  TglVertexAttrib4Nbv_Func vertexAttrib4Nbv;
  TglVertexAttrib4Niv_Func vertexAttrib4Niv;
  TglVertexAttrib4Nsv_Func vertexAttrib4Nsv;
  TglVertexAttrib4Nub_Func vertexAttrib4Nub;
  TglVertexAttrib4Nubv_Func vertexAttrib4Nubv;
  TglVertexAttrib4Nuiv_Func vertexAttrib4Nuiv;
  TglVertexAttrib4Nusv_Func vertexAttrib4Nusv;
  TglVertexAttrib4bv_Func vertexAttrib4bv;
  TglVertexAttrib4d_Func vertexAttrib4d;
  TglVertexAttrib4dv_Func vertexAttrib4dv;
  TglVertexAttrib4f_Func vertexAttrib4f;
  TglVertexAttrib4fv_Func vertexAttrib4fv;
  TglVertexAttrib4iv_Func vertexAttrib4iv;
  TglVertexAttrib4s_Func vertexAttrib4s;
  TglVertexAttrib4sv_Func vertexAttrib4sv;
  TglVertexAttrib4ubv_Func vertexAttrib4ubv;
  TglVertexAttrib4uiv_Func vertexAttrib4uiv;
  TglVertexAttrib4usv_Func vertexAttrib4usv;
  TglVertexAttribPointer_Func vertexAttribPointer;
  TglUniformMatrix2x3fv_Func uniformMatrix2x3fv;
  TglUniformMatrix3x2fv_Func uniformMatrix3x2fv;
  TglUniformMatrix2x4fv_Func uniformMatrix2x4fv;
  TglUniformMatrix4x2fv_Func uniformMatrix4x2fv;
  TglUniformMatrix3x4fv_Func uniformMatrix3x4fv;
  TglUniformMatrix4x3fv_Func uniformMatrix4x3fv;
  TglColorMaski_Func colorMaski;
  TglGetBooleani_v_Func getBooleani_v;
  TglGetIntegeri_v_Func getIntegeri_v;
  TglEnablei_Func enablei;
  TglDisablei_Func disablei;
  TglIsEnabledi_Func isEnabledi;
  TglBeginTransformFeedback_Func beginTransformFeedback;
  TglEndTransformFeedback_Func endTransformFeedback;
  TglBindBufferRange_Func bindBufferRange;
  TglBindBufferBase_Func bindBufferBase;
  TglTransformFeedbackVaryings_Func transformFeedbackVaryings;
  TglGetTransformFeedbackVarying_Func getTransformFeedbackVarying;
  TglClampColor_Func clampColor;
  TglBeginConditionalRender_Func beginConditionalRender;
  TglEndConditionalRender_Func endConditionalRender;
  TglVertexAttribIPointer_Func vertexAttribIPointer;
  TglGetVertexAttribIiv_Func getVertexAttribIiv;
  TglGetVertexAttribIuiv_Func getVertexAttribIuiv;
  TglVertexAttribI1i_Func vertexAttribI1i;
  TglVertexAttribI2i_Func vertexAttribI2i;
  TglVertexAttribI3i_Func vertexAttribI3i;
  TglVertexAttribI4i_Func vertexAttribI4i;
  TglVertexAttribI1ui_Func vertexAttribI1ui;
  TglVertexAttribI2ui_Func vertexAttribI2ui;
  TglVertexAttribI3ui_Func vertexAttribI3ui;
  TglVertexAttribI4ui_Func vertexAttribI4ui;
  TglVertexAttribI1iv_Func vertexAttribI1iv;
  TglVertexAttribI2iv_Func vertexAttribI2iv;
  TglVertexAttribI3iv_Func vertexAttribI3iv;
  TglVertexAttribI4iv_Func vertexAttribI4iv;
  TglVertexAttribI1uiv_Func vertexAttribI1uiv;
  TglVertexAttribI2uiv_Func vertexAttribI2uiv;
  TglVertexAttribI3uiv_Func vertexAttribI3uiv;
  TglVertexAttribI4uiv_Func vertexAttribI4uiv;
  TglVertexAttribI4bv_Func vertexAttribI4bv;
  TglVertexAttribI4sv_Func vertexAttribI4sv;
  TglVertexAttribI4ubv_Func vertexAttribI4ubv;
  TglVertexAttribI4usv_Func vertexAttribI4usv;
  TglGetUniformuiv_Func getUniformuiv;
  TglBindFragDataLocation_Func bindFragDataLocation;
  TglGetFragDataLocation_Func getFragDataLocation;
  TglUniform1ui_Func uniform1ui;
  TglUniform2ui_Func uniform2ui;
  TglUniform3ui_Func uniform3ui;
  TglUniform4ui_Func uniform4ui;
  TglUniform1uiv_Func uniform1uiv;
  TglUniform2uiv_Func uniform2uiv;
  TglUniform3uiv_Func uniform3uiv;
  TglUniform4uiv_Func uniform4uiv;
  TglTexParameterIiv_Func texParameterIiv;
  TglTexParameterIuiv_Func texParameterIuiv;
  TglGetTexParameterIiv_Func getTexParameterIiv;
  TglGetTexParameterIuiv_Func getTexParameterIuiv;
  TglClearBufferiv_Func clearBufferiv;
  TglClearBufferuiv_Func clearBufferuiv;
  TglClearBufferfv_Func clearBufferfv;
  TglClearBufferfi_Func clearBufferfi;
  TglGetStringi_Func getStringi;
  TglIsRenderbuffer_Func isRenderbuffer;
  TglBindRenderbuffer_Func bindRenderbuffer;
  TglDeleteRenderbuffers_Func deleteRenderbuffers;
  TglGenRenderbuffers_Func genRenderbuffers;
  TglRenderbufferStorage_Func renderbufferStorage;
  TglGetRenderbufferParameteriv_Func getRenderbufferParameteriv;
  TglIsFramebuffer_Func isFramebuffer;
  TglBindFramebuffer_Func bindFramebuffer;
  TglDeleteFramebuffers_Func deleteFramebuffers;
  TglGenFramebuffers_Func genFramebuffers;
  TglCheckFramebufferStatus_Func checkFramebufferStatus;
  TglFramebufferTexture1D_Func framebufferTexture1D;
  TglFramebufferTexture2D_Func framebufferTexture2D;
  TglFramebufferTexture3D_Func framebufferTexture3D;
  TglFramebufferRenderbuffer_Func framebufferRenderbuffer;
  TglGetFramebufferAttachmentParameteriv_Func
      getFramebufferAttachmentParameteriv;
  TglGenerateMipmap_Func generateMipmap;
  TglBlitFramebuffer_Func blitFramebuffer;
  TglRenderbufferStorageMultisample_Func renderbufferStorageMultisample;
  TglFramebufferTextureLayer_Func framebufferTextureLayer;
  TglMapBufferRange_Func mapBufferRange;
  TglFlushMappedBufferRange_Func flushMappedBufferRange;
  TglBindVertexArray_Func bindVertexArray;
  TglDeleteVertexArrays_Func deleteVertexArrays;
  TglGenVertexArrays_Func genVertexArrays;
  TglIsVertexArray_Func isVertexArray;
  TglDrawArraysInstanced_Func drawArraysInstanced;
  TglDrawElementsInstanced_Func drawElementsInstanced;
  TglTexBuffer_Func texBuffer;
  TglPrimitiveRestartIndex_Func primitiveRestartIndex;
  TglCopyBufferSubData_Func copyBufferSubData;
  TglGetUniformIndices_Func getUniformIndices;
  TglGetActiveUniformsiv_Func getActiveUniformsiv;
  TglGetActiveUniformName_Func getActiveUniformName;
  TglGetUniformBlockIndex_Func getUniformBlockIndex;
  TglGetActiveUniformBlockiv_Func getActiveUniformBlockiv;
  TglGetActiveUniformBlockName_Func getActiveUniformBlockName;
  TglUniformBlockBinding_Func uniformBlockBinding;
  TglDrawElementsBaseVertex_Func drawElementsBaseVertex;
  TglDrawRangeElementsBaseVertex_Func drawRangeElementsBaseVertex;
  TglDrawElementsInstancedBaseVertex_Func drawElementsInstancedBaseVertex;
  TglMultiDrawElementsBaseVertex_Func multiDrawElementsBaseVertex;
  TglProvokingVertex_Func provokingVertex;
  TglFenceSync_Func fenceSync;
  TglIsSync_Func isSync;
  TglDeleteSync_Func deleteSync;
  TglClientWaitSync_Func clientWaitSync;
  TglWaitSync_Func waitSync;
  TglGetInteger64v_Func getInteger64v;
  TglGetSynciv_Func getSynciv;
  TglGetInteger64i_v_Func getInteger64i_v;
  TglGetBufferParameteri64v_Func getBufferParameteri64v;
  TglFramebufferTexture_Func framebufferTexture;
  TglTexImage2DMultisample_Func texImage2DMultisample;
  TglTexImage3DMultisample_Func texImage3DMultisample;
  TglGetMultisamplefv_Func getMultisamplefv;
  TglSampleMaski_Func sampleMaski;
  TglBindFragDataLocationIndexed_Func bindFragDataLocationIndexed;
  TglGetFragDataIndex_Func getFragDataIndex;
  TglGenSamplers_Func genSamplers;
  TglDeleteSamplers_Func deleteSamplers;
  TglIsSampler_Func isSampler;
  TglBindSampler_Func bindSampler;
  TglSamplerParameteri_Func samplerParameteri;
  TglSamplerParameteriv_Func samplerParameteriv;
  TglSamplerParameterf_Func samplerParameterf;
  TglSamplerParameterfv_Func samplerParameterfv;
  TglSamplerParameterIiv_Func samplerParameterIiv;
  TglSamplerParameterIuiv_Func samplerParameterIuiv;
  TglGetSamplerParameteriv_Func getSamplerParameteriv;
  TglGetSamplerParameterIiv_Func getSamplerParameterIiv;
  TglGetSamplerParameterfv_Func getSamplerParameterfv;
  TglGetSamplerParameterIuiv_Func getSamplerParameterIuiv;
  TglQueryCounter_Func queryCounter;
  TglGetQueryObjecti64v_Func getQueryObjecti64v;
  TglGetQueryObjectui64v_Func getQueryObjectui64v;
  TglVertexAttribDivisor_Func vertexAttribDivisor;
  TglVertexAttribP1ui_Func vertexAttribP1ui;
  TglVertexAttribP1uiv_Func vertexAttribP1uiv;
  TglVertexAttribP2ui_Func vertexAttribP2ui;
  TglVertexAttribP2uiv_Func vertexAttribP2uiv;
  TglVertexAttribP3ui_Func vertexAttribP3ui;
  TglVertexAttribP3uiv_Func vertexAttribP3uiv;
  TglVertexAttribP4ui_Func vertexAttribP4ui;
  TglVertexAttribP4uiv_Func vertexAttribP4uiv;
  TglVertexP2ui_Func vertexP2ui;
  TglVertexP2uiv_Func vertexP2uiv;
  TglVertexP3ui_Func vertexP3ui;
  TglVertexP3uiv_Func vertexP3uiv;
  TglVertexP4ui_Func vertexP4ui;
  TglVertexP4uiv_Func vertexP4uiv;
  TglTexCoordP1ui_Func texCoordP1ui;
  TglTexCoordP1uiv_Func texCoordP1uiv;
  TglTexCoordP2ui_Func texCoordP2ui;
  TglTexCoordP2uiv_Func texCoordP2uiv;
  TglTexCoordP3ui_Func texCoordP3ui;
  TglTexCoordP3uiv_Func texCoordP3uiv;
  TglTexCoordP4ui_Func texCoordP4ui;
  TglTexCoordP4uiv_Func texCoordP4uiv;
  TglMultiTexCoordP1ui_Func multiTexCoordP1ui;
  TglMultiTexCoordP1uiv_Func multiTexCoordP1uiv;
  TglMultiTexCoordP2ui_Func multiTexCoordP2ui;
  TglMultiTexCoordP2uiv_Func multiTexCoordP2uiv;
  TglMultiTexCoordP3ui_Func multiTexCoordP3ui;
  TglMultiTexCoordP3uiv_Func multiTexCoordP3uiv;
  TglMultiTexCoordP4ui_Func multiTexCoordP4ui;
  TglMultiTexCoordP4uiv_Func multiTexCoordP4uiv;
  TglNormalP3ui_Func normalP3ui;
  TglNormalP3uiv_Func normalP3uiv;
  TglColorP3ui_Func colorP3ui;
  TglColorP3uiv_Func colorP3uiv;
  TglColorP4ui_Func colorP4ui;
  TglColorP4uiv_Func colorP4uiv;
  TglSecondaryColorP3ui_Func secondaryColorP3ui;
  TglSecondaryColorP3uiv_Func secondaryColorP3uiv;
  TglMinSampleShading_Func minSampleShading;
  TglBlendEquationi_Func blendEquationi;
  TglBlendEquationSeparatei_Func blendEquationSeparatei;
  TglBlendFunci_Func blendFunci;
  TglBlendFuncSeparatei_Func blendFuncSeparatei;
  TglDrawArraysIndirect_Func drawArraysIndirect;
  TglDrawElementsIndirect_Func drawElementsIndirect;
  TglUniform1d_Func uniform1d;
  TglUniform2d_Func uniform2d;
  TglUniform3d_Func uniform3d;
  TglUniform4d_Func uniform4d;
  TglUniform1dv_Func uniform1dv;
  TglUniform2dv_Func uniform2dv;
  TglUniform3dv_Func uniform3dv;
  TglUniform4dv_Func uniform4dv;
  TglUniformMatrix2dv_Func uniformMatrix2dv;
  TglUniformMatrix3dv_Func uniformMatrix3dv;
  TglUniformMatrix4dv_Func uniformMatrix4dv;
  TglUniformMatrix2x3dv_Func uniformMatrix2x3dv;
  TglUniformMatrix2x4dv_Func uniformMatrix2x4dv;
  TglUniformMatrix3x2dv_Func uniformMatrix3x2dv;
  TglUniformMatrix3x4dv_Func uniformMatrix3x4dv;
  TglUniformMatrix4x2dv_Func uniformMatrix4x2dv;
  TglUniformMatrix4x3dv_Func uniformMatrix4x3dv;
  TglGetUniformdv_Func getUniformdv;
  TglGetSubroutineUniformLocation_Func getSubroutineUniformLocation;
  TglGetSubroutineIndex_Func getSubroutineIndex;
  TglGetActiveSubroutineUniformiv_Func getActiveSubroutineUniformiv;
  TglGetActiveSubroutineUniformName_Func getActiveSubroutineUniformName;
  TglGetActiveSubroutineName_Func getActiveSubroutineName;
  TglUniformSubroutinesuiv_Func uniformSubroutinesuiv;
  TglGetUniformSubroutineuiv_Func getUniformSubroutineuiv;
  TglGetProgramStageiv_Func getProgramStageiv;
  TglPatchParameteri_Func patchParameteri;
  TglPatchParameterfv_Func patchParameterfv;
  TglBindTransformFeedback_Func bindTransformFeedback;
  TglDeleteTransformFeedbacks_Func deleteTransformFeedbacks;
  TglGenTransformFeedbacks_Func genTransformFeedbacks;
  TglIsTransformFeedback_Func isTransformFeedback;
  TglPauseTransformFeedback_Func pauseTransformFeedback;
  TglResumeTransformFeedback_Func resumeTransformFeedback;
  TglDrawTransformFeedback_Func drawTransformFeedback;
  TglDrawTransformFeedbackStream_Func drawTransformFeedbackStream;
  TglBeginQueryIndexed_Func beginQueryIndexed;
  TglEndQueryIndexed_Func endQueryIndexed;
  TglGetQueryIndexediv_Func getQueryIndexediv;
  TglReleaseShaderCompiler_Func releaseShaderCompiler;
  TglShaderBinary_Func shaderBinary;
  TglGetShaderPrecisionFormat_Func getShaderPrecisionFormat;
  TglDepthRangef_Func depthRangef;
  TglClearDepthf_Func clearDepthf;
  TglGetProgramBinary_Func getProgramBinary;
  TglProgramBinary_Func programBinary;
  TglProgramParameteri_Func programParameteri;
  TglUseProgramStages_Func useProgramStages;
  TglActiveShaderProgram_Func activeShaderProgram;
  TglCreateShaderProgramv_Func createShaderProgramv;
  TglBindProgramPipeline_Func bindProgramPipeline;
  TglDeleteProgramPipelines_Func deleteProgramPipelines;
  TglGenProgramPipelines_Func genProgramPipelines;
  TglIsProgramPipeline_Func isProgramPipeline;
  TglGetProgramPipelineiv_Func getProgramPipelineiv;
  TglProgramUniform1i_Func programUniform1i;
  TglProgramUniform1iv_Func programUniform1iv;
  TglProgramUniform1f_Func programUniform1f;
  TglProgramUniform1fv_Func programUniform1fv;
  TglProgramUniform1d_Func programUniform1d;
  TglProgramUniform1dv_Func programUniform1dv;
  TglProgramUniform1ui_Func programUniform1ui;
  TglProgramUniform1uiv_Func programUniform1uiv;
  TglProgramUniform2i_Func programUniform2i;
  TglProgramUniform2iv_Func programUniform2iv;
  TglProgramUniform2f_Func programUniform2f;
  TglProgramUniform2fv_Func programUniform2fv;
  TglProgramUniform2d_Func programUniform2d;
  TglProgramUniform2dv_Func programUniform2dv;
  TglProgramUniform2ui_Func programUniform2ui;
  TglProgramUniform2uiv_Func programUniform2uiv;
  TglProgramUniform3i_Func programUniform3i;
  TglProgramUniform3iv_Func programUniform3iv;
  TglProgramUniform3f_Func programUniform3f;
  TglProgramUniform3fv_Func programUniform3fv;
  TglProgramUniform3d_Func programUniform3d;
  TglProgramUniform3dv_Func programUniform3dv;
  TglProgramUniform3ui_Func programUniform3ui;
  TglProgramUniform3uiv_Func programUniform3uiv;
  TglProgramUniform4i_Func programUniform4i;
  TglProgramUniform4iv_Func programUniform4iv;
  TglProgramUniform4f_Func programUniform4f;
  TglProgramUniform4fv_Func programUniform4fv;
  TglProgramUniform4d_Func programUniform4d;
  TglProgramUniform4dv_Func programUniform4dv;
  TglProgramUniform4ui_Func programUniform4ui;
  TglProgramUniform4uiv_Func programUniform4uiv;
  TglProgramUniformMatrix2fv_Func programUniformMatrix2fv;
  TglProgramUniformMatrix3fv_Func programUniformMatrix3fv;
  TglProgramUniformMatrix4fv_Func programUniformMatrix4fv;
  TglProgramUniformMatrix2dv_Func programUniformMatrix2dv;
  TglProgramUniformMatrix3dv_Func programUniformMatrix3dv;
  TglProgramUniformMatrix4dv_Func programUniformMatrix4dv;
  TglProgramUniformMatrix2x3fv_Func programUniformMatrix2x3fv;
  TglProgramUniformMatrix3x2fv_Func programUniformMatrix3x2fv;
  TglProgramUniformMatrix2x4fv_Func programUniformMatrix2x4fv;
  TglProgramUniformMatrix4x2fv_Func programUniformMatrix4x2fv;
  TglProgramUniformMatrix3x4fv_Func programUniformMatrix3x4fv;
  TglProgramUniformMatrix4x3fv_Func programUniformMatrix4x3fv;
  TglProgramUniformMatrix2x3dv_Func programUniformMatrix2x3dv;
  TglProgramUniformMatrix3x2dv_Func programUniformMatrix3x2dv;
  TglProgramUniformMatrix2x4dv_Func programUniformMatrix2x4dv;
  TglProgramUniformMatrix4x2dv_Func programUniformMatrix4x2dv;
  TglProgramUniformMatrix3x4dv_Func programUniformMatrix3x4dv;
  TglProgramUniformMatrix4x3dv_Func programUniformMatrix4x3dv;
  TglValidateProgramPipeline_Func validateProgramPipeline;
  TglGetProgramPipelineInfoLog_Func getProgramPipelineInfoLog;
  TglVertexAttribL1d_Func vertexAttribL1d;
  TglVertexAttribL2d_Func vertexAttribL2d;
  TglVertexAttribL3d_Func vertexAttribL3d;
  TglVertexAttribL4d_Func vertexAttribL4d;
  TglVertexAttribL1dv_Func vertexAttribL1dv;
  TglVertexAttribL2dv_Func vertexAttribL2dv;
  TglVertexAttribL3dv_Func vertexAttribL3dv;
  TglVertexAttribL4dv_Func vertexAttribL4dv;
  TglVertexAttribLPointer_Func vertexAttribLPointer;
  TglGetVertexAttribLdv_Func getVertexAttribLdv;
  TglViewportArrayv_Func viewportArrayv;
  TglViewportIndexedf_Func viewportIndexedf;
  TglViewportIndexedfv_Func viewportIndexedfv;
  TglScissorArrayv_Func scissorArrayv;
  TglScissorIndexed_Func scissorIndexed;
  TglScissorIndexedv_Func scissorIndexedv;
  TglDepthRangeArrayv_Func depthRangeArrayv;
  TglDepthRangeIndexed_Func depthRangeIndexed;
  TglGetFloati_v_Func getFloati_v;
  TglGetDoublei_v_Func getDoublei_v;
  TglDrawArraysInstancedBaseInstance_Func drawArraysInstancedBaseInstance;
  TglDrawElementsInstancedBaseInstance_Func drawElementsInstancedBaseInstance;
  TglDrawElementsInstancedBaseVertexBaseInstance_Func
      drawElementsInstancedBaseVertexBaseInstance;
  TglGetInternalformativ_Func getInternalformativ;
  TglGetActiveAtomicCounterBufferiv_Func getActiveAtomicCounterBufferiv;
  TglBindImageTexture_Func bindImageTexture;
  TglMemoryBarrier_Func memoryBarrier;
  TglTexStorage1D_Func texStorage1D;
  TglTexStorage2D_Func texStorage2D;
  TglTexStorage3D_Func texStorage3D;
  TglDrawTransformFeedbackInstanced_Func drawTransformFeedbackInstanced;
  TglDrawTransformFeedbackStreamInstanced_Func
      drawTransformFeedbackStreamInstanced;
  TglClearBufferData_Func clearBufferData;
  TglClearBufferSubData_Func clearBufferSubData;
  TglDispatchCompute_Func dispatchCompute;
  TglDispatchComputeIndirect_Func dispatchComputeIndirect;
  TglCopyImageSubData_Func copyImageSubData;
  TglFramebufferParameteri_Func framebufferParameteri;
  TglGetFramebufferParameteriv_Func getFramebufferParameteriv;
  TglGetInternalformati64v_Func getInternalformati64v;
  TglInvalidateTexSubImage_Func invalidateTexSubImage;
  TglInvalidateTexImage_Func invalidateTexImage;
  TglInvalidateBufferSubData_Func invalidateBufferSubData;
  TglInvalidateBufferData_Func invalidateBufferData;
  TglInvalidateFramebuffer_Func invalidateFramebuffer;
  TglInvalidateSubFramebuffer_Func invalidateSubFramebuffer;
  TglMultiDrawArraysIndirect_Func multiDrawArraysIndirect;
  TglMultiDrawElementsIndirect_Func multiDrawElementsIndirect;
  TglGetProgramInterfaceiv_Func getProgramInterfaceiv;
  TglGetProgramResourceIndex_Func getProgramResourceIndex;
  TglGetProgramResourceName_Func getProgramResourceName;
  TglGetProgramResourceiv_Func getProgramResourceiv;
  TglGetProgramResourceLocation_Func getProgramResourceLocation;
  TglGetProgramResourceLocationIndex_Func getProgramResourceLocationIndex;
  TglShaderStorageBlockBinding_Func shaderStorageBlockBinding;
  TglTexBufferRange_Func texBufferRange;
  TglTexStorage2DMultisample_Func texStorage2DMultisample;
  TglTexStorage3DMultisample_Func texStorage3DMultisample;
  TglTextureView_Func textureView;
  TglBindVertexBuffer_Func bindVertexBuffer;
  TglVertexAttribFormat_Func vertexAttribFormat;
  TglVertexAttribIFormat_Func vertexAttribIFormat;
  TglVertexAttribLFormat_Func vertexAttribLFormat;
  TglVertexAttribBinding_Func vertexAttribBinding;
  TglVertexBindingDivisor_Func vertexBindingDivisor;
  TglDebugMessageControl_Func debugMessageControl;
  TglDebugMessageInsert_Func debugMessageInsert;
  TglDebugMessageCallback_Func debugMessageCallback;
  TglGetDebugMessageLog_Func getDebugMessageLog;
  TglPushDebugGroup_Func pushDebugGroup;
  TglPopDebugGroup_Func popDebugGroup;
  TglObjectLabel_Func objectLabel;
  TglGetObjectLabel_Func getObjectLabel;
  TglObjectPtrLabel_Func objectPtrLabel;
  TglGetObjectPtrLabel_Func getObjectPtrLabel;
  TglBufferStorage_Func bufferStorage;
  TglClearTexImage_Func clearTexImage;
  TglClearTexSubImage_Func clearTexSubImage;
  TglBindBuffersBase_Func bindBuffersBase;
  TglBindBuffersRange_Func bindBuffersRange;
  TglBindTextures_Func bindTextures;
  TglBindSamplers_Func bindSamplers;
  TglBindImageTextures_Func bindImageTextures;
  TglBindVertexBuffers_Func bindVertexBuffers;
  TglClipControl_Func clipControl;
  TglCreateTransformFeedbacks_Func createTransformFeedbacks;
  TglTransformFeedbackBufferBase_Func transformFeedbackBufferBase;
  TglTransformFeedbackBufferRange_Func transformFeedbackBufferRange;
  TglGetTransformFeedbackiv_Func getTransformFeedbackiv;
  TglGetTransformFeedbacki_v_Func getTransformFeedbacki_v;
  TglGetTransformFeedbacki64_v_Func getTransformFeedbacki64_v;
  TglCreateBuffers_Func createBuffers;
  TglNamedBufferStorage_Func namedBufferStorage;
  TglNamedBufferData_Func namedBufferData;
  TglNamedBufferSubData_Func namedBufferSubData;
  TglCopyNamedBufferSubData_Func copyNamedBufferSubData;
  TglClearNamedBufferData_Func clearNamedBufferData;
  TglClearNamedBufferSubData_Func clearNamedBufferSubData;
  TglMapNamedBuffer_Func mapNamedBuffer;
  TglMapNamedBufferRange_Func mapNamedBufferRange;
  TglUnmapNamedBuffer_Func unmapNamedBuffer;
  TglFlushMappedNamedBufferRange_Func flushMappedNamedBufferRange;
  TglGetNamedBufferParameteriv_Func getNamedBufferParameteriv;
  TglGetNamedBufferParameteri64v_Func getNamedBufferParameteri64v;
  TglGetNamedBufferPointerv_Func getNamedBufferPointerv;
  TglGetNamedBufferSubData_Func getNamedBufferSubData;
  TglCreateFramebuffers_Func createFramebuffers;
  TglNamedFramebufferRenderbuffer_Func namedFramebufferRenderbuffer;
  TglNamedFramebufferParameteri_Func namedFramebufferParameteri;
  TglNamedFramebufferTexture_Func namedFramebufferTexture;
  TglNamedFramebufferTextureLayer_Func namedFramebufferTextureLayer;
  TglNamedFramebufferDrawBuffer_Func namedFramebufferDrawBuffer;
  TglNamedFramebufferDrawBuffers_Func namedFramebufferDrawBuffers;
  TglNamedFramebufferReadBuffer_Func namedFramebufferReadBuffer;
  TglInvalidateNamedFramebufferData_Func invalidateNamedFramebufferData;
  TglInvalidateNamedFramebufferSubData_Func invalidateNamedFramebufferSubData;
  TglClearNamedFramebufferiv_Func clearNamedFramebufferiv;
  TglClearNamedFramebufferuiv_Func clearNamedFramebufferuiv;
  TglClearNamedFramebufferfv_Func clearNamedFramebufferfv;
  TglClearNamedFramebufferfi_Func clearNamedFramebufferfi;
  TglBlitNamedFramebuffer_Func blitNamedFramebuffer;
  TglCheckNamedFramebufferStatus_Func checkNamedFramebufferStatus;
  TglGetNamedFramebufferParameteriv_Func getNamedFramebufferParameteriv;
  TglGetNamedFramebufferAttachmentParameteriv_Func
      getNamedFramebufferAttachmentParameteriv;
  TglCreateRenderbuffers_Func createRenderbuffers;
  TglNamedRenderbufferStorage_Func namedRenderbufferStorage;
  TglNamedRenderbufferStorageMultisample_Func
      namedRenderbufferStorageMultisample;
  TglGetNamedRenderbufferParameteriv_Func getNamedRenderbufferParameteriv;
  TglCreateTextures_Func createTextures;
  TglTextureBuffer_Func textureBuffer;
  TglTextureBufferRange_Func textureBufferRange;
  TglTextureStorage1D_Func textureStorage1D;
  TglTextureStorage2D_Func textureStorage2D;
  TglTextureStorage3D_Func textureStorage3D;
  TglTextureStorage2DMultisample_Func textureStorage2DMultisample;
  TglTextureStorage3DMultisample_Func textureStorage3DMultisample;
  TglTextureSubImage1D_Func textureSubImage1D;
  TglTextureSubImage2D_Func textureSubImage2D;
  TglTextureSubImage3D_Func textureSubImage3D;
  TglCompressedTextureSubImage1D_Func compressedTextureSubImage1D;
  TglCompressedTextureSubImage2D_Func compressedTextureSubImage2D;
  TglCompressedTextureSubImage3D_Func compressedTextureSubImage3D;
  TglCopyTextureSubImage1D_Func copyTextureSubImage1D;
  TglCopyTextureSubImage2D_Func copyTextureSubImage2D;
  TglCopyTextureSubImage3D_Func copyTextureSubImage3D;
  TglTextureParameterf_Func textureParameterf;
  TglTextureParameterfv_Func textureParameterfv;
  TglTextureParameteri_Func textureParameteri;
  TglTextureParameterIiv_Func textureParameterIiv;
  TglTextureParameterIuiv_Func textureParameterIuiv;
  TglTextureParameteriv_Func textureParameteriv;
  TglGenerateTextureMipmap_Func generateTextureMipmap;
  TglBindTextureUnit_Func bindTextureUnit;
  TglGetTextureImage_Func getTextureImage;
  TglGetCompressedTextureImage_Func getCompressedTextureImage;
  TglGetTextureLevelParameterfv_Func getTextureLevelParameterfv;
  TglGetTextureLevelParameteriv_Func getTextureLevelParameteriv;
  TglGetTextureParameterfv_Func getTextureParameterfv;
  TglGetTextureParameterIiv_Func getTextureParameterIiv;
  TglGetTextureParameterIuiv_Func getTextureParameterIuiv;
  TglGetTextureParameteriv_Func getTextureParameteriv;
  TglCreateVertexArrays_Func createVertexArrays;
  TglDisableVertexArrayAttrib_Func disableVertexArrayAttrib;
  TglEnableVertexArrayAttrib_Func enableVertexArrayAttrib;
  TglVertexArrayElementBuffer_Func vertexArrayElementBuffer;
  TglVertexArrayVertexBuffer_Func vertexArrayVertexBuffer;
  TglVertexArrayVertexBuffers_Func vertexArrayVertexBuffers;
  TglVertexArrayAttribBinding_Func vertexArrayAttribBinding;
  TglVertexArrayAttribFormat_Func vertexArrayAttribFormat;
  TglVertexArrayAttribIFormat_Func vertexArrayAttribIFormat;
  TglVertexArrayAttribLFormat_Func vertexArrayAttribLFormat;
  TglVertexArrayBindingDivisor_Func vertexArrayBindingDivisor;
  TglGetVertexArrayiv_Func getVertexArrayiv;
  TglGetVertexArrayIndexediv_Func getVertexArrayIndexediv;
  TglGetVertexArrayIndexed64iv_Func getVertexArrayIndexed64iv;
  TglCreateSamplers_Func createSamplers;
  TglCreateProgramPipelines_Func createProgramPipelines;
  TglCreateQueries_Func createQueries;
  TglGetQueryBufferObjecti64v_Func getQueryBufferObjecti64v;
  TglGetQueryBufferObjectiv_Func getQueryBufferObjectiv;
  TglGetQueryBufferObjectui64v_Func getQueryBufferObjectui64v;
  TglGetQueryBufferObjectuiv_Func getQueryBufferObjectuiv;
  TglMemoryBarrierByRegion_Func memoryBarrierByRegion;
  TglGetTextureSubImage_Func getTextureSubImage;
  TglGetCompressedTextureSubImage_Func getCompressedTextureSubImage;
  TglGetGraphicsResetStatus_Func getGraphicsResetStatus;
  TglGetnCompressedTexImage_Func getnCompressedTexImage;
  TglGetnTexImage_Func getnTexImage;
  TglGetnUniformdv_Func getnUniformdv;
  TglGetnUniformfv_Func getnUniformfv;
  TglGetnUniformiv_Func getnUniformiv;
  TglGetnUniformuiv_Func getnUniformuiv;
  TglReadnPixels_Func readnPixels;
  TglGetnMapdv_Func getnMapdv;
  TglGetnMapfv_Func getnMapfv;
  TglGetnMapiv_Func getnMapiv;
  TglGetnPixelMapfv_Func getnPixelMapfv;
  TglGetnPixelMapuiv_Func getnPixelMapuiv;
  TglGetnPixelMapusv_Func getnPixelMapusv;
  TglGetnPolygonStipple_Func getnPolygonStipple;
  TglGetnColorTable_Func getnColorTable;
  TglGetnConvolutionFilter_Func getnConvolutionFilter;
  TglGetnSeparableFilter_Func getnSeparableFilter;
  TglGetnHistogram_Func getnHistogram;
  TglGetnMinmax_Func getnMinmax;
  TglTextureBarrier_Func textureBarrier;
  TglSpecializeShader_Func specializeShader;
  TglMultiDrawArraysIndirectCount_Func multiDrawArraysIndirectCount;
  TglMultiDrawElementsIndirectCount_Func multiDrawElementsIndirectCount;
  TglPolygonOffsetClamp_Func polygonOffsetClamp;
}

// My VSCode is slow. :)