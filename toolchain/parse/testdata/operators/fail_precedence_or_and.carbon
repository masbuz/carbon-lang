// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE

fn F() {
  // CHECK:STDERR: fail_precedence_or_and.carbon:[[@LINE+3]]:10: ERROR: Parentheses are required to disambiguate operator precedence.
  // CHECK:STDERR:   a or b and c;
  // CHECK:STDERR:          ^
  a or b and c;
}

// CHECK:STDOUT: - filename: fail_precedence_or_and.carbon
// CHECK:STDOUT:   parse_tree: [
// CHECK:STDOUT:         {kind: 'FunctionIntroducer', text: 'fn'},
// CHECK:STDOUT:         {kind: 'Name', text: 'F'},
// CHECK:STDOUT:           {kind: 'ParameterListStart', text: '('},
// CHECK:STDOUT:         {kind: 'ParameterList', text: ')', subtree_size: 2},
// CHECK:STDOUT:       {kind: 'FunctionDefinitionStart', text: '{', subtree_size: 5},
// CHECK:STDOUT:                 {kind: 'NameExpression', text: 'a'},
// CHECK:STDOUT:               {kind: 'ShortCircuitOperand', text: 'or', subtree_size: 2},
// CHECK:STDOUT:               {kind: 'NameExpression', text: 'b'},
// CHECK:STDOUT:             {kind: 'InfixOperator', text: 'or', subtree_size: 4},
// CHECK:STDOUT:           {kind: 'ShortCircuitOperand', text: 'and', has_error: yes, subtree_size: 5},
// CHECK:STDOUT:           {kind: 'NameExpression', text: 'c'},
// CHECK:STDOUT:         {kind: 'InfixOperator', text: 'and', has_error: yes, subtree_size: 7},
// CHECK:STDOUT:       {kind: 'ExpressionStatement', text: ';', subtree_size: 8},
// CHECK:STDOUT:     {kind: 'FunctionDefinition', text: '}', subtree_size: 14},
// CHECK:STDOUT:     {kind: 'FileEnd', text: ''},
// CHECK:STDOUT:   ]
