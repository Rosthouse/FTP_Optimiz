# Newton Method
1. Calculate $f(x^{(0)})$
2. Calculate derivation $\nabla f(x,y)=\begin{pmatrix}
    \frac{\partial^2f(x^{(i)})}{\partial x_1} \\
    \frac{\partial^2f(x^{(i)})}{\partial x_2}
\end{pmatrix}$
3. Calculate hessian Matrix $H_f(x^{(i)})=\begin{pmatrix}
    \frac{\partial^2f(x^{(i)})}{\partial x_1 \partial x_1} & \frac{\partial^2f(x^{(i)})}{\partial x_1 \partial x_2} \\
    \frac{\partial^2f(x^{(i)})}{\partial x_2 \partial x_1} & \frac{\partial^2f(x^{(i)})}{\partial x_2 \partial x_2}
\end{pmatrix}$
4. While $f(x^{(0)}) < f(x^{(i)})$
   1. Calculate $\nabla f(x^{(i)})$
   2. Calculate $H_{f}(x^{(i)})$ and inverse it
   3. Calculate $x^{(i)} = x^{(i-1)} - (H_{f}(x^{(i-1)})) * \nabla f(x^{(i-1)})$
   4. Calculate $f(x^{(i)})$

Use the following table to keep track of your calculations:

|  $i$  | ${x^{(i)}}$ | $f(x^{(i)})$ | $\nabla f(x^{(i)})$ | $H_{f}(x^{(i)})$ | $H_{f}(x^{(i)})^{-1}$ |
| :---: | :---------: | :----------: | :-----------------: | :--------------: | :-------------------: |

\newpage