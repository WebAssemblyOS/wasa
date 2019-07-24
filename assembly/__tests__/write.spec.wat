(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$vdii (func (param f64 i32 i32)))
 (type $FUNCSIG$vdiii (func (param f64 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "__aspect" "getStackTrace" (func $node_modules/as-pect/assembly/internal/report/reportActual/getStackTrace (result i32)))
 (import "__aspect" "reportInvalidExpectCall" (func $node_modules/as-pect/assembly/internal/report/reportExpected/reportInvalidExpectCall))
 (import "__aspect" "getStackTrace" (func $node_modules/as-pect/assembly/internal/report/reportExpected/getStackTrace (result i32)))
 (import "__aspect" "reportTest" (func $node_modules/as-pect/assembly/internal/Test/reportTest (param i32 i32)))
 (import "__aspect" "reportDescribe" (func $node_modules/as-pect/assembly/internal/Describe/reportDescribe (param i32)))
 (import "__aspect" "reportEndDescribe" (func $node_modules/as-pect/assembly/internal/Describe/reportEndDescribe))
 (import "__aspect" "reportActualArray" (func $node_modules/as-pect/assembly/internal/report/reportActual/reportActualArray (param i32 i32)))
 (import "__aspect" "reportActualValue" (func $node_modules/as-pect/assembly/internal/report/reportActual/reportActualFloat (param f64 i32 i32)))
 (import "__aspect" "reportActualValue" (func $node_modules/as-pect/assembly/internal/report/reportActual/reportActualInteger (param i32 i32 i32)))
 (import "__aspect" "reportActualNull" (func $node_modules/as-pect/assembly/internal/report/reportActual/reportActualNull (param i32)))
 (import "__aspect" "reportActualReference" (func $node_modules/as-pect/assembly/internal/report/reportActual/reportActualReferenceExternal (param i32 i32 i32)))
 (import "__aspect" "reportActualString" (func $node_modules/as-pect/assembly/internal/report/reportActual/reportActualString (param i32 i32)))
 (import "__aspect" "reportActualLong" (func $node_modules/as-pect/assembly/internal/report/reportActual/reportActualLong (param i32 i32 i32)))
 (import "__aspect" "reportExpectedArray" (func $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedArray (param i32 i32 i32)))
 (import "__aspect" "reportExpectedValue" (func $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedFloat (param f64 i32 i32 i32)))
 (import "__aspect" "reportExpectedValue" (func $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedInteger (param i32 i32 i32 i32)))
 (import "__aspect" "reportExpectedNull" (func $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedNull (param i32 i32)))
 (import "__aspect" "reportExpectedReference" (func $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedReferenceExternal (param i32 i32 i32 i32)))
 (import "__aspect" "reportExpectedString" (func $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedString (param i32 i32 i32)))
 (import "__aspect" "reportExpectedFalsy" (func $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedFalsy (param i32 i32)))
 (import "__aspect" "reportExpectedFinite" (func $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedFinite (param i32 i32)))
 (import "__aspect" "reportExpectedTruthy" (func $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedTruthy (param i32 i32)))
 (import "__aspect" "reportExpectedLong" (func $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedLong (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 56) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 112) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00f\00d\00_\00w\00r\00i\00t\00e\00")
 (data (i32.const 144) "*\00\00\00\01\00\00\00\01\00\00\00*\00\00\00s\00h\00o\00u\00l\00d\00 \00w\00r\00i\00t\00e\00 \00a\00 \00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 208) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00H\00e\00l\00l\00o\00")
 (data (i32.const 240) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 288) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00")
 (data (i32.const 344) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s\00")
 (data (i32.const 384) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 432) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00W\00r\00i\00t\00i\00n\00g\00 \00f\00a\00i\00l\00e\00d\00")
 (data (i32.const 480) "2\00\00\00\01\00\00\00\01\00\00\002\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00f\00s\00/\00d\00e\00s\00c\00r\00i\00p\00t\00o\00r\00.\00t\00s\00")
 (data (i32.const 552) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00 \00")
 (data (i32.const 576) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\000\00")
 (data (i32.const 600) "\90\01\00\00\01\00\00\00\00\00\00\00\90\01\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data (i32.const 1016) "\10\00\00\00\01\00\00\00\07\00\00\00\10\00\00\00h\02\00\00h\02\00\00\90\01\00\00d\00\00\00")
 (data (i32.const 1048) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00n\00u\00l\00l\00")
 (data (i32.const 1072) "\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 1088) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00 \00 \00 \00!\00")
 (data (i32.const 1112) "v\00\00\00\01\00\00\00\01\00\00\00v\00\00\00n\00o\00d\00e\00_\00m\00o\00d\00u\00l\00e\00s\00/\00a\00s\00-\00p\00e\00c\00t\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00c\00o\00m\00p\00a\00r\00i\00s\00o\00n\00/\00a\00s\00s\00e\00r\00t\00.\00t\00s\00")
 (data (i32.const 1248) "\0b\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\003\00\00\00\02\00\00\00\98 \01\00\00\00\00\00\10\00\00\00\00\00\00\00\93\00\00\00\02\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93\00\00\00\02\00\00\00")
 (table $0 4 funcref)
 (elem (i32.const 0) $null $start:assembly/__tests__/write.spec~anonymous|0~anonymous|0 $start:assembly/__tests__/write.spec~anonymous|0 $start:node_modules/as-pect/assembly/internal/noOp~anonymous|0)
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $assembly/__tests__/include/fs (mut i32) (i32.const 0))
 (global $assembly/utils/StringUtils.NUL i32 (i32.const 0))
 (global $assembly/utils/StringUtils.EOT i32 (i32.const 4))
 (global $assembly/utils/StringUtils.LF i32 (i32.const 10))
 (global $node_modules/as-pect/assembly/internal/report/reportActual/Actual.type (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportActual/Actual.signed (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportActual/Actual.float (mut f64) (f64.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportActual/Actual.integer (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportActual/Actual.offset (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace (mut i32) (i32.const -1))
 (global $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.ready (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.type (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.signed (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.float (mut f64) (f64.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.integer (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.offset (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/noOp/noOp i32 (i32.const 3))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/log/ignoreLogs (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/RTrace/RTrace.enabled (mut i32) (i32.const 1))
 (global $~lib/started (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 1248))
 (global $~lib/heap/__heap_base i32 (i32.const 1340))
 (export "__start" (func $start))
 (export "memory" (memory $0))
 (export "__alloc" (func $~lib/rt/stub/__alloc))
 (export "__retain" (func $~lib/rt/stub/__retain))
 (export "__release" (func $~lib/rt/stub/__release))
 (export "__collect" (func $~lib/rt/stub/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "__ready" (func $node_modules/as-pect/assembly/index/__ready))
 (export "__call" (func $node_modules/as-pect/assembly/internal/call/__call))
 (export "__sendActual" (func $node_modules/as-pect/assembly/internal/report/reportActual/__sendActual))
 (export "__sendExpected" (func $node_modules/as-pect/assembly/internal/report/reportExpected/__sendExpected))
 (export "__ignoreLogs" (func $node_modules/as-pect/assembly/internal/log/__ignoreLogs))
 (export "__disableRTrace" (func $node_modules/as-pect/assembly/internal/RTrace/__disableRTrace))
 (export "__getUsizeArrayId" (func $node_modules/as-pect/assembly/internal/RTrace/__getUsizeArrayId))
 (export "__cleanup" (func $node_modules/as-pect/assembly/internal/Expectation/__cleanup))
 (func $~lib/rt/stub/__alloc (; 24 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.set $2
  local.get $2
  local.get $0
  local.tee $3
  i32.const 1
  local.tee $4
  local.get $3
  local.get $4
  i32.gt_u
  select
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $5
  memory.size
  local.set $6
  local.get $5
  local.get $6
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $5
   local.get $2
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $3
   local.get $6
   local.tee $4
   local.get $3
   local.tee $7
   local.get $4
   local.get $7
   i32.gt_s
   select
   local.set $4
   local.get $4
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $5
  global.set $~lib/rt/stub/offset
  local.get $2
  i32.const 16
  i32.sub
  local.set $8
  local.get $8
  local.get $1
  i32.store offset=8
  local.get $8
  local.get $0
  i32.store offset=12
  local.get $2
 )
 (func $~lib/rt/stub/__retain (; 25 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/rt/stub/__release (; 26 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/rt/stub/__collect (; 27 ;) (type $FUNCSIG$v)
  nop
 )
 (func $~lib/memory/memory.fill (; 28 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  block $~lib/util/memory/memset|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   i32.eqz
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 1
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 2
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 1
   i32.add
   local.get $4
   i32.store8
   local.get $5
   i32.const 2
   i32.add
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 2
   i32.sub
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 3
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 6
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 3
   i32.add
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   i32.const 0
   local.get $5
   i32.sub
   i32.const 3
   i32.and
   local.set $6
   local.get $5
   local.get $6
   i32.add
   local.set $5
   local.get $3
   local.get $6
   i32.sub
   local.set $3
   local.get $3
   i32.const -4
   i32.and
   local.set $3
   i32.const -1
   i32.const 255
   i32.div_u
   local.get $4
   i32.const 255
   i32.and
   i32.mul
   local.set $7
   local.get $5
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.get $7
   i32.store
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 4
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 8
   i32.add
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 12
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 8
   i32.sub
   local.get $7
   i32.store
   local.get $3
   i32.const 24
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 12
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 16
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 20
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 24
   i32.add
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 28
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 24
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 20
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 16
   i32.sub
   local.get $7
   i32.store
   i32.const 24
   local.get $5
   i32.const 4
   i32.and
   i32.add
   local.set $6
   local.get $5
   local.get $6
   i32.add
   local.set $5
   local.get $3
   local.get $6
   i32.sub
   local.set $3
   local.get $7
   i64.extend_i32_u
   local.get $7
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   local.set $8
   block $break|0
    loop $continue|0
     local.get $3
     i32.const 32
     i32.ge_u
     i32.eqz
     br_if $break|0
     local.get $5
     local.get $8
     i64.store
     local.get $5
     i32.const 8
     i32.add
     local.get $8
     i64.store
     local.get $5
     i32.const 16
     i32.add
     local.get $8
     i64.store
     local.get $5
     i32.const 24
     i32.add
     local.get $8
     i64.store
     local.get $3
     i32.const 32
     i32.sub
     local.set $3
     local.get $5
     i32.const 32
     i32.add
     local.set $5
     br $continue|0
    end
    unreachable
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 29 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 1073741808
  i32.gt_u
  if
   i32.const 24
   i32.const 72
   i32.const 57
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.set $2
  local.get $2
  i32.const 0
  local.get $1
  call $~lib/memory/memory.fill
  local.get $2
  call $~lib/rt/stub/__retain
 )
 (func $~lib/map/Map<u32,assembly/__tests__/include/File>#clear (; 30 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  local.tee $2
  i32.const 0
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $2
  i32.load offset=8
  call $~lib/rt/stub/__release
  local.get $1
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/map/Map<u32,assembly/__tests__/include/File>#constructor (; 31 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 5
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
  local.get $0
  call $~lib/map/Map<u32,assembly/__tests__/include/File>#clear
  local.get $0
 )
 (func $start:assembly/__tests__/include (; 32 ;) (type $FUNCSIG$v)
  i32.const 0
  call $~lib/map/Map<u32,assembly/__tests__/include/File>#constructor
  global.set $assembly/__tests__/include/fs
 )
 (func $assembly/fs/descriptor/Descriptor#constructor (; 33 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 6
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  i32.store
  local.get $0
 )
 (func $~lib/string/String.UTF8.byteLength (; 34 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.set $2
  local.get $2
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.add
  local.set $3
  local.get $1
  if (result i32)
   i32.const 1
  else   
   i32.const 0
  end
  local.set $4
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load16_u
    local.set $5
    local.get $5
    i32.const 128
    i32.lt_u
    if
     local.get $1
     if (result i32)
      local.get $5
      i32.eqz
     else      
      i32.const 0
     end
     if
      br $break|0
     end
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     local.get $2
     i32.const 2
     i32.add
     local.set $2
    else     
     local.get $5
     i32.const 2048
     i32.lt_u
     if
      local.get $4
      i32.const 2
      i32.add
      local.set $4
      local.get $2
      i32.const 2
      i32.add
      local.set $2
     else      
      local.get $5
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      if (result i32)
       local.get $2
       i32.const 2
       i32.add
       local.get $3
       i32.lt_u
      else       
       i32.const 0
      end
      if
       local.get $2
       i32.load16_u offset=2
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $2
        i32.const 4
        i32.add
        local.set $2
        local.get $4
        i32.const 4
        i32.add
        local.set $4
        br $continue|0
       end
      end
      local.get $2
      i32.const 2
      i32.add
      local.set $2
      local.get $4
      i32.const 3
      i32.add
      local.set $4
     end
    end
    br $continue|0
   end
   unreachable
  end
  local.get $4
  local.set $5
  local.get $0
  call $~lib/rt/stub/__release
  local.get $5
 )
 (func $~lib/util/memory/memcpy (; 35 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $break|0
   loop $continue|0
    local.get $2
    if (result i32)
     local.get $1
     i32.const 3
     i32.and
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $continue|0
   end
   unreachable
  end
  local.get $0
  i32.const 3
  i32.and
  i32.const 0
  i32.eq
  if
   block $break|1
    loop $continue|1
     local.get $2
     i32.const 16
     i32.ge_u
     i32.eqz
     br_if $break|1
     local.get $0
     local.get $1
     i32.load
     i32.store
     local.get $0
     i32.const 4
     i32.add
     local.get $1
     i32.const 4
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 8
     i32.add
     local.get $1
     i32.const 8
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 12
     i32.add
     local.get $1
     i32.const 12
     i32.add
     i32.load
     i32.store
     local.get $1
     i32.const 16
     i32.add
     local.set $1
     local.get $0
     i32.const 16
     i32.add
     local.set $0
     local.get $2
     i32.const 16
     i32.sub
     local.set $2
     br $continue|1
    end
    unreachable
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.get $1
    i32.const 4
    i32.add
    i32.load
    i32.store
    local.get $0
    i32.const 8
    i32.add
    local.set $0
    local.get $1
    i32.const 8
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    local.get $1
    i32.const 4
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       local.get $0
       i32.const 3
       i32.and
       local.set $5
       local.get $5
       i32.const 1
       i32.eq
       br_if $case0|2
       local.get $5
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $5
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      local.get $1
      i32.load
      local.set $3
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      block $break|3
       loop $continue|3
        local.get $2
        i32.const 17
        i32.ge_u
        i32.eqz
        br_if $break|3
        local.get $1
        i32.const 1
        i32.add
        i32.load
        local.set $4
        local.get $0
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 5
        i32.add
        i32.load
        local.set $3
        local.get $0
        i32.const 4
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 9
        i32.add
        i32.load
        local.set $4
        local.get $0
        i32.const 8
        i32.add
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 13
        i32.add
        i32.load
        local.set $3
        local.get $0
        i32.const 12
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 16
        i32.add
        local.set $1
        local.get $0
        i32.const 16
        i32.add
        local.set $0
        local.get $2
        i32.const 16
        i32.sub
        local.set $2
        br $continue|3
       end
       unreachable
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $3
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     block $break|4
      loop $continue|4
       local.get $2
       i32.const 18
       i32.ge_u
       i32.eqz
       br_if $break|4
       local.get $1
       i32.const 2
       i32.add
       i32.load
       local.set $4
       local.get $0
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 6
       i32.add
       i32.load
       local.set $3
       local.get $0
       i32.const 4
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 10
       i32.add
       i32.load
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 14
       i32.add
       i32.load
       local.set $3
       local.get $0
       i32.const 12
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
       br $continue|4
      end
      unreachable
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $3
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    block $break|5
     loop $continue|5
      local.get $2
      i32.const 19
      i32.ge_u
      i32.eqz
      br_if $break|5
      local.get $1
      i32.const 3
      i32.add
      i32.load
      local.set $4
      local.get $0
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 7
      i32.add
      i32.load
      local.set $3
      local.get $0
      i32.const 4
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 11
      i32.add
      i32.load
      local.set $4
      local.get $0
      i32.const 8
      i32.add
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 15
      i32.add
      i32.load
      local.set $3
      local.get $0
      i32.const 12
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      local.get $0
      i32.const 16
      i32.add
      local.set $0
      local.get $2
      i32.const 16
      i32.sub
      local.set $2
      br $continue|5
     end
     unreachable
    end
    br $break|2
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (; 36 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $5
   local.get $4
   i32.eq
   if
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $4
   local.get $3
   i32.add
   local.get $5
   i32.le_u
   if (result i32)
    i32.const 1
   else    
    local.get $5
    local.get $3
    i32.add
    local.get $4
    i32.le_u
   end
   if
    local.get $5
    local.get $4
    local.get $3
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $5
   local.get $4
   i32.lt_u
   if
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     block $break|0
      loop $continue|0
       local.get $5
       i32.const 7
       i32.and
       i32.eqz
       br_if $break|0
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $5
       local.tee $6
       i32.const 1
       i32.add
       local.set $5
       local.get $6
       local.get $4
       local.tee $6
       i32.const 1
       i32.add
       local.set $4
       local.get $6
       i32.load8_u
       i32.store8
       br $continue|0
      end
      unreachable
     end
     block $break|1
      loop $continue|1
       local.get $3
       i32.const 8
       i32.ge_u
       i32.eqz
       br_if $break|1
       local.get $5
       local.get $4
       i64.load
       i64.store
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       i32.const 8
       i32.add
       local.set $5
       local.get $4
       i32.const 8
       i32.add
       local.set $4
       br $continue|1
      end
      unreachable
     end
    end
    block $break|2
     loop $continue|2
      local.get $3
      i32.eqz
      br_if $break|2
      local.get $5
      local.tee $6
      i32.const 1
      i32.add
      local.set $5
      local.get $6
      local.get $4
      local.tee $6
      i32.const 1
      i32.add
      local.set $4
      local.get $6
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
      br $continue|2
     end
     unreachable
    end
   else    
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     block $break|3
      loop $continue|3
       local.get $5
       local.get $3
       i32.add
       i32.const 7
       i32.and
       i32.eqz
       br_if $break|3
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $5
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i32.load8_u
       i32.store8
       br $continue|3
      end
      unreachable
     end
     block $break|4
      loop $continue|4
       local.get $3
       i32.const 8
       i32.ge_u
       i32.eqz
       br_if $break|4
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       local.get $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i64.load
       i64.store
       br $continue|4
      end
      unreachable
     end
    end
    block $break|5
     loop $continue|5
      local.get $3
      i32.eqz
      br_if $break|5
      local.get $5
      local.get $3
      i32.const 1
      i32.sub
      local.tee $3
      i32.add
      local.get $4
      local.get $3
      i32.add
      i32.load8_u
      i32.store8
      br $continue|5
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/rt/stub/__realloc (; 37 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 16
  i32.sub
  local.set $2
  local.get $2
  i32.load offset=12
  local.set $3
  local.get $1
  local.get $3
  i32.gt_u
  if
   local.get $1
   local.get $2
   i32.load offset=8
   call $~lib/rt/stub/__alloc
   local.set $4
   local.get $4
   local.get $0
   local.get $3
   call $~lib/memory/memory.copy
   local.get $4
   local.set $0
  else   
   local.get $2
   local.get $1
   i32.store offset=12
  end
  local.get $0
 )
 (func $~lib/string/String.UTF8.encode (; 38 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.set $2
  local.get $0
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.add
  local.set $3
  local.get $0
  local.get $1
  call $~lib/string/String.UTF8.byteLength
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.set $4
  local.get $4
  local.set $5
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load16_u
    local.set $6
    local.get $6
    i32.const 128
    i32.lt_u
    if
     local.get $1
     if (result i32)
      local.get $6
      i32.eqz
     else      
      i32.const 0
     end
     if
      br $break|0
     end
     local.get $5
     local.get $6
     i32.store8
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     local.get $2
     i32.const 2
     i32.add
     local.set $2
    else     
     local.get $6
     i32.const 2048
     i32.lt_u
     if
      local.get $5
      local.get $6
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      i32.store8
      local.get $5
      local.get $6
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=1
      local.get $5
      i32.const 2
      i32.add
      local.set $5
      local.get $2
      i32.const 2
      i32.add
      local.set $2
     else      
      local.get $6
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      if (result i32)
       local.get $2
       i32.const 2
       i32.add
       local.get $3
       i32.lt_u
      else       
       i32.const 0
      end
      if
       local.get $2
       i32.load16_u offset=2
       local.set $7
       local.get $7
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        i32.const 65536
        local.get $6
        i32.const 1023
        i32.and
        i32.const 10
        i32.shl
        i32.add
        local.get $7
        i32.const 1023
        i32.and
        i32.add
        local.set $6
        local.get $5
        local.get $6
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        i32.store8
        local.get $5
        local.get $6
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=1
        local.get $5
        local.get $6
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=2
        local.get $5
        local.get $6
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=3
        local.get $2
        i32.const 4
        i32.add
        local.set $2
        local.get $5
        i32.const 4
        i32.add
        local.set $5
        br $continue|0
       end
      end
      local.get $5
      local.get $6
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      i32.store8
      local.get $5
      local.get $6
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=1
      local.get $5
      local.get $6
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=2
      local.get $2
      i32.const 2
      i32.add
      local.set $2
      local.get $5
      i32.const 3
      i32.add
      local.set $5
     end
    end
    br $continue|0
   end
   unreachable
  end
  local.get $1
  if
   local.get $2
   local.get $3
   i32.le_u
   i32.eqz
   if
    i32.const 0
    i32.const 256
    i32.const 592
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
   local.get $4
   local.get $5
   local.get $4
   i32.sub
   i32.const 1
   i32.add
   call $~lib/rt/stub/__realloc
   local.set $4
   local.get $5
   i32.const 0
   i32.store8
  else   
   local.get $2
   local.get $3
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 256
    i32.const 596
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $4
  call $~lib/rt/stub/__retain
  local.set $6
  local.get $0
  call $~lib/rt/stub/__release
  local.get $6
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (; 39 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 40 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.const 1073741808
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 24
   i32.const 72
   i32.const 14
   i32.const 56
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  i32.shl
  local.tee $1
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.set $3
  local.get $3
  i32.const 0
  local.get $1
  call $~lib/memory/memory.fill
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 2
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $5
   call $~lib/rt/stub/__retain
   drop
   local.get $4
   call $~lib/rt/stub/__release
  end
  local.get $5
  i32.store
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/array/Array<u8>#constructor (; 41 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 4
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  local.get $1
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array<u8>#get:buffer (; 42 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $~lib/array/Array<u8>#get:length (; 43 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/util/hash/hash32 (; 44 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const -2128831035
  local.set $1
  local.get $1
  local.get $0
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $1
  local.get $1
  local.get $0
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $1
  local.get $1
  local.get $0
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $1
  local.get $1
  local.get $0
  i32.const 24
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $1
  local.get $1
 )
 (func $~lib/map/Map<u32,assembly/__tests__/include/File>#find (; 45 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  block $break|0
   loop $continue|0
    local.get $3
    i32.eqz
    br_if $break|0
    local.get $3
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $3
     i32.load
     local.get $1
     i32.eq
    else     
     i32.const 0
    end
    if
     local.get $3
     return
    end
    local.get $3
    i32.load offset=8
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $continue|0
   end
   unreachable
  end
  i32.const 0
 )
 (func $~lib/map/Map<u32,assembly/__tests__/include/File>#has (; 46 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u32>|inlined.0 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<u32>|inlined.0
  end
  call $~lib/map/Map<u32,assembly/__tests__/include/File>#find
  i32.const 0
  i32.ne
 )
 (func $assembly/__tests__/include/File#constructor (; 47 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 3
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $2
  f64.convert_i32_u
  local.set $4
  local.get $1
  f64.convert_i32_u
  local.set $3
  local.get $4
  local.get $3
  f64.min
  i32.trunc_f64_u
  i32.store
  local.get $0
  local.tee $5
  i32.const 0
  local.get $1
  call $~lib/array/Array<u8>#constructor
  local.set $6
  local.get $5
  i32.load offset=4
  call $~lib/rt/stub/__release
  local.get $6
  i32.store offset=4
  local.get $0
 )
 (func $~lib/map/Map<u32,assembly/__tests__/include/File>#rehash (; 48 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  f64.convert_i32_s
  f64.const 2.6666666666666665
  f64.mul
  i32.trunc_f64_s
  local.set $4
  i32.const 0
  local.get $4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  block $break|0
   loop $continue|0
    local.get $6
    local.get $7
    i32.ne
    i32.eqz
    br_if $break|0
    local.get $6
    local.set $9
    local.get $9
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $10
     local.get $10
     local.get $9
     i32.load
     i32.store
     local.get $10
     local.get $9
     i32.load offset=4
     i32.store offset=4
     block $~lib/util/hash/HASH<u32>|inlined.2 (result i32)
      local.get $9
      i32.load
      local.set $11
      local.get $11
      call $~lib/util/hash/hash32
      br $~lib/util/hash/HASH<u32>|inlined.2
     end
     local.get $1
     i32.and
     local.set $11
     local.get $3
     local.get $11
     i32.const 4
     i32.mul
     i32.add
     local.set $12
     local.get $10
     local.get $12
     i32.load
     i32.store offset=8
     local.get $12
     local.get $8
     i32.store
     local.get $8
     i32.const 12
     i32.add
     local.set $8
    end
    local.get $6
    i32.const 12
    i32.add
    local.set $6
    br $continue|0
   end
   unreachable
  end
  local.get $0
  local.tee $9
  local.get $3
  local.tee $10
  local.get $9
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $10
   call $~lib/rt/stub/__retain
   drop
   local.get $9
   call $~lib/rt/stub/__release
  end
  local.get $10
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $10
  local.get $5
  local.tee $11
  local.get $10
  i32.load offset=8
  local.tee $10
  i32.ne
  if
   local.get $11
   call $~lib/rt/stub/__retain
   drop
   local.get $10
   call $~lib/rt/stub/__release
  end
  local.get $11
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $3
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
 )
 (func $~lib/map/Map<u32,assembly/__tests__/include/File>#set (; 49 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  block $~lib/util/hash/HASH<u32>|inlined.1 (result i32)
   local.get $1
   local.set $3
   local.get $3
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<u32>|inlined.1
  end
  local.set $4
  local.get $0
  local.get $1
  local.get $4
  call $~lib/map/Map<u32,assembly/__tests__/include/File>#find
  local.set $5
  local.get $5
  if
   local.get $5
   i32.load offset=4
   local.set $3
   local.get $2
   local.get $3
   i32.ne
   if
    local.get $5
    local.get $2
    call $~lib/rt/stub/__retain
    i32.store offset=4
    local.get $3
    call $~lib/rt/stub/__release
   end
  else   
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    f64.convert_i32_s
    f64.const 0.75
    f64.mul
    i32.trunc_f64_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else     
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<u32,assembly/__tests__/include/File>#rehash
   end
   local.get $0
   i32.load offset=8
   call $~lib/rt/stub/__retain
   local.set $3
   local.get $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $6
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $6
   i32.const 12
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   i32.store
   local.get $5
   local.get $2
   call $~lib/rt/stub/__retain
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $6
   local.get $5
   local.get $6
   i32.load
   i32.store offset=8
   local.get $6
   local.get $5
   i32.store
   local.get $3
   call $~lib/rt/stub/__release
  end
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $~lib/map/Map<u32,assembly/__tests__/include/File>#get (; 50 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<u32>|inlined.3 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<u32>|inlined.3
  end
  call $~lib/map/Map<u32,assembly/__tests__/include/File>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 304
   i32.const 360
   i32.const 103
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=4
  call $~lib/rt/stub/__retain
 )
 (func $~lib/array/ensureSize (; 51 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=8
  local.set $3
  local.get $1
  local.get $3
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 1073741808
   local.get $2
   i32.shr_u
   i32.gt_u
   if
    i32.const 24
    i32.const 400
    i32.const 14
    i32.const 47
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.set $4
   local.get $1
   local.get $2
   i32.shl
   local.set $5
   local.get $4
   local.get $5
   call $~lib/rt/stub/__realloc
   local.set $6
   local.get $6
   local.get $3
   i32.add
   i32.const 0
   local.get $5
   local.get $3
   i32.sub
   call $~lib/memory/memory.fill
   local.get $6
   local.get $4
   i32.ne
   if
    local.get $0
    local.get $6
    call $~lib/rt/stub/__retain
    i32.store
    local.get $0
    local.get $6
    i32.store offset=4
   end
   local.get $0
   local.get $5
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<u8>#set:length (; 52 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/array/ensureSize
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $assembly/__tests__/include/File#write (; 53 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  call $~lib/array/Array<u8>#get:length
  i32.eq
  if
   local.get $0
   i32.load offset=4
   local.get $0
   i32.load offset=4
   call $~lib/array/Array<u8>#get:length
   local.get $2
   i32.add
   call $~lib/array/Array<u8>#set:length
  end
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load
  i32.add
  local.get $1
  local.get $2
  call $~lib/memory/memory.copy
  local.get $0
  local.get $0
  i32.load
  local.get $2
  i32.add
  i32.store
  local.get $2
 )
 (func $assembly/__tests__/include/fd_write (; 54 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $assembly/__tests__/include/fs
  local.get $0
  call $~lib/map/Map<u32,assembly/__tests__/include/File>#has
  i32.eqz
  if
   global.get $assembly/__tests__/include/fs
   local.get $0
   i32.const 0
   i32.const 1028
   i32.const 0
   call $assembly/__tests__/include/File#constructor
   local.tee $4
   call $~lib/map/Map<u32,assembly/__tests__/include/File>#set
   local.get $4
   call $~lib/rt/stub/__release
  end
  global.get $assembly/__tests__/include/fs
  local.get $0
  call $~lib/map/Map<u32,assembly/__tests__/include/File>#get
  local.set $4
  i32.const 0
  local.set $5
  block $break|0
   i32.const 0
   local.set $6
   loop $loop|0
    local.get $6
    local.get $2
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $6
    i32.const 8
    i32.mul
    i32.add
    local.set $7
    local.get $5
    local.get $4
    local.get $7
    i32.load
    local.get $7
    i32.load offset=4
    call $assembly/__tests__/include/File#write
    i32.add
    local.set $5
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.get $5
  i32.store
  i32.const 0
  local.set $7
  local.get $4
  call $~lib/rt/stub/__release
  local.get $7
 )
 (func $~lib/util/number/decimalCount32 (; 55 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 100000
  i32.lt_u
  if
   local.get $0
   i32.const 100
   i32.lt_u
   if
    i32.const 1
    i32.const 2
    local.get $0
    i32.const 10
    i32.lt_u
    select
    return
   else    
    i32.const 4
    i32.const 5
    local.get $0
    i32.const 10000
    i32.lt_u
    select
    local.set $1
    i32.const 3
    local.get $1
    local.get $0
    i32.const 1000
    i32.lt_u
    select
    return
   end
   unreachable
  else   
   local.get $0
   i32.const 10000000
   i32.lt_u
   if
    i32.const 6
    i32.const 7
    local.get $0
    i32.const 1000000
    i32.lt_u
    select
    return
   else    
    i32.const 9
    i32.const 10
    local.get $0
    i32.const 1000000000
    i32.lt_u
    select
    local.set $1
    i32.const 8
    local.get $1
    local.get $0
    i32.const 100000000
    i32.lt_u
    select
    return
   end
   unreachable
  end
  unreachable
 )
 (func $~lib/util/number/utoa32_lut (; 56 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  i32.const 1032
  i32.load offset=4
  local.set $3
  block $break|0
   loop $continue|0
    local.get $1
    i32.const 10000
    i32.ge_u
    i32.eqz
    br_if $break|0
    local.get $1
    i32.const 10000
    i32.div_u
    local.set $4
    local.get $1
    i32.const 10000
    i32.rem_u
    local.set $5
    local.get $4
    local.set $1
    local.get $5
    i32.const 100
    i32.div_u
    local.set $6
    local.get $5
    i32.const 100
    i32.rem_u
    local.set $7
    local.get $3
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $8
    local.get $3
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $9
    local.get $2
    i32.const 4
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    local.get $8
    local.get $9
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $continue|0
   end
   unreachable
  end
  local.get $1
  i32.const 100
  i32.ge_u
  if
   local.get $1
   i32.const 100
   i32.div_u
   local.set $7
   local.get $1
   i32.const 100
   i32.rem_u
   local.set $6
   local.get $7
   local.set $1
   local.get $2
   i32.const 2
   i32.sub
   local.set $2
   local.get $3
   local.get $6
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $5
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $5
   i32.store
  end
  local.get $1
  i32.const 10
  i32.ge_u
  if
   local.get $2
   i32.const 2
   i32.sub
   local.set $2
   local.get $3
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $5
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $5
   i32.store
  else   
   local.get $2
   i32.const 1
   i32.sub
   local.set $2
   i32.const 48
   local.get $1
   i32.add
   local.set $5
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $5
   i32.store16
  end
 )
 (func $~lib/util/number/utoa32 (; 57 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.eqz
  if
   i32.const 592
   call $~lib/rt/stub/__retain
   return
  end
  local.get $0
  call $~lib/util/number/decimalCount32
  local.set $1
  local.get $1
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.set $2
  local.get $2
  local.set $5
  local.get $0
  local.set $4
  local.get $1
  local.set $3
  local.get $5
  local.get $4
  local.get $3
  call $~lib/util/number/utoa32_lut
  local.get $2
  call $~lib/rt/stub/__retain
 )
 (func $~lib/util/number/itoa<usize> (; 58 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/util/number/utoa32
  return
 )
 (func $~lib/number/Usize#toString (; 59 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/util/number/itoa<usize>
  local.tee $1
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/string/String#get:length (; 60 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/string/String#concat (; 61 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 1064
   local.tee $2
   local.get $1
   local.tee $3
   i32.ne
   if
    local.get $2
    call $~lib/rt/stub/__retain
    drop
    local.get $3
    call $~lib/rt/stub/__release
   end
   local.get $2
   local.set $1
  end
  local.get $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $4
  local.get $1
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $5
  local.get $4
  local.get $5
  i32.add
  local.set $6
  local.get $6
  i32.const 0
  i32.eq
  if
   i32.const 1088
   call $~lib/rt/stub/__retain
   local.set $2
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $6
  i32.const 1
  call $~lib/rt/stub/__alloc
  call $~lib/rt/stub/__retain
  local.set $7
  local.get $7
  local.get $0
  local.get $4
  call $~lib/memory/memory.copy
  local.get $7
  local.get $4
  i32.add
  local.get $1
  local.get $5
  call $~lib/memory/memory.copy
  local.get $7
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/string/String.__concat (; 62 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 1064
  local.get $0
  i32.const 0
  i32.ne
  select
  local.get $1
  call $~lib/string/String#concat
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $assembly/fs/descriptor/Descriptor#write (; 63 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  i32.const 0
  i32.const 2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  local.set $4
  local.get $4
  local.get $1
  i32.store
  local.get $4
  i32.const 4
  i32.add
  local.get $1
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.store
  i32.const 0
  i32.const 4
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $5
  local.set $6
  local.get $0
  i32.load
  local.get $4
  i32.const 1
  local.get $6
  call $assembly/__tests__/include/fd_write
  i32.const 0
  i32.ne
  if
   local.get $1
   call $~lib/rt/stub/__release
   local.get $3
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
   i32.const 448
   i32.const 496
   i32.const 232
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.load
  local.set $7
  local.get $4
  local.set $8
  i32.const 568
  local.get $7
  call $~lib/number/Usize#toString
  local.tee $9
  call $~lib/string/String.__concat
  local.tee $10
  i32.const 1104
  call $~lib/string/String.__concat
  local.tee $11
  i32.const 0
  call $~lib/string/String.UTF8.encode
  local.set $12
  local.get $8
  local.get $12
  i32.store
  local.get $8
  local.get $12
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.store offset=4
  local.get $0
  i32.load
  local.get $4
  i32.const 1
  local.get $6
  call $assembly/__tests__/include/fd_write
  drop
  local.get $3
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $9
  call $~lib/rt/stub/__release
  local.get $10
  call $~lib/rt/stub/__release
  local.get $11
  call $~lib/rt/stub/__release
  local.get $12
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $assembly/fs/descriptor/Descriptor#writeArray (; 64 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<u8>#get:buffer
  local.tee $2
  local.get $1
  call $~lib/array/Array<u8>#get:length
  call $assembly/fs/descriptor/Descriptor#write
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $assembly/fs/descriptor/Descriptor#writeString (; 65 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  local.get $2
  call $~lib/string/String.UTF8.encode
  local.set $3
  local.get $2
  if
   local.get $3
   local.get $3
   call $~lib/arraybuffer/ArrayBuffer#get:byteLength
   i32.add
   i32.const 1
   i32.sub
   i32.const 10
   i32.store8
  end
  i32.const 0
  local.get $3
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  call $~lib/array/Array<u8>#constructor
  local.set $4
  local.get $4
  call $~lib/array/Array<u8>#get:buffer
  local.tee $5
  local.get $3
  local.get $3
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  call $~lib/memory/memory.copy
  local.get $0
  local.get $4
  call $assembly/fs/descriptor/Descriptor#writeArray
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $assembly/__tests__/include/getfs (; 66 ;) (type $FUNCSIG$i) (result i32)
  global.get $assembly/__tests__/include/fs
  call $~lib/rt/stub/__retain
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/Expectation<assembly/__tests__/include/File>#constructor (; 67 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 8
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.tee $2
  local.get $1
  local.tee $3
  local.get $2
  i32.load offset=4
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store offset=4
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/expect<assembly/__tests__/include/File> (; 68 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  i32.const 0
  local.get $0
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<assembly/__tests__/include/File>#constructor
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/Expectation<assembly/__tests__/include/File>#get:not (; 69 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1
  i32.store
  local.get $0
  call $~lib/rt/stub/__retain
 )
 (func $node_modules/as-pect/assembly/internal/report/reportActual/Actual.clear (; 70 ;) (type $FUNCSIG$v)
  i32.const 0
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.type
  global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference
  i32.const 0
  i32.gt_u
  if
   global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference
   call $~lib/rt/stub/__release
   i32.const 0
   global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference
  end
  i32.const -1
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
 )
 (func $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.clear (; 71 ;) (type $FUNCSIG$v)
  i32.const 0
  global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.type
  global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference
  i32.const 0
  i32.gt_u
  if
   global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference
   call $~lib/rt/stub/__release
   i32.const 0
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference
  end
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/Expectation<assembly/__tests__/include/File>#toBeNull (; 72 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load offset=4
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $0
  i32.load
  local.set $3
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $4
  call $~lib/rt/stub/__retain
  local.set $5
  call $node_modules/as-pect/assembly/internal/report/reportActual/getStackTrace
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
  local.get $5
  local.set $6
  local.get $5
  i32.const 0
  i32.eq
  if
   i32.const 1
   global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.type
  else   
   local.get $6
   call $~lib/rt/stub/__retain
   drop
   global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference
   call $~lib/rt/stub/__release
   local.get $6
   global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference
   i32.const 4
   global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.type
   i32.const 8
   global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.offset
  end
  local.get $5
  call $~lib/rt/stub/__release
  block $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpected<assembly/__tests__/include/File>|inlined.0
   i32.const 0
   call $~lib/rt/stub/__retain
   local.set $5
   local.get $3
   local.set $6
   global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.ready
   i32.eqz
   if
    call $node_modules/as-pect/assembly/internal/report/reportExpected/reportInvalidExpectCall
    local.get $5
    call $~lib/rt/stub/__release
    br $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpected<assembly/__tests__/include/File>|inlined.0
   end
   call $node_modules/as-pect/assembly/internal/report/reportExpected/getStackTrace
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
   local.get $6
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
   local.get $5
   i32.const 0
   i32.eq
   if
    i32.const 1
    global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.type
   else    
    local.get $5
    local.set $7
    local.get $7
    call $~lib/rt/stub/__retain
    drop
    global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference
    call $~lib/rt/stub/__release
    local.get $7
    global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference
    i32.const 4
    global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.type
    i32.const 8
    global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.offset
   end
   local.get $5
   call $~lib/rt/stub/__release
  end
  local.get $3
  local.get $4
  i32.const 0
  i32.eq
  i32.xor
  local.set $6
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $7
  local.get $6
  i32.eqz
  if
   local.get $7
   call $~lib/rt/stub/__release
   local.get $7
   i32.const 1128
   i32.const 11
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  call $node_modules/as-pect/assembly/internal/report/reportActual/Actual.clear
  call $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.clear
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/arraybuffer/ArrayBuffer#slice (; 73 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $3
   local.get $1
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else   
   local.get $1
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
   i32.lt_s
   select
  end
  local.set $1
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $3
   local.get $2
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else   
   local.get $2
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
   i32.lt_s
   select
  end
  local.set $2
  local.get $2
  local.get $1
  i32.sub
  local.tee $4
  i32.const 0
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.set $6
  local.get $6
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.set $7
  local.get $7
  local.get $0
  local.get $1
  i32.add
  local.get $6
  call $~lib/memory/memory.copy
  local.get $7
  call $~lib/rt/stub/__retain
 )
 (func $~lib/string/String.UTF8.decodeUnsafe (; 74 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  local.set $3
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $4
  local.get $3
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 256
   i32.const 610
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.set $5
  local.get $5
  local.set $6
  block $break|0
   loop $continue|0
    local.get $3
    local.get $4
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $3
    local.tee $7
    i32.const 1
    i32.add
    local.set $3
    local.get $7
    i32.load8_u
    local.set $7
    local.get $7
    i32.const 128
    i32.lt_u
    if
     local.get $2
     if (result i32)
      local.get $7
      i32.eqz
     else      
      i32.const 0
     end
     if
      br $break|0
     end
     local.get $6
     local.get $7
     i32.store16
     local.get $6
     i32.const 2
     i32.add
     local.set $6
    else     
     local.get $7
     i32.const 191
     i32.gt_u
     if (result i32)
      local.get $7
      i32.const 224
      i32.lt_u
     else      
      i32.const 0
     end
     if
      local.get $4
      local.get $3
      i32.sub
      i32.const 1
      i32.lt_u
      if
       br $break|0
      end
      local.get $6
      local.get $7
      i32.const 31
      i32.and
      i32.const 6
      i32.shl
      local.get $3
      local.tee $8
      i32.const 1
      i32.add
      local.set $3
      local.get $8
      i32.load8_u
      i32.const 63
      i32.and
      i32.or
      i32.store16
      local.get $6
      i32.const 2
      i32.add
      local.set $6
     else      
      local.get $7
      i32.const 239
      i32.gt_u
      if (result i32)
       local.get $7
       i32.const 365
       i32.lt_u
      else       
       i32.const 0
      end
      if
       local.get $4
       local.get $3
       i32.sub
       i32.const 3
       i32.lt_u
       if
        br $break|0
       end
       local.get $7
       i32.const 7
       i32.and
       i32.const 18
       i32.shl
       local.get $3
       i32.load8_u
       i32.const 63
       i32.and
       i32.const 12
       i32.shl
       i32.or
       local.get $3
       i32.load8_u offset=1
       i32.const 63
       i32.and
       i32.const 6
       i32.shl
       i32.or
       local.get $3
       i32.load8_u offset=2
       i32.const 63
       i32.and
       i32.or
       i32.const 65536
       i32.sub
       local.set $7
       local.get $3
       i32.const 3
       i32.add
       local.set $3
       local.get $6
       i32.const 55296
       local.get $7
       i32.const 10
       i32.shr_u
       i32.add
       i32.store16
       local.get $6
       i32.const 56320
       local.get $7
       i32.const 1023
       i32.and
       i32.add
       i32.store16 offset=2
       local.get $6
       i32.const 4
       i32.add
       local.set $6
      else       
       local.get $4
       local.get $3
       i32.sub
       i32.const 2
       i32.lt_u
       if
        br $break|0
       end
       local.get $6
       local.get $7
       i32.const 15
       i32.and
       i32.const 12
       i32.shl
       local.get $3
       i32.load8_u
       i32.const 63
       i32.and
       i32.const 6
       i32.shl
       i32.or
       local.get $3
       i32.load8_u offset=1
       i32.const 63
       i32.and
       i32.or
       i32.store16
       local.get $3
       i32.const 2
       i32.add
       local.set $3
       local.get $6
       i32.const 2
       i32.add
       local.set $6
      end
     end
    end
    br $continue|0
   end
   unreachable
  end
  local.get $5
  local.get $6
  local.get $5
  i32.sub
  call $~lib/rt/stub/__realloc
  call $~lib/rt/stub/__retain
 )
 (func $~lib/string/String.UTF8.decode (; 75 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.get $1
  call $~lib/string/String.UTF8.decodeUnsafe
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/Expectation<~lib/string/String>#constructor (; 76 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 9
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.tee $2
  local.get $1
  local.tee $3
  local.get $2
  i32.load offset=4
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store offset=4
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/expect<~lib/string/String> (; 77 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  i32.const 0
  local.get $0
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<~lib/string/String>#constructor
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $~lib/util/string/compareImpl (; 78 ;) (type $FUNCSIG$iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  i32.const 0
  local.set $5
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $6
  local.get $2
  local.get $3
  i32.const 1
  i32.shl
  i32.add
  local.set $7
  block $break|0
   loop $continue|0
    local.get $4
    if (result i32)
     local.get $6
     i32.load16_u
     local.get $7
     i32.load16_u
     i32.sub
     local.tee $5
     i32.eqz
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    local.get $6
    i32.const 2
    i32.add
    local.set $6
    local.get $7
    i32.const 2
    i32.add
    local.set $7
    br $continue|0
   end
   unreachable
  end
  local.get $5
  local.set $8
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $8
 )
 (func $~lib/string/String.__eq (; 79 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   local.set $2
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $0
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $3
  local.get $3
  local.get $1
  call $~lib/string/String#get:length
  i32.ne
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  i32.const 0
  local.get $3
  call $~lib/util/string/compareImpl
  i32.eqz
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/Expectation<~lib/string/String>#toStrictEqual (; 80 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  block $node_modules/as-pect/assembly/internal/comparison/blockComparison/blockComparison<~lib/string/String>|inlined.0
   local.get $0
   i32.load offset=4
   call $~lib/rt/stub/__retain
   local.set $6
   local.get $1
   call $~lib/rt/stub/__retain
   local.set $5
   local.get $0
   i32.load
   local.set $4
   local.get $2
   call $~lib/rt/stub/__retain
   local.set $3
   local.get $6
   local.get $5
   i32.eq
   if
    local.get $6
    call $~lib/rt/stub/__retain
    local.set $10
    local.get $5
    call $~lib/rt/stub/__retain
    local.set $9
    local.get $4
    local.set $8
    local.get $3
    call $~lib/rt/stub/__retain
    local.set $7
    local.get $10
    call $~lib/rt/stub/__retain
    local.set $11
    call $node_modules/as-pect/assembly/internal/report/reportActual/getStackTrace
    global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
    local.get $11
    local.set $12
    local.get $11
    i32.const 0
    call $~lib/string/String.__eq
    if
     i32.const 1
     global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.type
    else     
     local.get $12
     call $~lib/rt/stub/__retain
     drop
     global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference
     call $~lib/rt/stub/__release
     local.get $12
     global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference
     i32.const 5
     global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.type
    end
    local.get $11
    call $~lib/rt/stub/__release
    block $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpected<~lib/string/String>|inlined.0
     local.get $9
     call $~lib/rt/stub/__retain
     local.set $11
     local.get $8
     local.set $12
     global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.ready
     i32.eqz
     if
      call $node_modules/as-pect/assembly/internal/report/reportExpected/reportInvalidExpectCall
      local.get $11
      call $~lib/rt/stub/__release
      br $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpected<~lib/string/String>|inlined.0
     end
     call $node_modules/as-pect/assembly/internal/report/reportExpected/getStackTrace
     global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
     local.get $12
     global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
     local.get $11
     i32.const 0
     call $~lib/string/String.__eq
     if
      i32.const 1
      global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.type
     else      
      local.get $11
      local.set $13
      local.get $13
      call $~lib/rt/stub/__retain
      drop
      global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference
      call $~lib/rt/stub/__release
      local.get $13
      global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference
      i32.const 5
      global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.type
     end
     local.get $11
     call $~lib/rt/stub/__release
    end
    local.get $8
    local.get $9
    local.get $10
    call $~lib/string/String.__eq
    i32.xor
    local.set $12
    local.get $7
    call $~lib/rt/stub/__retain
    local.set $13
    local.get $12
    i32.eqz
    if
     local.get $13
     call $~lib/rt/stub/__release
     local.get $13
     i32.const 1128
     i32.const 11
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $13
    call $~lib/rt/stub/__release
    local.get $7
    call $~lib/rt/stub/__release
    local.get $9
    call $~lib/rt/stub/__release
    local.get $10
    call $~lib/rt/stub/__release
    local.get $3
    call $~lib/rt/stub/__release
    local.get $5
    call $~lib/rt/stub/__release
    local.get $6
    call $~lib/rt/stub/__release
    br $node_modules/as-pect/assembly/internal/comparison/blockComparison/blockComparison<~lib/string/String>|inlined.0
   end
   local.get $5
   local.set $10
   local.get $6
   local.set $9
   local.get $10
   i32.const 4
   i32.sub
   i32.load
   local.set $8
   local.get $9
   i32.const 4
   i32.sub
   i32.load
   local.set $7
   local.get $5
   i32.const 0
   call $~lib/string/String.__eq
   if
    block $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpected<~lib/string/String>|inlined.1
     i32.const 0
     call $~lib/rt/stub/__retain
     local.set $13
     local.get $4
     local.set $11
     global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.ready
     i32.eqz
     if
      call $node_modules/as-pect/assembly/internal/report/reportExpected/reportInvalidExpectCall
      local.get $13
      call $~lib/rt/stub/__release
      br $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpected<~lib/string/String>|inlined.1
     end
     call $node_modules/as-pect/assembly/internal/report/reportExpected/getStackTrace
     global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
     local.get $11
     global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
     local.get $13
     i32.const 0
     call $~lib/string/String.__eq
     if
      i32.const 1
      global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.type
     else      
      local.get $13
      local.set $12
      local.get $12
      call $~lib/rt/stub/__retain
      drop
      global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference
      call $~lib/rt/stub/__release
      local.get $12
      global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference
      i32.const 5
      global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.type
     end
     local.get $13
     call $~lib/rt/stub/__release
    end
   else    
    local.get $10
    local.set $13
    local.get $8
    local.set $11
    local.get $4
    local.set $12
    i32.const 4
    global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.type
    local.get $13
    call $~lib/rt/stub/__retain
    drop
    global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference
    call $~lib/rt/stub/__release
    local.get $13
    global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference
    local.get $11
    global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.offset
    local.get $12
    global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
   end
   local.get $6
   i32.const 0
   call $~lib/string/String.__eq
   if
    i32.const 0
    call $~lib/rt/stub/__retain
    local.set $12
    call $node_modules/as-pect/assembly/internal/report/reportActual/getStackTrace
    global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
    local.get $12
    local.set $13
    local.get $12
    i32.const 0
    call $~lib/string/String.__eq
    if
     i32.const 1
     global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.type
    else     
     local.get $13
     call $~lib/rt/stub/__retain
     drop
     global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference
     call $~lib/rt/stub/__release
     local.get $13
     global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference
     i32.const 5
     global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.type
    end
    local.get $12
    call $~lib/rt/stub/__release
   else    
    local.get $7
    local.set $13
    local.get $7
    local.set $11
    i32.const 4
    global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.type
    local.get $13
    call $~lib/rt/stub/__retain
    drop
    global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference
    call $~lib/rt/stub/__release
    local.get $13
    global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference
    local.get $11
    global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.offset
   end
   local.get $6
   i32.const 0
   call $~lib/string/String.__eq
   local.set $13
   local.get $5
   i32.const 0
   call $~lib/string/String.__eq
   local.set $11
   local.get $13
   local.get $11
   i32.xor
   if
    local.get $4
    local.set $14
    local.get $3
    call $~lib/rt/stub/__retain
    local.set $12
    local.get $14
    i32.eqz
    if
     local.get $12
     call $~lib/rt/stub/__release
     local.get $12
     i32.const 1128
     i32.const 11
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $12
    call $~lib/rt/stub/__release
   else    
    local.get $7
    local.get $8
    i32.eq
    local.set $14
    local.get $14
    i32.eqz
    if
     local.get $4
     local.set $15
     local.get $3
     call $~lib/rt/stub/__retain
     local.set $12
     local.get $15
     i32.eqz
     if
      local.get $12
      call $~lib/rt/stub/__release
      local.get $12
      i32.const 1128
      i32.const 11
      i32.const 18
      call $~lib/builtins/abort
      unreachable
     end
     local.get $12
     call $~lib/rt/stub/__release
    else     
     local.get $9
     local.set $16
     local.get $10
     local.set $15
     local.get $7
     local.set $12
     block $~lib/util/memory/memcmp|inlined.0 (result i32)
      local.get $16
      local.set $19
      local.get $15
      local.set $18
      local.get $12
      local.set $17
      local.get $19
      local.get $18
      i32.eq
      if
       i32.const 0
       br $~lib/util/memory/memcmp|inlined.0
      end
      block $break|0
       loop $continue|0
        local.get $17
        i32.const 0
        i32.ne
        if (result i32)
         local.get $19
         i32.load8_u
         local.get $18
         i32.load8_u
         i32.eq
        else         
         i32.const 0
        end
        i32.eqz
        br_if $break|0
        local.get $17
        i32.const 1
        i32.sub
        local.set $17
        local.get $19
        i32.const 1
        i32.add
        local.set $19
        local.get $18
        i32.const 1
        i32.add
        local.set $18
        br $continue|0
       end
       unreachable
      end
      local.get $17
      if (result i32)
       local.get $19
       i32.load8_u
       local.get $18
       i32.load8_u
       i32.sub
      else       
       i32.const 0
      end
     end
     i32.const 0
     i32.eq
     local.set $16
     local.get $4
     local.get $16
     i32.xor
     local.set $18
     local.get $3
     call $~lib/rt/stub/__retain
     local.set $17
     local.get $18
     i32.eqz
     if
      local.get $17
      call $~lib/rt/stub/__release
      local.get $17
      i32.const 1128
      i32.const 11
      i32.const 18
      call $~lib/builtins/abort
      unreachable
     end
     local.get $17
     call $~lib/rt/stub/__release
    end
   end
   local.get $3
   call $~lib/rt/stub/__release
   local.get $5
   call $~lib/rt/stub/__release
   local.get $6
   call $~lib/rt/stub/__release
  end
  call $node_modules/as-pect/assembly/internal/report/reportActual/Actual.clear
  call $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.clear
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  return
 )
 (func $start:assembly/__tests__/write.spec~anonymous|0~anonymous|0 (; 81 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 0
  i32.const 0
  call $assembly/fs/descriptor/Descriptor#constructor
  local.set $0
  local.get $0
  i32.const 224
  i32.const 0
  call $assembly/fs/descriptor/Descriptor#writeString
  call $assembly/__tests__/include/getfs
  local.set $1
  local.get $1
  i32.const 0
  call $~lib/map/Map<u32,assembly/__tests__/include/File>#get
  local.set $2
  local.get $2
  call $node_modules/as-pect/assembly/internal/Expectation/expect<assembly/__tests__/include/File>
  local.tee $3
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<assembly/__tests__/include/File>#get:not
  local.tee $4
  i32.const 1088
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<assembly/__tests__/include/File>#toBeNull
  local.get $2
  i32.load offset=4
  call $~lib/array/Array<u8>#get:buffer
  local.tee $5
  i32.const 0
  i32.const 224
  i32.const 0
  call $~lib/string/String.UTF8.byteLength
  call $~lib/arraybuffer/ArrayBuffer#slice
  local.tee $6
  i32.const 0
  call $~lib/string/String.UTF8.decode
  local.tee $7
  call $node_modules/as-pect/assembly/internal/Expectation/expect<~lib/string/String>
  local.tee $8
  i32.const 224
  i32.const 1088
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<~lib/string/String>#toStrictEqual
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $8
  call $~lib/rt/stub/__release
 )
 (func $node_modules/as-pect/assembly/internal/Test/it (; 82 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  call $node_modules/as-pect/assembly/internal/Test/reportTest
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $start:assembly/__tests__/write.spec~anonymous|0 (; 83 ;) (type $FUNCSIG$v)
  i32.const 160
  i32.const 1
  call $node_modules/as-pect/assembly/internal/Test/it
 )
 (func $start:node_modules/as-pect/assembly/internal/noOp~anonymous|0 (; 84 ;) (type $FUNCSIG$v)
  nop
 )
 (func $node_modules/as-pect/assembly/internal/Describe/describe (; 85 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $node_modules/as-pect/assembly/internal/Describe/reportDescribe
  i32.const 0
  global.set $~lib/argc
  local.get $1
  call_indirect (type $FUNCSIG$v)
  call $node_modules/as-pect/assembly/internal/Describe/reportEndDescribe
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $start:assembly/__tests__/write.spec (; 86 ;) (type $FUNCSIG$v)
  call $start:assembly/__tests__/include
  i32.const 128
  i32.const 2
  call $node_modules/as-pect/assembly/internal/Describe/describe
 )
 (func $node_modules/as-pect/assembly/index/__ready (; 87 ;) (type $FUNCSIG$v)
  i32.const 1
  global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.ready
 )
 (func $node_modules/as-pect/assembly/internal/call/__call (; 88 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 0
  global.set $~lib/argc
  local.get $0
  call_indirect (type $FUNCSIG$v)
 )
 (func $node_modules/as-pect/assembly/internal/report/reportActual/__sendActual (; 89 ;) (type $FUNCSIG$v)
  (local $0 i32)
  block $break|0
   block $case7|0
    block $case6|0
     block $case5|0
      block $case4|0
       block $case3|0
        block $case2|0
         block $case1|0
          block $case0|0
           global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.type
           local.set $0
           local.get $0
           i32.const 0
           i32.eq
           br_if $case0|0
           local.get $0
           i32.const 6
           i32.eq
           br_if $case1|0
           local.get $0
           i32.const 2
           i32.eq
           br_if $case2|0
           local.get $0
           i32.const 3
           i32.eq
           br_if $case3|0
           local.get $0
           i32.const 1
           i32.eq
           br_if $case4|0
           local.get $0
           i32.const 4
           i32.eq
           br_if $case5|0
           local.get $0
           i32.const 5
           i32.eq
           br_if $case6|0
           local.get $0
           i32.const 10
           i32.eq
           br_if $case7|0
           br $break|0
          end
          return
         end
         global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference
         global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
         call $node_modules/as-pect/assembly/internal/report/reportActual/reportActualArray
         br $break|0
        end
        global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.float
        i32.const 1
        global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
        call $node_modules/as-pect/assembly/internal/report/reportActual/reportActualFloat
        br $break|0
       end
       global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.integer
       global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.signed
       global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
       call $node_modules/as-pect/assembly/internal/report/reportActual/reportActualInteger
       br $break|0
      end
      global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
      call $node_modules/as-pect/assembly/internal/report/reportActual/reportActualNull
      br $break|0
     end
     global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference
     global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.offset
     global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
     call $node_modules/as-pect/assembly/internal/report/reportActual/reportActualReferenceExternal
     br $break|0
    end
    global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference
    global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
    call $node_modules/as-pect/assembly/internal/report/reportActual/reportActualString
    br $break|0
   end
   global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference
   global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.signed
   global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
   call $node_modules/as-pect/assembly/internal/report/reportActual/reportActualLong
   br $break|0
  end
 )
 (func $node_modules/as-pect/assembly/internal/report/reportExpected/__sendExpected (; 90 ;) (type $FUNCSIG$v)
  (local $0 i32)
  block $break|0
   block $case9|0
    block $case8|0
     block $case7|0
      block $case6|0
       block $case5|0
        block $case4|0
         block $case3|0
          block $case2|0
           block $case1|0
            block $case0|0
             global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.type
             local.set $0
             local.get $0
             i32.const 6
             i32.eq
             br_if $case0|0
             local.get $0
             i32.const 2
             i32.eq
             br_if $case1|0
             local.get $0
             i32.const 3
             i32.eq
             br_if $case2|0
             local.get $0
             i32.const 1
             i32.eq
             br_if $case3|0
             local.get $0
             i32.const 4
             i32.eq
             br_if $case4|0
             local.get $0
             i32.const 5
             i32.eq
             br_if $case5|0
             local.get $0
             i32.const 7
             i32.eq
             br_if $case6|0
             local.get $0
             i32.const 9
             i32.eq
             br_if $case7|0
             local.get $0
             i32.const 8
             i32.eq
             br_if $case8|0
             local.get $0
             i32.const 10
             i32.eq
             br_if $case9|0
             br $break|0
            end
            global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference
            global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
            global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
            call $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedArray
            br $break|0
           end
           global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.float
           i32.const 1
           global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
           global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
           call $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedFloat
           br $break|0
          end
          global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.integer
          global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.signed
          global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
          global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
          call $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedInteger
          br $break|0
         end
         global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
         global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
         call $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedNull
         br $break|0
        end
        global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference
        global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.offset
        global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
        global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
        call $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedReferenceExternal
        br $break|0
       end
       global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference
       global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
       global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
       call $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedString
       br $break|0
      end
      global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
      global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
      call $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedFalsy
      br $break|0
     end
     global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
     global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
     call $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedFinite
     br $break|0
    end
    global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
    global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
    call $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedTruthy
    br $break|0
   end
   global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference
   global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.signed
   global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
   global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
   call $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedLong
   br $break|0
  end
 )
 (func $node_modules/as-pect/assembly/internal/log/__ignoreLogs (; 91 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 0
  i32.ne
  global.set $node_modules/as-pect/assembly/internal/log/ignoreLogs
 )
 (func $node_modules/as-pect/assembly/internal/RTrace/__disableRTrace (; 92 ;) (type $FUNCSIG$v)
  i32.const 0
  global.set $node_modules/as-pect/assembly/internal/RTrace/RTrace.enabled
 )
 (func $node_modules/as-pect/assembly/internal/RTrace/__getUsizeArrayId (; 93 ;) (type $FUNCSIG$i) (result i32)
  i32.const 10
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/__cleanup (; 94 ;) (type $FUNCSIG$v)
  call $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.clear
  call $node_modules/as-pect/assembly/internal/report/reportActual/Actual.clear
 )
 (func $start (; 95 ;) (type $FUNCSIG$v)
  global.get $~lib/started
  if
   return
  else   
   i32.const 1
   global.set $~lib/started
  end
  global.get $~lib/heap/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
  call $start:assembly/__tests__/write.spec
 )
 (func $null (; 96 ;) (type $FUNCSIG$v)
 )
)
