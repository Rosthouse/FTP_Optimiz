# Broyden

Für einen gegebenen Startpunkt $\vec{x}^{(0)}$ und eine Optimierungsfunktion $f(\vec{x})$

## Vorbereitungen

1. Berechne die partiellen Ableitungen
$$
\nabla f(x,y)=\begin{pmatrix}
    \frac{\partial^2f(x^{(i)})}{\partial x_1} \\
    \frac{\partial^2f(x^{(i)})}{\partial x_2}
\end{pmatrix}
$$
2. Berechne die Hessesche Matrix
$$
   H_f(x^{(i)})=\begin{pmatrix}
    \frac{\partial^2f(x^{(i)})}{\partial x_1 \partial x_1} & \frac{\partial^2f(x^{(i)})}{\partial x_1 \partial x_2} \\
    \frac{\partial^2f(x^{(i)})}{\partial x_2 \partial x_1} & \frac{\partial^2f(x^{(i)})}{\partial x_2 \partial x_2}
\end{pmatrix}
$$
3. Set $(A^{(0)})^{-1} := (H_{f}(\vec{x}^{0}))^{-1}$

__Hinweis:__ Diese Schritte wurden sehr wahrscheinlich bereits für die [Newton](./Newton) Methode gemacht.

## Iteration

1. Berechne
$$
\vec{x}^{(1)} = x^{(0)} - (A^{(0)})^{-1} * \nabla f(\vec{x}^{(0)})
$$
2. Iteriere
   1. Berechne $\nabla f(\vec{x}^{(i)}$
   2. Berechne $g^{(i)} = \nabla f(\vec{x}^{(i)} - \nabla f(\vec{x}^{(i-1)}$
   3. Berechne $d^{(i)} = \vec{x}^{(i)} - \vec{x}^{(i-1)}$
   4. Berechne 
$$
(A^{(i)})^{-1} = (A^{(i-1)})^{-1} - \frac{( (A^{(i-1)})^{-1} * g^{(i)} - d^{(i)}) * (d^{(i)})^{T} * (A^{(i-1)})^{-1}}{(d^{(i)})^{T} * (A^{(i-1)})^{-1} * g^{(i)}}
$$
   5. Set $x^{(i+1)} = x^{(i)} - (A^{(i)})^{-1} * \nabla f(\vec{x}^{(i)}$

## Notation

Benutze die folgende Tabelle um die Werte niederzuschreiben:

Für $\nabla f(\vec{x^{(i)}}$ und $H_{f}^{-1}$:

|         i         | $x^{(i)}$ |  $\nabla f(\vec{x}^{(i)}$  |    $g^{(i)}$    |   $d^{(i)}$    |      $(A^{(i)})^{-1}$       |
| :---------------: | :-------: | :------------------------: | :-------------: | :------------: | :-------------------------: |
| Iterationsschritt |   Punkt   | Abgeleiteter funktiosnwert | 1ster Parameter | 2ter Parameter | neue angenähjerte Ableitung |

\newpage