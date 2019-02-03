# Ableitungsregeln

Ableitung eines Vielfachen:
    $cf(x) \mapsto cf'(x)$

Ableitung  einer Summe:
    $f(x) +g(x) \mapsto f'(x) + g'(x)$

Produktregel:
    $f(x)*g(x) \mapsto f'(x)*g(x) + f(x)*g'(x)$

Quotientenregel:
    $\frac{f(x)}{g(x)} \mapsto \frac{f'(x)*g(x) - f(x)*g'(x)}{g(x)^{2}}$

Kettenregel:
    $f(g(x)) \mapsto f'(g(x))*g'(x)$

Ableitung der inversen Funktion:
    $f(x) \mapsto \frac{1}{x'(f)}$

Potenzfunktionen:

- $x^{n} \mapsto n*x^{n-1}$
- $1 \mapsto 0$
- $x \mapsto 1$
- $\frac{a}{x^{n}} \mapsto -\frac{a*n}{x^{n+1}}$

## Partielle Ableitungen

Je nach welcher Variable abgeleitet wird, wird die andere wie eine Konstante behandelt.

1. Ordnung $f(x,y) = 2*x + 5 \xmapsto{x} f_{x}(x,y)=2$
2. Ordnung $f_{x}(x,y) \xmapsto{x} f_{xx}(x,y)$

## Gradient

Der Gradient $\nabla f$ einer Funktion $f: \mathbb{R}^n \rightarrow \mathbb{R}$ ist der Vektor bestehend aus $n$ partiellen Ableitungen:

$$
\nabla f(\vec{x}) = 
\begin{pmatrix}
    \frac{\partial f(\vec{x})}{\partial x_{1}}  \\
    \frac{\partial f(\vec{x})}{\partial x_{2}}  \\
    \vdots                                  \\
    \frac{\partial f(\vec{x})}{\partial x_{n}}  \\
\end{pmatrix}
=
\begin{pmatrix}
    \frac{\partial f(x_{1}, x_{2}, \dots, x_{n})}{\partial x_{1}}  \\
    \frac{\partial f(x_{1}, x_{2}, \dots, x_{n})}{\partial x_{2}}  \\
    \vdots                                  \\
    \frac{\partial f(x_{1}, x_{2}, \dots, x_{n})}{\partial x_{n}}  \\
\end{pmatrix}
= 
\begin{pmatrix}
    f_{x_{1}}(\vec{x})  \\
    f_{x_{2}}(\vec{x})  \\
    \vdots              \\
    f_{x_{n}}(\vec{x})  \\
\end{pmatrix}
$$

