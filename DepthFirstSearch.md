# Depth First Search

Algorithmus, welcher alle Knoten in einem Graphen besucht, wobei er zuerst in die Tiefe geht.

## Algo

Für einen gegebenen Graphen $G$, wähle einen Startknoten $x$ aus.

1. Lege $x$ auf den Stack
2. Aus allen Nachbarsknoten von $x$, wählen einen beliebigen Knoten $y$ aus welcher noch nicht auf dem Stack ist.
3. Setzte $x := y$
4. Hat der aktuelle Knoten keine Nachbarsknoten, welche noch nicht im Stack sind, gehen zum letzten Knoten zurück.

![DFS](images/graph_search_dfs.png)

\newpage