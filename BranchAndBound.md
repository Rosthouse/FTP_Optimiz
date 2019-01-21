---
documentclass: article
papersize: a4
---

# Branch & Bound

## Neuordnung der Wertetabelle

Für diesen Algorithmus wird eine Tabelle in folgender Form bereit gestellt:

|  Objekte  |     A     |     B     |     C     |
| :-------: | :-------: | :-------: | :-------: |
| $vol_{i}$ | $vol_{A}$ | $vol_{B}$ | $vol_{B}$ |
| $val_{i}$ | $val_{A}$ | $val_{B}$ | $val_{B}$ |

Berechne dabei für jede Spalte den Benefit $ben_{j} = \frac{vol_{i}}{val_{i}}$ und sortiere die Objekte A bis N absteigend nach $ben_{j}$ neu.

## Node berechnen

Für Kapazität $cap$

1. Stelle den Root-Knoten auf
   1. Setzte $J^{L}=\emptyset, J^{R}=\emptyset$
   2. Erstelle eine leere Globale Tabelle mit $X^{UB} = \pm \infty$ (je nach min/max)
2. Während die Optimale Lösung noch nicht gefunden wurde
   1. Setzte $a_{j} = J^{L} \cup J^{R}$
   2. Berechne $X_{r}^{UB} = (a_{1}, a_{2}, \dots, a_{j}) * c = cap$
      1. Notiere dabei den Index der Variable, von welcher nur ein Teil genutzt werden konnte als $k$
      2. Ist $X_{r}^{UB} \leq  X^{LB}$, Prune by Dominance
      3. Wir $X_{r}^{UB} > cap$, Prune by Infeasibility
   3. Berechne $Z^{UB} = (a_{1}, a_{2}, \dots, a_{j}) * a$
   4. Berechne den Lower Bound $X_{r}^{LB}$ mit $a_{k} = 0$ 
      1. Ist $X_{r}^{LB} \geq X^{LB}$, perform Global Update
      2. Ist $X_{r}^{LB} = X_{r}^{UB}$, Prune By Optimality
   5. In der linken Child-Node, setzte $J^{L} \cup \{k\}$ 
   6. In der rechten Child-Nodeund setzte $J^{R} \cup \{k\}$
   7. Gehe gemäss Depth-First Search zur nächsten Node.
   8.  Gehe zu 3.1

Mögliche Prunings:

- By Dominance: Upper Bound ist $\leq$ zum Globalen Optimum
- By Optimality: Upper Bound $=$ Lower Bound
- By Infeasibility: Volum exceeds capacity