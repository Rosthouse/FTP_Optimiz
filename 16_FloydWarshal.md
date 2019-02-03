# Floyd Warshal

Löst das Problem der kürzesten Pfade für alle Vertexpaare.

## Algo

Für eine Tabelle $A^{i \times i}$ mit Distanzen, z.B.

|       |   A   |   B   |   C   |   D   |
| :---: | :---: | :---: | :---: | :---: |
|   A   |   1   |   2   |   3   |   4   |
|   B   |   5   |   6   |   7   |   8   |
|   C   |   9   |  10   |  11   |  12   |

1. Setzte Index $k$ auf 1
2. Während $k<=i$
   1. Streiche Zeile $k$ und Kolumne $k$ mit einem Leuchtstift an
   2. Für jeden Kreuzpunkt der Zeile und Kolumne, berechne die Distanz
   3. Trage in die Tabelle den kleineren Wert ein
   4. Erhöhe $k$ um $1$

Ist die Tabelle Symmetrisch (z.B. der Graph ist ungerichtet), so muss nur die obere Hälfte der Tabelle gelöst werden. Die Resultate können dann in die untere Hälfte übertragen werden.

## Hinweise

- Dieser Algorithmus kann auch negative Pfade abhandeln (aber keine negativen Zyklen)
- Braucht *Dynamische Programmierung*
- Die längste Distanz zwischen 2 Vertices bezeichnet den Diameter des Graphen: $diam(G)$

\newpage