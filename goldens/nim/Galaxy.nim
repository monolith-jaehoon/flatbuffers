#[ Galaxy
  Automatically generated by the FlatBuffers compiler, do not modify.
  Or modify. I'm a message, not a cop.

  flatc version: 23.5.26

  Declared by  : //basic.fbs
  Rooting type : Universe (//basic.fbs)
]#

import flatbuffers

type Galaxy* = object of FlatObj
func numStars*(self: Galaxy): int64 =
  let o = self.tab.Offset(4)
  if o != 0:
    return Get[int64](self.tab, self.tab.Pos + o)
  return 0
func `numStars=`*(self: var Galaxy, n: int64): bool =
  return self.tab.MutateSlot(4, n)
proc GalaxyStart*(builder: var Builder) =
  builder.StartObject(1)
proc GalaxyAddnumStars*(builder: var Builder, numStars: int64) =
  builder.PrependSlot(0, numStars, default(int64))
proc GalaxyEnd*(builder: var Builder): uoffset =
  return builder.EndObject()
