# Min-Cost Max-Flow Algorithmus

Dies ist eine Erweiterung des [Ford Fulkerson](./FordFulkerson) Algorithmus.

## Algo

1. Stelle den Graphen wie bei Ford-Fulkerson auf
2. Für jede Kante, notiere das Gewicht neben der Kapazität
3. Berechne den Maximalen Fluss gemäss Ford Fulkerson mit folgenden Anpassungen
   1. Für jede rückwärts gerichtete Kante die eingefügt wird, notiere das __negative__ Gewicht neben der Kapazität.
   2. Berechne die Kosten für jeden Pfad $P$ wie folgt:
      1. Addiere alle Kosten auf dem Pfad
      2. Multipliziere diese mit der Kapazität $g_{min}$ des Pfades
   3. Addiere alle Kosten der Pfade zusammen.
4. Nach Beendigung von Ford-Fulkerson
   1. Prüfe ob der residuale Graph $G_{R}$ noch Zyklen mit negativen Kosten hat.
   2. Falls ja, subtrahiere diese Kosten von den Gesamtkosten.

![MinCost MaxFlow](images/mincost_maxflow.png)