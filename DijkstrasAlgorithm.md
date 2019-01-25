# Dijkstra's Algorithm

Berechnet den kürzesten Pfad eines Vertex $v_{0}$ zu allen anderen Vertices. Wir berechnen iterativ die kürzeste Distanz $I(v)$ für den Vertex $v$, der am nächsten zu $v_{0}$ ist.

## Algorithmus

Start:
    Setze $V_{0} = \{v_{0}\}, E_{0} = \emptyset, I(v_{0}) = 0$

Führe folgendes $n-1$ mal aus:

1. 