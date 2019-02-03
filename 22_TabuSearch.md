# Tabu Search

Idee:
    Änlich wie [Hill-Climbing], aber mit einem Gedächtnis. Wir versuchen Schritte zu vermeiden, welche uns zu einer zuvor besuchten Lösung bringen, oder den Effekt eines vorherigen Effekts negieren. Diese Schritte sind "tabu".

## Algo

Start:
    Initialierse eine Tabu-Liste, in der Schritte die Tabu sind notiert werden. Starte dann mit einer zufälligen Lösung.

Iterativ:
    Erforsche die Nachbarschaft der Lösung und evaluiere Schritte, welche sich **nicht** in der Tabu-Liste befinden. Fahre mit der besten gefundenen Lösung fort und aktualisiere die Tabu-Liste, bis die Abbruchbedingung erreicht ist.

Retourniere:
    Die beste gefundene Lösung.

## Variante

### Randomized tabu search

Start:
    Initialierse eine Tabu-Liste, in der Schritte die Tabu sind notiert werden. Starte dann mit einer zufälligen Lösung.

Iterativ:
    Wähle eine zufällige Lösung aus der Nachbarschaft, welche sich **nicht** in der Tabu-Liste befinden. Fahre mit dieser gefundenen Lösung fort, sofern sie eine Verbesserung bringt, und aktualisiere die Tabu-Liste, bis die Abbruchbedingung erreicht ist.

Retourniere:
    Die beste gefundene Lösung.

\newpage