# <<< import
import
  algorithm,
  bitops,
  complex,
  deques,
  heapqueue,
  macros,
  math,
  sequtils,
  sets,
  strformat,
  strutils,
  sugar,
  tables
# >>>

# <<< macros
proc input*(): string {.inline.} = stdin.readLine
proc inputs*(): seq[string] {.inline.} = stdin.readLine.split
proc inputInt*(): int {.inline.} = stdin.readLine.parseInt
proc inputInts*(): seq[int] {.inline.} = stdin.readLine.split.map(parseInt)
proc chmax*[T](n: var T, m: T) {.inline.} = n = max(n, m)
proc chmin*[T](n: var T, m: T) {.inline.} = n = min(n, m)
proc `%=`*[T: SomeInteger](n: var T, m: T) {.inline.} = n = floorMod(n, m)
proc `|=`*[T: SomeInteger or bool](n: var T, m: T) {.inline.} = n = n or m
proc `&=`*[T: SomeInteger or bool](n: var T, m: T) {.inline.} = n = n and m
proc `^=`*[T: SomeInteger or bool](n: var T, m: T) {.inline.} = n = n xor m
proc `<<=`*[T: SomeInteger](n: var T, m: T) {.inline.} = n = n shl m
proc `>>=`*[T: SomeInteger](n: var T, m: T) {.inline.} = n = n shr m
template `%` (a, b: int): int = a mod b
proc echo*(v: int) = echo($v)
proc echo*(v: float) = echo(fmt"{v:.10f}")
func chmax*[T](t: var T; v: T): bool{.discardable.} = (let f = (t < v); if f: t = v; f)
func chmin*[T](t: var T; v: T): bool{.discardable.} = (let f = (t > v); if f: t = v; f)
proc scanf(formatstr: cstring){.header: "<stdio.h>", varargs.}
proc getchar(): char {.header: "<stdio.h>", varargs.}
proc nextInt(): int = scanf("%lld",addr result)
proc nextFloat(): float = scanf("%lf",addr result)
proc nextString(): string =
  var get = false
  result = ""
  while true:
    var c = getchar()
    if int(c) > int(' '):
      get = true
      result.add(c)
    else:
      if get: break
      get = false
# >>>

# <<< main
proc main():void =
  # Failed to predict input format
  <+CURSOR+>
  return

main()
# >>>

# vim:ft=nim ts=2 sw=2 sts=4 fdm=marker fdl=0 fmr=<<<,>>>
