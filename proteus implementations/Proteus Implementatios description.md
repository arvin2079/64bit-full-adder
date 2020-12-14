

# Proteus Implementatios
## Issues :
1. Majority Logic
2. Parity Generator
3. Decoder Implementation
---

### Majority Logic
assumptions:
- `4` input.
- if `0` inputs were equal to `1` outputs return `0`.

#### Truth table :
A | B | C | D || F
--- | --- | --- | --- | --- | ---
0 | 0 | 0 | 0 || 0
0 | 0 | 0 | 1 || 0
0 | 0 | 1 | 0 || 0
0 | 0 | 1 | 1 || 0
0 | 1 | 0 | 0 || 0
0 | 1 | 0 | 1 || 0
0 | 1 | 1 | 0 || 0
0 | 1 | 1 | 1 || 1
1 | 0 | 0 | 0 || 0
1 | 0 | 0 | 1 || 0
1 | 0 | 1 | 0 || 0
1 | 0 | 1 | 1 || 1
1 | 1 | 0 | 0 || 0
1 | 1 | 0 | 1 || 1
1 | 1 | 1 | 0 || 1
1 | 1 | 1 | 1 || 1

### Karnaugh map :
|AB\CD| 00 | 01 | 11 | 10
--- | --- | --- | --- | ---
**00** | 0 | 0 | 0 | 0
**01** | 0 | 0 | 1 | 0
**11** | 0 | 1 | 1 | 1
**10** | 0 | 0 | 1 | 0

```
F = CDB + ABC + ACD + ABD
```
---

### Even Parity Bit Generator
assumptions:
- `4` bit signal.
- This is even parity generator so we set `1` for F only when signal total `1` bit number is odd.

#### Truth table :
A | B | C | D || F
--- | --- | --- | --- | --- | ---
0 | 0 | 0 | 0 || 0
0 | 0 | 0 | 1 || 1
0 | 0 | 1 | 0 || 1
0 | 0 | 1 | 1 || 0
0 | 1 | 0 | 0 || 1
0 | 1 | 0 | 1 || 0
0 | 1 | 1 | 0 || 0
0 | 1 | 1 | 1 || 1
1 | 0 | 0 | 0 || 1
1 | 0 | 0 | 1 || 0
1 | 0 | 1 | 0 || 0
1 | 0 | 1 | 1 || 1
1 | 1 | 0 | 0 || 0
1 | 1 | 0 | 1 || 1
1 | 1 | 1 | 0 || 1
1 | 1 | 1 | 1 || 0

### Karnaugh map :
|AB\CD| 00 | 01 | 11 | 10
--- | --- | --- | --- | ---
**00** | 0 | 1 | 0 | 1
**01** | 1 | 0 | 1 | 0
**11** | 0 | 1 | 0 | 1
**10** | 1 | 0 | 1 | 0

```
F = A'B'C'D + A'B'CD' + AB'C'D' + AB'CD
    + ABC'D + ABCD' + AB'C'D' + AB'CD
  .
  .

  = A ⊕ B ⊕ C ⊕ D
```
---
### Decoder Implementation
assumptions:
```
F1 = xz + x!y!z!
F2 = x!y + xy!z!	
F3 = xy + x!y!z
```

#### Truth table : 
A | B | C || F1 | F2 | F3  
--- | --- | --- | --- | --- | --- | ---
0 | 0 | 0 || 1 | 0 | 1 
0 | 0 | 1 || 0 | 0 | 0 
0 | 1 | 0 || 0 | 1 | 0 
0 | 1 | 1 || 0 | 1 | 0 
1 | 0 | 0 || 0 | 1 | 0 
1 | 0 | 1 || 1 | 0 | 0 
1 | 1 | 0 || 0 | 0 | 1 
1 | 1 | 1 || 1 | 0 | 1 

***

### Implemention
for implemention check out the [proteus directory](https://github.com/arvin2079/verilog-proj/tree/main/proteus%20implementations).
