// RUN: %soll -lang=Yul %s
// REQUIRES: YulFull
{
  codecopy(0x100, 0, codesize())
  sstore(0, mload(0x100))
}
// ----
// Trace:
// Memory dump:
//     20: 636f6465636f6465636f6465636f6465636f6465000000000000000000000000
//    140: 636f6465636f6465636f6465636f6465636f6465000000000000000000000000
// Storage dump:
//   0000000000000000000000000000000000000000000000000000000000000000: 636f6465636f6465636f6465636f6465636f6465000000000000000000000000