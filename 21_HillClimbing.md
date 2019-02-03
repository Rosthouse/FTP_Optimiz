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

Immer die beste Lösung nehmen, auch wenn diese die Zielfunktion verschlechtert. Die kann zur Folge haben, dass:

- wir von einem lokalen Optimum weg kommen
- keine monotone Steigerung
- ein Zyklus entsteht

### Stochastisches Hill-Climbing

Iteriere so lange bis die Stop-Bedingung erfüllt ist.

Stop-Bedingungen:

- Wenn keine signifikanten Verbesserungen nach einer fixen Anzahl von Schritten mehr erfolgt.
- Nach einer fixen totalen Anzahl von Iterationen oder Berechnungszeit
- Wenn eine vorgeschriebener Zeilwert für die Zielfunktion erreicht wird.

### Kontinuierliches Hill-Climbing

Start:
    Setzte $i=0$. Die Initiale Lösung ist $x_{0}$

Iteration:
    $i \mapsto i+1$

1. Teste eine zufällige Lösung $y_{i}$ aus der Nachbarschaft von $x_{i}$.

$$
x_{i+1} =
\begin{cases}
    y_{i}, & \text{if } f(y_{i}) \leq f(x_{i}) \\
    x0_{i}, & \text{if } f(y_{i}) > f(x_{i})
\end{cases}
$$

Stochastische Hill-Climbing ist ähnlich zum [Gradient Descent](./GradientDescent), nur dass wir keine Ableitungen gebrauchen. Somit ist dieser Algorithmus auch in diskreten Fällen zu gebrauchen.

