// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE

fn Main() -> i32 {
// CHECK:STDERR: fail_missing_return.carbon:[[@LINE+3]]:1: ERROR: Missing `return` at end of function with declared return type.
// CHECK:STDERR: }
// CHECK:STDERR: ^
}

// CHECK:STDOUT: file "fail_missing_return.carbon" {
// CHECK:STDOUT:   %.loc7 = fn_decl @Main
// CHECK:STDOUT: }
// CHECK:STDOUT:
// CHECK:STDOUT: fn @Main() -> i32 {
// CHECK:STDOUT: !entry:
// CHECK:STDOUT: }
