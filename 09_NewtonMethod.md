# Newton Method

Dieser Algorithmus ist eine Erweiterung des Gradient Descent Algorithmus.

## Algo

1. Berechne $f(x^{(0)})$
2. Berechne die Ableitung $\nabla f(x,y)=\begin{pmatrix}
    \frac{\partial^2f(x^{(i)})}{\partial x_1} \\
    \frac{\partial^2f(x^{(i)})}{\partial x_2}
\end{pmatrix}$
3. Berechne hessische Matrix $H_f(x^{(i)})=\begin{pmatrix}
    \frac{\partial^2f(x^{(i)})}{\partial x_1 \partial x_1} & \frac{\partial^2f(x^{(i)})}{\partial x_1 \partial x_2} \\
    \frac{\partial^2f(x^{(i)})}{\partial x_2 \partial x_1} & \frac{\partial^2f(x^{(i)})}{\partial x_2 \partial x_2}
\end{pmatrix}$
4. Während $f(x^{(0)}) < f(x^{(i)})$ ist
   1. Berechne $\nabla f(x^{(i)})$
   2. Berechne $H_{f}(x^{(i)})$ und invertiere diese.
   3. Berechne $x^{(i)} = x^{(i-1)} - (H_{f}(x^{(i-1)})) * \nabla f(x^{(i-1)})$
   4. Berechne $f(x^{(i)})$

Brauche folgende Tabelle um deinen Fortschritt zu verfolgen:

|  $i$  | ${x^{(i)}}$ | $f(x^{(i)})$ | $\nabla f(x^{(i)})$ | $H_{f}(x^{(i)})$ | $H_{f}(x^{(i)})^{-1}$ |
| :---: | :---------: | :----------: | :-----------------: | :--------------: | :-------------------: |

