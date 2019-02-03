# Gradient descent

For $\beta$, some $f: \mathbb{R}^{n} \rightarrow \mathbb{R}$ and a starting point $\vec{x}^{(0)}$

1. Calculate $\triangledown f(\vec{x})$
2. Calculate $f(\vec{x}^{(i)})$
3. Set $\beta=1$
4. C

Use the following table for your calculations:

| $\beta$ |                $\vec{x}^{(i)}$                 |           $\triangledown f(\vec{x}^{(i+1)})$           | $\vec{x}'=\vec{x}_{(i)} - \beta \triangledown f(x^{(i+1)})$ | $f(\vec{x}')$ |
| :-----: | :--------------------------------------------: | :----------------------------------------------------: | :---------------------------------------------------------: | :-----------: |
|    0    | $\begin{pmatrix} x_{1} \\ x_{2} \end{pmatrix}$ |                           -                            |       $\begin{pmatrix} x_{1} \\ x_{2} \end{pmatrix}$        | $\mathbb{R}$  |
|    1    | $\begin{pmatrix} x_{1} \\ x_{2} \end{pmatrix}$ | $\begin{pmatrix} f'(x_{1}) \\ f'(x_{2}) \end{pmatrix}$ |      $\begin{pmatrix} x'_{1} \\ x'_{2} \end{pmatrix}$       | $\mathbb{R}$  |

## Parabola fitting

Dieser Algorithmus ist eine Erweiterung des Gradient Descent. Er verwendet dabei Resultate, die dort bereits berechnet wurden. Das Resultat ist $\beta^{*}$ welches eine optimalere Lösung als $\beta$ sein soll.

### Algo

Gegeben ist eine Liste mit bereits berechneten Punkten. Wir wählen nun aus diesen 3 aus, welche wir für die weiteren Berechnungen einbeziehen:

$$
\begin{aligned}
    P(0) &= f(x^{(i)}) \\
    P(\beta) &= f(x^{(i)} - \beta \nabla f(x^{(i)})) \\
    P(2 \beta) &= f(x^{(i)} - 2 \beta \nabla f(x^{(i)})) \\
\end{aligned}
$$

>_Hinweis:_ Diese Werte wurden bereits beim Gradient Descent berechnet und können deshalb direkt in die folgende Gleichung eingesetzt werden.

Die Gleichung lautet nun wie folgt:

$$
\begin{aligned}
    \beta^{*} = \frac{-b}{2a} 
    &= \frac{\beta}{2} * \frac{3 f(x^{(i)}) - 4 f(x^{(i)} - \beta \nabla f(x^{(i)})) +  f(x^{(i)} - 2 \beta \nabla f(x^{(i)}))}{ f(x^{(i)}) - 2 f(x^{(i)} - \beta \nabla f(x^{(i)})) +  f(x^{(i)} - 2 \beta \nabla f(x^{(i)}))} \\
    &= \frac{\beta}{2} * \frac{3 P(0) - 4 P(\beta) +  P(2 \beta)}{ P(0) - 2 P(\beta) +  P(2 \beta)}
\end{aligned}
$$


Zum Schluss soll noch der Funktionswert für $\beta^{*}$ berechten werden, also 

$$
f(\vec{x}_{(i)} - \beta^{*} \triangledown f(x^{(i+1)}))
$$

Ist dieser besser als der Wert von $\beta$, so übernehmen wir diesen.

\newpage