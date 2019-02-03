# Simulated Annealing

Idee:
    Durch einen Temperaturfaktor steuern wir die Nachbarschaft einer Lösung. Dadurch erreichen wir, dass zu beginn eine grössere Nachbarschaft erforscht wird.

## Algo

Start:
    Wähle eine zufällige Lösung $x_{0}$. Setzte $T_{i}$ auf einen gewünschten Wert.

Iterativ:
    Evaluiere eine zufällige Lösung $y_{i}$ in der Nachbarschaft von $x_{i}$ und akzeptiere die Lösung (als $x_{i+1}$) mit der Wahrscheinlichkeit 
    $min\{1, e^{\frac{f(x_{i}) - f(y_{i})}{T_{i}}} \}$.

### Hinweise

- Ist $f(y_{i} \leq f(x_{i})$ haben wir $e^{\frac{f(x_{i}) - f(y_{i})}{T_{i}}} \geq 1$ und $y_{i}$ wird akzeptiert.
- Geht $T$ gegen unendlich, wird jede Lösung $y_{i}$ akzeptiert, da $\lim\limits_{T \to \infty} e^{\frac{f(x_{i}) - f(y_{i})}{T_{i}}} = 1$
- Geht $T$ gegen $0$, werden nur noch bessere Lösungen Lösungen ($f(y_{i} < f(x_{i})$) akzeptiert, da $\lim\limits_{T \to 0} e^{\frac{f(x_{i}) - f(y_{i})}{T_{i}}} = 0 \text{ oder } 1$

\newpage