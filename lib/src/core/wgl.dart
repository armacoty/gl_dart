import 'dart:ffi';
import 'package:ffi/ffi.dart';

typedef PROC = Pointer Function();

typedef TwglGetProcAddress_Native = Pointer<NativeFunction<PROC>> Function(
    Pointer<Utf8>);
typedef TwglGetProcAddress_Func = Pointer<NativeFunction<PROC>> Function(
    Pointer<Utf8>);
