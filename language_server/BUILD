# Part of the Carbon Language project, under the Apache License v2.0 with LLVM
# Exceptions. See /LICENSE for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

load("@rules_cc//cc:defs.bzl", "cc_binary")

package(default_visibility = [
    "//language_server:__subpackages__",
])

cc_binary(
    name = "language_server",
    srcs = [
        "language_server.cpp",
        "language_server.h",
        "main.cpp",
    ],
    # Some parameters are unused in clangd headers.
    copts = ["-Wno-unused-parameter"],
    deps = [
        "//common:error",
        "//toolchain/diagnostics:null_diagnostics",
        "//toolchain/lex:tokenized_buffer",
        "//toolchain/parse:node_kind",
        "//toolchain/parse:tree",
        "//toolchain/source:source_buffer",
        "@llvm-project//clang-tools-extra/clangd:clangd_library",
        "@llvm-project//llvm:Support",
    ],
)
