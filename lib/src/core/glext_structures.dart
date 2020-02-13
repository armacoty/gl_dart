import 'dart:ffi';

// C : typedef struct __GLsync *GLsync;
// use Pointer<GLsync> instead of GLsync
class GLsync extends Struct {}
