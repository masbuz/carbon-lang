// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE

var x: (i32, i32) = (4, 102);
var y: (i32, i32) = x;

// CHECK:STDOUT: file "two_elements.carbon" {
// CHECK:STDOUT:   %.loc7_17.1: type = tuple_type (type, type)
// CHECK:STDOUT:   %.loc7_17.2: (type, type) = tuple_literal (i32, i32)
// CHECK:STDOUT:   %.loc7_17.3: type = tuple_type (i32, i32)
// CHECK:STDOUT:   %x: ref (i32, i32) = var "x"
// CHECK:STDOUT:   %.loc7_22: i32 = int_literal 4
// CHECK:STDOUT:   %.loc7_25: i32 = int_literal 102
// CHECK:STDOUT:   %.loc7_28.1: (i32, i32) = tuple_literal (%.loc7_22, %.loc7_25)
// CHECK:STDOUT:   %.loc7_28.2: ref i32 = tuple_access %x, member0
// CHECK:STDOUT:   %.loc7_28.3: init i32 = initialize_from %.loc7_22 to %.loc7_28.2
// CHECK:STDOUT:   %.loc7_28.4: ref i32 = tuple_access %x, member1
// CHECK:STDOUT:   %.loc7_28.5: init i32 = initialize_from %.loc7_25 to %.loc7_28.4
// CHECK:STDOUT:   %.loc7_28.6: init (i32, i32) = tuple_init %.loc7_28.1, (%.loc7_28.3, %.loc7_28.5)
// CHECK:STDOUT:   assign %x, %.loc7_28.6
// CHECK:STDOUT:   %.loc8: (type, type) = tuple_literal (i32, i32)
// CHECK:STDOUT:   %y: ref (i32, i32) = var "y"
// CHECK:STDOUT:   %.loc7_5.1: ref i32 = tuple_access %x, member0
// CHECK:STDOUT:   %.loc7_5.2: i32 = bind_value %.loc7_5.1
// CHECK:STDOUT:   %.loc7_5.3: ref i32 = tuple_access %y, member0
// CHECK:STDOUT:   %.loc7_5.4: init i32 = initialize_from %.loc7_5.2 to %.loc7_5.3
// CHECK:STDOUT:   %.loc7_5.5: ref i32 = tuple_access %x, member1
// CHECK:STDOUT:   %.loc7_5.6: i32 = bind_value %.loc7_5.5
// CHECK:STDOUT:   %.loc7_5.7: ref i32 = tuple_access %y, member1
// CHECK:STDOUT:   %.loc7_5.8: init i32 = initialize_from %.loc7_5.6 to %.loc7_5.7
// CHECK:STDOUT:   %.loc7_5.9: init (i32, i32) = tuple_init %x, (%.loc7_5.4, %.loc7_5.8)
// CHECK:STDOUT:   assign %y, %.loc7_5.9
// CHECK:STDOUT: }
