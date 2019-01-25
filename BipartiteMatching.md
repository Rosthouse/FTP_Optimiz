# Bipartit Matching

Für einen Bipartiten Graphen sollen die Matchings berechnet werden.

## Algo

1. Führe einen Quellvertex $s$ und einen Zielvertex $t$ ein
2. Füge Kanten $E(s,v_{l})$ mit Kapazität $c = \infty$ für alle Vertices auf der linken Seite des Graphen ein
3. Füge Kanten $E(v_{r},t)$ mit Kapazität $c = \infty$ für alle Vertices auf der rechten Seite des Graphen ein
4. Für alle Kanten $E(v_{l}, v{r})$
   1. Konvertiere die Kante von einer ungerichteter Kante zu einer gerichteten Kante, nämlich von links nach rechts.
   2. Setzte die Kapazität $c=1$.
5. Berechne nun den Maximalfluss $F_{s \rightarrow t} \in \mathbb{Z}^{+}$ mit [Ford Fulkerson](./FordFulkerson) 