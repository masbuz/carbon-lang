// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE

fn Run() -> i32 {
  {.b = {.a: i32}};
  return 0;
}

// CHECK:STDOUT: ; ModuleID = 'nested_struct.carbon'
// CHECK:STDOUT: source_filename = "nested_struct.carbon"
// CHECK:STDOUT:
// CHECK:STDOUT: define i32 @Run() {
// CHECK:STDOUT:   ret i32 0
// CHECK:STDOUT: }
