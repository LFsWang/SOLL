// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
// RUN: %soll --lang=Yul %s
object "feature" {
  code {
    function store(key, value) -> result {
      sstore(key, value)
    }

    let i := 0
    let j := 1
    sstore(i, j)
  }
  // Unreferenced data is not added to the assembled bytecode.
  data "str" "CodeGen is under implementation."
}
