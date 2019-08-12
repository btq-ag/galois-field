module BinaryFieldTests where

import Protolude

import BinaryField
import Test.Tasty

import GaloisFieldTests

type F2A = BinaryField 0x20000000000000000000000000201
type F2B = BinaryField 0x80000000000000000000000000000010d
type F2C = BinaryField 0x800000000000000000000000000000000000000c9
type F2D = BinaryField 0x2000000000000000000000000000000000000000000008001
type F2E = BinaryField 0x20000000000000000000000000000000000000004000000000000000001
type F2F = BinaryField 0x800000000000000000004000000000000000000000000000000000000001
type F2G = BinaryField 0x800000000000000000000000000000000000000000000000000000000000000000010a1
type F2H = BinaryField 0x2000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000000001
type F2I = BinaryField 0x80000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000425

testBinaryField :: TestTree
testBinaryField = testGroup "Binary fields"
  [ test "F2A" (witness :: F2A)
  , test "F2B" (witness :: F2B)
  , test "F2C" (witness :: F2C)
  , test "F2D" (witness :: F2D)
  , test "F2E" (witness :: F2E)
  , test "F2F" (witness :: F2F)
  , test "F2G" (witness :: F2G)
  , test "F2H" (witness :: F2H)
  , test "F2I" (witness :: F2I)
  ]