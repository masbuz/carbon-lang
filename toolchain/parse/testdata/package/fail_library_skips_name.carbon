// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE

// CHECK:STDERR: fail_library_skips_name.carbon:[[@LINE+3]]:9: ERROR: Expected identifier after `package`.
// CHECK:STDERR: package library "Shapes" api;
// CHECK:STDERR:         ^
package library "Shapes" api;

// CHECK:STDOUT: - filename: fail_library_skips_name.carbon
// CHECK:STDOUT:   parse_tree: [
// CHECK:STDOUT:       {kind: 'PackageIntroducer', text: 'package'},
// CHECK:STDOUT:     {kind: 'PackageDirective', text: ';', has_error: yes, subtree_size: 2},
// CHECK:STDOUT:     {kind: 'FileEnd', text: ''},
// CHECK:STDOUT:   ]
