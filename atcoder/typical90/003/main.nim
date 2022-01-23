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
template `//` (a, b: int): int = a div b
template rep(a, b): seq = newSeqWith(b, a)
proc echo*(v: int) = echo($v)
proc echo*(v: float) = echo(fmt"{v:.10f}")
func chmax*[T](t: var T; v: T): bool{.discardable.} = (let f = (t < v);
    if f: t = v; f)
func chmin*[T](t: var T; v: T): bool{.discardable.} = (let f = (t > v);
    if f: t = v; f)
proc scanf(formatstr: cstring){.header: "<stdio.h>", varargs.}
proc getchar(): char {.header: "<stdio.h>", varargs.}
proc nextInt(): int = scanf("%lld", addr result)
proc nextFloat(): float = scanf("%lf", addr result)
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

proc solve(N: int, A: seq[int], B: seq[int]): void =
  discard

  proc collectTownPairs(): seq[seq[int]] =
    var tree = newSeqWith(N, newSeq[int](N))
    for city_code in 1..N:
      for (a, b) in zip(A, B):
        tree[a - 1].add(b - 1)
        tree[b - 1].add(a - 1)
    return tree

  var pair = collectTownPairs()
  # var ansPair: tuple[place: int, count: int] = (0, 0)
  var ansPair: tuple[place: int, count: int] = (0, 0)
  var explored: Deque[int] = toseq[1..N].toDeque()

  proc bfs(start: int, last: int, nowCount: int, explored: Deque[int],
      ansPair: var tuple[count: int, place: int]): void =
    if nowCount > ansPair.count:
      ansPair.count = nowCount
      ansPair.place = start
    for next in pair[start]:
        if next not in explored:
          explored.addLast(next)
          bfs(start = next, last = start, nowCount+1, explored)

  bfs(1, 0, 1, ansPair)
  var ansStart = ansPair.place
  ansPair = (0, 0)
  bfs(ansStart, 0, 1)
  echo ansPair.count

  # 任意の点から最も遠い点からスタートすれば、開始地点として最高となる性質がある(脳内証明)



# <<< main
proc main(): void =
  var N = nextInt()
  var A = newSeqWith(N-1, 0)
  var B = newSeqWith(N-1, 0)
  for i in 0..<N-1:
    A[i] = nextInt()
    B[i] = nextInt()
  solve(N, A, B);
  return

main()
# >>>



# vim:ft=nim ts=2 sw=2 sts=4 fdm=marker fdl=0 fmr=<<<,>>>
