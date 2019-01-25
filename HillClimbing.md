# Hill Climbing

Idee:
    Suche für Verbesserungen in der Nachbarschaft und verbessere die aktuelle Lösung sukzessive.

## Algo

Start:
    Beginne mit einer zufälligen Lösung und evaluiere diese.

Iteration:
    Erforsche die Nachbarschaft und evaluiere die neuen Lösungskandidaten. Fahre mit der besten Lösung fort, sollte diese tie Zielfunktion verbessern.

Stop:
    Verbessert die beste Lösung die Zielfunktion nicht mehr sind wir an einem lokalen Optimum

Retourniere:
    Die beste gefundene Lösung

## Varianten

### Stochastisches Hill-Climbing

Iteriere so lange bis die Stop-Bedingung erfüllt ist.

Stop-Bedingungen:

- Wenn keine signifikanten Verbesserungen nach einer fixen Anzahl von Schritten mehr erfolgt.
- Nach einer fixen totalen Anzahl von Iterationen oder Berechnungszeit
- Wenn eine vorgeschriebener Zeilwert für die Zielfunktion erreicht wird.

### Kontinuierliches Hill-Climbing




Immer die beste Lösung nehmen, auch wenn diese die Zielfunktion verschlechtert. Die kann zur Folge haben, dass:

- wir von einem lokalen Optimum weg kommen
- keine monotone Steigerung
- ein Zyklus entsteht