// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE

fn F() {
  while (a) {
    if (b) {
      break;
    }
    if (c) {
      continue;
    }
  }
}

// CHECK:STDOUT: - filename: basic.carbon
// CHECK:STDOUT:   parse_tree: [
// CHECK:STDOUT:         {kind: 'FunctionIntroducer', text: 'fn'},
// CHECK:STDOUT:         {kind: 'Name', text: 'F'},
// CHECK:STDOUT:           {kind: 'ParameterListStart', text: '('},
// CHECK:STDOUT:         {kind: 'ParameterList', text: ')', subtree_size: 2},
// CHECK:STDOUT:       {kind: 'FunctionDefinitionStart', text: '{', subtree_size: 5},
// CHECK:STDOUT:           {kind: 'WhileConditionStart', text: '('},
// CHECK:STDOUT:           {kind: 'NameExpression', text: 'a'},
// CHECK:STDOUT:         {kind: 'WhileCondition', text: ')', subtree_size: 3},
// CHECK:STDOUT:           {kind: 'CodeBlockStart', text: '{'},
// CHECK:STDOUT:               {kind: 'IfConditionStart', text: '('},
// CHECK:STDOUT:               {kind: 'NameExpression', text: 'b'},
// CHECK:STDOUT:             {kind: 'IfCondition', text: ')', subtree_size: 3},
// CHECK:STDOUT:               {kind: 'CodeBlockStart', text: '{'},
// CHECK:STDOUT:                 {kind: 'BreakStatementStart', text: 'break'},
// CHECK:STDOUT:               {kind: 'BreakStatement', text: ';', subtree_size: 2},
// CHECK:STDOUT:             {kind: 'CodeBlock', text: '}', subtree_size: 4},
// CHECK:STDOUT:           {kind: 'IfStatement', text: 'if', subtree_size: 8},
// CHECK:STDOUT:               {kind: 'IfConditionStart', text: '('},
// CHECK:STDOUT:               {kind: 'NameExpression', text: 'c'},
// CHECK:STDOUT:             {kind: 'IfCondition', text: ')', subtree_size: 3},
// CHECK:STDOUT:               {kind: 'CodeBlockStart', text: '{'},
// CHECK:STDOUT:                 {kind: 'ContinueStatementStart', text: 'continue'},
// CHECK:STDOUT:               {kind: 'ContinueStatement', text: ';', subtree_size: 2},
// CHECK:STDOUT:             {kind: 'CodeBlock', text: '}', subtree_size: 4},
// CHECK:STDOUT:           {kind: 'IfStatement', text: 'if', subtree_size: 8},
// CHECK:STDOUT:         {kind: 'CodeBlock', text: '}', subtree_size: 18},
// CHECK:STDOUT:       {kind: 'WhileStatement', text: 'while', subtree_size: 22},
// CHECK:STDOUT:     {kind: 'FunctionDefinition', text: '}', subtree_size: 28},
// CHECK:STDOUT:     {kind: 'FileEnd', text: ''},
// CHECK:STDOUT:   ]
