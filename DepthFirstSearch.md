# Depth First Search (DFS)

Für einen gegebenen Graphen g, wähle einen Startknoten x aus.

1. Lege x auf den Stack
2. Aus allen Nachbarsknoten von x, wählen einen beliebigen Knoten y aus welcher noch nicht auf dem Stack ist.
3. Setzte x := y
4. Hat der aktuelle Knoten keine Nachbarsknoten, welche noch nicht im Stack sind, gehen zum letzten Knoten zurück.

![DFS](images/graph_search_dfs.png)