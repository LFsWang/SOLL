// RUN: %soll -lang=Yul %s
// REQUIRES: declareMulti
// REQUIRES: mstore
{
    let x, y
    if x { mstore(0, 0) }
    if y { mstore(0, 0) }
}
// ====
// step: structuralSimplifier
// ----
// { let x, y }
