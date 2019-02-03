# Prims Algorithm

Für einen gegebenen Graphen $G(V,E)$ mit positiven Kantengewichten:
    Finde ein Set aus Kanten, welche alle Vertices von G verbinden und ein minimales Totalgewicht haben.

![Prims Algorithm](images/minimum_spanning_tree.png)

## Algo

1. Wähle einen beliebigen Vertex $v_{0}$ aus allen Vertices in $V$ aus.
2. Setzte $M=\{v_{0}\}$
3. Wähle die Kante $e$ aus allen Kanten, welche von $M$ erreicht werden können
4. Ist der Vertex $v_{e}$ noch nicht in $M$, füge den Vertex $v_{e}$ zu $M$ hinzu
5. Ansonsten, verwerfe $e$ und wähle die nachstgünstigere Kante aus.
6. Ist $V=M$, STOP.

