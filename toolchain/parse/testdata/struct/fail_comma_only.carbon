// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE

// CHECK:STDERR: fail_comma_only.carbon:[[@LINE+3]]:9: ERROR: Expected `.field: field_type` or `.field = value`.
// CHECK:STDERR: var x: {,} = {};
// CHECK:STDERR:         ^
var x: {,} = {};

// CHECK:STDOUT: - filename: fail_comma_only.carbon
// CHECK:STDOUT:   parse_tree: [
// CHECK:STDOUT:       {kind: 'VariableIntroducer', text: 'var'},
// CHECK:STDOUT:         {kind: 'Name', text: 'x'},
// CHECK:STDOUT:           {kind: 'StructLiteralOrStructTypeLiteralStart', text: '{'},
// CHECK:STDOUT:           {kind: 'StructFieldUnknown', text: ',', has_error: yes},
// CHECK:STDOUT:           {kind: 'StructComma', text: ','},
// CHECK:STDOUT:         {kind: 'StructLiteral', text: '}', subtree_size: 4},
// CHECK:STDOUT:       {kind: 'PatternBinding', text: ':', subtree_size: 6},
// CHECK:STDOUT:       {kind: 'VariableInitializer', text: '='},
// CHECK:STDOUT:         {kind: 'StructLiteralOrStructTypeLiteralStart', text: '{'},
// CHECK:STDOUT:       {kind: 'StructLiteral', text: '}', subtree_size: 2},
// CHECK:STDOUT:     {kind: 'VariableDeclaration', text: ';', subtree_size: 11},
// CHECK:STDOUT:     {kind: 'FileEnd', text: ''},
// CHECK:STDOUT:   ]
