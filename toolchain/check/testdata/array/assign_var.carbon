// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE

var a: (i32, i32, i32) = (1, 2, 3);
var b: [i32; 3] = a;

// CHECK:STDOUT: file "assign_var.carbon" {
// CHECK:STDOUT:   %.loc7_22.1: type = tuple_type (type, type, type)
// CHECK:STDOUT:   %.loc7_22.2: (type, type, type) = tuple_literal (i32, i32, i32)
// CHECK:STDOUT:   %.loc7_22.3: type = tuple_type (i32, i32, i32)
// CHECK:STDOUT:   %a: ref (i32, i32, i32) = var "a"
// CHECK:STDOUT:   %.loc7_27: i32 = int_literal 1
// CHECK:STDOUT:   %.loc7_30: i32 = int_literal 2
// CHECK:STDOUT:   %.loc7_33: i32 = int_literal 3
// CHECK:STDOUT:   %.loc7_34.1: (i32, i32, i32) = tuple_literal (%.loc7_27, %.loc7_30, %.loc7_33)
// CHECK:STDOUT:   %.loc7_34.2: ref i32 = tuple_access %a, member0
// CHECK:STDOUT:   %.loc7_34.3: init i32 = initialize_from %.loc7_27 to %.loc7_34.2
// CHECK:STDOUT:   %.loc7_34.4: ref i32 = tuple_access %a, member1
// CHECK:STDOUT:   %.loc7_34.5: init i32 = initialize_from %.loc7_30 to %.loc7_34.4
// CHECK:STDOUT:   %.loc7_34.6: ref i32 = tuple_access %a, member2
// CHECK:STDOUT:   %.loc7_34.7: init i32 = initialize_from %.loc7_33 to %.loc7_34.6
// CHECK:STDOUT:   %.loc7_34.8: init (i32, i32, i32) = tuple_init %.loc7_34.1, (%.loc7_34.3, %.loc7_34.5, %.loc7_34.7)
// CHECK:STDOUT:   assign %a, %.loc7_34.8
// CHECK:STDOUT:   %.loc8_14: i32 = int_literal 3
// CHECK:STDOUT:   %.loc8_15: type = array_type %.loc8_14, i32
// CHECK:STDOUT:   %b: ref [i32; 3] = var "b"
// CHECK:STDOUT:   %.loc7_5.1: ref i32 = tuple_access %a, member0
// CHECK:STDOUT:   %.loc7_5.2: i32 = bind_value %.loc7_5.1
// CHECK:STDOUT:   %.loc7_5.3: i32 = int_literal 0
// CHECK:STDOUT:   %.loc7_5.4: ref i32 = array_index %b, %.loc7_5.3
// CHECK:STDOUT:   %.loc7_5.5: init i32 = initialize_from %.loc7_5.2 to %.loc7_5.4
// CHECK:STDOUT:   %.loc7_5.6: ref i32 = tuple_access %a, member1
// CHECK:STDOUT:   %.loc7_5.7: i32 = bind_value %.loc7_5.6
// CHECK:STDOUT:   %.loc7_5.8: i32 = int_literal 1
// CHECK:STDOUT:   %.loc7_5.9: ref i32 = array_index %b, %.loc7_5.8
// CHECK:STDOUT:   %.loc7_5.10: init i32 = initialize_from %.loc7_5.7 to %.loc7_5.9
// CHECK:STDOUT:   %.loc7_5.11: ref i32 = tuple_access %a, member2
// CHECK:STDOUT:   %.loc7_5.12: i32 = bind_value %.loc7_5.11
// CHECK:STDOUT:   %.loc7_5.13: i32 = int_literal 2
// CHECK:STDOUT:   %.loc7_5.14: ref i32 = array_index %b, %.loc7_5.13
// CHECK:STDOUT:   %.loc7_5.15: init i32 = initialize_from %.loc7_5.12 to %.loc7_5.14
// CHECK:STDOUT:   %.loc7_5.16: init [i32; 3] = array_init %a, (%.loc7_5.5, %.loc7_5.10, %.loc7_5.15) to %b
// CHECK:STDOUT:   assign %b, %.loc7_5.16
// CHECK:STDOUT: }
