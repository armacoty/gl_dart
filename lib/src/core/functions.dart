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
  late TwglGetProcAddress_Func wglGetProcAddress;

  Gl({String? customPath, GlVersion version = GlVersion.GL_VERSION_4_0}) {
    String? path;
    if (customPath != null) {
      path = customPath;
    } else {
      if (Platform.isLinux) path = "/usr/lib/x86_64-linux-gnu/libGL.so";

      if (Platform.isWindows) path = "C:\\Windows\\System32\\opengl32.dll";
    }

    if (path == null) {
      throw Exception(
          "Platform is not currently supported. (platform = ${Platform.operatingSystemVersion})");
    }
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
            wglGetProcAddress("glDrawRangeElements".toNativeUtf8())
                .cast<NativeFunction<TglDrawRangeElements_Native>>()
                .asFunction();
        this.texImage3D = wglGetProcAddress("glTexImage3D".toNativeUtf8())
            .cast<NativeFunction<TglTexImage3D_Native>>()
            .asFunction();
        this.texSubImage3D = wglGetProcAddress("glTexSubImage3D".toNativeUtf8())
            .cast<NativeFunction<TglTexSubImage3D_Native>>()
            .asFunction();
        this.copyTexSubImage3D =
            wglGetProcAddress("glCopyTexSubImage3D".toNativeUtf8())
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
        this.colorTable = wglGetProcAddress("glColorTable".toNativeUtf8())
            .cast<NativeFunction<TglColorTable_Native>>()
            .asFunction();
        this.colorSubTable = wglGetProcAddress("glColorSubTable".toNativeUtf8())
            .cast<NativeFunction<TglColorSubTable_Native>>()
            .asFunction();
        this.colorTableParameteriv =
            wglGetProcAddress("glColorTableParameteriv".toNativeUtf8())
                .cast<NativeFunction<TglColorTableParameteriv_Native>>()
                .asFunction();
        this.colorTableParameterfv =
            wglGetProcAddress("glColorTableParameterfv".toNativeUtf8())
                .cast<NativeFunction<TglColorTableParameterfv_Native>>()
                .asFunction();
        this.copyColorSubTable =
            wglGetProcAddress("glCopyColorSubTable".toNativeUtf8())
                .cast<NativeFunction<TglCopyColorSubTable_Native>>()
                .asFunction();
        this.copyColorTable =
            wglGetProcAddress("glCopyColorTable".toNativeUtf8())
                .cast<NativeFunction<TglCopyColorTable_Native>>()
                .asFunction();
        this.getColorTable = wglGetProcAddress("glGetColorTable".toNativeUtf8())
            .cast<NativeFunction<TglGetColorTable_Native>>()
            .asFunction();
        this.getColorTableParameterfv =
            wglGetProcAddress("glGetColorTableParameterfv".toNativeUtf8())
                .cast<NativeFunction<TglGetColorTableParameterfv_Native>>()
                .asFunction();
        this.getColorTableParameteriv =
            wglGetProcAddress("glGetColorTableParameteriv".toNativeUtf8())
                .cast<NativeFunction<TglGetColorTableParameteriv_Native>>()
                .asFunction();
        this.blendEquation = wglGetProcAddress("glBlendEquation".toNativeUtf8())
            .cast<NativeFunction<TglBlendEquation_Native>>()
            .asFunction();
        this.blendColor = wglGetProcAddress("glBlendColor".toNativeUtf8())
            .cast<NativeFunction<TglBlendColor_Native>>()
            .asFunction();
        this.histogram = wglGetProcAddress("glHistogram".toNativeUtf8())
            .cast<NativeFunction<TglHistogram_Native>>()
            .asFunction();
        this.resetHistogram =
            wglGetProcAddress("glResetHistogram".toNativeUtf8())
                .cast<NativeFunction<TglResetHistogram_Native>>()
                .asFunction();
        this.getHistogram = wglGetProcAddress("glGetHistogram".toNativeUtf8())
            .cast<NativeFunction<TglGetHistogram_Native>>()
            .asFunction();
        this.getHistogramParameterfv =
            wglGetProcAddress("glGetHistogramParameterfv".toNativeUtf8())
                .cast<NativeFunction<TglGetHistogramParameterfv_Native>>()
                .asFunction();
        this.getHistogramParameteriv =
            wglGetProcAddress("glGetHistogramParameteriv".toNativeUtf8())
                .cast<NativeFunction<TglGetHistogramParameteriv_Native>>()
                .asFunction();
        this.minmax = wglGetProcAddress("glMinmax".toNativeUtf8())
            .cast<NativeFunction<TglMinmax_Native>>()
            .asFunction();
        this.resetMinmax = wglGetProcAddress("glResetMinmax".toNativeUtf8())
            .cast<NativeFunction<TglResetMinmax_Native>>()
            .asFunction();
        this.getMinmax = wglGetProcAddress("glGetMinmax".toNativeUtf8())
            .cast<NativeFunction<TglGetMinmax_Native>>()
            .asFunction();
        this.getMinmaxParameterfv =
            wglGetProcAddress("glGetMinmaxParameterfv".toNativeUtf8())
                .cast<NativeFunction<TglGetMinmaxParameterfv_Native>>()
                .asFunction();
        this.getMinmaxParameteriv =
            wglGetProcAddress("glGetMinmaxParameteriv".toNativeUtf8())
                .cast<NativeFunction<TglGetMinmaxParameteriv_Native>>()
                .asFunction();
        this.convolutionFilter1D =
            wglGetProcAddress("glConvolutionFilter1D".toNativeUtf8())
                .cast<NativeFunction<TglConvolutionFilter1D_Native>>()
                .asFunction();
        this.convolutionFilter2D =
            wglGetProcAddress("glConvolutionFilter2D".toNativeUtf8())
                .cast<NativeFunction<TglConvolutionFilter2D_Native>>()
                .asFunction();
        this.convolutionParameterf =
            wglGetProcAddress("glConvolutionParameterf".toNativeUtf8())
                .cast<NativeFunction<TglConvolutionParameterf_Native>>()
                .asFunction();
        this.convolutionParameterfv =
            wglGetProcAddress("glConvolutionParameterfv".toNativeUtf8())
                .cast<NativeFunction<TglConvolutionParameterfv_Native>>()
                .asFunction();
        this.convolutionParameteri =
            wglGetProcAddress("glConvolutionParameteri".toNativeUtf8())
                .cast<NativeFunction<TglConvolutionParameteri_Native>>()
                .asFunction();
        this.convolutionParameteriv =
            wglGetProcAddress("glConvolutionParameteriv".toNativeUtf8())
                .cast<NativeFunction<TglConvolutionParameteriv_Native>>()
                .asFunction();
        this.copyConvolutionFilter1D =
            wglGetProcAddress("glCopyConvolutionFilter1D".toNativeUtf8())
                .cast<NativeFunction<TglCopyConvolutionFilter1D_Native>>()
                .asFunction();
        this.copyConvolutionFilter2D =
            wglGetProcAddress("glCopyConvolutionFilter2D".toNativeUtf8())
                .cast<NativeFunction<TglCopyConvolutionFilter2D_Native>>()
                .asFunction();
        this.getConvolutionFilter =
            wglGetProcAddress("glGetConvolutionFilter".toNativeUtf8())
                .cast<NativeFunction<TglGetConvolutionFilter_Native>>()
                .asFunction();
        this.getConvolutionParameterfv =
            wglGetProcAddress("glGetConvolutionParameterfv".toNativeUtf8())
                .cast<NativeFunction<TglGetConvolutionParameterfv_Native>>()
                .asFunction();
        this.getConvolutionParameteriv =
            wglGetProcAddress("glGetConvolutionParameteriv".toNativeUtf8())
                .cast<NativeFunction<TglGetConvolutionParameteriv_Native>>()
                .asFunction();
        this.separableFilter2D =
            wglGetProcAddress("glSeparableFilter2D".toNativeUtf8())
                .cast<NativeFunction<TglSeparableFilter2D_Native>>()
                .asFunction();
        this.getSeparableFilter =
            wglGetProcAddress("glGetSeparableFilter".toNativeUtf8())
                .cast<NativeFunction<TglGetSeparableFilter_Native>>()
                .asFunction();
        this.activeTexture = wglGetProcAddress("glActiveTexture".toNativeUtf8())
            .cast<NativeFunction<TglActiveTexture_Native>>()
            .asFunction();
        this.clientActiveTexture =
            wglGetProcAddress("glClientActiveTexture".toNativeUtf8())
                .cast<NativeFunction<TglClientActiveTexture_Native>>()
                .asFunction();
        this.compressedTexImage1D =
            wglGetProcAddress("glCompressedTexImage1D".toNativeUtf8())
                .cast<NativeFunction<TglCompressedTexImage1D_Native>>()
                .asFunction();
        this.compressedTexImage2D =
            wglGetProcAddress("glCompressedTexImage2D".toNativeUtf8())
                .cast<NativeFunction<TglCompressedTexImage2D_Native>>()
                .asFunction();
        this.compressedTexImage3D =
            wglGetProcAddress("glCompressedTexImage3D".toNativeUtf8())
                .cast<NativeFunction<TglCompressedTexImage3D_Native>>()
                .asFunction();
        this.compressedTexSubImage1D =
            wglGetProcAddress("glCompressedTexSubImage1D".toNativeUtf8())
                .cast<NativeFunction<TglCompressedTexSubImage1D_Native>>()
                .asFunction();
        this.compressedTexSubImage2D =
            wglGetProcAddress("glCompressedTexSubImage2D".toNativeUtf8())
                .cast<NativeFunction<TglCompressedTexSubImage2D_Native>>()
                .asFunction();
        this.compressedTexSubImage3D =
            wglGetProcAddress("glCompressedTexSubImage3D".toNativeUtf8())
                .cast<NativeFunction<TglCompressedTexSubImage3D_Native>>()
                .asFunction();
        this.getCompressedTexImage =
            wglGetProcAddress("glGetCompressedTexImage".toNativeUtf8())
                .cast<NativeFunction<TglGetCompressedTexImage_Native>>()
                .asFunction();
        this.multiTexCoord1d =
            wglGetProcAddress("glMultiTexCoord1d".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoord1d_Native>>()
                .asFunction();
        this.multiTexCoord1dv =
            wglGetProcAddress("glMultiTexCoord1dv".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoord1dv_Native>>()
                .asFunction();
        this.multiTexCoord1f =
            wglGetProcAddress("glMultiTexCoord1f".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoord1f_Native>>()
                .asFunction();
        this.multiTexCoord1fv =
            wglGetProcAddress("glMultiTexCoord1fv".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoord1fv_Native>>()
                .asFunction();
        this.multiTexCoord1i =
            wglGetProcAddress("glMultiTexCoord1i".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoord1i_Native>>()
                .asFunction();
        this.multiTexCoord1iv =
            wglGetProcAddress("glMultiTexCoord1iv".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoord1iv_Native>>()
                .asFunction();
        this.multiTexCoord1s =
            wglGetProcAddress("glMultiTexCoord1s".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoord1s_Native>>()
                .asFunction();
        this.multiTexCoord1sv =
            wglGetProcAddress("glMultiTexCoord1sv".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoord1sv_Native>>()
                .asFunction();
        this.multiTexCoord2d =
            wglGetProcAddress("glMultiTexCoord2d".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoord2d_Native>>()
                .asFunction();
        this.multiTexCoord2dv =
            wglGetProcAddress("glMultiTexCoord2dv".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoord2dv_Native>>()
                .asFunction();
        this.multiTexCoord2f =
            wglGetProcAddress("glMultiTexCoord2f".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoord2f_Native>>()
                .asFunction();
        this.multiTexCoord2fv =
            wglGetProcAddress("glMultiTexCoord2fv".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoord2fv_Native>>()
                .asFunction();
        this.multiTexCoord2i =
            wglGetProcAddress("glMultiTexCoord2i".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoord2i_Native>>()
                .asFunction();
        this.multiTexCoord2iv =
            wglGetProcAddress("glMultiTexCoord2iv".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoord2iv_Native>>()
                .asFunction();
        this.multiTexCoord2s =
            wglGetProcAddress("glMultiTexCoord2s".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoord2s_Native>>()
                .asFunction();
        this.multiTexCoord2sv =
            wglGetProcAddress("glMultiTexCoord2sv".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoord2sv_Native>>()
                .asFunction();
        this.multiTexCoord3d =
            wglGetProcAddress("glMultiTexCoord3d".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoord3d_Native>>()
                .asFunction();
        this.multiTexCoord3dv =
            wglGetProcAddress("glMultiTexCoord3dv".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoord3dv_Native>>()
                .asFunction();
        this.multiTexCoord3f =
            wglGetProcAddress("glMultiTexCoord3f".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoord3f_Native>>()
                .asFunction();
        this.multiTexCoord3fv =
            wglGetProcAddress("glMultiTexCoord3fv".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoord3fv_Native>>()
                .asFunction();
        this.multiTexCoord3i =
            wglGetProcAddress("glMultiTexCoord3i".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoord3i_Native>>()
                .asFunction();
        this.multiTexCoord3iv =
            wglGetProcAddress("glMultiTexCoord3iv".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoord3iv_Native>>()
                .asFunction();
        this.multiTexCoord3s =
            wglGetProcAddress("glMultiTexCoord3s".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoord3s_Native>>()
                .asFunction();
        this.multiTexCoord3sv =
            wglGetProcAddress("glMultiTexCoord3sv".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoord3sv_Native>>()
                .asFunction();
        this.multiTexCoord4d =
            wglGetProcAddress("glMultiTexCoord4d".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoord4d_Native>>()
                .asFunction();
        this.multiTexCoord4dv =
            wglGetProcAddress("glMultiTexCoord4dv".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoord4dv_Native>>()
                .asFunction();
        this.multiTexCoord4f =
            wglGetProcAddress("glMultiTexCoord4f".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoord4f_Native>>()
                .asFunction();
        this.multiTexCoord4fv =
            wglGetProcAddress("glMultiTexCoord4fv".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoord4fv_Native>>()
                .asFunction();
        this.multiTexCoord4i =
            wglGetProcAddress("glMultiTexCoord4i".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoord4i_Native>>()
                .asFunction();
        this.multiTexCoord4iv =
            wglGetProcAddress("glMultiTexCoord4iv".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoord4iv_Native>>()
                .asFunction();
        this.multiTexCoord4s =
            wglGetProcAddress("glMultiTexCoord4s".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoord4s_Native>>()
                .asFunction();
        this.multiTexCoord4sv =
            wglGetProcAddress("glMultiTexCoord4sv".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoord4sv_Native>>()
                .asFunction();
        this.loadTransposeMatrixd =
            wglGetProcAddress("glLoadTransposeMatrixd".toNativeUtf8())
                .cast<NativeFunction<TglLoadTransposeMatrixd_Native>>()
                .asFunction();
        this.loadTransposeMatrixf =
            wglGetProcAddress("glLoadTransposeMatrixf".toNativeUtf8())
                .cast<NativeFunction<TglLoadTransposeMatrixf_Native>>()
                .asFunction();
        this.multTransposeMatrixd =
            wglGetProcAddress("glMultTransposeMatrixd".toNativeUtf8())
                .cast<NativeFunction<TglMultTransposeMatrixd_Native>>()
                .asFunction();
        this.multTransposeMatrixf =
            wglGetProcAddress("glMultTransposeMatrixf".toNativeUtf8())
                .cast<NativeFunction<TglMultTransposeMatrixf_Native>>()
                .asFunction();
        this.sampleCoverage =
            wglGetProcAddress("glSampleCoverage".toNativeUtf8())
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
      this.activeTextureARB = wglGetProcAddress("glActiveTextureARB".toNativeUtf8()).cast<NativeFunction<TglActiveTextureARB_Native>>().asFunction();
      this.clientActiveTextureARB = wglGetProcAddress("glClientActiveTextureARB".toNativeUtf8()).cast<NativeFunction<TglClientActiveTextureARB_Native>>().asFunction();
      this.multiTexCoord1dARB = wglGetProcAddress("glMultiTexCoord1dARB".toNativeUtf8()).cast<NativeFunction<TglMultiTexCoord1dARB_Native>>().asFunction();
      this.multiTexCoord1dvARB = wglGetProcAddress("glMultiTexCoord1dvARB".toNativeUtf8()).cast<NativeFunction<TglMultiTexCoord1dvARB_Native>>().asFunction();
      this.multiTexCoord1fARB = wglGetProcAddress("glMultiTexCoord1fARB".toNativeUtf8()).cast<NativeFunction<TglMultiTexCoord1fARB_Native>>().asFunction();
      this.multiTexCoord1fvARB = wglGetProcAddress("glMultiTexCoord1fvARB".toNativeUtf8()).cast<NativeFunction<TglMultiTexCoord1fvARB_Native>>().asFunction();
      this.multiTexCoord1iARB = wglGetProcAddress("glMultiTexCoord1iARB".toNativeUtf8()).cast<NativeFunction<TglMultiTexCoord1iARB_Native>>().asFunction();
      this.multiTexCoord1ivARB = wglGetProcAddress("glMultiTexCoord1ivARB".toNativeUtf8()).cast<NativeFunction<TglMultiTexCoord1ivARB_Native>>().asFunction();
      this.multiTexCoord1sARB = wglGetProcAddress("glMultiTexCoord1sARB".toNativeUtf8()).cast<NativeFunction<TglMultiTexCoord1sARB_Native>>().asFunction();
      this.multiTexCoord1svARB = wglGetProcAddress("glMultiTexCoord1svARB".toNativeUtf8()).cast<NativeFunction<TglMultiTexCoord1svARB_Native>>().asFunction();
      this.multiTexCoord2dARB = wglGetProcAddress("glMultiTexCoord2dARB".toNativeUtf8()).cast<NativeFunction<TglMultiTexCoord2dARB_Native>>().asFunction();
      this.multiTexCoord2dvARB = wglGetProcAddress("glMultiTexCoord2dvARB".toNativeUtf8()).cast<NativeFunction<TglMultiTexCoord2dvARB_Native>>().asFunction();
      this.multiTexCoord2fARB = wglGetProcAddress("glMultiTexCoord2fARB".toNativeUtf8()).cast<NativeFunction<TglMultiTexCoord2fARB_Native>>().asFunction();
      this.multiTexCoord2fvARB = wglGetProcAddress("glMultiTexCoord2fvARB".toNativeUtf8()).cast<NativeFunction<TglMultiTexCoord2fvARB_Native>>().asFunction();
      this.multiTexCoord2iARB = wglGetProcAddress("glMultiTexCoord2iARB".toNativeUtf8()).cast<NativeFunction<TglMultiTexCoord2iARB_Native>>().asFunction();
      this.multiTexCoord2ivARB = wglGetProcAddress("glMultiTexCoord2ivARB".toNativeUtf8()).cast<NativeFunction<TglMultiTexCoord2ivARB_Native>>().asFunction();
      this.multiTexCoord2sARB = wglGetProcAddress("glMultiTexCoord2sARB".toNativeUtf8()).cast<NativeFunction<TglMultiTexCoord2sARB_Native>>().asFunction();
      this.multiTexCoord2svARB = wglGetProcAddress("glMultiTexCoord2svARB".toNativeUtf8()).cast<NativeFunction<TglMultiTexCoord2svARB_Native>>().asFunction();
      this.multiTexCoord3dARB = wglGetProcAddress("glMultiTexCoord3dARB".toNativeUtf8()).cast<NativeFunction<TglMultiTexCoord3dARB_Native>>().asFunction();
      this.multiTexCoord3dvARB = wglGetProcAddress("glMultiTexCoord3dvARB".toNativeUtf8()).cast<NativeFunction<TglMultiTexCoord3dvARB_Native>>().asFunction();
      this.multiTexCoord3fARB = wglGetProcAddress("glMultiTexCoord3fARB".toNativeUtf8()).cast<NativeFunction<TglMultiTexCoord3fARB_Native>>().asFunction();
      this.multiTexCoord3fvARB = wglGetProcAddress("glMultiTexCoord3fvARB".toNativeUtf8()).cast<NativeFunction<TglMultiTexCoord3fvARB_Native>>().asFunction();
      this.multiTexCoord3iARB = wglGetProcAddress("glMultiTexCoord3iARB".toNativeUtf8()).cast<NativeFunction<TglMultiTexCoord3iARB_Native>>().asFunction();
      this.multiTexCoord3ivARB = wglGetProcAddress("glMultiTexCoord3ivARB".toNativeUtf8()).cast<NativeFunction<TglMultiTexCoord3ivARB_Native>>().asFunction();
      this.multiTexCoord3sARB = wglGetProcAddress("glMultiTexCoord3sARB".toNativeUtf8()).cast<NativeFunction<TglMultiTexCoord3sARB_Native>>().asFunction();
      this.multiTexCoord3svARB = wglGetProcAddress("glMultiTexCoord3svARB".toNativeUtf8()).cast<NativeFunction<TglMultiTexCoord3svARB_Native>>().asFunction();
      this.multiTexCoord4dARB = wglGetProcAddress("glMultiTexCoord4dARB".toNativeUtf8()).cast<NativeFunction<TglMultiTexCoord4dARB_Native>>().asFunction();
      this.multiTexCoord4dvARB = wglGetProcAddress("glMultiTexCoord4dvARB".toNativeUtf8()).cast<NativeFunction<TglMultiTexCoord4dvARB_Native>>().asFunction();
      this.multiTexCoord4fARB = wglGetProcAddress("glMultiTexCoord4fARB".toNativeUtf8()).cast<NativeFunction<TglMultiTexCoord4fARB_Native>>().asFunction();
      this.multiTexCoord4fvARB = wglGetProcAddress("glMultiTexCoord4fvARB".toNativeUtf8()).cast<NativeFunction<TglMultiTexCoord4fvARB_Native>>().asFunction();
      this.multiTexCoord4iARB = wglGetProcAddress("glMultiTexCoord4iARB".toNativeUtf8()).cast<NativeFunction<TglMultiTexCoord4iARB_Native>>().asFunction();
      this.multiTexCoord4ivARB = wglGetProcAddress("glMultiTexCoord4ivARB".toNativeUtf8()).cast<NativeFunction<TglMultiTexCoord4ivARB_Native>>().asFunction();
      this.multiTexCoord4sARB = wglGetProcAddress("glMultiTexCoord4sARB".toNativeUtf8()).cast<NativeFunction<TglMultiTexCoord4sARB_Native>>().asFunction();
      this.multiTexCoord4svARB = wglGetProcAddress("glMultiTexCoord4svARB".toNativeUtf8()).cast<NativeFunction<TglMultiTexCoord4svARB_Native>>().asFunction();
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
            wglGetProcAddress("glBlendFuncSeparate".toNativeUtf8())
                .cast<NativeFunction<TglBlendFuncSeparate_Native>>()
                .asFunction();
        this.multiDrawArrays =
            wglGetProcAddress("glMultiDrawArrays".toNativeUtf8())
                .cast<NativeFunction<TglMultiDrawArrays_Native>>()
                .asFunction();
        this.multiDrawElements =
            wglGetProcAddress("glMultiDrawElements".toNativeUtf8())
                .cast<NativeFunction<TglMultiDrawElements_Native>>()
                .asFunction();
        this.pointParameterf =
            wglGetProcAddress("glPointParameterf".toNativeUtf8())
                .cast<NativeFunction<TglPointParameterf_Native>>()
                .asFunction();
        this.pointParameterfv =
            wglGetProcAddress("glPointParameterfv".toNativeUtf8())
                .cast<NativeFunction<TglPointParameterfv_Native>>()
                .asFunction();
        this.pointParameteri =
            wglGetProcAddress("glPointParameteri".toNativeUtf8())
                .cast<NativeFunction<TglPointParameteri_Native>>()
                .asFunction();
        this.pointParameteriv =
            wglGetProcAddress("glPointParameteriv".toNativeUtf8())
                .cast<NativeFunction<TglPointParameteriv_Native>>()
                .asFunction();
        this.fogCoordf = wglGetProcAddress("glFogCoordf".toNativeUtf8())
            .cast<NativeFunction<TglFogCoordf_Native>>()
            .asFunction();
        this.fogCoordfv = wglGetProcAddress("glFogCoordfv".toNativeUtf8())
            .cast<NativeFunction<TglFogCoordfv_Native>>()
            .asFunction();
        this.fogCoordd = wglGetProcAddress("glFogCoordd".toNativeUtf8())
            .cast<NativeFunction<TglFogCoordd_Native>>()
            .asFunction();
        this.fogCoorddv = wglGetProcAddress("glFogCoorddv".toNativeUtf8())
            .cast<NativeFunction<TglFogCoorddv_Native>>()
            .asFunction();
        this.fogCoordPointer =
            wglGetProcAddress("glFogCoordPointer".toNativeUtf8())
                .cast<NativeFunction<TglFogCoordPointer_Native>>()
                .asFunction();
        this.secondaryColor3b =
            wglGetProcAddress("glSecondaryColor3b".toNativeUtf8())
                .cast<NativeFunction<TglSecondaryColor3b_Native>>()
                .asFunction();
        this.secondaryColor3bv =
            wglGetProcAddress("glSecondaryColor3bv".toNativeUtf8())
                .cast<NativeFunction<TglSecondaryColor3bv_Native>>()
                .asFunction();
        this.secondaryColor3d =
            wglGetProcAddress("glSecondaryColor3d".toNativeUtf8())
                .cast<NativeFunction<TglSecondaryColor3d_Native>>()
                .asFunction();
        this.secondaryColor3dv =
            wglGetProcAddress("glSecondaryColor3dv".toNativeUtf8())
                .cast<NativeFunction<TglSecondaryColor3dv_Native>>()
                .asFunction();
        this.secondaryColor3f =
            wglGetProcAddress("glSecondaryColor3f".toNativeUtf8())
                .cast<NativeFunction<TglSecondaryColor3f_Native>>()
                .asFunction();
        this.secondaryColor3fv =
            wglGetProcAddress("glSecondaryColor3fv".toNativeUtf8())
                .cast<NativeFunction<TglSecondaryColor3fv_Native>>()
                .asFunction();
        this.secondaryColor3i =
            wglGetProcAddress("glSecondaryColor3i".toNativeUtf8())
                .cast<NativeFunction<TglSecondaryColor3i_Native>>()
                .asFunction();
        this.secondaryColor3iv =
            wglGetProcAddress("glSecondaryColor3iv".toNativeUtf8())
                .cast<NativeFunction<TglSecondaryColor3iv_Native>>()
                .asFunction();
        this.secondaryColor3s =
            wglGetProcAddress("glSecondaryColor3s".toNativeUtf8())
                .cast<NativeFunction<TglSecondaryColor3s_Native>>()
                .asFunction();
        this.secondaryColor3sv =
            wglGetProcAddress("glSecondaryColor3sv".toNativeUtf8())
                .cast<NativeFunction<TglSecondaryColor3sv_Native>>()
                .asFunction();
        this.secondaryColor3ub =
            wglGetProcAddress("glSecondaryColor3ub".toNativeUtf8())
                .cast<NativeFunction<TglSecondaryColor3ub_Native>>()
                .asFunction();
        this.secondaryColor3ubv =
            wglGetProcAddress("glSecondaryColor3ubv".toNativeUtf8())
                .cast<NativeFunction<TglSecondaryColor3ubv_Native>>()
                .asFunction();
        this.secondaryColor3ui =
            wglGetProcAddress("glSecondaryColor3ui".toNativeUtf8())
                .cast<NativeFunction<TglSecondaryColor3ui_Native>>()
                .asFunction();
        this.secondaryColor3uiv =
            wglGetProcAddress("glSecondaryColor3uiv".toNativeUtf8())
                .cast<NativeFunction<TglSecondaryColor3uiv_Native>>()
                .asFunction();
        this.secondaryColor3us =
            wglGetProcAddress("glSecondaryColor3us".toNativeUtf8())
                .cast<NativeFunction<TglSecondaryColor3us_Native>>()
                .asFunction();
        this.secondaryColor3usv =
            wglGetProcAddress("glSecondaryColor3usv".toNativeUtf8())
                .cast<NativeFunction<TglSecondaryColor3usv_Native>>()
                .asFunction();
        this.secondaryColorPointer =
            wglGetProcAddress("glSecondaryColorPointer".toNativeUtf8())
                .cast<NativeFunction<TglSecondaryColorPointer_Native>>()
                .asFunction();
        this.windowPos2d = wglGetProcAddress("glWindowPos2d".toNativeUtf8())
            .cast<NativeFunction<TglWindowPos2d_Native>>()
            .asFunction();
        this.windowPos2dv = wglGetProcAddress("glWindowPos2dv".toNativeUtf8())
            .cast<NativeFunction<TglWindowPos2dv_Native>>()
            .asFunction();
        this.windowPos2f = wglGetProcAddress("glWindowPos2f".toNativeUtf8())
            .cast<NativeFunction<TglWindowPos2f_Native>>()
            .asFunction();
        this.windowPos2fv = wglGetProcAddress("glWindowPos2fv".toNativeUtf8())
            .cast<NativeFunction<TglWindowPos2fv_Native>>()
            .asFunction();
        this.windowPos2i = wglGetProcAddress("glWindowPos2i".toNativeUtf8())
            .cast<NativeFunction<TglWindowPos2i_Native>>()
            .asFunction();
        this.windowPos2iv = wglGetProcAddress("glWindowPos2iv".toNativeUtf8())
            .cast<NativeFunction<TglWindowPos2iv_Native>>()
            .asFunction();
        this.windowPos2s = wglGetProcAddress("glWindowPos2s".toNativeUtf8())
            .cast<NativeFunction<TglWindowPos2s_Native>>()
            .asFunction();
        this.windowPos2sv = wglGetProcAddress("glWindowPos2sv".toNativeUtf8())
            .cast<NativeFunction<TglWindowPos2sv_Native>>()
            .asFunction();
        this.windowPos3d = wglGetProcAddress("glWindowPos3d".toNativeUtf8())
            .cast<NativeFunction<TglWindowPos3d_Native>>()
            .asFunction();
        this.windowPos3dv = wglGetProcAddress("glWindowPos3dv".toNativeUtf8())
            .cast<NativeFunction<TglWindowPos3dv_Native>>()
            .asFunction();
        this.windowPos3f = wglGetProcAddress("glWindowPos3f".toNativeUtf8())
            .cast<NativeFunction<TglWindowPos3f_Native>>()
            .asFunction();
        this.windowPos3fv = wglGetProcAddress("glWindowPos3fv".toNativeUtf8())
            .cast<NativeFunction<TglWindowPos3fv_Native>>()
            .asFunction();
        this.windowPos3i = wglGetProcAddress("glWindowPos3i".toNativeUtf8())
            .cast<NativeFunction<TglWindowPos3i_Native>>()
            .asFunction();
        this.windowPos3iv = wglGetProcAddress("glWindowPos3iv".toNativeUtf8())
            .cast<NativeFunction<TglWindowPos3iv_Native>>()
            .asFunction();
        this.windowPos3s = wglGetProcAddress("glWindowPos3s".toNativeUtf8())
            .cast<NativeFunction<TglWindowPos3s_Native>>()
            .asFunction();
        this.windowPos3sv = wglGetProcAddress("glWindowPos3sv".toNativeUtf8())
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
        this.genQueries = wglGetProcAddress("glGenQueries".toNativeUtf8())
            .cast<NativeFunction<TglGenQueries_Native>>()
            .asFunction();
        this.deleteQueries = wglGetProcAddress("glDeleteQueries".toNativeUtf8())
            .cast<NativeFunction<TglDeleteQueries_Native>>()
            .asFunction();
        this.isQuery = wglGetProcAddress("glIsQuery".toNativeUtf8())
            .cast<NativeFunction<TglIsQuery_Native>>()
            .asFunction();
        this.beginQuery = wglGetProcAddress("glBeginQuery".toNativeUtf8())
            .cast<NativeFunction<TglBeginQuery_Native>>()
            .asFunction();
        this.endQuery = wglGetProcAddress("glEndQuery".toNativeUtf8())
            .cast<NativeFunction<TglEndQuery_Native>>()
            .asFunction();
        this.getQueryiv = wglGetProcAddress("glGetQueryiv".toNativeUtf8())
            .cast<NativeFunction<TglGetQueryiv_Native>>()
            .asFunction();
        this.getQueryObjectiv =
            wglGetProcAddress("glGetQueryObjectiv".toNativeUtf8())
                .cast<NativeFunction<TglGetQueryObjectiv_Native>>()
                .asFunction();
        this.getQueryObjectuiv =
            wglGetProcAddress("glGetQueryObjectuiv".toNativeUtf8())
                .cast<NativeFunction<TglGetQueryObjectuiv_Native>>()
                .asFunction();
        this.bindBuffer = wglGetProcAddress("glBindBuffer".toNativeUtf8())
            .cast<NativeFunction<TglBindBuffer_Native>>()
            .asFunction();
        this.deleteBuffers = wglGetProcAddress("glDeleteBuffers".toNativeUtf8())
            .cast<NativeFunction<TglDeleteBuffers_Native>>()
            .asFunction();
        this.genBuffers = wglGetProcAddress("glGenBuffers".toNativeUtf8())
            .cast<NativeFunction<TglGenBuffers_Native>>()
            .asFunction();
        this.isBuffer = wglGetProcAddress("glIsBuffer".toNativeUtf8())
            .cast<NativeFunction<TglIsBuffer_Native>>()
            .asFunction();
        this.bufferData = wglGetProcAddress("glBufferData".toNativeUtf8())
            .cast<NativeFunction<TglBufferData_Native>>()
            .asFunction();
        this.bufferSubData = wglGetProcAddress("glBufferSubData".toNativeUtf8())
            .cast<NativeFunction<TglBufferSubData_Native>>()
            .asFunction();
        this.getBufferSubData =
            wglGetProcAddress("glGetBufferSubData".toNativeUtf8())
                .cast<NativeFunction<TglGetBufferSubData_Native>>()
                .asFunction();
        this.mapBuffer = wglGetProcAddress("glMapBuffer".toNativeUtf8())
            .cast<NativeFunction<TglMapBuffer_Native>>()
            .asFunction();
        this.unmapBuffer = wglGetProcAddress("glUnmapBuffer".toNativeUtf8())
            .cast<NativeFunction<TglUnmapBuffer_Native>>()
            .asFunction();
        this.getBufferParameteriv =
            wglGetProcAddress("glGetBufferParameteriv".toNativeUtf8())
                .cast<NativeFunction<TglGetBufferParameteriv_Native>>()
                .asFunction();
        this.getBufferPointerv =
            wglGetProcAddress("glGetBufferPointerv".toNativeUtf8())
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
            wglGetProcAddress("glBlendEquationSeparate".toNativeUtf8())
                .cast<NativeFunction<TglBlendEquationSeparate_Native>>()
                .asFunction();
        this.drawBuffers = wglGetProcAddress("glDrawBuffers".toNativeUtf8())
            .cast<NativeFunction<TglDrawBuffers_Native>>()
            .asFunction();
        this.stencilOpSeparate =
            wglGetProcAddress("glStencilOpSeparate".toNativeUtf8())
                .cast<NativeFunction<TglStencilOpSeparate_Native>>()
                .asFunction();
        this.stencilFuncSeparate =
            wglGetProcAddress("glStencilFuncSeparate".toNativeUtf8())
                .cast<NativeFunction<TglStencilFuncSeparate_Native>>()
                .asFunction();
        this.stencilMaskSeparate =
            wglGetProcAddress("glStencilMaskSeparate".toNativeUtf8())
                .cast<NativeFunction<TglStencilMaskSeparate_Native>>()
                .asFunction();
        this.attachShader = wglGetProcAddress("glAttachShader".toNativeUtf8())
            .cast<NativeFunction<TglAttachShader_Native>>()
            .asFunction();
        this.bindAttribLocation =
            wglGetProcAddress("glBindAttribLocation".toNativeUtf8())
                .cast<NativeFunction<TglBindAttribLocation_Native>>()
                .asFunction();
        this.compileShader = wglGetProcAddress("glCompileShader".toNativeUtf8())
            .cast<NativeFunction<TglCompileShader_Native>>()
            .asFunction();
        this.createProgram = wglGetProcAddress("glCreateProgram".toNativeUtf8())
            .cast<NativeFunction<TglCreateProgram_Native>>()
            .asFunction();
        this.createShader = wglGetProcAddress("glCreateShader".toNativeUtf8())
            .cast<NativeFunction<TglCreateShader_Native>>()
            .asFunction();
        this.deleteProgram = wglGetProcAddress("glDeleteProgram".toNativeUtf8())
            .cast<NativeFunction<TglDeleteProgram_Native>>()
            .asFunction();
        this.deleteShader = wglGetProcAddress("glDeleteShader".toNativeUtf8())
            .cast<NativeFunction<TglDeleteShader_Native>>()
            .asFunction();
        this.detachShader = wglGetProcAddress("glDetachShader".toNativeUtf8())
            .cast<NativeFunction<TglDetachShader_Native>>()
            .asFunction();
        this.disableVertexAttribArray =
            wglGetProcAddress("glDisableVertexAttribArray".toNativeUtf8())
                .cast<NativeFunction<TglDisableVertexAttribArray_Native>>()
                .asFunction();
        this.enableVertexAttribArray =
            wglGetProcAddress("glEnableVertexAttribArray".toNativeUtf8())
                .cast<NativeFunction<TglEnableVertexAttribArray_Native>>()
                .asFunction();
        this.getActiveAttrib =
            wglGetProcAddress("glGetActiveAttrib".toNativeUtf8())
                .cast<NativeFunction<TglGetActiveAttrib_Native>>()
                .asFunction();
        this.getActiveUniform =
            wglGetProcAddress("glGetActiveUniform".toNativeUtf8())
                .cast<NativeFunction<TglGetActiveUniform_Native>>()
                .asFunction();
        this.getAttachedShaders =
            wglGetProcAddress("glGetAttachedShaders".toNativeUtf8())
                .cast<NativeFunction<TglGetAttachedShaders_Native>>()
                .asFunction();
        this.getAttribLocation =
            wglGetProcAddress("glGetAttribLocation".toNativeUtf8())
                .cast<NativeFunction<TglGetAttribLocation_Native>>()
                .asFunction();
        this.getProgramiv = wglGetProcAddress("glGetProgramiv".toNativeUtf8())
            .cast<NativeFunction<TglGetProgramiv_Native>>()
            .asFunction();
        this.getProgramInfoLog =
            wglGetProcAddress("glGetProgramInfoLog".toNativeUtf8())
                .cast<NativeFunction<TglGetProgramInfoLog_Native>>()
                .asFunction();
        this.getShaderiv = wglGetProcAddress("glGetShaderiv".toNativeUtf8())
            .cast<NativeFunction<TglGetShaderiv_Native>>()
            .asFunction();
        this.getShaderInfoLog =
            wglGetProcAddress("glGetShaderInfoLog".toNativeUtf8())
                .cast<NativeFunction<TglGetShaderInfoLog_Native>>()
                .asFunction();
        this.getShaderSource =
            wglGetProcAddress("glGetShaderSource".toNativeUtf8())
                .cast<NativeFunction<TglGetShaderSource_Native>>()
                .asFunction();
        this.getUniformLocation =
            wglGetProcAddress("glGetUniformLocation".toNativeUtf8())
                .cast<NativeFunction<TglGetUniformLocation_Native>>()
                .asFunction();
        this.getUniformfv = wglGetProcAddress("glGetUniformfv".toNativeUtf8())
            .cast<NativeFunction<TglGetUniformfv_Native>>()
            .asFunction();
        this.getUniformiv = wglGetProcAddress("glGetUniformiv".toNativeUtf8())
            .cast<NativeFunction<TglGetUniformiv_Native>>()
            .asFunction();
        this.getVertexAttribdv =
            wglGetProcAddress("glGetVertexAttribdv".toNativeUtf8())
                .cast<NativeFunction<TglGetVertexAttribdv_Native>>()
                .asFunction();
        this.getVertexAttribfv =
            wglGetProcAddress("glGetVertexAttribfv".toNativeUtf8())
                .cast<NativeFunction<TglGetVertexAttribfv_Native>>()
                .asFunction();
        this.getVertexAttribiv =
            wglGetProcAddress("glGetVertexAttribiv".toNativeUtf8())
                .cast<NativeFunction<TglGetVertexAttribiv_Native>>()
                .asFunction();
        this.getVertexAttribPointerv =
            wglGetProcAddress("glGetVertexAttribPointerv".toNativeUtf8())
                .cast<NativeFunction<TglGetVertexAttribPointerv_Native>>()
                .asFunction();
        this.isProgram = wglGetProcAddress("glIsProgram".toNativeUtf8())
            .cast<NativeFunction<TglIsProgram_Native>>()
            .asFunction();
        this.isShader = wglGetProcAddress("glIsShader".toNativeUtf8())
            .cast<NativeFunction<TglIsShader_Native>>()
            .asFunction();
        this.linkProgram = wglGetProcAddress("glLinkProgram".toNativeUtf8())
            .cast<NativeFunction<TglLinkProgram_Native>>()
            .asFunction();
        this.shaderSource = wglGetProcAddress("glShaderSource".toNativeUtf8())
            .cast<NativeFunction<TglShaderSource_Native>>()
            .asFunction();
        this.useProgram = wglGetProcAddress("glUseProgram".toNativeUtf8())
            .cast<NativeFunction<TglUseProgram_Native>>()
            .asFunction();
        this.uniform1f = wglGetProcAddress("glUniform1f".toNativeUtf8())
            .cast<NativeFunction<TglUniform1f_Native>>()
            .asFunction();
        this.uniform2f = wglGetProcAddress("glUniform2f".toNativeUtf8())
            .cast<NativeFunction<TglUniform2f_Native>>()
            .asFunction();
        this.uniform3f = wglGetProcAddress("glUniform3f".toNativeUtf8())
            .cast<NativeFunction<TglUniform3f_Native>>()
            .asFunction();
        this.uniform4f = wglGetProcAddress("glUniform4f".toNativeUtf8())
            .cast<NativeFunction<TglUniform4f_Native>>()
            .asFunction();
        this.uniform1i = wglGetProcAddress("glUniform1i".toNativeUtf8())
            .cast<NativeFunction<TglUniform1i_Native>>()
            .asFunction();
        this.uniform2i = wglGetProcAddress("glUniform2i".toNativeUtf8())
            .cast<NativeFunction<TglUniform2i_Native>>()
            .asFunction();
        this.uniform3i = wglGetProcAddress("glUniform3i".toNativeUtf8())
            .cast<NativeFunction<TglUniform3i_Native>>()
            .asFunction();
        this.uniform4i = wglGetProcAddress("glUniform4i".toNativeUtf8())
            .cast<NativeFunction<TglUniform4i_Native>>()
            .asFunction();
        this.uniform1fv = wglGetProcAddress("glUniform1fv".toNativeUtf8())
            .cast<NativeFunction<TglUniform1fv_Native>>()
            .asFunction();
        this.uniform2fv = wglGetProcAddress("glUniform2fv".toNativeUtf8())
            .cast<NativeFunction<TglUniform2fv_Native>>()
            .asFunction();
        this.uniform3fv = wglGetProcAddress("glUniform3fv".toNativeUtf8())
            .cast<NativeFunction<TglUniform3fv_Native>>()
            .asFunction();
        this.uniform4fv = wglGetProcAddress("glUniform4fv".toNativeUtf8())
            .cast<NativeFunction<TglUniform4fv_Native>>()
            .asFunction();
        this.uniform1iv = wglGetProcAddress("glUniform1iv".toNativeUtf8())
            .cast<NativeFunction<TglUniform1iv_Native>>()
            .asFunction();
        this.uniform2iv = wglGetProcAddress("glUniform2iv".toNativeUtf8())
            .cast<NativeFunction<TglUniform2iv_Native>>()
            .asFunction();
        this.uniform3iv = wglGetProcAddress("glUniform3iv".toNativeUtf8())
            .cast<NativeFunction<TglUniform3iv_Native>>()
            .asFunction();
        this.uniform4iv = wglGetProcAddress("glUniform4iv".toNativeUtf8())
            .cast<NativeFunction<TglUniform4iv_Native>>()
            .asFunction();
        this.uniformMatrix2fv =
            wglGetProcAddress("glUniformMatrix2fv".toNativeUtf8())
                .cast<NativeFunction<TglUniformMatrix2fv_Native>>()
                .asFunction();
        this.uniformMatrix3fv =
            wglGetProcAddress("glUniformMatrix3fv".toNativeUtf8())
                .cast<NativeFunction<TglUniformMatrix3fv_Native>>()
                .asFunction();
        this.uniformMatrix4fv =
            wglGetProcAddress("glUniformMatrix4fv".toNativeUtf8())
                .cast<NativeFunction<TglUniformMatrix4fv_Native>>()
                .asFunction();
        this.validateProgram =
            wglGetProcAddress("glValidateProgram".toNativeUtf8())
                .cast<NativeFunction<TglValidateProgram_Native>>()
                .asFunction();
        this.vertexAttrib1d =
            wglGetProcAddress("glVertexAttrib1d".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttrib1d_Native>>()
                .asFunction();
        this.vertexAttrib1dv =
            wglGetProcAddress("glVertexAttrib1dv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttrib1dv_Native>>()
                .asFunction();
        this.vertexAttrib1f =
            wglGetProcAddress("glVertexAttrib1f".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttrib1f_Native>>()
                .asFunction();
        this.vertexAttrib1fv =
            wglGetProcAddress("glVertexAttrib1fv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttrib1fv_Native>>()
                .asFunction();
        this.vertexAttrib1s =
            wglGetProcAddress("glVertexAttrib1s".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttrib1s_Native>>()
                .asFunction();
        this.vertexAttrib1sv =
            wglGetProcAddress("glVertexAttrib1sv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttrib1sv_Native>>()
                .asFunction();
        this.vertexAttrib2d =
            wglGetProcAddress("glVertexAttrib2d".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttrib2d_Native>>()
                .asFunction();
        this.vertexAttrib2dv =
            wglGetProcAddress("glVertexAttrib2dv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttrib2dv_Native>>()
                .asFunction();
        this.vertexAttrib2f =
            wglGetProcAddress("glVertexAttrib2f".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttrib2f_Native>>()
                .asFunction();
        this.vertexAttrib2fv =
            wglGetProcAddress("glVertexAttrib2fv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttrib2fv_Native>>()
                .asFunction();
        this.vertexAttrib2s =
            wglGetProcAddress("glVertexAttrib2s".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttrib2s_Native>>()
                .asFunction();
        this.vertexAttrib2sv =
            wglGetProcAddress("glVertexAttrib2sv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttrib2sv_Native>>()
                .asFunction();
        this.vertexAttrib3d =
            wglGetProcAddress("glVertexAttrib3d".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttrib3d_Native>>()
                .asFunction();
        this.vertexAttrib3dv =
            wglGetProcAddress("glVertexAttrib3dv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttrib3dv_Native>>()
                .asFunction();
        this.vertexAttrib3f =
            wglGetProcAddress("glVertexAttrib3f".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttrib3f_Native>>()
                .asFunction();
        this.vertexAttrib3fv =
            wglGetProcAddress("glVertexAttrib3fv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttrib3fv_Native>>()
                .asFunction();
        this.vertexAttrib3s =
            wglGetProcAddress("glVertexAttrib3s".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttrib3s_Native>>()
                .asFunction();
        this.vertexAttrib3sv =
            wglGetProcAddress("glVertexAttrib3sv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttrib3sv_Native>>()
                .asFunction();
        this.vertexAttrib4Nbv =
            wglGetProcAddress("glVertexAttrib4Nbv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttrib4Nbv_Native>>()
                .asFunction();
        this.vertexAttrib4Niv =
            wglGetProcAddress("glVertexAttrib4Niv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttrib4Niv_Native>>()
                .asFunction();
        this.vertexAttrib4Nsv =
            wglGetProcAddress("glVertexAttrib4Nsv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttrib4Nsv_Native>>()
                .asFunction();
        this.vertexAttrib4Nub =
            wglGetProcAddress("glVertexAttrib4Nub".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttrib4Nub_Native>>()
                .asFunction();
        this.vertexAttrib4Nubv =
            wglGetProcAddress("glVertexAttrib4Nubv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttrib4Nubv_Native>>()
                .asFunction();
        this.vertexAttrib4Nuiv =
            wglGetProcAddress("glVertexAttrib4Nuiv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttrib4Nuiv_Native>>()
                .asFunction();
        this.vertexAttrib4Nusv =
            wglGetProcAddress("glVertexAttrib4Nusv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttrib4Nusv_Native>>()
                .asFunction();
        this.vertexAttrib4bv =
            wglGetProcAddress("glVertexAttrib4bv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttrib4bv_Native>>()
                .asFunction();
        this.vertexAttrib4d =
            wglGetProcAddress("glVertexAttrib4d".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttrib4d_Native>>()
                .asFunction();
        this.vertexAttrib4dv =
            wglGetProcAddress("glVertexAttrib4dv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttrib4dv_Native>>()
                .asFunction();
        this.vertexAttrib4f =
            wglGetProcAddress("glVertexAttrib4f".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttrib4f_Native>>()
                .asFunction();
        this.vertexAttrib4fv =
            wglGetProcAddress("glVertexAttrib4fv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttrib4fv_Native>>()
                .asFunction();
        this.vertexAttrib4iv =
            wglGetProcAddress("glVertexAttrib4iv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttrib4iv_Native>>()
                .asFunction();
        this.vertexAttrib4s =
            wglGetProcAddress("glVertexAttrib4s".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttrib4s_Native>>()
                .asFunction();
        this.vertexAttrib4sv =
            wglGetProcAddress("glVertexAttrib4sv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttrib4sv_Native>>()
                .asFunction();
        this.vertexAttrib4ubv =
            wglGetProcAddress("glVertexAttrib4ubv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttrib4ubv_Native>>()
                .asFunction();
        this.vertexAttrib4uiv =
            wglGetProcAddress("glVertexAttrib4uiv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttrib4uiv_Native>>()
                .asFunction();
        this.vertexAttrib4usv =
            wglGetProcAddress("glVertexAttrib4usv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttrib4usv_Native>>()
                .asFunction();
        this.vertexAttribPointer =
            wglGetProcAddress("glVertexAttribPointer".toNativeUtf8())
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
            wglGetProcAddress("glUniformMatrix2x3fv".toNativeUtf8())
                .cast<NativeFunction<TglUniformMatrix2x3fv_Native>>()
                .asFunction();
        this.uniformMatrix3x2fv =
            wglGetProcAddress("glUniformMatrix3x2fv".toNativeUtf8())
                .cast<NativeFunction<TglUniformMatrix3x2fv_Native>>()
                .asFunction();
        this.uniformMatrix2x4fv =
            wglGetProcAddress("glUniformMatrix2x4fv".toNativeUtf8())
                .cast<NativeFunction<TglUniformMatrix2x4fv_Native>>()
                .asFunction();
        this.uniformMatrix4x2fv =
            wglGetProcAddress("glUniformMatrix4x2fv".toNativeUtf8())
                .cast<NativeFunction<TglUniformMatrix4x2fv_Native>>()
                .asFunction();
        this.uniformMatrix3x4fv =
            wglGetProcAddress("glUniformMatrix3x4fv".toNativeUtf8())
                .cast<NativeFunction<TglUniformMatrix3x4fv_Native>>()
                .asFunction();
        this.uniformMatrix4x3fv =
            wglGetProcAddress("glUniformMatrix4x3fv".toNativeUtf8())
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
        this.colorMaski = wglGetProcAddress("glColorMaski".toNativeUtf8())
            .cast<NativeFunction<TglColorMaski_Native>>()
            .asFunction();
        this.getBooleani_v = wglGetProcAddress("glGetBooleani_v".toNativeUtf8())
            .cast<NativeFunction<TglGetBooleani_v_Native>>()
            .asFunction();
        this.getIntegeri_v = wglGetProcAddress("glGetIntegeri_v".toNativeUtf8())
            .cast<NativeFunction<TglGetIntegeri_v_Native>>()
            .asFunction();
        this.enablei = wglGetProcAddress("glEnablei".toNativeUtf8())
            .cast<NativeFunction<TglEnablei_Native>>()
            .asFunction();
        this.disablei = wglGetProcAddress("glDisablei".toNativeUtf8())
            .cast<NativeFunction<TglDisablei_Native>>()
            .asFunction();
        this.isEnabledi = wglGetProcAddress("glIsEnabledi".toNativeUtf8())
            .cast<NativeFunction<TglIsEnabledi_Native>>()
            .asFunction();
        this.beginTransformFeedback =
            wglGetProcAddress("glBeginTransformFeedback".toNativeUtf8())
                .cast<NativeFunction<TglBeginTransformFeedback_Native>>()
                .asFunction();
        this.endTransformFeedback =
            wglGetProcAddress("glEndTransformFeedback".toNativeUtf8())
                .cast<NativeFunction<TglEndTransformFeedback_Native>>()
                .asFunction();
        this.bindBufferRange =
            wglGetProcAddress("glBindBufferRange".toNativeUtf8())
                .cast<NativeFunction<TglBindBufferRange_Native>>()
                .asFunction();
        this.bindBufferBase =
            wglGetProcAddress("glBindBufferBase".toNativeUtf8())
                .cast<NativeFunction<TglBindBufferBase_Native>>()
                .asFunction();
        this.transformFeedbackVaryings =
            wglGetProcAddress("glTransformFeedbackVaryings".toNativeUtf8())
                .cast<NativeFunction<TglTransformFeedbackVaryings_Native>>()
                .asFunction();
        this.getTransformFeedbackVarying =
            wglGetProcAddress("glGetTransformFeedbackVarying".toNativeUtf8())
                .cast<NativeFunction<TglGetTransformFeedbackVarying_Native>>()
                .asFunction();
        this.clampColor = wglGetProcAddress("glClampColor".toNativeUtf8())
            .cast<NativeFunction<TglClampColor_Native>>()
            .asFunction();
        this.beginConditionalRender =
            wglGetProcAddress("glBeginConditionalRender".toNativeUtf8())
                .cast<NativeFunction<TglBeginConditionalRender_Native>>()
                .asFunction();
        this.endConditionalRender =
            wglGetProcAddress("glEndConditionalRender".toNativeUtf8())
                .cast<NativeFunction<TglEndConditionalRender_Native>>()
                .asFunction();
        this.vertexAttribIPointer =
            wglGetProcAddress("glVertexAttribIPointer".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribIPointer_Native>>()
                .asFunction();
        this.getVertexAttribIiv =
            wglGetProcAddress("glGetVertexAttribIiv".toNativeUtf8())
                .cast<NativeFunction<TglGetVertexAttribIiv_Native>>()
                .asFunction();
        this.getVertexAttribIuiv =
            wglGetProcAddress("glGetVertexAttribIuiv".toNativeUtf8())
                .cast<NativeFunction<TglGetVertexAttribIuiv_Native>>()
                .asFunction();
        this.vertexAttribI1i =
            wglGetProcAddress("glVertexAttribI1i".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribI1i_Native>>()
                .asFunction();
        this.vertexAttribI2i =
            wglGetProcAddress("glVertexAttribI2i".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribI2i_Native>>()
                .asFunction();
        this.vertexAttribI3i =
            wglGetProcAddress("glVertexAttribI3i".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribI3i_Native>>()
                .asFunction();
        this.vertexAttribI4i =
            wglGetProcAddress("glVertexAttribI4i".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribI4i_Native>>()
                .asFunction();
        this.vertexAttribI1ui =
            wglGetProcAddress("glVertexAttribI1ui".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribI1ui_Native>>()
                .asFunction();
        this.vertexAttribI2ui =
            wglGetProcAddress("glVertexAttribI2ui".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribI2ui_Native>>()
                .asFunction();
        this.vertexAttribI3ui =
            wglGetProcAddress("glVertexAttribI3ui".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribI3ui_Native>>()
                .asFunction();
        this.vertexAttribI4ui =
            wglGetProcAddress("glVertexAttribI4ui".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribI4ui_Native>>()
                .asFunction();
        this.vertexAttribI1iv =
            wglGetProcAddress("glVertexAttribI1iv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribI1iv_Native>>()
                .asFunction();
        this.vertexAttribI2iv =
            wglGetProcAddress("glVertexAttribI2iv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribI2iv_Native>>()
                .asFunction();
        this.vertexAttribI3iv =
            wglGetProcAddress("glVertexAttribI3iv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribI3iv_Native>>()
                .asFunction();
        this.vertexAttribI4iv =
            wglGetProcAddress("glVertexAttribI4iv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribI4iv_Native>>()
                .asFunction();
        this.vertexAttribI1uiv =
            wglGetProcAddress("glVertexAttribI1uiv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribI1uiv_Native>>()
                .asFunction();
        this.vertexAttribI2uiv =
            wglGetProcAddress("glVertexAttribI2uiv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribI2uiv_Native>>()
                .asFunction();
        this.vertexAttribI3uiv =
            wglGetProcAddress("glVertexAttribI3uiv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribI3uiv_Native>>()
                .asFunction();
        this.vertexAttribI4uiv =
            wglGetProcAddress("glVertexAttribI4uiv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribI4uiv_Native>>()
                .asFunction();
        this.vertexAttribI4bv =
            wglGetProcAddress("glVertexAttribI4bv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribI4bv_Native>>()
                .asFunction();
        this.vertexAttribI4sv =
            wglGetProcAddress("glVertexAttribI4sv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribI4sv_Native>>()
                .asFunction();
        this.vertexAttribI4ubv =
            wglGetProcAddress("glVertexAttribI4ubv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribI4ubv_Native>>()
                .asFunction();
        this.vertexAttribI4usv =
            wglGetProcAddress("glVertexAttribI4usv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribI4usv_Native>>()
                .asFunction();
        this.getUniformuiv = wglGetProcAddress("glGetUniformuiv".toNativeUtf8())
            .cast<NativeFunction<TglGetUniformuiv_Native>>()
            .asFunction();
        this.bindFragDataLocation =
            wglGetProcAddress("glBindFragDataLocation".toNativeUtf8())
                .cast<NativeFunction<TglBindFragDataLocation_Native>>()
                .asFunction();
        this.getFragDataLocation =
            wglGetProcAddress("glGetFragDataLocation".toNativeUtf8())
                .cast<NativeFunction<TglGetFragDataLocation_Native>>()
                .asFunction();
        this.uniform1ui = wglGetProcAddress("glUniform1ui".toNativeUtf8())
            .cast<NativeFunction<TglUniform1ui_Native>>()
            .asFunction();
        this.uniform2ui = wglGetProcAddress("glUniform2ui".toNativeUtf8())
            .cast<NativeFunction<TglUniform2ui_Native>>()
            .asFunction();
        this.uniform3ui = wglGetProcAddress("glUniform3ui".toNativeUtf8())
            .cast<NativeFunction<TglUniform3ui_Native>>()
            .asFunction();
        this.uniform4ui = wglGetProcAddress("glUniform4ui".toNativeUtf8())
            .cast<NativeFunction<TglUniform4ui_Native>>()
            .asFunction();
        this.uniform1uiv = wglGetProcAddress("glUniform1uiv".toNativeUtf8())
            .cast<NativeFunction<TglUniform1uiv_Native>>()
            .asFunction();
        this.uniform2uiv = wglGetProcAddress("glUniform2uiv".toNativeUtf8())
            .cast<NativeFunction<TglUniform2uiv_Native>>()
            .asFunction();
        this.uniform3uiv = wglGetProcAddress("glUniform3uiv".toNativeUtf8())
            .cast<NativeFunction<TglUniform3uiv_Native>>()
            .asFunction();
        this.uniform4uiv = wglGetProcAddress("glUniform4uiv".toNativeUtf8())
            .cast<NativeFunction<TglUniform4uiv_Native>>()
            .asFunction();
        this.texParameterIiv =
            wglGetProcAddress("glTexParameterIiv".toNativeUtf8())
                .cast<NativeFunction<TglTexParameterIiv_Native>>()
                .asFunction();
        this.texParameterIuiv =
            wglGetProcAddress("glTexParameterIuiv".toNativeUtf8())
                .cast<NativeFunction<TglTexParameterIuiv_Native>>()
                .asFunction();
        this.getTexParameterIiv =
            wglGetProcAddress("glGetTexParameterIiv".toNativeUtf8())
                .cast<NativeFunction<TglGetTexParameterIiv_Native>>()
                .asFunction();
        this.getTexParameterIuiv =
            wglGetProcAddress("glGetTexParameterIuiv".toNativeUtf8())
                .cast<NativeFunction<TglGetTexParameterIuiv_Native>>()
                .asFunction();
        this.clearBufferiv = wglGetProcAddress("glClearBufferiv".toNativeUtf8())
            .cast<NativeFunction<TglClearBufferiv_Native>>()
            .asFunction();
        this.clearBufferuiv =
            wglGetProcAddress("glClearBufferuiv".toNativeUtf8())
                .cast<NativeFunction<TglClearBufferuiv_Native>>()
                .asFunction();
        this.clearBufferfv = wglGetProcAddress("glClearBufferfv".toNativeUtf8())
            .cast<NativeFunction<TglClearBufferfv_Native>>()
            .asFunction();
        this.clearBufferfi = wglGetProcAddress("glClearBufferfi".toNativeUtf8())
            .cast<NativeFunction<TglClearBufferfi_Native>>()
            .asFunction();
        this.getStringi = wglGetProcAddress("glGetStringi".toNativeUtf8())
            .cast<NativeFunction<TglGetStringi_Native>>()
            .asFunction();
        this.isRenderbuffer =
            wglGetProcAddress("glIsRenderbuffer".toNativeUtf8())
                .cast<NativeFunction<TglIsRenderbuffer_Native>>()
                .asFunction();
        this.bindRenderbuffer =
            wglGetProcAddress("glBindRenderbuffer".toNativeUtf8())
                .cast<NativeFunction<TglBindRenderbuffer_Native>>()
                .asFunction();
        this.deleteRenderbuffers =
            wglGetProcAddress("glDeleteRenderbuffers".toNativeUtf8())
                .cast<NativeFunction<TglDeleteRenderbuffers_Native>>()
                .asFunction();
        this.genRenderbuffers =
            wglGetProcAddress("glGenRenderbuffers".toNativeUtf8())
                .cast<NativeFunction<TglGenRenderbuffers_Native>>()
                .asFunction();
        this.renderbufferStorage =
            wglGetProcAddress("glRenderbufferStorage".toNativeUtf8())
                .cast<NativeFunction<TglRenderbufferStorage_Native>>()
                .asFunction();
        this.getRenderbufferParameteriv =
            wglGetProcAddress("glGetRenderbufferParameteriv".toNativeUtf8())
                .cast<NativeFunction<TglGetRenderbufferParameteriv_Native>>()
                .asFunction();
        this.isFramebuffer = wglGetProcAddress("glIsFramebuffer".toNativeUtf8())
            .cast<NativeFunction<TglIsFramebuffer_Native>>()
            .asFunction();
        this.bindFramebuffer =
            wglGetProcAddress("glBindFramebuffer".toNativeUtf8())
                .cast<NativeFunction<TglBindFramebuffer_Native>>()
                .asFunction();
        this.deleteFramebuffers =
            wglGetProcAddress("glDeleteFramebuffers".toNativeUtf8())
                .cast<NativeFunction<TglDeleteFramebuffers_Native>>()
                .asFunction();
        this.genFramebuffers =
            wglGetProcAddress("glGenFramebuffers".toNativeUtf8())
                .cast<NativeFunction<TglGenFramebuffers_Native>>()
                .asFunction();
        this.checkFramebufferStatus =
            wglGetProcAddress("glCheckFramebufferStatus".toNativeUtf8())
                .cast<NativeFunction<TglCheckFramebufferStatus_Native>>()
                .asFunction();
        this.framebufferTexture1D =
            wglGetProcAddress("glFramebufferTexture1D".toNativeUtf8())
                .cast<NativeFunction<TglFramebufferTexture1D_Native>>()
                .asFunction();
        this.framebufferTexture2D =
            wglGetProcAddress("glFramebufferTexture2D".toNativeUtf8())
                .cast<NativeFunction<TglFramebufferTexture2D_Native>>()
                .asFunction();
        this.framebufferTexture3D =
            wglGetProcAddress("glFramebufferTexture3D".toNativeUtf8())
                .cast<NativeFunction<TglFramebufferTexture3D_Native>>()
                .asFunction();
        this.framebufferRenderbuffer =
            wglGetProcAddress("glFramebufferRenderbuffer".toNativeUtf8())
                .cast<NativeFunction<TglFramebufferRenderbuffer_Native>>()
                .asFunction();
        this.getFramebufferAttachmentParameteriv = wglGetProcAddress(
                "glGetFramebufferAttachmentParameteriv".toNativeUtf8())
            .cast<
                NativeFunction<TglGetFramebufferAttachmentParameteriv_Native>>()
            .asFunction();
        this.generateMipmap =
            wglGetProcAddress("glGenerateMipmap".toNativeUtf8())
                .cast<NativeFunction<TglGenerateMipmap_Native>>()
                .asFunction();
        this.blitFramebuffer =
            wglGetProcAddress("glBlitFramebuffer".toNativeUtf8())
                .cast<NativeFunction<TglBlitFramebuffer_Native>>()
                .asFunction();
        this.renderbufferStorageMultisample = wglGetProcAddress(
                "glRenderbufferStorageMultisample".toNativeUtf8())
            .cast<NativeFunction<TglRenderbufferStorageMultisample_Native>>()
            .asFunction();
        this.framebufferTextureLayer =
            wglGetProcAddress("glFramebufferTextureLayer".toNativeUtf8())
                .cast<NativeFunction<TglFramebufferTextureLayer_Native>>()
                .asFunction();
        this.mapBufferRange =
            wglGetProcAddress("glMapBufferRange".toNativeUtf8())
                .cast<NativeFunction<TglMapBufferRange_Native>>()
                .asFunction();
        this.flushMappedBufferRange =
            wglGetProcAddress("glFlushMappedBufferRange".toNativeUtf8())
                .cast<NativeFunction<TglFlushMappedBufferRange_Native>>()
                .asFunction();
        this.bindVertexArray =
            wglGetProcAddress("glBindVertexArray".toNativeUtf8())
                .cast<NativeFunction<TglBindVertexArray_Native>>()
                .asFunction();
        this.deleteVertexArrays =
            wglGetProcAddress("glDeleteVertexArrays".toNativeUtf8())
                .cast<NativeFunction<TglDeleteVertexArrays_Native>>()
                .asFunction();
        this.genVertexArrays =
            wglGetProcAddress("glGenVertexArrays".toNativeUtf8())
                .cast<NativeFunction<TglGenVertexArrays_Native>>()
                .asFunction();
        this.isVertexArray = wglGetProcAddress("glIsVertexArray".toNativeUtf8())
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
            wglGetProcAddress("glDrawArraysInstanced".toNativeUtf8())
                .cast<NativeFunction<TglDrawArraysInstanced_Native>>()
                .asFunction();
        this.drawElementsInstanced =
            wglGetProcAddress("glDrawElementsInstanced".toNativeUtf8())
                .cast<NativeFunction<TglDrawElementsInstanced_Native>>()
                .asFunction();
        this.texBuffer = wglGetProcAddress("glTexBuffer".toNativeUtf8())
            .cast<NativeFunction<TglTexBuffer_Native>>()
            .asFunction();
        this.primitiveRestartIndex =
            wglGetProcAddress("glPrimitiveRestartIndex".toNativeUtf8())
                .cast<NativeFunction<TglPrimitiveRestartIndex_Native>>()
                .asFunction();
        this.copyBufferSubData =
            wglGetProcAddress("glCopyBufferSubData".toNativeUtf8())
                .cast<NativeFunction<TglCopyBufferSubData_Native>>()
                .asFunction();
        this.getUniformIndices =
            wglGetProcAddress("glGetUniformIndices".toNativeUtf8())
                .cast<NativeFunction<TglGetUniformIndices_Native>>()
                .asFunction();
        this.getActiveUniformsiv =
            wglGetProcAddress("glGetActiveUniformsiv".toNativeUtf8())
                .cast<NativeFunction<TglGetActiveUniformsiv_Native>>()
                .asFunction();
        this.getActiveUniformName =
            wglGetProcAddress("glGetActiveUniformName".toNativeUtf8())
                .cast<NativeFunction<TglGetActiveUniformName_Native>>()
                .asFunction();
        this.getUniformBlockIndex =
            wglGetProcAddress("glGetUniformBlockIndex".toNativeUtf8())
                .cast<NativeFunction<TglGetUniformBlockIndex_Native>>()
                .asFunction();
        this.getActiveUniformBlockiv =
            wglGetProcAddress("glGetActiveUniformBlockiv".toNativeUtf8())
                .cast<NativeFunction<TglGetActiveUniformBlockiv_Native>>()
                .asFunction();
        this.getActiveUniformBlockName =
            wglGetProcAddress("glGetActiveUniformBlockName".toNativeUtf8())
                .cast<NativeFunction<TglGetActiveUniformBlockName_Native>>()
                .asFunction();
        this.uniformBlockBinding =
            wglGetProcAddress("glUniformBlockBinding".toNativeUtf8())
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
            wglGetProcAddress("glDrawElementsBaseVertex".toNativeUtf8())
                .cast<NativeFunction<TglDrawElementsBaseVertex_Native>>()
                .asFunction();
        this.drawRangeElementsBaseVertex =
            wglGetProcAddress("glDrawRangeElementsBaseVertex".toNativeUtf8())
                .cast<NativeFunction<TglDrawRangeElementsBaseVertex_Native>>()
                .asFunction();
        this.drawElementsInstancedBaseVertex = wglGetProcAddress(
                "glDrawElementsInstancedBaseVertex".toNativeUtf8())
            .cast<NativeFunction<TglDrawElementsInstancedBaseVertex_Native>>()
            .asFunction();
        this.multiDrawElementsBaseVertex =
            wglGetProcAddress("glMultiDrawElementsBaseVertex".toNativeUtf8())
                .cast<NativeFunction<TglMultiDrawElementsBaseVertex_Native>>()
                .asFunction();
        this.provokingVertex =
            wglGetProcAddress("glProvokingVertex".toNativeUtf8())
                .cast<NativeFunction<TglProvokingVertex_Native>>()
                .asFunction();
        this.fenceSync = wglGetProcAddress("glFenceSync".toNativeUtf8())
            .cast<NativeFunction<TglFenceSync_Native>>()
            .asFunction();
        this.isSync = wglGetProcAddress("glIsSync".toNativeUtf8())
            .cast<NativeFunction<TglIsSync_Native>>()
            .asFunction();
        this.deleteSync = wglGetProcAddress("glDeleteSync".toNativeUtf8())
            .cast<NativeFunction<TglDeleteSync_Native>>()
            .asFunction();
        this.clientWaitSync =
            wglGetProcAddress("glClientWaitSync".toNativeUtf8())
                .cast<NativeFunction<TglClientWaitSync_Native>>()
                .asFunction();
        this.waitSync = wglGetProcAddress("glWaitSync".toNativeUtf8())
            .cast<NativeFunction<TglWaitSync_Native>>()
            .asFunction();
        this.getInteger64v = wglGetProcAddress("glGetInteger64v".toNativeUtf8())
            .cast<NativeFunction<TglGetInteger64v_Native>>()
            .asFunction();
        this.getSynciv = wglGetProcAddress("glGetSynciv".toNativeUtf8())
            .cast<NativeFunction<TglGetSynciv_Native>>()
            .asFunction();
        this.getInteger64i_v =
            wglGetProcAddress("glGetInteger64i_v".toNativeUtf8())
                .cast<NativeFunction<TglGetInteger64i_v_Native>>()
                .asFunction();
        this.getBufferParameteri64v =
            wglGetProcAddress("glGetBufferParameteri64v".toNativeUtf8())
                .cast<NativeFunction<TglGetBufferParameteri64v_Native>>()
                .asFunction();
        this.framebufferTexture =
            wglGetProcAddress("glFramebufferTexture".toNativeUtf8())
                .cast<NativeFunction<TglFramebufferTexture_Native>>()
                .asFunction();
        this.texImage2DMultisample =
            wglGetProcAddress("glTexImage2DMultisample".toNativeUtf8())
                .cast<NativeFunction<TglTexImage2DMultisample_Native>>()
                .asFunction();
        this.texImage3DMultisample =
            wglGetProcAddress("glTexImage3DMultisample".toNativeUtf8())
                .cast<NativeFunction<TglTexImage3DMultisample_Native>>()
                .asFunction();
        this.getMultisamplefv =
            wglGetProcAddress("glGetMultisamplefv".toNativeUtf8())
                .cast<NativeFunction<TglGetMultisamplefv_Native>>()
                .asFunction();
        this.sampleMaski = wglGetProcAddress("glSampleMaski".toNativeUtf8())
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
            wglGetProcAddress("glBindFragDataLocationIndexed".toNativeUtf8())
                .cast<NativeFunction<TglBindFragDataLocationIndexed_Native>>()
                .asFunction();
        this.getFragDataIndex =
            wglGetProcAddress("glGetFragDataIndex".toNativeUtf8())
                .cast<NativeFunction<TglGetFragDataIndex_Native>>()
                .asFunction();
        this.genSamplers = wglGetProcAddress("glGenSamplers".toNativeUtf8())
            .cast<NativeFunction<TglGenSamplers_Native>>()
            .asFunction();
        this.deleteSamplers =
            wglGetProcAddress("glDeleteSamplers".toNativeUtf8())
                .cast<NativeFunction<TglDeleteSamplers_Native>>()
                .asFunction();
        this.isSampler = wglGetProcAddress("glIsSampler".toNativeUtf8())
            .cast<NativeFunction<TglIsSampler_Native>>()
            .asFunction();
        this.bindSampler = wglGetProcAddress("glBindSampler".toNativeUtf8())
            .cast<NativeFunction<TglBindSampler_Native>>()
            .asFunction();
        this.samplerParameteri =
            wglGetProcAddress("glSamplerParameteri".toNativeUtf8())
                .cast<NativeFunction<TglSamplerParameteri_Native>>()
                .asFunction();
        this.samplerParameteriv =
            wglGetProcAddress("glSamplerParameteriv".toNativeUtf8())
                .cast<NativeFunction<TglSamplerParameteriv_Native>>()
                .asFunction();
        this.samplerParameterf =
            wglGetProcAddress("glSamplerParameterf".toNativeUtf8())
                .cast<NativeFunction<TglSamplerParameterf_Native>>()
                .asFunction();
        this.samplerParameterfv =
            wglGetProcAddress("glSamplerParameterfv".toNativeUtf8())
                .cast<NativeFunction<TglSamplerParameterfv_Native>>()
                .asFunction();
        this.samplerParameterIiv =
            wglGetProcAddress("glSamplerParameterIiv".toNativeUtf8())
                .cast<NativeFunction<TglSamplerParameterIiv_Native>>()
                .asFunction();
        this.samplerParameterIuiv =
            wglGetProcAddress("glSamplerParameterIuiv".toNativeUtf8())
                .cast<NativeFunction<TglSamplerParameterIuiv_Native>>()
                .asFunction();
        this.getSamplerParameteriv =
            wglGetProcAddress("glGetSamplerParameteriv".toNativeUtf8())
                .cast<NativeFunction<TglGetSamplerParameteriv_Native>>()
                .asFunction();
        this.getSamplerParameterIiv =
            wglGetProcAddress("glGetSamplerParameterIiv".toNativeUtf8())
                .cast<NativeFunction<TglGetSamplerParameterIiv_Native>>()
                .asFunction();
        this.getSamplerParameterfv =
            wglGetProcAddress("glGetSamplerParameterfv".toNativeUtf8())
                .cast<NativeFunction<TglGetSamplerParameterfv_Native>>()
                .asFunction();
        this.getSamplerParameterIuiv =
            wglGetProcAddress("glGetSamplerParameterIuiv".toNativeUtf8())
                .cast<NativeFunction<TglGetSamplerParameterIuiv_Native>>()
                .asFunction();
        this.queryCounter = wglGetProcAddress("glQueryCounter".toNativeUtf8())
            .cast<NativeFunction<TglQueryCounter_Native>>()
            .asFunction();
        this.getQueryObjecti64v =
            wglGetProcAddress("glGetQueryObjecti64v".toNativeUtf8())
                .cast<NativeFunction<TglGetQueryObjecti64v_Native>>()
                .asFunction();
        this.getQueryObjectui64v =
            wglGetProcAddress("glGetQueryObjectui64v".toNativeUtf8())
                .cast<NativeFunction<TglGetQueryObjectui64v_Native>>()
                .asFunction();
        this.vertexAttribDivisor =
            wglGetProcAddress("glVertexAttribDivisor".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribDivisor_Native>>()
                .asFunction();
        this.vertexAttribP1ui =
            wglGetProcAddress("glVertexAttribP1ui".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribP1ui_Native>>()
                .asFunction();
        this.vertexAttribP1uiv =
            wglGetProcAddress("glVertexAttribP1uiv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribP1uiv_Native>>()
                .asFunction();
        this.vertexAttribP2ui =
            wglGetProcAddress("glVertexAttribP2ui".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribP2ui_Native>>()
                .asFunction();
        this.vertexAttribP2uiv =
            wglGetProcAddress("glVertexAttribP2uiv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribP2uiv_Native>>()
                .asFunction();
        this.vertexAttribP3ui =
            wglGetProcAddress("glVertexAttribP3ui".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribP3ui_Native>>()
                .asFunction();
        this.vertexAttribP3uiv =
            wglGetProcAddress("glVertexAttribP3uiv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribP3uiv_Native>>()
                .asFunction();
        this.vertexAttribP4ui =
            wglGetProcAddress("glVertexAttribP4ui".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribP4ui_Native>>()
                .asFunction();
        this.vertexAttribP4uiv =
            wglGetProcAddress("glVertexAttribP4uiv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribP4uiv_Native>>()
                .asFunction();
        this.vertexP2ui = wglGetProcAddress("glVertexP2ui".toNativeUtf8())
            .cast<NativeFunction<TglVertexP2ui_Native>>()
            .asFunction();
        this.vertexP2uiv = wglGetProcAddress("glVertexP2uiv".toNativeUtf8())
            .cast<NativeFunction<TglVertexP2uiv_Native>>()
            .asFunction();
        this.vertexP3ui = wglGetProcAddress("glVertexP3ui".toNativeUtf8())
            .cast<NativeFunction<TglVertexP3ui_Native>>()
            .asFunction();
        this.vertexP3uiv = wglGetProcAddress("glVertexP3uiv".toNativeUtf8())
            .cast<NativeFunction<TglVertexP3uiv_Native>>()
            .asFunction();
        this.vertexP4ui = wglGetProcAddress("glVertexP4ui".toNativeUtf8())
            .cast<NativeFunction<TglVertexP4ui_Native>>()
            .asFunction();
        this.vertexP4uiv = wglGetProcAddress("glVertexP4uiv".toNativeUtf8())
            .cast<NativeFunction<TglVertexP4uiv_Native>>()
            .asFunction();
        this.texCoordP1ui = wglGetProcAddress("glTexCoordP1ui".toNativeUtf8())
            .cast<NativeFunction<TglTexCoordP1ui_Native>>()
            .asFunction();
        this.texCoordP1uiv = wglGetProcAddress("glTexCoordP1uiv".toNativeUtf8())
            .cast<NativeFunction<TglTexCoordP1uiv_Native>>()
            .asFunction();
        this.texCoordP2ui = wglGetProcAddress("glTexCoordP2ui".toNativeUtf8())
            .cast<NativeFunction<TglTexCoordP2ui_Native>>()
            .asFunction();
        this.texCoordP2uiv = wglGetProcAddress("glTexCoordP2uiv".toNativeUtf8())
            .cast<NativeFunction<TglTexCoordP2uiv_Native>>()
            .asFunction();
        this.texCoordP3ui = wglGetProcAddress("glTexCoordP3ui".toNativeUtf8())
            .cast<NativeFunction<TglTexCoordP3ui_Native>>()
            .asFunction();
        this.texCoordP3uiv = wglGetProcAddress("glTexCoordP3uiv".toNativeUtf8())
            .cast<NativeFunction<TglTexCoordP3uiv_Native>>()
            .asFunction();
        this.texCoordP4ui = wglGetProcAddress("glTexCoordP4ui".toNativeUtf8())
            .cast<NativeFunction<TglTexCoordP4ui_Native>>()
            .asFunction();
        this.texCoordP4uiv = wglGetProcAddress("glTexCoordP4uiv".toNativeUtf8())
            .cast<NativeFunction<TglTexCoordP4uiv_Native>>()
            .asFunction();
        this.multiTexCoordP1ui =
            wglGetProcAddress("glMultiTexCoordP1ui".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoordP1ui_Native>>()
                .asFunction();
        this.multiTexCoordP1uiv =
            wglGetProcAddress("glMultiTexCoordP1uiv".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoordP1uiv_Native>>()
                .asFunction();
        this.multiTexCoordP2ui =
            wglGetProcAddress("glMultiTexCoordP2ui".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoordP2ui_Native>>()
                .asFunction();
        this.multiTexCoordP2uiv =
            wglGetProcAddress("glMultiTexCoordP2uiv".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoordP2uiv_Native>>()
                .asFunction();
        this.multiTexCoordP3ui =
            wglGetProcAddress("glMultiTexCoordP3ui".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoordP3ui_Native>>()
                .asFunction();
        this.multiTexCoordP3uiv =
            wglGetProcAddress("glMultiTexCoordP3uiv".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoordP3uiv_Native>>()
                .asFunction();
        this.multiTexCoordP4ui =
            wglGetProcAddress("glMultiTexCoordP4ui".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoordP4ui_Native>>()
                .asFunction();
        this.multiTexCoordP4uiv =
            wglGetProcAddress("glMultiTexCoordP4uiv".toNativeUtf8())
                .cast<NativeFunction<TglMultiTexCoordP4uiv_Native>>()
                .asFunction();
        this.normalP3ui = wglGetProcAddress("glNormalP3ui".toNativeUtf8())
            .cast<NativeFunction<TglNormalP3ui_Native>>()
            .asFunction();
        this.normalP3uiv = wglGetProcAddress("glNormalP3uiv".toNativeUtf8())
            .cast<NativeFunction<TglNormalP3uiv_Native>>()
            .asFunction();
        this.colorP3ui = wglGetProcAddress("glColorP3ui".toNativeUtf8())
            .cast<NativeFunction<TglColorP3ui_Native>>()
            .asFunction();
        this.colorP3uiv = wglGetProcAddress("glColorP3uiv".toNativeUtf8())
            .cast<NativeFunction<TglColorP3uiv_Native>>()
            .asFunction();
        this.colorP4ui = wglGetProcAddress("glColorP4ui".toNativeUtf8())
            .cast<NativeFunction<TglColorP4ui_Native>>()
            .asFunction();
        this.colorP4uiv = wglGetProcAddress("glColorP4uiv".toNativeUtf8())
            .cast<NativeFunction<TglColorP4uiv_Native>>()
            .asFunction();
        this.secondaryColorP3ui =
            wglGetProcAddress("glSecondaryColorP3ui".toNativeUtf8())
                .cast<NativeFunction<TglSecondaryColorP3ui_Native>>()
                .asFunction();
        this.secondaryColorP3uiv =
            wglGetProcAddress("glSecondaryColorP3uiv".toNativeUtf8())
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
            wglGetProcAddress("glMinSampleShading".toNativeUtf8())
                .cast<NativeFunction<TglMinSampleShading_Native>>()
                .asFunction();
        this.blendEquationi =
            wglGetProcAddress("glBlendEquationi".toNativeUtf8())
                .cast<NativeFunction<TglBlendEquationi_Native>>()
                .asFunction();
        this.blendEquationSeparatei =
            wglGetProcAddress("glBlendEquationSeparatei".toNativeUtf8())
                .cast<NativeFunction<TglBlendEquationSeparatei_Native>>()
                .asFunction();
        this.blendFunci = wglGetProcAddress("glBlendFunci".toNativeUtf8())
            .cast<NativeFunction<TglBlendFunci_Native>>()
            .asFunction();
        this.blendFuncSeparatei =
            wglGetProcAddress("glBlendFuncSeparatei".toNativeUtf8())
                .cast<NativeFunction<TglBlendFuncSeparatei_Native>>()
                .asFunction();
        this.drawArraysIndirect =
            wglGetProcAddress("glDrawArraysIndirect".toNativeUtf8())
                .cast<NativeFunction<TglDrawArraysIndirect_Native>>()
                .asFunction();
        this.drawElementsIndirect =
            wglGetProcAddress("glDrawElementsIndirect".toNativeUtf8())
                .cast<NativeFunction<TglDrawElementsIndirect_Native>>()
                .asFunction();
        this.uniform1d = wglGetProcAddress("glUniform1d".toNativeUtf8())
            .cast<NativeFunction<TglUniform1d_Native>>()
            .asFunction();
        this.uniform2d = wglGetProcAddress("glUniform2d".toNativeUtf8())
            .cast<NativeFunction<TglUniform2d_Native>>()
            .asFunction();
        this.uniform3d = wglGetProcAddress("glUniform3d".toNativeUtf8())
            .cast<NativeFunction<TglUniform3d_Native>>()
            .asFunction();
        this.uniform4d = wglGetProcAddress("glUniform4d".toNativeUtf8())
            .cast<NativeFunction<TglUniform4d_Native>>()
            .asFunction();
        this.uniform1dv = wglGetProcAddress("glUniform1dv".toNativeUtf8())
            .cast<NativeFunction<TglUniform1dv_Native>>()
            .asFunction();
        this.uniform2dv = wglGetProcAddress("glUniform2dv".toNativeUtf8())
            .cast<NativeFunction<TglUniform2dv_Native>>()
            .asFunction();
        this.uniform3dv = wglGetProcAddress("glUniform3dv".toNativeUtf8())
            .cast<NativeFunction<TglUniform3dv_Native>>()
            .asFunction();
        this.uniform4dv = wglGetProcAddress("glUniform4dv".toNativeUtf8())
            .cast<NativeFunction<TglUniform4dv_Native>>()
            .asFunction();
        this.uniformMatrix2dv =
            wglGetProcAddress("glUniformMatrix2dv".toNativeUtf8())
                .cast<NativeFunction<TglUniformMatrix2dv_Native>>()
                .asFunction();
        this.uniformMatrix3dv =
            wglGetProcAddress("glUniformMatrix3dv".toNativeUtf8())
                .cast<NativeFunction<TglUniformMatrix3dv_Native>>()
                .asFunction();
        this.uniformMatrix4dv =
            wglGetProcAddress("glUniformMatrix4dv".toNativeUtf8())
                .cast<NativeFunction<TglUniformMatrix4dv_Native>>()
                .asFunction();
        this.uniformMatrix2x3dv =
            wglGetProcAddress("glUniformMatrix2x3dv".toNativeUtf8())
                .cast<NativeFunction<TglUniformMatrix2x3dv_Native>>()
                .asFunction();
        this.uniformMatrix2x4dv =
            wglGetProcAddress("glUniformMatrix2x4dv".toNativeUtf8())
                .cast<NativeFunction<TglUniformMatrix2x4dv_Native>>()
                .asFunction();
        this.uniformMatrix3x2dv =
            wglGetProcAddress("glUniformMatrix3x2dv".toNativeUtf8())
                .cast<NativeFunction<TglUniformMatrix3x2dv_Native>>()
                .asFunction();
        this.uniformMatrix3x4dv =
            wglGetProcAddress("glUniformMatrix3x4dv".toNativeUtf8())
                .cast<NativeFunction<TglUniformMatrix3x4dv_Native>>()
                .asFunction();
        this.uniformMatrix4x2dv =
            wglGetProcAddress("glUniformMatrix4x2dv".toNativeUtf8())
                .cast<NativeFunction<TglUniformMatrix4x2dv_Native>>()
                .asFunction();
        this.uniformMatrix4x3dv =
            wglGetProcAddress("glUniformMatrix4x3dv".toNativeUtf8())
                .cast<NativeFunction<TglUniformMatrix4x3dv_Native>>()
                .asFunction();
        this.getUniformdv = wglGetProcAddress("glGetUniformdv".toNativeUtf8())
            .cast<NativeFunction<TglGetUniformdv_Native>>()
            .asFunction();
        this.getSubroutineUniformLocation =
            wglGetProcAddress("glGetSubroutineUniformLocation".toNativeUtf8())
                .cast<NativeFunction<TglGetSubroutineUniformLocation_Native>>()
                .asFunction();
        this.getSubroutineIndex =
            wglGetProcAddress("glGetSubroutineIndex".toNativeUtf8())
                .cast<NativeFunction<TglGetSubroutineIndex_Native>>()
                .asFunction();
        this.getActiveSubroutineUniformiv =
            wglGetProcAddress("glGetActiveSubroutineUniformiv".toNativeUtf8())
                .cast<NativeFunction<TglGetActiveSubroutineUniformiv_Native>>()
                .asFunction();
        this.getActiveSubroutineUniformName = wglGetProcAddress(
                "glGetActiveSubroutineUniformName".toNativeUtf8())
            .cast<NativeFunction<TglGetActiveSubroutineUniformName_Native>>()
            .asFunction();
        this.getActiveSubroutineName =
            wglGetProcAddress("glGetActiveSubroutineName".toNativeUtf8())
                .cast<NativeFunction<TglGetActiveSubroutineName_Native>>()
                .asFunction();
        this.uniformSubroutinesuiv =
            wglGetProcAddress("glUniformSubroutinesuiv".toNativeUtf8())
                .cast<NativeFunction<TglUniformSubroutinesuiv_Native>>()
                .asFunction();
        this.getUniformSubroutineuiv =
            wglGetProcAddress("glGetUniformSubroutineuiv".toNativeUtf8())
                .cast<NativeFunction<TglGetUniformSubroutineuiv_Native>>()
                .asFunction();
        this.getProgramStageiv =
            wglGetProcAddress("glGetProgramStageiv".toNativeUtf8())
                .cast<NativeFunction<TglGetProgramStageiv_Native>>()
                .asFunction();
        this.patchParameteri =
            wglGetProcAddress("glPatchParameteri".toNativeUtf8())
                .cast<NativeFunction<TglPatchParameteri_Native>>()
                .asFunction();
        this.patchParameterfv =
            wglGetProcAddress("glPatchParameterfv".toNativeUtf8())
                .cast<NativeFunction<TglPatchParameterfv_Native>>()
                .asFunction();
        this.bindTransformFeedback =
            wglGetProcAddress("glBindTransformFeedback".toNativeUtf8())
                .cast<NativeFunction<TglBindTransformFeedback_Native>>()
                .asFunction();
        this.deleteTransformFeedbacks =
            wglGetProcAddress("glDeleteTransformFeedbacks".toNativeUtf8())
                .cast<NativeFunction<TglDeleteTransformFeedbacks_Native>>()
                .asFunction();
        this.genTransformFeedbacks =
            wglGetProcAddress("glGenTransformFeedbacks".toNativeUtf8())
                .cast<NativeFunction<TglGenTransformFeedbacks_Native>>()
                .asFunction();
        this.isTransformFeedback =
            wglGetProcAddress("glIsTransformFeedback".toNativeUtf8())
                .cast<NativeFunction<TglIsTransformFeedback_Native>>()
                .asFunction();
        this.pauseTransformFeedback =
            wglGetProcAddress("glPauseTransformFeedback".toNativeUtf8())
                .cast<NativeFunction<TglPauseTransformFeedback_Native>>()
                .asFunction();
        this.resumeTransformFeedback =
            wglGetProcAddress("glResumeTransformFeedback".toNativeUtf8())
                .cast<NativeFunction<TglResumeTransformFeedback_Native>>()
                .asFunction();
        this.drawTransformFeedback =
            wglGetProcAddress("glDrawTransformFeedback".toNativeUtf8())
                .cast<NativeFunction<TglDrawTransformFeedback_Native>>()
                .asFunction();
        this.drawTransformFeedbackStream =
            wglGetProcAddress("glDrawTransformFeedbackStream".toNativeUtf8())
                .cast<NativeFunction<TglDrawTransformFeedbackStream_Native>>()
                .asFunction();
        this.beginQueryIndexed =
            wglGetProcAddress("glBeginQueryIndexed".toNativeUtf8())
                .cast<NativeFunction<TglBeginQueryIndexed_Native>>()
                .asFunction();
        this.endQueryIndexed =
            wglGetProcAddress("glEndQueryIndexed".toNativeUtf8())
                .cast<NativeFunction<TglEndQueryIndexed_Native>>()
                .asFunction();
        this.getQueryIndexediv =
            wglGetProcAddress("glGetQueryIndexediv".toNativeUtf8())
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
            wglGetProcAddress("glReleaseShaderCompiler".toNativeUtf8())
                .cast<NativeFunction<TglReleaseShaderCompiler_Native>>()
                .asFunction();
        this.shaderBinary = wglGetProcAddress("glShaderBinary".toNativeUtf8())
            .cast<NativeFunction<TglShaderBinary_Native>>()
            .asFunction();
        this.getShaderPrecisionFormat =
            wglGetProcAddress("glGetShaderPrecisionFormat".toNativeUtf8())
                .cast<NativeFunction<TglGetShaderPrecisionFormat_Native>>()
                .asFunction();
        this.depthRangef = wglGetProcAddress("glDepthRangef".toNativeUtf8())
            .cast<NativeFunction<TglDepthRangef_Native>>()
            .asFunction();
        this.clearDepthf = wglGetProcAddress("glClearDepthf".toNativeUtf8())
            .cast<NativeFunction<TglClearDepthf_Native>>()
            .asFunction();
        this.getProgramBinary =
            wglGetProcAddress("glGetProgramBinary".toNativeUtf8())
                .cast<NativeFunction<TglGetProgramBinary_Native>>()
                .asFunction();
        this.programBinary = wglGetProcAddress("glProgramBinary".toNativeUtf8())
            .cast<NativeFunction<TglProgramBinary_Native>>()
            .asFunction();
        this.programParameteri =
            wglGetProcAddress("glProgramParameteri".toNativeUtf8())
                .cast<NativeFunction<TglProgramParameteri_Native>>()
                .asFunction();
        this.useProgramStages =
            wglGetProcAddress("glUseProgramStages".toNativeUtf8())
                .cast<NativeFunction<TglUseProgramStages_Native>>()
                .asFunction();
        this.activeShaderProgram =
            wglGetProcAddress("glActiveShaderProgram".toNativeUtf8())
                .cast<NativeFunction<TglActiveShaderProgram_Native>>()
                .asFunction();
        this.createShaderProgramv =
            wglGetProcAddress("glCreateShaderProgramv".toNativeUtf8())
                .cast<NativeFunction<TglCreateShaderProgramv_Native>>()
                .asFunction();
        this.bindProgramPipeline =
            wglGetProcAddress("glBindProgramPipeline".toNativeUtf8())
                .cast<NativeFunction<TglBindProgramPipeline_Native>>()
                .asFunction();
        this.deleteProgramPipelines =
            wglGetProcAddress("glDeleteProgramPipelines".toNativeUtf8())
                .cast<NativeFunction<TglDeleteProgramPipelines_Native>>()
                .asFunction();
        this.genProgramPipelines =
            wglGetProcAddress("glGenProgramPipelines".toNativeUtf8())
                .cast<NativeFunction<TglGenProgramPipelines_Native>>()
                .asFunction();
        this.isProgramPipeline =
            wglGetProcAddress("glIsProgramPipeline".toNativeUtf8())
                .cast<NativeFunction<TglIsProgramPipeline_Native>>()
                .asFunction();
        this.getProgramPipelineiv =
            wglGetProcAddress("glGetProgramPipelineiv".toNativeUtf8())
                .cast<NativeFunction<TglGetProgramPipelineiv_Native>>()
                .asFunction();
        this.programUniform1i =
            wglGetProcAddress("glProgramUniform1i".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniform1i_Native>>()
                .asFunction();
        this.programUniform1iv =
            wglGetProcAddress("glProgramUniform1iv".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniform1iv_Native>>()
                .asFunction();
        this.programUniform1f =
            wglGetProcAddress("glProgramUniform1f".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniform1f_Native>>()
                .asFunction();
        this.programUniform1fv =
            wglGetProcAddress("glProgramUniform1fv".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniform1fv_Native>>()
                .asFunction();
        this.programUniform1d =
            wglGetProcAddress("glProgramUniform1d".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniform1d_Native>>()
                .asFunction();
        this.programUniform1dv =
            wglGetProcAddress("glProgramUniform1dv".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniform1dv_Native>>()
                .asFunction();
        this.programUniform1ui =
            wglGetProcAddress("glProgramUniform1ui".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniform1ui_Native>>()
                .asFunction();
        this.programUniform1uiv =
            wglGetProcAddress("glProgramUniform1uiv".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniform1uiv_Native>>()
                .asFunction();
        this.programUniform2i =
            wglGetProcAddress("glProgramUniform2i".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniform2i_Native>>()
                .asFunction();
        this.programUniform2iv =
            wglGetProcAddress("glProgramUniform2iv".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniform2iv_Native>>()
                .asFunction();
        this.programUniform2f =
            wglGetProcAddress("glProgramUniform2f".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniform2f_Native>>()
                .asFunction();
        this.programUniform2fv =
            wglGetProcAddress("glProgramUniform2fv".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniform2fv_Native>>()
                .asFunction();
        this.programUniform2d =
            wglGetProcAddress("glProgramUniform2d".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniform2d_Native>>()
                .asFunction();
        this.programUniform2dv =
            wglGetProcAddress("glProgramUniform2dv".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniform2dv_Native>>()
                .asFunction();
        this.programUniform2ui =
            wglGetProcAddress("glProgramUniform2ui".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniform2ui_Native>>()
                .asFunction();
        this.programUniform2uiv =
            wglGetProcAddress("glProgramUniform2uiv".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniform2uiv_Native>>()
                .asFunction();
        this.programUniform3i =
            wglGetProcAddress("glProgramUniform3i".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniform3i_Native>>()
                .asFunction();
        this.programUniform3iv =
            wglGetProcAddress("glProgramUniform3iv".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniform3iv_Native>>()
                .asFunction();
        this.programUniform3f =
            wglGetProcAddress("glProgramUniform3f".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniform3f_Native>>()
                .asFunction();
        this.programUniform3fv =
            wglGetProcAddress("glProgramUniform3fv".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniform3fv_Native>>()
                .asFunction();
        this.programUniform3d =
            wglGetProcAddress("glProgramUniform3d".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniform3d_Native>>()
                .asFunction();
        this.programUniform3dv =
            wglGetProcAddress("glProgramUniform3dv".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniform3dv_Native>>()
                .asFunction();
        this.programUniform3ui =
            wglGetProcAddress("glProgramUniform3ui".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniform3ui_Native>>()
                .asFunction();
        this.programUniform3uiv =
            wglGetProcAddress("glProgramUniform3uiv".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniform3uiv_Native>>()
                .asFunction();
        this.programUniform4i =
            wglGetProcAddress("glProgramUniform4i".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniform4i_Native>>()
                .asFunction();
        this.programUniform4iv =
            wglGetProcAddress("glProgramUniform4iv".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniform4iv_Native>>()
                .asFunction();
        this.programUniform4f =
            wglGetProcAddress("glProgramUniform4f".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniform4f_Native>>()
                .asFunction();
        this.programUniform4fv =
            wglGetProcAddress("glProgramUniform4fv".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniform4fv_Native>>()
                .asFunction();
        this.programUniform4d =
            wglGetProcAddress("glProgramUniform4d".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniform4d_Native>>()
                .asFunction();
        this.programUniform4dv =
            wglGetProcAddress("glProgramUniform4dv".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniform4dv_Native>>()
                .asFunction();
        this.programUniform4ui =
            wglGetProcAddress("glProgramUniform4ui".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniform4ui_Native>>()
                .asFunction();
        this.programUniform4uiv =
            wglGetProcAddress("glProgramUniform4uiv".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniform4uiv_Native>>()
                .asFunction();
        this.programUniformMatrix2fv =
            wglGetProcAddress("glProgramUniformMatrix2fv".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniformMatrix2fv_Native>>()
                .asFunction();
        this.programUniformMatrix3fv =
            wglGetProcAddress("glProgramUniformMatrix3fv".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniformMatrix3fv_Native>>()
                .asFunction();
        this.programUniformMatrix4fv =
            wglGetProcAddress("glProgramUniformMatrix4fv".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniformMatrix4fv_Native>>()
                .asFunction();
        this.programUniformMatrix2dv =
            wglGetProcAddress("glProgramUniformMatrix2dv".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniformMatrix2dv_Native>>()
                .asFunction();
        this.programUniformMatrix3dv =
            wglGetProcAddress("glProgramUniformMatrix3dv".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniformMatrix3dv_Native>>()
                .asFunction();
        this.programUniformMatrix4dv =
            wglGetProcAddress("glProgramUniformMatrix4dv".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniformMatrix4dv_Native>>()
                .asFunction();
        this.programUniformMatrix2x3fv =
            wglGetProcAddress("glProgramUniformMatrix2x3fv".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniformMatrix2x3fv_Native>>()
                .asFunction();
        this.programUniformMatrix3x2fv =
            wglGetProcAddress("glProgramUniformMatrix3x2fv".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniformMatrix3x2fv_Native>>()
                .asFunction();
        this.programUniformMatrix2x4fv =
            wglGetProcAddress("glProgramUniformMatrix2x4fv".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniformMatrix2x4fv_Native>>()
                .asFunction();
        this.programUniformMatrix4x2fv =
            wglGetProcAddress("glProgramUniformMatrix4x2fv".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniformMatrix4x2fv_Native>>()
                .asFunction();
        this.programUniformMatrix3x4fv =
            wglGetProcAddress("glProgramUniformMatrix3x4fv".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniformMatrix3x4fv_Native>>()
                .asFunction();
        this.programUniformMatrix4x3fv =
            wglGetProcAddress("glProgramUniformMatrix4x3fv".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniformMatrix4x3fv_Native>>()
                .asFunction();
        this.programUniformMatrix2x3dv =
            wglGetProcAddress("glProgramUniformMatrix2x3dv".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniformMatrix2x3dv_Native>>()
                .asFunction();
        this.programUniformMatrix3x2dv =
            wglGetProcAddress("glProgramUniformMatrix3x2dv".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniformMatrix3x2dv_Native>>()
                .asFunction();
        this.programUniformMatrix2x4dv =
            wglGetProcAddress("glProgramUniformMatrix2x4dv".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniformMatrix2x4dv_Native>>()
                .asFunction();
        this.programUniformMatrix4x2dv =
            wglGetProcAddress("glProgramUniformMatrix4x2dv".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniformMatrix4x2dv_Native>>()
                .asFunction();
        this.programUniformMatrix3x4dv =
            wglGetProcAddress("glProgramUniformMatrix3x4dv".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniformMatrix3x4dv_Native>>()
                .asFunction();
        this.programUniformMatrix4x3dv =
            wglGetProcAddress("glProgramUniformMatrix4x3dv".toNativeUtf8())
                .cast<NativeFunction<TglProgramUniformMatrix4x3dv_Native>>()
                .asFunction();
        this.validateProgramPipeline =
            wglGetProcAddress("glValidateProgramPipeline".toNativeUtf8())
                .cast<NativeFunction<TglValidateProgramPipeline_Native>>()
                .asFunction();
        this.getProgramPipelineInfoLog =
            wglGetProcAddress("glGetProgramPipelineInfoLog".toNativeUtf8())
                .cast<NativeFunction<TglGetProgramPipelineInfoLog_Native>>()
                .asFunction();
        this.vertexAttribL1d =
            wglGetProcAddress("glVertexAttribL1d".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribL1d_Native>>()
                .asFunction();
        this.vertexAttribL2d =
            wglGetProcAddress("glVertexAttribL2d".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribL2d_Native>>()
                .asFunction();
        this.vertexAttribL3d =
            wglGetProcAddress("glVertexAttribL3d".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribL3d_Native>>()
                .asFunction();
        this.vertexAttribL4d =
            wglGetProcAddress("glVertexAttribL4d".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribL4d_Native>>()
                .asFunction();
        this.vertexAttribL1dv =
            wglGetProcAddress("glVertexAttribL1dv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribL1dv_Native>>()
                .asFunction();
        this.vertexAttribL2dv =
            wglGetProcAddress("glVertexAttribL2dv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribL2dv_Native>>()
                .asFunction();
        this.vertexAttribL3dv =
            wglGetProcAddress("glVertexAttribL3dv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribL3dv_Native>>()
                .asFunction();
        this.vertexAttribL4dv =
            wglGetProcAddress("glVertexAttribL4dv".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribL4dv_Native>>()
                .asFunction();
        this.vertexAttribLPointer =
            wglGetProcAddress("glVertexAttribLPointer".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribLPointer_Native>>()
                .asFunction();
        this.getVertexAttribLdv =
            wglGetProcAddress("glGetVertexAttribLdv".toNativeUtf8())
                .cast<NativeFunction<TglGetVertexAttribLdv_Native>>()
                .asFunction();
        this.viewportArrayv =
            wglGetProcAddress("glViewportArrayv".toNativeUtf8())
                .cast<NativeFunction<TglViewportArrayv_Native>>()
                .asFunction();
        this.viewportIndexedf =
            wglGetProcAddress("glViewportIndexedf".toNativeUtf8())
                .cast<NativeFunction<TglViewportIndexedf_Native>>()
                .asFunction();
        this.viewportIndexedfv =
            wglGetProcAddress("glViewportIndexedfv".toNativeUtf8())
                .cast<NativeFunction<TglViewportIndexedfv_Native>>()
                .asFunction();
        this.scissorArrayv = wglGetProcAddress("glScissorArrayv".toNativeUtf8())
            .cast<NativeFunction<TglScissorArrayv_Native>>()
            .asFunction();
        this.scissorIndexed =
            wglGetProcAddress("glScissorIndexed".toNativeUtf8())
                .cast<NativeFunction<TglScissorIndexed_Native>>()
                .asFunction();
        this.scissorIndexedv =
            wglGetProcAddress("glScissorIndexedv".toNativeUtf8())
                .cast<NativeFunction<TglScissorIndexedv_Native>>()
                .asFunction();
        this.depthRangeArrayv =
            wglGetProcAddress("glDepthRangeArrayv".toNativeUtf8())
                .cast<NativeFunction<TglDepthRangeArrayv_Native>>()
                .asFunction();
        this.depthRangeIndexed =
            wglGetProcAddress("glDepthRangeIndexed".toNativeUtf8())
                .cast<NativeFunction<TglDepthRangeIndexed_Native>>()
                .asFunction();
        this.getFloati_v = wglGetProcAddress("glGetFloati_v".toNativeUtf8())
            .cast<NativeFunction<TglGetFloati_v_Native>>()
            .asFunction();
        this.getDoublei_v = wglGetProcAddress("glGetDoublei_v".toNativeUtf8())
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
                "glDrawArraysInstancedBaseInstance".toNativeUtf8())
            .cast<NativeFunction<TglDrawArraysInstancedBaseInstance_Native>>()
            .asFunction();
        this.drawElementsInstancedBaseInstance = wglGetProcAddress(
                "glDrawElementsInstancedBaseInstance".toNativeUtf8())
            .cast<NativeFunction<TglDrawElementsInstancedBaseInstance_Native>>()
            .asFunction();
        this.drawElementsInstancedBaseVertexBaseInstance = wglGetProcAddress(
                "glDrawElementsInstancedBaseVertexBaseInstance".toNativeUtf8())
            .cast<
                NativeFunction<
                    TglDrawElementsInstancedBaseVertexBaseInstance_Native>>()
            .asFunction();
        this.getInternalformativ =
            wglGetProcAddress("glGetInternalformativ".toNativeUtf8())
                .cast<NativeFunction<TglGetInternalformativ_Native>>()
                .asFunction();
        this.getActiveAtomicCounterBufferiv = wglGetProcAddress(
                "glGetActiveAtomicCounterBufferiv".toNativeUtf8())
            .cast<NativeFunction<TglGetActiveAtomicCounterBufferiv_Native>>()
            .asFunction();
        this.bindImageTexture =
            wglGetProcAddress("glBindImageTexture".toNativeUtf8())
                .cast<NativeFunction<TglBindImageTexture_Native>>()
                .asFunction();
        this.memoryBarrier = wglGetProcAddress("glMemoryBarrier".toNativeUtf8())
            .cast<NativeFunction<TglMemoryBarrier_Native>>()
            .asFunction();
        this.texStorage1D = wglGetProcAddress("glTexStorage1D".toNativeUtf8())
            .cast<NativeFunction<TglTexStorage1D_Native>>()
            .asFunction();
        this.texStorage2D = wglGetProcAddress("glTexStorage2D".toNativeUtf8())
            .cast<NativeFunction<TglTexStorage2D_Native>>()
            .asFunction();
        this.texStorage3D = wglGetProcAddress("glTexStorage3D".toNativeUtf8())
            .cast<NativeFunction<TglTexStorage3D_Native>>()
            .asFunction();
        this.drawTransformFeedbackInstanced = wglGetProcAddress(
                "glDrawTransformFeedbackInstanced".toNativeUtf8())
            .cast<NativeFunction<TglDrawTransformFeedbackInstanced_Native>>()
            .asFunction();
        this.drawTransformFeedbackStreamInstanced = wglGetProcAddress(
                "glDrawTransformFeedbackStreamInstanced".toNativeUtf8())
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
            wglGetProcAddress("glClearBufferData".toNativeUtf8())
                .cast<NativeFunction<TglClearBufferData_Native>>()
                .asFunction();
        this.clearBufferSubData =
            wglGetProcAddress("glClearBufferSubData".toNativeUtf8())
                .cast<NativeFunction<TglClearBufferSubData_Native>>()
                .asFunction();
        this.dispatchCompute =
            wglGetProcAddress("glDispatchCompute".toNativeUtf8())
                .cast<NativeFunction<TglDispatchCompute_Native>>()
                .asFunction();
        this.dispatchComputeIndirect =
            wglGetProcAddress("glDispatchComputeIndirect".toNativeUtf8())
                .cast<NativeFunction<TglDispatchComputeIndirect_Native>>()
                .asFunction();
        this.copyImageSubData =
            wglGetProcAddress("glCopyImageSubData".toNativeUtf8())
                .cast<NativeFunction<TglCopyImageSubData_Native>>()
                .asFunction();
        this.framebufferParameteri =
            wglGetProcAddress("glFramebufferParameteri".toNativeUtf8())
                .cast<NativeFunction<TglFramebufferParameteri_Native>>()
                .asFunction();
        this.getFramebufferParameteriv =
            wglGetProcAddress("glGetFramebufferParameteriv".toNativeUtf8())
                .cast<NativeFunction<TglGetFramebufferParameteriv_Native>>()
                .asFunction();
        this.getInternalformati64v =
            wglGetProcAddress("glGetInternalformati64v".toNativeUtf8())
                .cast<NativeFunction<TglGetInternalformati64v_Native>>()
                .asFunction();
        this.invalidateTexSubImage =
            wglGetProcAddress("glInvalidateTexSubImage".toNativeUtf8())
                .cast<NativeFunction<TglInvalidateTexSubImage_Native>>()
                .asFunction();
        this.invalidateTexImage =
            wglGetProcAddress("glInvalidateTexImage".toNativeUtf8())
                .cast<NativeFunction<TglInvalidateTexImage_Native>>()
                .asFunction();
        this.invalidateBufferSubData =
            wglGetProcAddress("glInvalidateBufferSubData".toNativeUtf8())
                .cast<NativeFunction<TglInvalidateBufferSubData_Native>>()
                .asFunction();
        this.invalidateBufferData =
            wglGetProcAddress("glInvalidateBufferData".toNativeUtf8())
                .cast<NativeFunction<TglInvalidateBufferData_Native>>()
                .asFunction();
        this.invalidateFramebuffer =
            wglGetProcAddress("glInvalidateFramebuffer".toNativeUtf8())
                .cast<NativeFunction<TglInvalidateFramebuffer_Native>>()
                .asFunction();
        this.invalidateSubFramebuffer =
            wglGetProcAddress("glInvalidateSubFramebuffer".toNativeUtf8())
                .cast<NativeFunction<TglInvalidateSubFramebuffer_Native>>()
                .asFunction();
        this.multiDrawArraysIndirect =
            wglGetProcAddress("glMultiDrawArraysIndirect".toNativeUtf8())
                .cast<NativeFunction<TglMultiDrawArraysIndirect_Native>>()
                .asFunction();
        this.multiDrawElementsIndirect =
            wglGetProcAddress("glMultiDrawElementsIndirect".toNativeUtf8())
                .cast<NativeFunction<TglMultiDrawElementsIndirect_Native>>()
                .asFunction();
        this.getProgramInterfaceiv =
            wglGetProcAddress("glGetProgramInterfaceiv".toNativeUtf8())
                .cast<NativeFunction<TglGetProgramInterfaceiv_Native>>()
                .asFunction();
        this.getProgramResourceIndex =
            wglGetProcAddress("glGetProgramResourceIndex".toNativeUtf8())
                .cast<NativeFunction<TglGetProgramResourceIndex_Native>>()
                .asFunction();
        this.getProgramResourceName =
            wglGetProcAddress("glGetProgramResourceName".toNativeUtf8())
                .cast<NativeFunction<TglGetProgramResourceName_Native>>()
                .asFunction();
        this.getProgramResourceiv =
            wglGetProcAddress("glGetProgramResourceiv".toNativeUtf8())
                .cast<NativeFunction<TglGetProgramResourceiv_Native>>()
                .asFunction();
        this.getProgramResourceLocation =
            wglGetProcAddress("glGetProgramResourceLocation".toNativeUtf8())
                .cast<NativeFunction<TglGetProgramResourceLocation_Native>>()
                .asFunction();
        this.getProgramResourceLocationIndex = wglGetProcAddress(
                "glGetProgramResourceLocationIndex".toNativeUtf8())
            .cast<NativeFunction<TglGetProgramResourceLocationIndex_Native>>()
            .asFunction();
        this.shaderStorageBlockBinding =
            wglGetProcAddress("glShaderStorageBlockBinding".toNativeUtf8())
                .cast<NativeFunction<TglShaderStorageBlockBinding_Native>>()
                .asFunction();
        this.texBufferRange =
            wglGetProcAddress("glTexBufferRange".toNativeUtf8())
                .cast<NativeFunction<TglTexBufferRange_Native>>()
                .asFunction();
        this.texStorage2DMultisample =
            wglGetProcAddress("glTexStorage2DMultisample".toNativeUtf8())
                .cast<NativeFunction<TglTexStorage2DMultisample_Native>>()
                .asFunction();
        this.texStorage3DMultisample =
            wglGetProcAddress("glTexStorage3DMultisample".toNativeUtf8())
                .cast<NativeFunction<TglTexStorage3DMultisample_Native>>()
                .asFunction();
        this.textureView = wglGetProcAddress("glTextureView".toNativeUtf8())
            .cast<NativeFunction<TglTextureView_Native>>()
            .asFunction();
        this.bindVertexBuffer =
            wglGetProcAddress("glBindVertexBuffer".toNativeUtf8())
                .cast<NativeFunction<TglBindVertexBuffer_Native>>()
                .asFunction();
        this.vertexAttribFormat =
            wglGetProcAddress("glVertexAttribFormat".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribFormat_Native>>()
                .asFunction();
        this.vertexAttribIFormat =
            wglGetProcAddress("glVertexAttribIFormat".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribIFormat_Native>>()
                .asFunction();
        this.vertexAttribLFormat =
            wglGetProcAddress("glVertexAttribLFormat".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribLFormat_Native>>()
                .asFunction();
        this.vertexAttribBinding =
            wglGetProcAddress("glVertexAttribBinding".toNativeUtf8())
                .cast<NativeFunction<TglVertexAttribBinding_Native>>()
                .asFunction();
        this.vertexBindingDivisor =
            wglGetProcAddress("glVertexBindingDivisor".toNativeUtf8())
                .cast<NativeFunction<TglVertexBindingDivisor_Native>>()
                .asFunction();
        this.debugMessageControl =
            wglGetProcAddress("glDebugMessageControl".toNativeUtf8())
                .cast<NativeFunction<TglDebugMessageControl_Native>>()
                .asFunction();
        this.debugMessageInsert =
            wglGetProcAddress("glDebugMessageInsert".toNativeUtf8())
                .cast<NativeFunction<TglDebugMessageInsert_Native>>()
                .asFunction();
        this.debugMessageCallback =
            wglGetProcAddress("glDebugMessageCallback".toNativeUtf8())
                .cast<NativeFunction<TglDebugMessageCallback_Native>>()
                .asFunction();
        this.getDebugMessageLog =
            wglGetProcAddress("glGetDebugMessageLog".toNativeUtf8())
                .cast<NativeFunction<TglGetDebugMessageLog_Native>>()
                .asFunction();
        this.pushDebugGroup =
            wglGetProcAddress("glPushDebugGroup".toNativeUtf8())
                .cast<NativeFunction<TglPushDebugGroup_Native>>()
                .asFunction();
        this.popDebugGroup = wglGetProcAddress("glPopDebugGroup".toNativeUtf8())
            .cast<NativeFunction<TglPopDebugGroup_Native>>()
            .asFunction();
        this.objectLabel = wglGetProcAddress("glObjectLabel".toNativeUtf8())
            .cast<NativeFunction<TglObjectLabel_Native>>()
            .asFunction();
        this.getObjectLabel =
            wglGetProcAddress("glGetObjectLabel".toNativeUtf8())
                .cast<NativeFunction<TglGetObjectLabel_Native>>()
                .asFunction();
        this.objectPtrLabel =
            wglGetProcAddress("glObjectPtrLabel".toNativeUtf8())
                .cast<NativeFunction<TglObjectPtrLabel_Native>>()
                .asFunction();
        this.getObjectPtrLabel =
            wglGetProcAddress("glGetObjectPtrLabel".toNativeUtf8())
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
        this.bufferStorage = wglGetProcAddress("glBufferStorage".toNativeUtf8())
            .cast<NativeFunction<TglBufferStorage_Native>>()
            .asFunction();
        this.clearTexImage = wglGetProcAddress("glClearTexImage".toNativeUtf8())
            .cast<NativeFunction<TglClearTexImage_Native>>()
            .asFunction();
        this.clearTexSubImage =
            wglGetProcAddress("glClearTexSubImage".toNativeUtf8())
                .cast<NativeFunction<TglClearTexSubImage_Native>>()
                .asFunction();
        this.bindBuffersBase =
            wglGetProcAddress("glBindBuffersBase".toNativeUtf8())
                .cast<NativeFunction<TglBindBuffersBase_Native>>()
                .asFunction();
        this.bindBuffersRange =
            wglGetProcAddress("glBindBuffersRange".toNativeUtf8())
                .cast<NativeFunction<TglBindBuffersRange_Native>>()
                .asFunction();
        this.bindTextures = wglGetProcAddress("glBindTextures".toNativeUtf8())
            .cast<NativeFunction<TglBindTextures_Native>>()
            .asFunction();
        this.bindSamplers = wglGetProcAddress("glBindSamplers".toNativeUtf8())
            .cast<NativeFunction<TglBindSamplers_Native>>()
            .asFunction();
        this.bindImageTextures =
            wglGetProcAddress("glBindImageTextures".toNativeUtf8())
                .cast<NativeFunction<TglBindImageTextures_Native>>()
                .asFunction();
        this.bindVertexBuffers =
            wglGetProcAddress("glBindVertexBuffers".toNativeUtf8())
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
        this.clipControl = wglGetProcAddress("glClipControl".toNativeUtf8())
            .cast<NativeFunction<TglClipControl_Native>>()
            .asFunction();
        this.createTransformFeedbacks =
            wglGetProcAddress("glCreateTransformFeedbacks".toNativeUtf8())
                .cast<NativeFunction<TglCreateTransformFeedbacks_Native>>()
                .asFunction();
        this.transformFeedbackBufferBase =
            wglGetProcAddress("glTransformFeedbackBufferBase".toNativeUtf8())
                .cast<NativeFunction<TglTransformFeedbackBufferBase_Native>>()
                .asFunction();
        this.transformFeedbackBufferRange =
            wglGetProcAddress("glTransformFeedbackBufferRange".toNativeUtf8())
                .cast<NativeFunction<TglTransformFeedbackBufferRange_Native>>()
                .asFunction();
        this.getTransformFeedbackiv =
            wglGetProcAddress("glGetTransformFeedbackiv".toNativeUtf8())
                .cast<NativeFunction<TglGetTransformFeedbackiv_Native>>()
                .asFunction();
        this.getTransformFeedbacki_v =
            wglGetProcAddress("glGetTransformFeedbacki_v".toNativeUtf8())
                .cast<NativeFunction<TglGetTransformFeedbacki_v_Native>>()
                .asFunction();
        this.getTransformFeedbacki64_v =
            wglGetProcAddress("glGetTransformFeedbacki64_v".toNativeUtf8())
                .cast<NativeFunction<TglGetTransformFeedbacki64_v_Native>>()
                .asFunction();
        this.createBuffers = wglGetProcAddress("glCreateBuffers".toNativeUtf8())
            .cast<NativeFunction<TglCreateBuffers_Native>>()
            .asFunction();
        this.namedBufferStorage =
            wglGetProcAddress("glNamedBufferStorage".toNativeUtf8())
                .cast<NativeFunction<TglNamedBufferStorage_Native>>()
                .asFunction();
        this.namedBufferData =
            wglGetProcAddress("glNamedBufferData".toNativeUtf8())
                .cast<NativeFunction<TglNamedBufferData_Native>>()
                .asFunction();
        this.namedBufferSubData =
            wglGetProcAddress("glNamedBufferSubData".toNativeUtf8())
                .cast<NativeFunction<TglNamedBufferSubData_Native>>()
                .asFunction();
        this.copyNamedBufferSubData =
            wglGetProcAddress("glCopyNamedBufferSubData".toNativeUtf8())
                .cast<NativeFunction<TglCopyNamedBufferSubData_Native>>()
                .asFunction();
        this.clearNamedBufferData =
            wglGetProcAddress("glClearNamedBufferData".toNativeUtf8())
                .cast<NativeFunction<TglClearNamedBufferData_Native>>()
                .asFunction();
        this.clearNamedBufferSubData =
            wglGetProcAddress("glClearNamedBufferSubData".toNativeUtf8())
                .cast<NativeFunction<TglClearNamedBufferSubData_Native>>()
                .asFunction();
        this.mapNamedBuffer =
            wglGetProcAddress("glMapNamedBuffer".toNativeUtf8())
                .cast<NativeFunction<TglMapNamedBuffer_Native>>()
                .asFunction();
        this.mapNamedBufferRange =
            wglGetProcAddress("glMapNamedBufferRange".toNativeUtf8())
                .cast<NativeFunction<TglMapNamedBufferRange_Native>>()
                .asFunction();
        this.unmapNamedBuffer =
            wglGetProcAddress("glUnmapNamedBuffer".toNativeUtf8())
                .cast<NativeFunction<TglUnmapNamedBuffer_Native>>()
                .asFunction();
        this.flushMappedNamedBufferRange =
            wglGetProcAddress("glFlushMappedNamedBufferRange".toNativeUtf8())
                .cast<NativeFunction<TglFlushMappedNamedBufferRange_Native>>()
                .asFunction();
        this.getNamedBufferParameteriv =
            wglGetProcAddress("glGetNamedBufferParameteriv".toNativeUtf8())
                .cast<NativeFunction<TglGetNamedBufferParameteriv_Native>>()
                .asFunction();
        this.getNamedBufferParameteri64v =
            wglGetProcAddress("glGetNamedBufferParameteri64v".toNativeUtf8())
                .cast<NativeFunction<TglGetNamedBufferParameteri64v_Native>>()
                .asFunction();
        this.getNamedBufferPointerv =
            wglGetProcAddress("glGetNamedBufferPointerv".toNativeUtf8())
                .cast<NativeFunction<TglGetNamedBufferPointerv_Native>>()
                .asFunction();
        this.getNamedBufferSubData =
            wglGetProcAddress("glGetNamedBufferSubData".toNativeUtf8())
                .cast<NativeFunction<TglGetNamedBufferSubData_Native>>()
                .asFunction();
        this.createFramebuffers =
            wglGetProcAddress("glCreateFramebuffers".toNativeUtf8())
                .cast<NativeFunction<TglCreateFramebuffers_Native>>()
                .asFunction();
        this.namedFramebufferRenderbuffer =
            wglGetProcAddress("glNamedFramebufferRenderbuffer".toNativeUtf8())
                .cast<NativeFunction<TglNamedFramebufferRenderbuffer_Native>>()
                .asFunction();
        this.namedFramebufferParameteri =
            wglGetProcAddress("glNamedFramebufferParameteri".toNativeUtf8())
                .cast<NativeFunction<TglNamedFramebufferParameteri_Native>>()
                .asFunction();
        this.namedFramebufferTexture =
            wglGetProcAddress("glNamedFramebufferTexture".toNativeUtf8())
                .cast<NativeFunction<TglNamedFramebufferTexture_Native>>()
                .asFunction();
        this.namedFramebufferTextureLayer =
            wglGetProcAddress("glNamedFramebufferTextureLayer".toNativeUtf8())
                .cast<NativeFunction<TglNamedFramebufferTextureLayer_Native>>()
                .asFunction();
        this.namedFramebufferDrawBuffer =
            wglGetProcAddress("glNamedFramebufferDrawBuffer".toNativeUtf8())
                .cast<NativeFunction<TglNamedFramebufferDrawBuffer_Native>>()
                .asFunction();
        this.namedFramebufferDrawBuffers =
            wglGetProcAddress("glNamedFramebufferDrawBuffers".toNativeUtf8())
                .cast<NativeFunction<TglNamedFramebufferDrawBuffers_Native>>()
                .asFunction();
        this.namedFramebufferReadBuffer =
            wglGetProcAddress("glNamedFramebufferReadBuffer".toNativeUtf8())
                .cast<NativeFunction<TglNamedFramebufferReadBuffer_Native>>()
                .asFunction();
        this.invalidateNamedFramebufferData = wglGetProcAddress(
                "glInvalidateNamedFramebufferData".toNativeUtf8())
            .cast<NativeFunction<TglInvalidateNamedFramebufferData_Native>>()
            .asFunction();
        this.invalidateNamedFramebufferSubData = wglGetProcAddress(
                "glInvalidateNamedFramebufferSubData".toNativeUtf8())
            .cast<NativeFunction<TglInvalidateNamedFramebufferSubData_Native>>()
            .asFunction();
        this.clearNamedFramebufferiv =
            wglGetProcAddress("glClearNamedFramebufferiv".toNativeUtf8())
                .cast<NativeFunction<TglClearNamedFramebufferiv_Native>>()
                .asFunction();
        this.clearNamedFramebufferuiv =
            wglGetProcAddress("glClearNamedFramebufferuiv".toNativeUtf8())
                .cast<NativeFunction<TglClearNamedFramebufferuiv_Native>>()
                .asFunction();
        this.clearNamedFramebufferfv =
            wglGetProcAddress("glClearNamedFramebufferfv".toNativeUtf8())
                .cast<NativeFunction<TglClearNamedFramebufferfv_Native>>()
                .asFunction();
        this.clearNamedFramebufferfi =
            wglGetProcAddress("glClearNamedFramebufferfi".toNativeUtf8())
                .cast<NativeFunction<TglClearNamedFramebufferfi_Native>>()
                .asFunction();
        this.blitNamedFramebuffer =
            wglGetProcAddress("glBlitNamedFramebuffer".toNativeUtf8())
                .cast<NativeFunction<TglBlitNamedFramebuffer_Native>>()
                .asFunction();
        this.checkNamedFramebufferStatus =
            wglGetProcAddress("glCheckNamedFramebufferStatus".toNativeUtf8())
                .cast<NativeFunction<TglCheckNamedFramebufferStatus_Native>>()
                .asFunction();
        this.getNamedFramebufferParameteriv = wglGetProcAddress(
                "glGetNamedFramebufferParameteriv".toNativeUtf8())
            .cast<NativeFunction<TglGetNamedFramebufferParameteriv_Native>>()
            .asFunction();
        this.getNamedFramebufferAttachmentParameteriv = wglGetProcAddress(
                "glGetNamedFramebufferAttachmentParameteriv".toNativeUtf8())
            .cast<
                NativeFunction<
                    TglGetNamedFramebufferAttachmentParameteriv_Native>>()
            .asFunction();
        this.createRenderbuffers =
            wglGetProcAddress("glCreateRenderbuffers".toNativeUtf8())
                .cast<NativeFunction<TglCreateRenderbuffers_Native>>()
                .asFunction();
        this.namedRenderbufferStorage =
            wglGetProcAddress("glNamedRenderbufferStorage".toNativeUtf8())
                .cast<NativeFunction<TglNamedRenderbufferStorage_Native>>()
                .asFunction();
        this.namedRenderbufferStorageMultisample = wglGetProcAddress(
                "glNamedRenderbufferStorageMultisample".toNativeUtf8())
            .cast<
                NativeFunction<TglNamedRenderbufferStorageMultisample_Native>>()
            .asFunction();
        this.getNamedRenderbufferParameteriv = wglGetProcAddress(
                "glGetNamedRenderbufferParameteriv".toNativeUtf8())
            .cast<NativeFunction<TglGetNamedRenderbufferParameteriv_Native>>()
            .asFunction();
        this.createTextures =
            wglGetProcAddress("glCreateTextures".toNativeUtf8())
                .cast<NativeFunction<TglCreateTextures_Native>>()
                .asFunction();
        this.textureBuffer = wglGetProcAddress("glTextureBuffer".toNativeUtf8())
            .cast<NativeFunction<TglTextureBuffer_Native>>()
            .asFunction();
        this.textureBufferRange =
            wglGetProcAddress("glTextureBufferRange".toNativeUtf8())
                .cast<NativeFunction<TglTextureBufferRange_Native>>()
                .asFunction();
        this.textureStorage1D =
            wglGetProcAddress("glTextureStorage1D".toNativeUtf8())
                .cast<NativeFunction<TglTextureStorage1D_Native>>()
                .asFunction();
        this.textureStorage2D =
            wglGetProcAddress("glTextureStorage2D".toNativeUtf8())
                .cast<NativeFunction<TglTextureStorage2D_Native>>()
                .asFunction();
        this.textureStorage3D =
            wglGetProcAddress("glTextureStorage3D".toNativeUtf8())
                .cast<NativeFunction<TglTextureStorage3D_Native>>()
                .asFunction();
        this.textureStorage2DMultisample =
            wglGetProcAddress("glTextureStorage2DMultisample".toNativeUtf8())
                .cast<NativeFunction<TglTextureStorage2DMultisample_Native>>()
                .asFunction();
        this.textureStorage3DMultisample =
            wglGetProcAddress("glTextureStorage3DMultisample".toNativeUtf8())
                .cast<NativeFunction<TglTextureStorage3DMultisample_Native>>()
                .asFunction();
        this.textureSubImage1D =
            wglGetProcAddress("glTextureSubImage1D".toNativeUtf8())
                .cast<NativeFunction<TglTextureSubImage1D_Native>>()
                .asFunction();
        this.textureSubImage2D =
            wglGetProcAddress("glTextureSubImage2D".toNativeUtf8())
                .cast<NativeFunction<TglTextureSubImage2D_Native>>()
                .asFunction();
        this.textureSubImage3D =
            wglGetProcAddress("glTextureSubImage3D".toNativeUtf8())
                .cast<NativeFunction<TglTextureSubImage3D_Native>>()
                .asFunction();
        this.compressedTextureSubImage1D =
            wglGetProcAddress("glCompressedTextureSubImage1D".toNativeUtf8())
                .cast<NativeFunction<TglCompressedTextureSubImage1D_Native>>()
                .asFunction();
        this.compressedTextureSubImage2D =
            wglGetProcAddress("glCompressedTextureSubImage2D".toNativeUtf8())
                .cast<NativeFunction<TglCompressedTextureSubImage2D_Native>>()
                .asFunction();
        this.compressedTextureSubImage3D =
            wglGetProcAddress("glCompressedTextureSubImage3D".toNativeUtf8())
                .cast<NativeFunction<TglCompressedTextureSubImage3D_Native>>()
                .asFunction();
        this.copyTextureSubImage1D =
            wglGetProcAddress("glCopyTextureSubImage1D".toNativeUtf8())
                .cast<NativeFunction<TglCopyTextureSubImage1D_Native>>()
                .asFunction();
        this.copyTextureSubImage2D =
            wglGetProcAddress("glCopyTextureSubImage2D".toNativeUtf8())
                .cast<NativeFunction<TglCopyTextureSubImage2D_Native>>()
                .asFunction();
        this.copyTextureSubImage3D =
            wglGetProcAddress("glCopyTextureSubImage3D".toNativeUtf8())
                .cast<NativeFunction<TglCopyTextureSubImage3D_Native>>()
                .asFunction();
        this.textureParameterf =
            wglGetProcAddress("glTextureParameterf".toNativeUtf8())
                .cast<NativeFunction<TglTextureParameterf_Native>>()
                .asFunction();
        this.textureParameterfv =
            wglGetProcAddress("glTextureParameterfv".toNativeUtf8())
                .cast<NativeFunction<TglTextureParameterfv_Native>>()
                .asFunction();
        this.textureParameteri =
            wglGetProcAddress("glTextureParameteri".toNativeUtf8())
                .cast<NativeFunction<TglTextureParameteri_Native>>()
                .asFunction();
        this.textureParameterIiv =
            wglGetProcAddress("glTextureParameterIiv".toNativeUtf8())
                .cast<NativeFunction<TglTextureParameterIiv_Native>>()
                .asFunction();
        this.textureParameterIuiv =
            wglGetProcAddress("glTextureParameterIuiv".toNativeUtf8())
                .cast<NativeFunction<TglTextureParameterIuiv_Native>>()
                .asFunction();
        this.textureParameteriv =
            wglGetProcAddress("glTextureParameteriv".toNativeUtf8())
                .cast<NativeFunction<TglTextureParameteriv_Native>>()
                .asFunction();
        this.generateTextureMipmap =
            wglGetProcAddress("glGenerateTextureMipmap".toNativeUtf8())
                .cast<NativeFunction<TglGenerateTextureMipmap_Native>>()
                .asFunction();
        this.bindTextureUnit =
            wglGetProcAddress("glBindTextureUnit".toNativeUtf8())
                .cast<NativeFunction<TglBindTextureUnit_Native>>()
                .asFunction();
        this.getTextureImage =
            wglGetProcAddress("glGetTextureImage".toNativeUtf8())
                .cast<NativeFunction<TglGetTextureImage_Native>>()
                .asFunction();
        this.getCompressedTextureImage =
            wglGetProcAddress("glGetCompressedTextureImage".toNativeUtf8())
                .cast<NativeFunction<TglGetCompressedTextureImage_Native>>()
                .asFunction();
        this.getTextureLevelParameterfv =
            wglGetProcAddress("glGetTextureLevelParameterfv".toNativeUtf8())
                .cast<NativeFunction<TglGetTextureLevelParameterfv_Native>>()
                .asFunction();
        this.getTextureLevelParameteriv =
            wglGetProcAddress("glGetTextureLevelParameteriv".toNativeUtf8())
                .cast<NativeFunction<TglGetTextureLevelParameteriv_Native>>()
                .asFunction();
        this.getTextureParameterfv =
            wglGetProcAddress("glGetTextureParameterfv".toNativeUtf8())
                .cast<NativeFunction<TglGetTextureParameterfv_Native>>()
                .asFunction();
        this.getTextureParameterIiv =
            wglGetProcAddress("glGetTextureParameterIiv".toNativeUtf8())
                .cast<NativeFunction<TglGetTextureParameterIiv_Native>>()
                .asFunction();
        this.getTextureParameterIuiv =
            wglGetProcAddress("glGetTextureParameterIuiv".toNativeUtf8())
                .cast<NativeFunction<TglGetTextureParameterIuiv_Native>>()
                .asFunction();
        this.getTextureParameteriv =
            wglGetProcAddress("glGetTextureParameteriv".toNativeUtf8())
                .cast<NativeFunction<TglGetTextureParameteriv_Native>>()
                .asFunction();
        this.createVertexArrays =
            wglGetProcAddress("glCreateVertexArrays".toNativeUtf8())
                .cast<NativeFunction<TglCreateVertexArrays_Native>>()
                .asFunction();
        this.disableVertexArrayAttrib =
            wglGetProcAddress("glDisableVertexArrayAttrib".toNativeUtf8())
                .cast<NativeFunction<TglDisableVertexArrayAttrib_Native>>()
                .asFunction();
        this.enableVertexArrayAttrib =
            wglGetProcAddress("glEnableVertexArrayAttrib".toNativeUtf8())
                .cast<NativeFunction<TglEnableVertexArrayAttrib_Native>>()
                .asFunction();
        this.vertexArrayElementBuffer =
            wglGetProcAddress("glVertexArrayElementBuffer".toNativeUtf8())
                .cast<NativeFunction<TglVertexArrayElementBuffer_Native>>()
                .asFunction();
        this.vertexArrayVertexBuffer =
            wglGetProcAddress("glVertexArrayVertexBuffer".toNativeUtf8())
                .cast<NativeFunction<TglVertexArrayVertexBuffer_Native>>()
                .asFunction();
        this.vertexArrayVertexBuffers =
            wglGetProcAddress("glVertexArrayVertexBuffers".toNativeUtf8())
                .cast<NativeFunction<TglVertexArrayVertexBuffers_Native>>()
                .asFunction();
        this.vertexArrayAttribBinding =
            wglGetProcAddress("glVertexArrayAttribBinding".toNativeUtf8())
                .cast<NativeFunction<TglVertexArrayAttribBinding_Native>>()
                .asFunction();
        this.vertexArrayAttribFormat =
            wglGetProcAddress("glVertexArrayAttribFormat".toNativeUtf8())
                .cast<NativeFunction<TglVertexArrayAttribFormat_Native>>()
                .asFunction();
        this.vertexArrayAttribIFormat =
            wglGetProcAddress("glVertexArrayAttribIFormat".toNativeUtf8())
                .cast<NativeFunction<TglVertexArrayAttribIFormat_Native>>()
                .asFunction();
        this.vertexArrayAttribLFormat =
            wglGetProcAddress("glVertexArrayAttribLFormat".toNativeUtf8())
                .cast<NativeFunction<TglVertexArrayAttribLFormat_Native>>()
                .asFunction();
        this.vertexArrayBindingDivisor =
            wglGetProcAddress("glVertexArrayBindingDivisor".toNativeUtf8())
                .cast<NativeFunction<TglVertexArrayBindingDivisor_Native>>()
                .asFunction();
        this.getVertexArrayiv =
            wglGetProcAddress("glGetVertexArrayiv".toNativeUtf8())
                .cast<NativeFunction<TglGetVertexArrayiv_Native>>()
                .asFunction();
        this.getVertexArrayIndexediv =
            wglGetProcAddress("glGetVertexArrayIndexediv".toNativeUtf8())
                .cast<NativeFunction<TglGetVertexArrayIndexediv_Native>>()
                .asFunction();
        this.getVertexArrayIndexed64iv =
            wglGetProcAddress("glGetVertexArrayIndexed64iv".toNativeUtf8())
                .cast<NativeFunction<TglGetVertexArrayIndexed64iv_Native>>()
                .asFunction();
        this.createSamplers =
            wglGetProcAddress("glCreateSamplers".toNativeUtf8())
                .cast<NativeFunction<TglCreateSamplers_Native>>()
                .asFunction();
        this.createProgramPipelines =
            wglGetProcAddress("glCreateProgramPipelines".toNativeUtf8())
                .cast<NativeFunction<TglCreateProgramPipelines_Native>>()
                .asFunction();
        this.createQueries = wglGetProcAddress("glCreateQueries".toNativeUtf8())
            .cast<NativeFunction<TglCreateQueries_Native>>()
            .asFunction();
        this.getQueryBufferObjecti64v =
            wglGetProcAddress("glGetQueryBufferObjecti64v".toNativeUtf8())
                .cast<NativeFunction<TglGetQueryBufferObjecti64v_Native>>()
                .asFunction();
        this.getQueryBufferObjectiv =
            wglGetProcAddress("glGetQueryBufferObjectiv".toNativeUtf8())
                .cast<NativeFunction<TglGetQueryBufferObjectiv_Native>>()
                .asFunction();
        this.getQueryBufferObjectui64v =
            wglGetProcAddress("glGetQueryBufferObjectui64v".toNativeUtf8())
                .cast<NativeFunction<TglGetQueryBufferObjectui64v_Native>>()
                .asFunction();
        this.getQueryBufferObjectuiv =
            wglGetProcAddress("glGetQueryBufferObjectuiv".toNativeUtf8())
                .cast<NativeFunction<TglGetQueryBufferObjectuiv_Native>>()
                .asFunction();
        this.memoryBarrierByRegion =
            wglGetProcAddress("glMemoryBarrierByRegion".toNativeUtf8())
                .cast<NativeFunction<TglMemoryBarrierByRegion_Native>>()
                .asFunction();
        this.getTextureSubImage =
            wglGetProcAddress("glGetTextureSubImage".toNativeUtf8())
                .cast<NativeFunction<TglGetTextureSubImage_Native>>()
                .asFunction();
        this.getCompressedTextureSubImage =
            wglGetProcAddress("glGetCompressedTextureSubImage".toNativeUtf8())
                .cast<NativeFunction<TglGetCompressedTextureSubImage_Native>>()
                .asFunction();
        this.getGraphicsResetStatus =
            wglGetProcAddress("glGetGraphicsResetStatus".toNativeUtf8())
                .cast<NativeFunction<TglGetGraphicsResetStatus_Native>>()
                .asFunction();
        this.getnCompressedTexImage =
            wglGetProcAddress("glGetnCompressedTexImage".toNativeUtf8())
                .cast<NativeFunction<TglGetnCompressedTexImage_Native>>()
                .asFunction();
        this.getnTexImage = wglGetProcAddress("glGetnTexImage".toNativeUtf8())
            .cast<NativeFunction<TglGetnTexImage_Native>>()
            .asFunction();
        this.getnUniformdv = wglGetProcAddress("glGetnUniformdv".toNativeUtf8())
            .cast<NativeFunction<TglGetnUniformdv_Native>>()
            .asFunction();
        this.getnUniformfv = wglGetProcAddress("glGetnUniformfv".toNativeUtf8())
            .cast<NativeFunction<TglGetnUniformfv_Native>>()
            .asFunction();
        this.getnUniformiv = wglGetProcAddress("glGetnUniformiv".toNativeUtf8())
            .cast<NativeFunction<TglGetnUniformiv_Native>>()
            .asFunction();
        this.getnUniformuiv =
            wglGetProcAddress("glGetnUniformuiv".toNativeUtf8())
                .cast<NativeFunction<TglGetnUniformuiv_Native>>()
                .asFunction();
        this.readnPixels = wglGetProcAddress("glReadnPixels".toNativeUtf8())
            .cast<NativeFunction<TglReadnPixels_Native>>()
            .asFunction();
        this.getnMapdv = wglGetProcAddress("glGetnMapdv".toNativeUtf8())
            .cast<NativeFunction<TglGetnMapdv_Native>>()
            .asFunction();
        this.getnMapfv = wglGetProcAddress("glGetnMapfv".toNativeUtf8())
            .cast<NativeFunction<TglGetnMapfv_Native>>()
            .asFunction();
        this.getnMapiv = wglGetProcAddress("glGetnMapiv".toNativeUtf8())
            .cast<NativeFunction<TglGetnMapiv_Native>>()
            .asFunction();
        this.getnPixelMapfv =
            wglGetProcAddress("glGetnPixelMapfv".toNativeUtf8())
                .cast<NativeFunction<TglGetnPixelMapfv_Native>>()
                .asFunction();
        this.getnPixelMapuiv =
            wglGetProcAddress("glGetnPixelMapuiv".toNativeUtf8())
                .cast<NativeFunction<TglGetnPixelMapuiv_Native>>()
                .asFunction();
        this.getnPixelMapusv =
            wglGetProcAddress("glGetnPixelMapusv".toNativeUtf8())
                .cast<NativeFunction<TglGetnPixelMapusv_Native>>()
                .asFunction();
        this.getnPolygonStipple =
            wglGetProcAddress("glGetnPolygonStipple".toNativeUtf8())
                .cast<NativeFunction<TglGetnPolygonStipple_Native>>()
                .asFunction();
        this.getnColorTable =
            wglGetProcAddress("glGetnColorTable".toNativeUtf8())
                .cast<NativeFunction<TglGetnColorTable_Native>>()
                .asFunction();
        this.getnConvolutionFilter =
            wglGetProcAddress("glGetnConvolutionFilter".toNativeUtf8())
                .cast<NativeFunction<TglGetnConvolutionFilter_Native>>()
                .asFunction();
        this.getnSeparableFilter =
            wglGetProcAddress("glGetnSeparableFilter".toNativeUtf8())
                .cast<NativeFunction<TglGetnSeparableFilter_Native>>()
                .asFunction();
        this.getnHistogram = wglGetProcAddress("glGetnHistogram".toNativeUtf8())
            .cast<NativeFunction<TglGetnHistogram_Native>>()
            .asFunction();
        this.getnMinmax = wglGetProcAddress("glGetnMinmax".toNativeUtf8())
            .cast<NativeFunction<TglGetnMinmax_Native>>()
            .asFunction();
        this.textureBarrier =
            wglGetProcAddress("glTextureBarrier".toNativeUtf8())
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
            wglGetProcAddress("glSpecializeShader".toNativeUtf8())
                .cast<NativeFunction<TglSpecializeShader_Native>>()
                .asFunction();
        this.multiDrawArraysIndirectCount =
            wglGetProcAddress("glMultiDrawArraysIndirectCount".toNativeUtf8())
                .cast<NativeFunction<TglMultiDrawArraysIndirectCount_Native>>()
                .asFunction();
        this.multiDrawElementsIndirectCount = wglGetProcAddress(
                "glMultiDrawElementsIndirectCount".toNativeUtf8())
            .cast<NativeFunction<TglMultiDrawElementsIndirectCount_Native>>()
            .asFunction();
        this.polygonOffsetClamp =
            wglGetProcAddress("glPolygonOffsetClamp".toNativeUtf8())
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
  late TglClearIndex_Func clearIndex;
  late TglClearColor_Func clearColor;
  late TglClear_Func clear;
  late TglIndexMask_Func indexMask;
  late TglColorMask_Func colorMask;
  late TglAlphaFunc_Func alphaFunc;
  late TglBlendFunc_Func blendFunc;
  late TglLogicOp_Func logicOp;
  late TglCullFace_Func cullFace;
  late TglFrontFace_Func frontFace;
  late TglPointSize_Func pointSize;
  late TglLineWidth_Func lineWidth;
  late TglLineStipple_Func lineStipple;
  late TglPolygonMode_Func polygonMode;
  late TglPolygonOffset_Func polygonOffset;
  late TglPolygonStipple_Func polygonStipple;
  late TglGetPolygonStipple_Func getPolygonStipple;
  late TglEdgeFlag_Func edgeFlag;
  late TglEdgeFlagv_Func edgeFlagv;
  late TglScissor_Func scissor;
  late TglClipPlane_Func clipPlane;
  late TglGetClipPlane_Func getClipPlane;
  late TglDrawBuffer_Func drawBuffer;
  late TglReadBuffer_Func readBuffer;
  late TglEnable_Func enable;
  late TglDisable_Func disable;
  late TglIsEnabled_Func isEnabled;
  late TglEnableClientState_Func enableClientState;
  late TglDisableClientState_Func disableClientState;
  late TglGetBooleanv_Func getBooleanv;
  late TglGetDoublev_Func getDoublev;
  late TglGetFloatv_Func getFloatv;
  late TglGetIntegerv_Func getIntegerv;
  late TglPushAttrib_Func pushAttrib;
  late TglPopAttrib_Func popAttrib;
  late TglPushClientAttrib_Func pushClientAttrib;
  late TglPopClientAttrib_Func popClientAttrib;
  late TglRenderMode_Func renderMode;
  late TglGetError_Func getError;
  late TglGetString_Func getString;
  late TglFinish_Func finish;
  late TglFlush_Func flush;
  late TglHint_Func hint;
  late TglClearDepth_Func clearDepth;
  late TglDepthFunc_Func depthFunc;
  late TglDepthMask_Func depthMask;
  late TglDepthRange_Func depthRange;
  late TglClearAccum_Func clearAccum;
  late TglAccum_Func accum;
  late TglMatrixMode_Func matrixMode;
  late TglOrtho_Func ortho;
  late TglFrustum_Func frustum;
  late TglViewport_Func viewport;
  late TglPushMatrix_Func pushMatrix;
  late TglPopMatrix_Func popMatrix;
  late TglLoadIdentity_Func loadIdentity;
  late TglLoadMatrixd_Func loadMatrixd;
  late TglLoadMatrixf_Func loadMatrixf;
  late TglMultMatrixd_Func multMatrixd;
  late TglMultMatrixf_Func multMatrixf;
  late TglRotated_Func rotated;
  late TglRotatef_Func rotatef;
  late TglScaled_Func scaled;
  late TglScalef_Func scalef;
  late TglTranslated_Func translated;
  late TglTranslatef_Func translatef;
  late TglIsList_Func isList;
  late TglDeleteLists_Func deleteLists;
  late TglGenLists_Func genLists;
  late TglNewList_Func newList;
  late TglEndList_Func endList;
  late TglCallList_Func callList;
  late TglCallLists_Func callLists;
  late TglListBase_Func listBase;
  late TglBegin_Func begin;
  late TglEnd_Func end;
  late TglVertex2d_Func vertex2d;
  late TglVertex2f_Func vertex2f;
  late TglVertex2i_Func vertex2i;
  late TglVertex2s_Func vertex2s;
  late TglVertex3d_Func vertex3d;
  late TglVertex3f_Func vertex3f;
  late TglVertex3i_Func vertex3i;
  late TglVertex3s_Func vertex3s;
  late TglVertex4d_Func vertex4d;
  late TglVertex4f_Func vertex4f;
  late TglVertex4i_Func vertex4i;
  late TglVertex4s_Func vertex4s;
  late TglVertex2dv_Func vertex2dv;
  late TglVertex2fv_Func vertex2fv;
  late TglVertex2iv_Func vertex2iv;
  late TglVertex2sv_Func vertex2sv;
  late TglVertex3dv_Func vertex3dv;
  late TglVertex3fv_Func vertex3fv;
  late TglVertex3iv_Func vertex3iv;
  late TglVertex3sv_Func vertex3sv;
  late TglVertex4dv_Func vertex4dv;
  late TglVertex4fv_Func vertex4fv;
  late TglVertex4iv_Func vertex4iv;
  late TglVertex4sv_Func vertex4sv;
  late TglNormal3b_Func normal3b;
  late TglNormal3d_Func normal3d;
  late TglNormal3f_Func normal3f;
  late TglNormal3i_Func normal3i;
  late TglNormal3s_Func normal3s;
  late TglNormal3bv_Func normal3bv;
  late TglNormal3dv_Func normal3dv;
  late TglNormal3fv_Func normal3fv;
  late TglNormal3iv_Func normal3iv;
  late TglNormal3sv_Func normal3sv;
  late TglIndexd_Func indexd;
  late TglIndexf_Func indexf;
  late TglIndexi_Func indexi;
  late TglIndexs_Func indexs;
  late TglIndexub_Func indexub;
  late TglIndexdv_Func indexdv;
  late TglIndexfv_Func indexfv;
  late TglIndexiv_Func indexiv;
  late TglIndexsv_Func indexsv;
  late TglIndexubv_Func indexubv;
  late TglColor3b_Func color3b;
  late TglColor3d_Func color3d;
  late TglColor3f_Func color3f;
  late TglColor3i_Func color3i;
  late TglColor3s_Func color3s;
  late TglColor3ub_Func color3ub;
  late TglColor3ui_Func color3ui;
  late TglColor3us_Func color3us;
  late TglColor4b_Func color4b;
  late TglColor4d_Func color4d;
  late TglColor4f_Func color4f;
  late TglColor4i_Func color4i;
  late TglColor4s_Func color4s;
  late TglColor4ub_Func color4ub;
  late TglColor4ui_Func color4ui;
  late TglColor4us_Func color4us;
  late TglColor3bv_Func color3bv;
  late TglColor3dv_Func color3dv;
  late TglColor3fv_Func color3fv;
  late TglColor3iv_Func color3iv;
  late TglColor3sv_Func color3sv;
  late TglColor3ubv_Func color3ubv;
  late TglColor3uiv_Func color3uiv;
  late TglColor3usv_Func color3usv;
  late TglColor4bv_Func color4bv;
  late TglColor4dv_Func color4dv;
  late TglColor4fv_Func color4fv;
  late TglColor4iv_Func color4iv;
  late TglColor4sv_Func color4sv;
  late TglColor4ubv_Func color4ubv;
  late TglColor4uiv_Func color4uiv;
  late TglColor4usv_Func color4usv;
  late TglTexCoord1d_Func texCoord1d;
  late TglTexCoord1f_Func texCoord1f;
  late TglTexCoord1i_Func texCoord1i;
  late TglTexCoord1s_Func texCoord1s;
  late TglTexCoord2d_Func texCoord2d;
  late TglTexCoord2f_Func texCoord2f;
  late TglTexCoord2i_Func texCoord2i;
  late TglTexCoord2s_Func texCoord2s;
  late TglTexCoord3d_Func texCoord3d;
  late TglTexCoord3f_Func texCoord3f;
  late TglTexCoord3i_Func texCoord3i;
  late TglTexCoord3s_Func texCoord3s;
  late TglTexCoord4d_Func texCoord4d;
  late TglTexCoord4f_Func texCoord4f;
  late TglTexCoord4i_Func texCoord4i;
  late TglTexCoord4s_Func texCoord4s;
  late TglTexCoord1dv_Func texCoord1dv;
  late TglTexCoord1fv_Func texCoord1fv;
  late TglTexCoord1iv_Func texCoord1iv;
  late TglTexCoord1sv_Func texCoord1sv;
  late TglTexCoord2dv_Func texCoord2dv;
  late TglTexCoord2fv_Func texCoord2fv;
  late TglTexCoord2iv_Func texCoord2iv;
  late TglTexCoord2sv_Func texCoord2sv;
  late TglTexCoord3dv_Func texCoord3dv;
  late TglTexCoord3fv_Func texCoord3fv;
  late TglTexCoord3iv_Func texCoord3iv;
  late TglTexCoord3sv_Func texCoord3sv;
  late TglTexCoord4dv_Func texCoord4dv;
  late TglTexCoord4fv_Func texCoord4fv;
  late TglTexCoord4iv_Func texCoord4iv;
  late TglTexCoord4sv_Func texCoord4sv;
  late TglRasterPos2d_Func rasterPos2d;
  late TglRasterPos2f_Func rasterPos2f;
  late TglRasterPos2i_Func rasterPos2i;
  late TglRasterPos2s_Func rasterPos2s;
  late TglRasterPos3d_Func rasterPos3d;
  late TglRasterPos3f_Func rasterPos3f;
  late TglRasterPos3i_Func rasterPos3i;
  late TglRasterPos3s_Func rasterPos3s;
  late TglRasterPos4d_Func rasterPos4d;
  late TglRasterPos4f_Func rasterPos4f;
  late TglRasterPos4i_Func rasterPos4i;
  late TglRasterPos4s_Func rasterPos4s;
  late TglRasterPos2dv_Func rasterPos2dv;
  late TglRasterPos2fv_Func rasterPos2fv;
  late TglRasterPos2iv_Func rasterPos2iv;
  late TglRasterPos2sv_Func rasterPos2sv;
  late TglRasterPos3dv_Func rasterPos3dv;
  late TglRasterPos3fv_Func rasterPos3fv;
  late TglRasterPos3iv_Func rasterPos3iv;
  late TglRasterPos3sv_Func rasterPos3sv;
  late TglRasterPos4dv_Func rasterPos4dv;
  late TglRasterPos4fv_Func rasterPos4fv;
  late TglRasterPos4iv_Func rasterPos4iv;
  late TglRasterPos4sv_Func rasterPos4sv;
  late TglRectd_Func rectd;
  late TglRectf_Func rectf;
  late TglRecti_Func recti;
  late TglRects_Func rects;
  late TglRectdv_Func rectdv;
  late TglRectfv_Func rectfv;
  late TglRectiv_Func rectiv;
  late TglRectsv_Func rectsv;
  late TglVertexPointer_Func vertexPointer;
  late TglNormalPointer_Func normalPointer;
  late TglColorPointer_Func colorPointer;
  late TglIndexPointer_Func indexPointer;
  late TglTexCoordPointer_Func texCoordPointer;
  late TglEdgeFlagPointer_Func edgeFlagPointer;
  late TglGetPointerv_Func getPointerv;
  late TglArrayElement_Func arrayElement;
  late TglDrawArrays_Func drawArrays;
  late TglDrawElements_Func drawElements;
  late TglInterleavedArrays_Func interleavedArrays;
  late TglShadeModel_Func shadeModel;
  late TglLightf_Func lightf;
  late TglLighti_Func lighti;
  late TglLightfv_Func lightfv;
  late TglLightiv_Func lightiv;
  late TglGetLightfv_Func getLightfv;
  late TglGetLightiv_Func getLightiv;
  late TglLightModelf_Func lightModelf;
  late TglLightModeli_Func lightModeli;
  late TglLightModelfv_Func lightModelfv;
  late TglLightModeliv_Func lightModeliv;
  late TglMaterialf_Func materialf;
  late TglMateriali_Func materiali;
  late TglMaterialfv_Func materialfv;
  late TglMaterialiv_Func materialiv;
  late TglGetMaterialfv_Func getMaterialfv;
  late TglGetMaterialiv_Func getMaterialiv;
  late TglColorMaterial_Func colorMaterial;
  late TglPixelZoom_Func pixelZoom;
  late TglPixelStoref_Func pixelStoref;
  late TglPixelStorei_Func pixelStorei;
  late TglPixelTransferf_Func pixelTransferf;
  late TglPixelTransferi_Func pixelTransferi;
  late TglPixelMapfv_Func pixelMapfv;
  late TglPixelMapuiv_Func pixelMapuiv;
  late TglPixelMapusv_Func pixelMapusv;
  late TglGetPixelMapfv_Func getPixelMapfv;
  late TglGetPixelMapuiv_Func getPixelMapuiv;
  late TglGetPixelMapusv_Func getPixelMapusv;
  late TglBitmap_Func bitmap;
  late TglReadPixels_Func readPixels;
  late TglDrawPixels_Func drawPixels;
  late TglCopyPixels_Func copyPixels;
  late TglStencilFunc_Func stencilFunc;
  late TglStencilMask_Func stencilMask;
  late TglStencilOp_Func stencilOp;
  late TglClearStencil_Func clearStencil;
  late TglTexGend_Func texGend;
  late TglTexGenf_Func texGenf;
  late TglTexGeni_Func texGeni;
  late TglTexGendv_Func texGendv;
  late TglTexGenfv_Func texGenfv;
  late TglTexGeniv_Func texGeniv;
  late TglGetTexGendv_Func getTexGendv;
  late TglGetTexGenfv_Func getTexGenfv;
  late TglGetTexGeniv_Func getTexGeniv;
  late TglTexEnvf_Func texEnvf;
  late TglTexEnvi_Func texEnvi;
  late TglTexEnvfv_Func texEnvfv;
  late TglTexEnviv_Func texEnviv;
  late TglGetTexEnvfv_Func getTexEnvfv;
  late TglGetTexEnviv_Func getTexEnviv;
  late TglTexParameterf_Func texParameterf;
  late TglTexParameteri_Func texParameteri;
  late TglTexParameterfv_Func texParameterfv;
  late TglTexParameteriv_Func texParameteriv;
  late TglGetTexParameterfv_Func getTexParameterfv;
  late TglGetTexParameteriv_Func getTexParameteriv;
  late TglGetTexLevelParameterfv_Func getTexLevelParameterfv;
  late TglGetTexLevelParameteriv_Func getTexLevelParameteriv;
  late TglTexImage1D_Func texImage1D;
  late TglTexImage2D_Func texImage2D;
  late TglGetTexImage_Func getTexImage;
  late TglGenTextures_Func genTextures;
  late TglDeleteTextures_Func deleteTextures;
  late TglBindTexture_Func bindTexture;
  late TglPrioritizeTextures_Func prioritizeTextures;
  late TglAreTexturesResident_Func areTexturesResident;
  late TglIsTexture_Func isTexture;
  late TglTexSubImage1D_Func texSubImage1D;
  late TglTexSubImage2D_Func texSubImage2D;
  late TglCopyTexImage1D_Func copyTexImage1D;
  late TglCopyTexImage2D_Func copyTexImage2D;
  late TglCopyTexSubImage1D_Func copyTexSubImage1D;
  late TglCopyTexSubImage2D_Func copyTexSubImage2D;
  late TglMap1d_Func map1d;
  late TglMap1f_Func map1f;
  late TglMap2d_Func map2d;
  late TglMap2f_Func map2f;
  late TglGetMapdv_Func getMapdv;
  late TglGetMapfv_Func getMapfv;
  late TglGetMapiv_Func getMapiv;
  late TglEvalCoord1d_Func evalCoord1d;
  late TglEvalCoord1f_Func evalCoord1f;
  late TglEvalCoord1dv_Func evalCoord1dv;
  late TglEvalCoord1fv_Func evalCoord1fv;
  late TglEvalCoord2d_Func evalCoord2d;
  late TglEvalCoord2f_Func evalCoord2f;
  late TglEvalCoord2dv_Func evalCoord2dv;
  late TglEvalCoord2fv_Func evalCoord2fv;
  late TglMapGrid1d_Func mapGrid1d;
  late TglMapGrid1f_Func mapGrid1f;
  late TglMapGrid2d_Func mapGrid2d;
  late TglMapGrid2f_Func mapGrid2f;
  late TglEvalPoint1_Func evalPoint1;
  late TglEvalPoint2_Func evalPoint2;
  late TglEvalMesh1_Func evalMesh1;
  late TglEvalMesh2_Func evalMesh2;
  late TglFogf_Func fogf;
  late TglFogi_Func fogi;
  late TglFogfv_Func fogfv;
  late TglFogiv_Func fogiv;
  late TglFeedbackBuffer_Func feedbackBuffer;
  late TglPassThrough_Func passThrough;
  late TglSelectBuffer_Func selectBuffer;
  late TglInitNames_Func initNames;
  late TglLoadName_Func loadName;
  late TglPushName_Func pushName;
  late TglPopName_Func popName;
  late TglDrawRangeElements_Func drawRangeElements;
  late TglTexImage3D_Func texImage3D;
  late TglTexSubImage3D_Func texSubImage3D;
  late TglCopyTexSubImage3D_Func copyTexSubImage3D;
  late TglColorTable_Func colorTable;
  late TglColorSubTable_Func colorSubTable;
  late TglColorTableParameteriv_Func colorTableParameteriv;
  late TglColorTableParameterfv_Func colorTableParameterfv;
  late TglCopyColorSubTable_Func copyColorSubTable;
  late TglCopyColorTable_Func copyColorTable;
  late TglGetColorTable_Func getColorTable;
  late TglGetColorTableParameterfv_Func getColorTableParameterfv;
  late TglGetColorTableParameteriv_Func getColorTableParameteriv;
  late TglBlendEquation_Func blendEquation;
  late TglBlendColor_Func blendColor;
  late TglHistogram_Func histogram;
  late TglResetHistogram_Func resetHistogram;
  late TglGetHistogram_Func getHistogram;
  late TglGetHistogramParameterfv_Func getHistogramParameterfv;
  late TglGetHistogramParameteriv_Func getHistogramParameteriv;
  late TglMinmax_Func minmax;
  late TglResetMinmax_Func resetMinmax;
  late TglGetMinmax_Func getMinmax;
  late TglGetMinmaxParameterfv_Func getMinmaxParameterfv;
  late TglGetMinmaxParameteriv_Func getMinmaxParameteriv;
  late TglConvolutionFilter1D_Func convolutionFilter1D;
  late TglConvolutionFilter2D_Func convolutionFilter2D;
  late TglConvolutionParameterf_Func convolutionParameterf;
  late TglConvolutionParameterfv_Func convolutionParameterfv;
  late TglConvolutionParameteri_Func convolutionParameteri;
  late TglConvolutionParameteriv_Func convolutionParameteriv;
  late TglCopyConvolutionFilter1D_Func copyConvolutionFilter1D;
  late TglCopyConvolutionFilter2D_Func copyConvolutionFilter2D;
  late TglGetConvolutionFilter_Func getConvolutionFilter;
  late TglGetConvolutionParameterfv_Func getConvolutionParameterfv;
  late TglGetConvolutionParameteriv_Func getConvolutionParameteriv;
  late TglSeparableFilter2D_Func separableFilter2D;
  late TglGetSeparableFilter_Func getSeparableFilter;
  late TglActiveTexture_Func activeTexture;
  late TglClientActiveTexture_Func clientActiveTexture;
  late TglCompressedTexImage1D_Func compressedTexImage1D;
  late TglCompressedTexImage2D_Func compressedTexImage2D;
  late TglCompressedTexImage3D_Func compressedTexImage3D;
  late TglCompressedTexSubImage1D_Func compressedTexSubImage1D;
  late TglCompressedTexSubImage2D_Func compressedTexSubImage2D;
  late TglCompressedTexSubImage3D_Func compressedTexSubImage3D;
  late TglGetCompressedTexImage_Func getCompressedTexImage;
  late TglMultiTexCoord1d_Func multiTexCoord1d;
  late TglMultiTexCoord1dv_Func multiTexCoord1dv;
  late TglMultiTexCoord1f_Func multiTexCoord1f;
  late TglMultiTexCoord1fv_Func multiTexCoord1fv;
  late TglMultiTexCoord1i_Func multiTexCoord1i;
  late TglMultiTexCoord1iv_Func multiTexCoord1iv;
  late TglMultiTexCoord1s_Func multiTexCoord1s;
  late TglMultiTexCoord1sv_Func multiTexCoord1sv;
  late TglMultiTexCoord2d_Func multiTexCoord2d;
  late TglMultiTexCoord2dv_Func multiTexCoord2dv;
  late TglMultiTexCoord2f_Func multiTexCoord2f;
  late TglMultiTexCoord2fv_Func multiTexCoord2fv;
  late TglMultiTexCoord2i_Func multiTexCoord2i;
  late TglMultiTexCoord2iv_Func multiTexCoord2iv;
  late TglMultiTexCoord2s_Func multiTexCoord2s;
  late TglMultiTexCoord2sv_Func multiTexCoord2sv;
  late TglMultiTexCoord3d_Func multiTexCoord3d;
  late TglMultiTexCoord3dv_Func multiTexCoord3dv;
  late TglMultiTexCoord3f_Func multiTexCoord3f;
  late TglMultiTexCoord3fv_Func multiTexCoord3fv;
  late TglMultiTexCoord3i_Func multiTexCoord3i;
  late TglMultiTexCoord3iv_Func multiTexCoord3iv;
  late TglMultiTexCoord3s_Func multiTexCoord3s;
  late TglMultiTexCoord3sv_Func multiTexCoord3sv;
  late TglMultiTexCoord4d_Func multiTexCoord4d;
  late TglMultiTexCoord4dv_Func multiTexCoord4dv;
  late TglMultiTexCoord4f_Func multiTexCoord4f;
  late TglMultiTexCoord4fv_Func multiTexCoord4fv;
  late TglMultiTexCoord4i_Func multiTexCoord4i;
  late TglMultiTexCoord4iv_Func multiTexCoord4iv;
  late TglMultiTexCoord4s_Func multiTexCoord4s;
  late TglMultiTexCoord4sv_Func multiTexCoord4sv;
  late TglLoadTransposeMatrixd_Func loadTransposeMatrixd;
  late TglLoadTransposeMatrixf_Func loadTransposeMatrixf;
  late TglMultTransposeMatrixd_Func multTransposeMatrixd;
  late TglMultTransposeMatrixf_Func multTransposeMatrixf;
  late TglSampleCoverage_Func sampleCoverage;
  late TglActiveTextureARB_Func activeTextureARB;
  late TglClientActiveTextureARB_Func clientActiveTextureARB;
  late TglMultiTexCoord1dARB_Func multiTexCoord1dARB;
  late TglMultiTexCoord1dvARB_Func multiTexCoord1dvARB;
  late TglMultiTexCoord1fARB_Func multiTexCoord1fARB;
  late TglMultiTexCoord1fvARB_Func multiTexCoord1fvARB;
  late TglMultiTexCoord1iARB_Func multiTexCoord1iARB;
  late TglMultiTexCoord1ivARB_Func multiTexCoord1ivARB;
  late TglMultiTexCoord1sARB_Func multiTexCoord1sARB;
  late TglMultiTexCoord1svARB_Func multiTexCoord1svARB;
  late TglMultiTexCoord2dARB_Func multiTexCoord2dARB;
  late TglMultiTexCoord2dvARB_Func multiTexCoord2dvARB;
  late TglMultiTexCoord2fARB_Func multiTexCoord2fARB;
  late TglMultiTexCoord2fvARB_Func multiTexCoord2fvARB;
  late TglMultiTexCoord2iARB_Func multiTexCoord2iARB;
  late TglMultiTexCoord2ivARB_Func multiTexCoord2ivARB;
  late TglMultiTexCoord2sARB_Func multiTexCoord2sARB;
  late TglMultiTexCoord2svARB_Func multiTexCoord2svARB;
  late TglMultiTexCoord3dARB_Func multiTexCoord3dARB;
  late TglMultiTexCoord3dvARB_Func multiTexCoord3dvARB;
  late TglMultiTexCoord3fARB_Func multiTexCoord3fARB;
  late TglMultiTexCoord3fvARB_Func multiTexCoord3fvARB;
  late TglMultiTexCoord3iARB_Func multiTexCoord3iARB;
  late TglMultiTexCoord3ivARB_Func multiTexCoord3ivARB;
  late TglMultiTexCoord3sARB_Func multiTexCoord3sARB;
  late TglMultiTexCoord3svARB_Func multiTexCoord3svARB;
  late TglMultiTexCoord4dARB_Func multiTexCoord4dARB;
  late TglMultiTexCoord4dvARB_Func multiTexCoord4dvARB;
  late TglMultiTexCoord4fARB_Func multiTexCoord4fARB;
  late TglMultiTexCoord4fvARB_Func multiTexCoord4fvARB;
  late TglMultiTexCoord4iARB_Func multiTexCoord4iARB;
  late TglMultiTexCoord4ivARB_Func multiTexCoord4ivARB;
  late TglMultiTexCoord4sARB_Func multiTexCoord4sARB;
  late TglMultiTexCoord4svARB_Func multiTexCoord4svARB;
/*
########     ###    ########  ########  #######
##     ##   ## ##   ##     ##    ##    ##     ##
##     ##  ##   ##  ##     ##    ##           ##
########  ##     ## ########     ##     #######
##        ######### ##   ##      ##    ##
##        ##     ## ##    ##     ##    ##
##        ##     ## ##     ##    ##    #########
*/
  late TglBlendFuncSeparate_Func blendFuncSeparate;
  late TglMultiDrawArrays_Func multiDrawArrays;
  late TglMultiDrawElements_Func multiDrawElements;
  late TglPointParameterf_Func pointParameterf;
  late TglPointParameterfv_Func pointParameterfv;
  late TglPointParameteri_Func pointParameteri;
  late TglPointParameteriv_Func pointParameteriv;
  late TglFogCoordf_Func fogCoordf;
  late TglFogCoordfv_Func fogCoordfv;
  late TglFogCoordd_Func fogCoordd;
  late TglFogCoorddv_Func fogCoorddv;
  late TglFogCoordPointer_Func fogCoordPointer;
  late TglSecondaryColor3b_Func secondaryColor3b;
  late TglSecondaryColor3bv_Func secondaryColor3bv;
  late TglSecondaryColor3d_Func secondaryColor3d;
  late TglSecondaryColor3dv_Func secondaryColor3dv;
  late TglSecondaryColor3f_Func secondaryColor3f;
  late TglSecondaryColor3fv_Func secondaryColor3fv;
  late TglSecondaryColor3i_Func secondaryColor3i;
  late TglSecondaryColor3iv_Func secondaryColor3iv;
  late TglSecondaryColor3s_Func secondaryColor3s;
  late TglSecondaryColor3sv_Func secondaryColor3sv;
  late TglSecondaryColor3ub_Func secondaryColor3ub;
  late TglSecondaryColor3ubv_Func secondaryColor3ubv;
  late TglSecondaryColor3ui_Func secondaryColor3ui;
  late TglSecondaryColor3uiv_Func secondaryColor3uiv;
  late TglSecondaryColor3us_Func secondaryColor3us;
  late TglSecondaryColor3usv_Func secondaryColor3usv;
  late TglSecondaryColorPointer_Func secondaryColorPointer;
  late TglWindowPos2d_Func windowPos2d;
  late TglWindowPos2dv_Func windowPos2dv;
  late TglWindowPos2f_Func windowPos2f;
  late TglWindowPos2fv_Func windowPos2fv;
  late TglWindowPos2i_Func windowPos2i;
  late TglWindowPos2iv_Func windowPos2iv;
  late TglWindowPos2s_Func windowPos2s;
  late TglWindowPos2sv_Func windowPos2sv;
  late TglWindowPos3d_Func windowPos3d;
  late TglWindowPos3dv_Func windowPos3dv;
  late TglWindowPos3f_Func windowPos3f;
  late TglWindowPos3fv_Func windowPos3fv;
  late TglWindowPos3i_Func windowPos3i;
  late TglWindowPos3iv_Func windowPos3iv;
  late TglWindowPos3s_Func windowPos3s;
  late TglWindowPos3sv_Func windowPos3sv;
  late TglGenQueries_Func genQueries;
  late TglDeleteQueries_Func deleteQueries;
  late TglIsQuery_Func isQuery;
  late TglBeginQuery_Func beginQuery;
  late TglEndQuery_Func endQuery;
  late TglGetQueryiv_Func getQueryiv;
  late TglGetQueryObjectiv_Func getQueryObjectiv;
  late TglGetQueryObjectuiv_Func getQueryObjectuiv;
  late TglBindBuffer_Func bindBuffer;
  late TglDeleteBuffers_Func deleteBuffers;
  late TglGenBuffers_Func genBuffers;
  late TglIsBuffer_Func isBuffer;
  late TglBufferData_Func bufferData;
  late TglBufferSubData_Func bufferSubData;
  late TglGetBufferSubData_Func getBufferSubData;
  late TglMapBuffer_Func mapBuffer;
  late TglUnmapBuffer_Func unmapBuffer;
  late TglGetBufferParameteriv_Func getBufferParameteriv;
  late TglGetBufferPointerv_Func getBufferPointerv;
  late TglBlendEquationSeparate_Func blendEquationSeparate;
  late TglDrawBuffers_Func drawBuffers;
  late TglStencilOpSeparate_Func stencilOpSeparate;
  late TglStencilFuncSeparate_Func stencilFuncSeparate;
  late TglStencilMaskSeparate_Func stencilMaskSeparate;
  late TglAttachShader_Func attachShader;
  late TglBindAttribLocation_Func bindAttribLocation;
  late TglCompileShader_Func compileShader;
  late TglCreateProgram_Func createProgram;
  late TglCreateShader_Func createShader;
  late TglDeleteProgram_Func deleteProgram;
  late TglDeleteShader_Func deleteShader;
  late TglDetachShader_Func detachShader;
  late TglDisableVertexAttribArray_Func disableVertexAttribArray;
  late TglEnableVertexAttribArray_Func enableVertexAttribArray;
  late TglGetActiveAttrib_Func getActiveAttrib;
  late TglGetActiveUniform_Func getActiveUniform;
  late TglGetAttachedShaders_Func getAttachedShaders;
  late TglGetAttribLocation_Func getAttribLocation;
  late TglGetProgramiv_Func getProgramiv;
  late TglGetProgramInfoLog_Func getProgramInfoLog;
  late TglGetShaderiv_Func getShaderiv;
  late TglGetShaderInfoLog_Func getShaderInfoLog;
  late TglGetShaderSource_Func getShaderSource;
  late TglGetUniformLocation_Func getUniformLocation;
  late TglGetUniformfv_Func getUniformfv;
  late TglGetUniformiv_Func getUniformiv;
  late TglGetVertexAttribdv_Func getVertexAttribdv;
  late TglGetVertexAttribfv_Func getVertexAttribfv;
  late TglGetVertexAttribiv_Func getVertexAttribiv;
  late TglGetVertexAttribPointerv_Func getVertexAttribPointerv;
  late TglIsProgram_Func isProgram;
  late TglIsShader_Func isShader;
  late TglLinkProgram_Func linkProgram;
  late TglShaderSource_Func shaderSource;
  late TglUseProgram_Func useProgram;
  late TglUniform1f_Func uniform1f;
  late TglUniform2f_Func uniform2f;
  late TglUniform3f_Func uniform3f;
  late TglUniform4f_Func uniform4f;
  late TglUniform1i_Func uniform1i;
  late TglUniform2i_Func uniform2i;
  late TglUniform3i_Func uniform3i;
  late TglUniform4i_Func uniform4i;
  late TglUniform1fv_Func uniform1fv;
  late TglUniform2fv_Func uniform2fv;
  late TglUniform3fv_Func uniform3fv;
  late TglUniform4fv_Func uniform4fv;
  late TglUniform1iv_Func uniform1iv;
  late TglUniform2iv_Func uniform2iv;
  late TglUniform3iv_Func uniform3iv;
  late TglUniform4iv_Func uniform4iv;
  late TglUniformMatrix2fv_Func uniformMatrix2fv;
  late TglUniformMatrix3fv_Func uniformMatrix3fv;
  late TglUniformMatrix4fv_Func uniformMatrix4fv;
  late TglValidateProgram_Func validateProgram;
  late TglVertexAttrib1d_Func vertexAttrib1d;
  late TglVertexAttrib1dv_Func vertexAttrib1dv;
  late TglVertexAttrib1f_Func vertexAttrib1f;
  late TglVertexAttrib1fv_Func vertexAttrib1fv;
  late TglVertexAttrib1s_Func vertexAttrib1s;
  late TglVertexAttrib1sv_Func vertexAttrib1sv;
  late TglVertexAttrib2d_Func vertexAttrib2d;
  late TglVertexAttrib2dv_Func vertexAttrib2dv;
  late TglVertexAttrib2f_Func vertexAttrib2f;
  late TglVertexAttrib2fv_Func vertexAttrib2fv;
  late TglVertexAttrib2s_Func vertexAttrib2s;
  late TglVertexAttrib2sv_Func vertexAttrib2sv;
  late TglVertexAttrib3d_Func vertexAttrib3d;
  late TglVertexAttrib3dv_Func vertexAttrib3dv;
  late TglVertexAttrib3f_Func vertexAttrib3f;
  late TglVertexAttrib3fv_Func vertexAttrib3fv;
  late TglVertexAttrib3s_Func vertexAttrib3s;
  late TglVertexAttrib3sv_Func vertexAttrib3sv;
  late TglVertexAttrib4Nbv_Func vertexAttrib4Nbv;
  late TglVertexAttrib4Niv_Func vertexAttrib4Niv;
  late TglVertexAttrib4Nsv_Func vertexAttrib4Nsv;
  late TglVertexAttrib4Nub_Func vertexAttrib4Nub;
  late TglVertexAttrib4Nubv_Func vertexAttrib4Nubv;
  late TglVertexAttrib4Nuiv_Func vertexAttrib4Nuiv;
  late TglVertexAttrib4Nusv_Func vertexAttrib4Nusv;
  late TglVertexAttrib4bv_Func vertexAttrib4bv;
  late TglVertexAttrib4d_Func vertexAttrib4d;
  late TglVertexAttrib4dv_Func vertexAttrib4dv;
  late TglVertexAttrib4f_Func vertexAttrib4f;
  late TglVertexAttrib4fv_Func vertexAttrib4fv;
  late TglVertexAttrib4iv_Func vertexAttrib4iv;
  late TglVertexAttrib4s_Func vertexAttrib4s;
  late TglVertexAttrib4sv_Func vertexAttrib4sv;
  late TglVertexAttrib4ubv_Func vertexAttrib4ubv;
  late TglVertexAttrib4uiv_Func vertexAttrib4uiv;
  late TglVertexAttrib4usv_Func vertexAttrib4usv;
  late TglVertexAttribPointer_Func vertexAttribPointer;
  late TglUniformMatrix2x3fv_Func uniformMatrix2x3fv;
  late TglUniformMatrix3x2fv_Func uniformMatrix3x2fv;
  late TglUniformMatrix2x4fv_Func uniformMatrix2x4fv;
  late TglUniformMatrix4x2fv_Func uniformMatrix4x2fv;
  late TglUniformMatrix3x4fv_Func uniformMatrix3x4fv;
  late TglUniformMatrix4x3fv_Func uniformMatrix4x3fv;
  late TglColorMaski_Func colorMaski;
  late TglGetBooleani_v_Func getBooleani_v;
  late TglGetIntegeri_v_Func getIntegeri_v;
  late TglEnablei_Func enablei;
  late TglDisablei_Func disablei;
  late TglIsEnabledi_Func isEnabledi;
  late TglBeginTransformFeedback_Func beginTransformFeedback;
  late TglEndTransformFeedback_Func endTransformFeedback;
  late TglBindBufferRange_Func bindBufferRange;
  late TglBindBufferBase_Func bindBufferBase;
  late TglTransformFeedbackVaryings_Func transformFeedbackVaryings;
  late TglGetTransformFeedbackVarying_Func getTransformFeedbackVarying;
  late TglClampColor_Func clampColor;
  late TglBeginConditionalRender_Func beginConditionalRender;
  late TglEndConditionalRender_Func endConditionalRender;
  late TglVertexAttribIPointer_Func vertexAttribIPointer;
  late TglGetVertexAttribIiv_Func getVertexAttribIiv;
  late TglGetVertexAttribIuiv_Func getVertexAttribIuiv;
  late TglVertexAttribI1i_Func vertexAttribI1i;
  late TglVertexAttribI2i_Func vertexAttribI2i;
  late TglVertexAttribI3i_Func vertexAttribI3i;
  late TglVertexAttribI4i_Func vertexAttribI4i;
  late TglVertexAttribI1ui_Func vertexAttribI1ui;
  late TglVertexAttribI2ui_Func vertexAttribI2ui;
  late TglVertexAttribI3ui_Func vertexAttribI3ui;
  late TglVertexAttribI4ui_Func vertexAttribI4ui;
  late TglVertexAttribI1iv_Func vertexAttribI1iv;
  late TglVertexAttribI2iv_Func vertexAttribI2iv;
  late TglVertexAttribI3iv_Func vertexAttribI3iv;
  late TglVertexAttribI4iv_Func vertexAttribI4iv;
  late TglVertexAttribI1uiv_Func vertexAttribI1uiv;
  late TglVertexAttribI2uiv_Func vertexAttribI2uiv;
  late TglVertexAttribI3uiv_Func vertexAttribI3uiv;
  late TglVertexAttribI4uiv_Func vertexAttribI4uiv;
  late TglVertexAttribI4bv_Func vertexAttribI4bv;
  late TglVertexAttribI4sv_Func vertexAttribI4sv;
  late TglVertexAttribI4ubv_Func vertexAttribI4ubv;
  late TglVertexAttribI4usv_Func vertexAttribI4usv;
  late TglGetUniformuiv_Func getUniformuiv;
  late TglBindFragDataLocation_Func bindFragDataLocation;
  late TglGetFragDataLocation_Func getFragDataLocation;
  late TglUniform1ui_Func uniform1ui;
  late TglUniform2ui_Func uniform2ui;
  late TglUniform3ui_Func uniform3ui;
  late TglUniform4ui_Func uniform4ui;
  late TglUniform1uiv_Func uniform1uiv;
  late TglUniform2uiv_Func uniform2uiv;
  late TglUniform3uiv_Func uniform3uiv;
  late TglUniform4uiv_Func uniform4uiv;
  late TglTexParameterIiv_Func texParameterIiv;
  late TglTexParameterIuiv_Func texParameterIuiv;
  late TglGetTexParameterIiv_Func getTexParameterIiv;
  late TglGetTexParameterIuiv_Func getTexParameterIuiv;
  late TglClearBufferiv_Func clearBufferiv;
  late TglClearBufferuiv_Func clearBufferuiv;
  late TglClearBufferfv_Func clearBufferfv;
  late TglClearBufferfi_Func clearBufferfi;
  late TglGetStringi_Func getStringi;
  late TglIsRenderbuffer_Func isRenderbuffer;
  late TglBindRenderbuffer_Func bindRenderbuffer;
  late TglDeleteRenderbuffers_Func deleteRenderbuffers;
  late TglGenRenderbuffers_Func genRenderbuffers;
  late TglRenderbufferStorage_Func renderbufferStorage;
  late TglGetRenderbufferParameteriv_Func getRenderbufferParameteriv;
  late TglIsFramebuffer_Func isFramebuffer;
  late TglBindFramebuffer_Func bindFramebuffer;
  late TglDeleteFramebuffers_Func deleteFramebuffers;
  late TglGenFramebuffers_Func genFramebuffers;
  late TglCheckFramebufferStatus_Func checkFramebufferStatus;
  late TglFramebufferTexture1D_Func framebufferTexture1D;
  late TglFramebufferTexture2D_Func framebufferTexture2D;
  late TglFramebufferTexture3D_Func framebufferTexture3D;
  late TglFramebufferRenderbuffer_Func framebufferRenderbuffer;
  late TglGetFramebufferAttachmentParameteriv_Func
      getFramebufferAttachmentParameteriv;
  late TglGenerateMipmap_Func generateMipmap;
  late TglBlitFramebuffer_Func blitFramebuffer;
  late TglRenderbufferStorageMultisample_Func renderbufferStorageMultisample;
  late TglFramebufferTextureLayer_Func framebufferTextureLayer;
  late TglMapBufferRange_Func mapBufferRange;
  late TglFlushMappedBufferRange_Func flushMappedBufferRange;
  late TglBindVertexArray_Func bindVertexArray;
  late TglDeleteVertexArrays_Func deleteVertexArrays;
  late TglGenVertexArrays_Func genVertexArrays;
  late TglIsVertexArray_Func isVertexArray;
  late TglDrawArraysInstanced_Func drawArraysInstanced;
  late TglDrawElementsInstanced_Func drawElementsInstanced;
  late TglTexBuffer_Func texBuffer;
  late TglPrimitiveRestartIndex_Func primitiveRestartIndex;
  late TglCopyBufferSubData_Func copyBufferSubData;
  late TglGetUniformIndices_Func getUniformIndices;
  late TglGetActiveUniformsiv_Func getActiveUniformsiv;
  late TglGetActiveUniformName_Func getActiveUniformName;
  late TglGetUniformBlockIndex_Func getUniformBlockIndex;
  late TglGetActiveUniformBlockiv_Func getActiveUniformBlockiv;
  late TglGetActiveUniformBlockName_Func getActiveUniformBlockName;
  late TglUniformBlockBinding_Func uniformBlockBinding;
  late TglDrawElementsBaseVertex_Func drawElementsBaseVertex;
  late TglDrawRangeElementsBaseVertex_Func drawRangeElementsBaseVertex;
  late TglDrawElementsInstancedBaseVertex_Func drawElementsInstancedBaseVertex;
  late TglMultiDrawElementsBaseVertex_Func multiDrawElementsBaseVertex;
  late TglProvokingVertex_Func provokingVertex;
  late TglFenceSync_Func fenceSync;
  late TglIsSync_Func isSync;
  late TglDeleteSync_Func deleteSync;
  late TglClientWaitSync_Func clientWaitSync;
  late TglWaitSync_Func waitSync;
  late TglGetInteger64v_Func getInteger64v;
  late TglGetSynciv_Func getSynciv;
  late TglGetInteger64i_v_Func getInteger64i_v;
  late TglGetBufferParameteri64v_Func getBufferParameteri64v;
  late TglFramebufferTexture_Func framebufferTexture;
  late TglTexImage2DMultisample_Func texImage2DMultisample;
  late TglTexImage3DMultisample_Func texImage3DMultisample;
  late TglGetMultisamplefv_Func getMultisamplefv;
  late TglSampleMaski_Func sampleMaski;
  late TglBindFragDataLocationIndexed_Func bindFragDataLocationIndexed;
  late TglGetFragDataIndex_Func getFragDataIndex;
  late TglGenSamplers_Func genSamplers;
  late TglDeleteSamplers_Func deleteSamplers;
  late TglIsSampler_Func isSampler;
  late TglBindSampler_Func bindSampler;
  late TglSamplerParameteri_Func samplerParameteri;
  late TglSamplerParameteriv_Func samplerParameteriv;
  late TglSamplerParameterf_Func samplerParameterf;
  late TglSamplerParameterfv_Func samplerParameterfv;
  late TglSamplerParameterIiv_Func samplerParameterIiv;
  late TglSamplerParameterIuiv_Func samplerParameterIuiv;
  late TglGetSamplerParameteriv_Func getSamplerParameteriv;
  late TglGetSamplerParameterIiv_Func getSamplerParameterIiv;
  late TglGetSamplerParameterfv_Func getSamplerParameterfv;
  late TglGetSamplerParameterIuiv_Func getSamplerParameterIuiv;
  late TglQueryCounter_Func queryCounter;
  late TglGetQueryObjecti64v_Func getQueryObjecti64v;
  late TglGetQueryObjectui64v_Func getQueryObjectui64v;
  late TglVertexAttribDivisor_Func vertexAttribDivisor;
  late TglVertexAttribP1ui_Func vertexAttribP1ui;
  late TglVertexAttribP1uiv_Func vertexAttribP1uiv;
  late TglVertexAttribP2ui_Func vertexAttribP2ui;
  late TglVertexAttribP2uiv_Func vertexAttribP2uiv;
  late TglVertexAttribP3ui_Func vertexAttribP3ui;
  late TglVertexAttribP3uiv_Func vertexAttribP3uiv;
  late TglVertexAttribP4ui_Func vertexAttribP4ui;
  late TglVertexAttribP4uiv_Func vertexAttribP4uiv;
  late TglVertexP2ui_Func vertexP2ui;
  late TglVertexP2uiv_Func vertexP2uiv;
  late TglVertexP3ui_Func vertexP3ui;
  late TglVertexP3uiv_Func vertexP3uiv;
  late TglVertexP4ui_Func vertexP4ui;
  late TglVertexP4uiv_Func vertexP4uiv;
  late TglTexCoordP1ui_Func texCoordP1ui;
  late TglTexCoordP1uiv_Func texCoordP1uiv;
  late TglTexCoordP2ui_Func texCoordP2ui;
  late TglTexCoordP2uiv_Func texCoordP2uiv;
  late TglTexCoordP3ui_Func texCoordP3ui;
  late TglTexCoordP3uiv_Func texCoordP3uiv;
  late TglTexCoordP4ui_Func texCoordP4ui;
  late TglTexCoordP4uiv_Func texCoordP4uiv;
  late TglMultiTexCoordP1ui_Func multiTexCoordP1ui;
  late TglMultiTexCoordP1uiv_Func multiTexCoordP1uiv;
  late TglMultiTexCoordP2ui_Func multiTexCoordP2ui;
  late TglMultiTexCoordP2uiv_Func multiTexCoordP2uiv;
  late TglMultiTexCoordP3ui_Func multiTexCoordP3ui;
  late TglMultiTexCoordP3uiv_Func multiTexCoordP3uiv;
  late TglMultiTexCoordP4ui_Func multiTexCoordP4ui;
  late TglMultiTexCoordP4uiv_Func multiTexCoordP4uiv;
  late TglNormalP3ui_Func normalP3ui;
  late TglNormalP3uiv_Func normalP3uiv;
  late TglColorP3ui_Func colorP3ui;
  late TglColorP3uiv_Func colorP3uiv;
  late TglColorP4ui_Func colorP4ui;
  late TglColorP4uiv_Func colorP4uiv;
  late TglSecondaryColorP3ui_Func secondaryColorP3ui;
  late TglSecondaryColorP3uiv_Func secondaryColorP3uiv;
  late TglMinSampleShading_Func minSampleShading;
  late TglBlendEquationi_Func blendEquationi;
  late TglBlendEquationSeparatei_Func blendEquationSeparatei;
  late TglBlendFunci_Func blendFunci;
  late TglBlendFuncSeparatei_Func blendFuncSeparatei;
  late TglDrawArraysIndirect_Func drawArraysIndirect;
  late TglDrawElementsIndirect_Func drawElementsIndirect;
  late TglUniform1d_Func uniform1d;
  late TglUniform2d_Func uniform2d;
  late TglUniform3d_Func uniform3d;
  late TglUniform4d_Func uniform4d;
  late TglUniform1dv_Func uniform1dv;
  late TglUniform2dv_Func uniform2dv;
  late TglUniform3dv_Func uniform3dv;
  late TglUniform4dv_Func uniform4dv;
  late TglUniformMatrix2dv_Func uniformMatrix2dv;
  late TglUniformMatrix3dv_Func uniformMatrix3dv;
  late TglUniformMatrix4dv_Func uniformMatrix4dv;
  late TglUniformMatrix2x3dv_Func uniformMatrix2x3dv;
  late TglUniformMatrix2x4dv_Func uniformMatrix2x4dv;
  late TglUniformMatrix3x2dv_Func uniformMatrix3x2dv;
  late TglUniformMatrix3x4dv_Func uniformMatrix3x4dv;
  late TglUniformMatrix4x2dv_Func uniformMatrix4x2dv;
  late TglUniformMatrix4x3dv_Func uniformMatrix4x3dv;
  late TglGetUniformdv_Func getUniformdv;
  late TglGetSubroutineUniformLocation_Func getSubroutineUniformLocation;
  late TglGetSubroutineIndex_Func getSubroutineIndex;
  late TglGetActiveSubroutineUniformiv_Func getActiveSubroutineUniformiv;
  late TglGetActiveSubroutineUniformName_Func getActiveSubroutineUniformName;
  late TglGetActiveSubroutineName_Func getActiveSubroutineName;
  late TglUniformSubroutinesuiv_Func uniformSubroutinesuiv;
  late TglGetUniformSubroutineuiv_Func getUniformSubroutineuiv;
  late TglGetProgramStageiv_Func getProgramStageiv;
  late TglPatchParameteri_Func patchParameteri;
  late TglPatchParameterfv_Func patchParameterfv;
  late TglBindTransformFeedback_Func bindTransformFeedback;
  late TglDeleteTransformFeedbacks_Func deleteTransformFeedbacks;
  late TglGenTransformFeedbacks_Func genTransformFeedbacks;
  late TglIsTransformFeedback_Func isTransformFeedback;
  late TglPauseTransformFeedback_Func pauseTransformFeedback;
  late TglResumeTransformFeedback_Func resumeTransformFeedback;
  late TglDrawTransformFeedback_Func drawTransformFeedback;
  late TglDrawTransformFeedbackStream_Func drawTransformFeedbackStream;
  late TglBeginQueryIndexed_Func beginQueryIndexed;
  late TglEndQueryIndexed_Func endQueryIndexed;
  late TglGetQueryIndexediv_Func getQueryIndexediv;
  late TglReleaseShaderCompiler_Func releaseShaderCompiler;
  late TglShaderBinary_Func shaderBinary;
  late TglGetShaderPrecisionFormat_Func getShaderPrecisionFormat;
  late TglDepthRangef_Func depthRangef;
  late TglClearDepthf_Func clearDepthf;
  late TglGetProgramBinary_Func getProgramBinary;
  late TglProgramBinary_Func programBinary;
  late TglProgramParameteri_Func programParameteri;
  late TglUseProgramStages_Func useProgramStages;
  late TglActiveShaderProgram_Func activeShaderProgram;
  late TglCreateShaderProgramv_Func createShaderProgramv;
  late TglBindProgramPipeline_Func bindProgramPipeline;
  late TglDeleteProgramPipelines_Func deleteProgramPipelines;
  late TglGenProgramPipelines_Func genProgramPipelines;
  late TglIsProgramPipeline_Func isProgramPipeline;
  late TglGetProgramPipelineiv_Func getProgramPipelineiv;
  late TglProgramUniform1i_Func programUniform1i;
  late TglProgramUniform1iv_Func programUniform1iv;
  late TglProgramUniform1f_Func programUniform1f;
  late TglProgramUniform1fv_Func programUniform1fv;
  late TglProgramUniform1d_Func programUniform1d;
  late TglProgramUniform1dv_Func programUniform1dv;
  late TglProgramUniform1ui_Func programUniform1ui;
  late TglProgramUniform1uiv_Func programUniform1uiv;
  late TglProgramUniform2i_Func programUniform2i;
  late TglProgramUniform2iv_Func programUniform2iv;
  late TglProgramUniform2f_Func programUniform2f;
  late TglProgramUniform2fv_Func programUniform2fv;
  late TglProgramUniform2d_Func programUniform2d;
  late TglProgramUniform2dv_Func programUniform2dv;
  late TglProgramUniform2ui_Func programUniform2ui;
  late TglProgramUniform2uiv_Func programUniform2uiv;
  late TglProgramUniform3i_Func programUniform3i;
  late TglProgramUniform3iv_Func programUniform3iv;
  late TglProgramUniform3f_Func programUniform3f;
  late TglProgramUniform3fv_Func programUniform3fv;
  late TglProgramUniform3d_Func programUniform3d;
  late TglProgramUniform3dv_Func programUniform3dv;
  late TglProgramUniform3ui_Func programUniform3ui;
  late TglProgramUniform3uiv_Func programUniform3uiv;
  late TglProgramUniform4i_Func programUniform4i;
  late TglProgramUniform4iv_Func programUniform4iv;
  late TglProgramUniform4f_Func programUniform4f;
  late TglProgramUniform4fv_Func programUniform4fv;
  late TglProgramUniform4d_Func programUniform4d;
  late TglProgramUniform4dv_Func programUniform4dv;
  late TglProgramUniform4ui_Func programUniform4ui;
  late TglProgramUniform4uiv_Func programUniform4uiv;
  late TglProgramUniformMatrix2fv_Func programUniformMatrix2fv;
  late TglProgramUniformMatrix3fv_Func programUniformMatrix3fv;
  late TglProgramUniformMatrix4fv_Func programUniformMatrix4fv;
  late TglProgramUniformMatrix2dv_Func programUniformMatrix2dv;
  late TglProgramUniformMatrix3dv_Func programUniformMatrix3dv;
  late TglProgramUniformMatrix4dv_Func programUniformMatrix4dv;
  late TglProgramUniformMatrix2x3fv_Func programUniformMatrix2x3fv;
  late TglProgramUniformMatrix3x2fv_Func programUniformMatrix3x2fv;
  late TglProgramUniformMatrix2x4fv_Func programUniformMatrix2x4fv;
  late TglProgramUniformMatrix4x2fv_Func programUniformMatrix4x2fv;
  late TglProgramUniformMatrix3x4fv_Func programUniformMatrix3x4fv;
  late TglProgramUniformMatrix4x3fv_Func programUniformMatrix4x3fv;
  late TglProgramUniformMatrix2x3dv_Func programUniformMatrix2x3dv;
  late TglProgramUniformMatrix3x2dv_Func programUniformMatrix3x2dv;
  late TglProgramUniformMatrix2x4dv_Func programUniformMatrix2x4dv;
  late TglProgramUniformMatrix4x2dv_Func programUniformMatrix4x2dv;
  late TglProgramUniformMatrix3x4dv_Func programUniformMatrix3x4dv;
  late TglProgramUniformMatrix4x3dv_Func programUniformMatrix4x3dv;
  late TglValidateProgramPipeline_Func validateProgramPipeline;
  late TglGetProgramPipelineInfoLog_Func getProgramPipelineInfoLog;
  late TglVertexAttribL1d_Func vertexAttribL1d;
  late TglVertexAttribL2d_Func vertexAttribL2d;
  late TglVertexAttribL3d_Func vertexAttribL3d;
  late TglVertexAttribL4d_Func vertexAttribL4d;
  late TglVertexAttribL1dv_Func vertexAttribL1dv;
  late TglVertexAttribL2dv_Func vertexAttribL2dv;
  late TglVertexAttribL3dv_Func vertexAttribL3dv;
  late TglVertexAttribL4dv_Func vertexAttribL4dv;
  late TglVertexAttribLPointer_Func vertexAttribLPointer;
  late TglGetVertexAttribLdv_Func getVertexAttribLdv;
  late TglViewportArrayv_Func viewportArrayv;
  late TglViewportIndexedf_Func viewportIndexedf;
  late TglViewportIndexedfv_Func viewportIndexedfv;
  late TglScissorArrayv_Func scissorArrayv;
  late TglScissorIndexed_Func scissorIndexed;
  late TglScissorIndexedv_Func scissorIndexedv;
  late TglDepthRangeArrayv_Func depthRangeArrayv;
  late TglDepthRangeIndexed_Func depthRangeIndexed;
  late TglGetFloati_v_Func getFloati_v;
  late TglGetDoublei_v_Func getDoublei_v;
  late TglDrawArraysInstancedBaseInstance_Func drawArraysInstancedBaseInstance;
  late TglDrawElementsInstancedBaseInstance_Func
      drawElementsInstancedBaseInstance;
  late TglDrawElementsInstancedBaseVertexBaseInstance_Func
      drawElementsInstancedBaseVertexBaseInstance;
  late TglGetInternalformativ_Func getInternalformativ;
  late TglGetActiveAtomicCounterBufferiv_Func getActiveAtomicCounterBufferiv;
  late TglBindImageTexture_Func bindImageTexture;
  late TglMemoryBarrier_Func memoryBarrier;
  late TglTexStorage1D_Func texStorage1D;
  late TglTexStorage2D_Func texStorage2D;
  late TglTexStorage3D_Func texStorage3D;
  late TglDrawTransformFeedbackInstanced_Func drawTransformFeedbackInstanced;
  late TglDrawTransformFeedbackStreamInstanced_Func
      drawTransformFeedbackStreamInstanced;
  late TglClearBufferData_Func clearBufferData;
  late TglClearBufferSubData_Func clearBufferSubData;
  late TglDispatchCompute_Func dispatchCompute;
  late TglDispatchComputeIndirect_Func dispatchComputeIndirect;
  late TglCopyImageSubData_Func copyImageSubData;
  late TglFramebufferParameteri_Func framebufferParameteri;
  late TglGetFramebufferParameteriv_Func getFramebufferParameteriv;
  late TglGetInternalformati64v_Func getInternalformati64v;
  late TglInvalidateTexSubImage_Func invalidateTexSubImage;
  late TglInvalidateTexImage_Func invalidateTexImage;
  late TglInvalidateBufferSubData_Func invalidateBufferSubData;
  late TglInvalidateBufferData_Func invalidateBufferData;
  late TglInvalidateFramebuffer_Func invalidateFramebuffer;
  late TglInvalidateSubFramebuffer_Func invalidateSubFramebuffer;
  late TglMultiDrawArraysIndirect_Func multiDrawArraysIndirect;
  late TglMultiDrawElementsIndirect_Func multiDrawElementsIndirect;
  late TglGetProgramInterfaceiv_Func getProgramInterfaceiv;
  late TglGetProgramResourceIndex_Func getProgramResourceIndex;
  late TglGetProgramResourceName_Func getProgramResourceName;
  late TglGetProgramResourceiv_Func getProgramResourceiv;
  late TglGetProgramResourceLocation_Func getProgramResourceLocation;
  late TglGetProgramResourceLocationIndex_Func getProgramResourceLocationIndex;
  late TglShaderStorageBlockBinding_Func shaderStorageBlockBinding;
  late TglTexBufferRange_Func texBufferRange;
  late TglTexStorage2DMultisample_Func texStorage2DMultisample;
  late TglTexStorage3DMultisample_Func texStorage3DMultisample;
  late TglTextureView_Func textureView;
  late TglBindVertexBuffer_Func bindVertexBuffer;
  late TglVertexAttribFormat_Func vertexAttribFormat;
  late TglVertexAttribIFormat_Func vertexAttribIFormat;
  late TglVertexAttribLFormat_Func vertexAttribLFormat;
  late TglVertexAttribBinding_Func vertexAttribBinding;
  late TglVertexBindingDivisor_Func vertexBindingDivisor;
  late TglDebugMessageControl_Func debugMessageControl;
  late TglDebugMessageInsert_Func debugMessageInsert;
  late TglDebugMessageCallback_Func debugMessageCallback;
  late TglGetDebugMessageLog_Func getDebugMessageLog;
  late TglPushDebugGroup_Func pushDebugGroup;
  late TglPopDebugGroup_Func popDebugGroup;
  late TglObjectLabel_Func objectLabel;
  late TglGetObjectLabel_Func getObjectLabel;
  late TglObjectPtrLabel_Func objectPtrLabel;
  late TglGetObjectPtrLabel_Func getObjectPtrLabel;
  late TglBufferStorage_Func bufferStorage;
  late TglClearTexImage_Func clearTexImage;
  late TglClearTexSubImage_Func clearTexSubImage;
  late TglBindBuffersBase_Func bindBuffersBase;
  late TglBindBuffersRange_Func bindBuffersRange;
  late TglBindTextures_Func bindTextures;
  late TglBindSamplers_Func bindSamplers;
  late TglBindImageTextures_Func bindImageTextures;
  late TglBindVertexBuffers_Func bindVertexBuffers;
  late TglClipControl_Func clipControl;
  late TglCreateTransformFeedbacks_Func createTransformFeedbacks;
  late TglTransformFeedbackBufferBase_Func transformFeedbackBufferBase;
  late TglTransformFeedbackBufferRange_Func transformFeedbackBufferRange;
  late TglGetTransformFeedbackiv_Func getTransformFeedbackiv;
  late TglGetTransformFeedbacki_v_Func getTransformFeedbacki_v;
  late TglGetTransformFeedbacki64_v_Func getTransformFeedbacki64_v;
  late TglCreateBuffers_Func createBuffers;
  late TglNamedBufferStorage_Func namedBufferStorage;
  late TglNamedBufferData_Func namedBufferData;
  late TglNamedBufferSubData_Func namedBufferSubData;
  late TglCopyNamedBufferSubData_Func copyNamedBufferSubData;
  late TglClearNamedBufferData_Func clearNamedBufferData;
  late TglClearNamedBufferSubData_Func clearNamedBufferSubData;
  late TglMapNamedBuffer_Func mapNamedBuffer;
  late TglMapNamedBufferRange_Func mapNamedBufferRange;
  late TglUnmapNamedBuffer_Func unmapNamedBuffer;
  late TglFlushMappedNamedBufferRange_Func flushMappedNamedBufferRange;
  late TglGetNamedBufferParameteriv_Func getNamedBufferParameteriv;
  late TglGetNamedBufferParameteri64v_Func getNamedBufferParameteri64v;
  late TglGetNamedBufferPointerv_Func getNamedBufferPointerv;
  late TglGetNamedBufferSubData_Func getNamedBufferSubData;
  late TglCreateFramebuffers_Func createFramebuffers;
  late TglNamedFramebufferRenderbuffer_Func namedFramebufferRenderbuffer;
  late TglNamedFramebufferParameteri_Func namedFramebufferParameteri;
  late TglNamedFramebufferTexture_Func namedFramebufferTexture;
  late TglNamedFramebufferTextureLayer_Func namedFramebufferTextureLayer;
  late TglNamedFramebufferDrawBuffer_Func namedFramebufferDrawBuffer;
  late TglNamedFramebufferDrawBuffers_Func namedFramebufferDrawBuffers;
  late TglNamedFramebufferReadBuffer_Func namedFramebufferReadBuffer;
  late TglInvalidateNamedFramebufferData_Func invalidateNamedFramebufferData;
  late TglInvalidateNamedFramebufferSubData_Func
      invalidateNamedFramebufferSubData;
  late TglClearNamedFramebufferiv_Func clearNamedFramebufferiv;
  late TglClearNamedFramebufferuiv_Func clearNamedFramebufferuiv;
  late TglClearNamedFramebufferfv_Func clearNamedFramebufferfv;
  late TglClearNamedFramebufferfi_Func clearNamedFramebufferfi;
  late TglBlitNamedFramebuffer_Func blitNamedFramebuffer;
  late TglCheckNamedFramebufferStatus_Func checkNamedFramebufferStatus;
  late TglGetNamedFramebufferParameteriv_Func getNamedFramebufferParameteriv;
  late TglGetNamedFramebufferAttachmentParameteriv_Func
      getNamedFramebufferAttachmentParameteriv;
  late TglCreateRenderbuffers_Func createRenderbuffers;
  late TglNamedRenderbufferStorage_Func namedRenderbufferStorage;
  late TglNamedRenderbufferStorageMultisample_Func
      namedRenderbufferStorageMultisample;
  late TglGetNamedRenderbufferParameteriv_Func getNamedRenderbufferParameteriv;
  late TglCreateTextures_Func createTextures;
  late TglTextureBuffer_Func textureBuffer;
  late TglTextureBufferRange_Func textureBufferRange;
  late TglTextureStorage1D_Func textureStorage1D;
  late TglTextureStorage2D_Func textureStorage2D;
  late TglTextureStorage3D_Func textureStorage3D;
  late TglTextureStorage2DMultisample_Func textureStorage2DMultisample;
  late TglTextureStorage3DMultisample_Func textureStorage3DMultisample;
  late TglTextureSubImage1D_Func textureSubImage1D;
  late TglTextureSubImage2D_Func textureSubImage2D;
  late TglTextureSubImage3D_Func textureSubImage3D;
  late TglCompressedTextureSubImage1D_Func compressedTextureSubImage1D;
  late TglCompressedTextureSubImage2D_Func compressedTextureSubImage2D;
  late TglCompressedTextureSubImage3D_Func compressedTextureSubImage3D;
  late TglCopyTextureSubImage1D_Func copyTextureSubImage1D;
  late TglCopyTextureSubImage2D_Func copyTextureSubImage2D;
  late TglCopyTextureSubImage3D_Func copyTextureSubImage3D;
  late TglTextureParameterf_Func textureParameterf;
  late TglTextureParameterfv_Func textureParameterfv;
  late TglTextureParameteri_Func textureParameteri;
  late TglTextureParameterIiv_Func textureParameterIiv;
  late TglTextureParameterIuiv_Func textureParameterIuiv;
  late TglTextureParameteriv_Func textureParameteriv;
  late TglGenerateTextureMipmap_Func generateTextureMipmap;
  late TglBindTextureUnit_Func bindTextureUnit;
  late TglGetTextureImage_Func getTextureImage;
  late TglGetCompressedTextureImage_Func getCompressedTextureImage;
  late TglGetTextureLevelParameterfv_Func getTextureLevelParameterfv;
  late TglGetTextureLevelParameteriv_Func getTextureLevelParameteriv;
  late TglGetTextureParameterfv_Func getTextureParameterfv;
  late TglGetTextureParameterIiv_Func getTextureParameterIiv;
  late TglGetTextureParameterIuiv_Func getTextureParameterIuiv;
  late TglGetTextureParameteriv_Func getTextureParameteriv;
  late TglCreateVertexArrays_Func createVertexArrays;
  late TglDisableVertexArrayAttrib_Func disableVertexArrayAttrib;
  late TglEnableVertexArrayAttrib_Func enableVertexArrayAttrib;
  late TglVertexArrayElementBuffer_Func vertexArrayElementBuffer;
  late TglVertexArrayVertexBuffer_Func vertexArrayVertexBuffer;
  late TglVertexArrayVertexBuffers_Func vertexArrayVertexBuffers;
  late TglVertexArrayAttribBinding_Func vertexArrayAttribBinding;
  late TglVertexArrayAttribFormat_Func vertexArrayAttribFormat;
  late TglVertexArrayAttribIFormat_Func vertexArrayAttribIFormat;
  late TglVertexArrayAttribLFormat_Func vertexArrayAttribLFormat;
  late TglVertexArrayBindingDivisor_Func vertexArrayBindingDivisor;
  late TglGetVertexArrayiv_Func getVertexArrayiv;
  late TglGetVertexArrayIndexediv_Func getVertexArrayIndexediv;
  late TglGetVertexArrayIndexed64iv_Func getVertexArrayIndexed64iv;
  late TglCreateSamplers_Func createSamplers;
  late TglCreateProgramPipelines_Func createProgramPipelines;
  late TglCreateQueries_Func createQueries;
  late TglGetQueryBufferObjecti64v_Func getQueryBufferObjecti64v;
  late TglGetQueryBufferObjectiv_Func getQueryBufferObjectiv;
  late TglGetQueryBufferObjectui64v_Func getQueryBufferObjectui64v;
  late TglGetQueryBufferObjectuiv_Func getQueryBufferObjectuiv;
  late TglMemoryBarrierByRegion_Func memoryBarrierByRegion;
  late TglGetTextureSubImage_Func getTextureSubImage;
  late TglGetCompressedTextureSubImage_Func getCompressedTextureSubImage;
  late TglGetGraphicsResetStatus_Func getGraphicsResetStatus;
  late TglGetnCompressedTexImage_Func getnCompressedTexImage;
  late TglGetnTexImage_Func getnTexImage;
  late TglGetnUniformdv_Func getnUniformdv;
  late TglGetnUniformfv_Func getnUniformfv;
  late TglGetnUniformiv_Func getnUniformiv;
  late TglGetnUniformuiv_Func getnUniformuiv;
  late TglReadnPixels_Func readnPixels;
  late TglGetnMapdv_Func getnMapdv;
  late TglGetnMapfv_Func getnMapfv;
  late TglGetnMapiv_Func getnMapiv;
  late TglGetnPixelMapfv_Func getnPixelMapfv;
  late TglGetnPixelMapuiv_Func getnPixelMapuiv;
  late TglGetnPixelMapusv_Func getnPixelMapusv;
  late TglGetnPolygonStipple_Func getnPolygonStipple;
  late TglGetnColorTable_Func getnColorTable;
  late TglGetnConvolutionFilter_Func getnConvolutionFilter;
  late TglGetnSeparableFilter_Func getnSeparableFilter;
  late TglGetnHistogram_Func getnHistogram;
  late TglGetnMinmax_Func getnMinmax;
  late TglTextureBarrier_Func textureBarrier;
  late TglSpecializeShader_Func specializeShader;
  late TglMultiDrawArraysIndirectCount_Func multiDrawArraysIndirectCount;
  late TglMultiDrawElementsIndirectCount_Func multiDrawElementsIndirectCount;
  late TglPolygonOffsetClamp_Func polygonOffsetClamp;
}

// My VSCode is slow. :)
