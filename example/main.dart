import 'package:gl_dart/gl.dart';

void main() {
  try {
    // Loading OpenGL v3.3
    gl = Gl(version: GlVersion.GL_VERSION_3_3);
  } catch (e) {
    // oops! could not find or load opengl.
    print(e);
  }

  // ...
}
