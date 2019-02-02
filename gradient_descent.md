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

\newpage