# Konvertieren von Linearen Programmen

Gibt Varianten wie man Lineare Programme ineinander umwandeln kann.

## Annahmen und Notationen

- $\vec{x} \in \mathbb{R}^{n}, A \in \mathbb{R}^{m \times n}, \vec{b} \in \mathbb{R}^{m}, \vec{c} \in \mathbb{R}^{n}, I = \{1,...,m\}, J = \{1,...,n\}$
- $a^{i} \in \mathbb{R}$ ist die $i$-te Zeile von $A$, $A_{j} \in \mathbb{R}^{m}$ ist die $j$-te von $A$

## Funktionen

Lineare Funktion:
    $f(\vec{x}) = a_{1}x_{1} + a_{2}x_{2} + ... + a_{n}x_{n} = \sum_{j=1}^{n}a_{j}x{j} = \vec{a}^{T}\vec{x}, \vec{a} \in \mathbb{R}^{n}$

System von linearen Ungleichungen:
    $\sum_{j=1}^{n} a_{j}x_{j} \leq b_{j}$ resp. $\vec{a}^{T}\vec{x} \leq \vec{b}, \vec{a} \in \mathbb{R}^{n}, \vec{b} \in \mathbb{R}$
    ("$\geq$" und "$=$" analog)

## Elementare Eigenschaft
$f: \mathbb{R}^{n} \mapsto \mathbb{R}$ (Linearität)

$$
f(\alpha\vec{x} + \beta\vec{y}) = \alpha f(\vec{x}) + \beta f(\vec{y}), \{\alpha, \beta \in \mathbb{R}^{n}\}
$$

## Preparations

1. Replace non-positiv variables ($x_{i} \leq b_{i}$) with non-negative variables ($\overline{x_{i}} \geq b_{i}$), i.e. substitute $x_{i} := -\overline{x_{i}}$
   1. Substitute $x_{i}$ everywhere with $-\overline{x_{i}}$.
2. Replace all free variables $x_{i}$ with two non-negative variables $x^{+}_{i}, x^{-}_{i} \geq 0$, i.e. substitute $x_{i} := x^{+}_{i} - x^{-}_{i}$
   1. Substitute $x_{i}$ everywhere with $x^{+}_{i} - x^{-}_{i}$

## Substitution Rules

$$
\max \vec{c}^T \vec{x} \max(1,3,2)\begin{pmatrix} x_{1} \\ x_{2} \\ x_{3} \end{pmatrix}
$$

\newpage

## Lineares Program (LP)

Minimiere die lineare Objective-Funktion gemäss linearen Einschränkungen

+-----------------------------------------------+--------------------------------------------+--------------------------------------------+-----------------------------------------------+
| General Form                                  | Canonical                                  | Standard                                   | Inequality                                    |
+===============================================+============================================+============================================+===============================================+
| $\max/\min \vec{c}^{T}\vec{x}$                | $\max \vec{c}^{T}\vec{x}$                  | $\max/\min \vec{c}^{T}\vec{x}$             | $\max \vec{c}^{T}\vec{x}$                     |
+-----------------------------------------------+--------------------------------------------+--------------------------------------------+-----------------------------------------------+
| $\vec{a}^{(i)}\vec{x}\leq b_{i}, i \in I_{1}$ | $\vec{a}^{(i)}\vec{x} \leq b_{i}, i \in I$ | $\vec{a}^{(i)}\vec{x} \leq b_{i}, i \in I$ | $\vec{a}^{(i)}\vec{x}\leq b_{i}, i \in I_{i}$ |
+-----------------------------------------------+--------------------------------------------+--------------------------------------------+-----------------------------------------------+
| $\vec{a}^{(i)}\vec{x}=b_{i}, i \in I_{2}$     | $x_{j} \geq 0, j \in J$                    | $x_{j} \geq 0, j \in J$                    |                                               |
+-----------------------------------------------+--------------------------------------------+--------------------------------------------+-----------------------------------------------+
| $\vec{a}^{(i)}\vec{x}\geq b_{i}, i \in I_{3}$ |                                            |                                            |                                               |
+-----------------------------------------------+--------------------------------------------+--------------------------------------------+-----------------------------------------------+
| $x_{j} \geq 0, j \in J_{1}$                   | $\min \vec{c}^{T}\vec{x}$                  |                                            | $\min \vec{c}^{T}\vec{x}$                     |
+-----------------------------------------------+--------------------------------------------+--------------------------------------------+-----------------------------------------------+
| $x_{j} \text{free}, j \in J_{2}$              | $\vec{a}^{(i)}\vec{x} \geq b_{i}, i \in I$ |                                            | $\vec{a}^{(i)}\vec{x} \geq b_{i}, i \in I$    |
+-----------------------------------------------+--------------------------------------------+--------------------------------------------+-----------------------------------------------+
| $x_{j} \leq 0, j \in J_{3}$                   | $x_{j} \geq 0, j \in J$                    |                                            |                                               |
+-----------------------------------------------+--------------------------------------------+--------------------------------------------+-----------------------------------------------+

## Transformationen

$$
\begin{aligned}
    \leq \leftrightarrow \geq&\Rightarrow \vec{a}^{(i)}\vec{x} \leq b_{i} \leftrightarrow -\vec{a}^{(i)}\vec{x} \geq -b_{i} \\
    = \rightarrow \leq,\geq&\Rightarrow \vec{a}^{(i)}\vec{x} \leq b_{i}, \vec{a}^{(i)}\vec{x} \geq b_{i} \\
    \leq \rightarrow =&\Rightarrow \vec{a}^{(i)}\vec{x} \leq b_{i} \leftrightarrow \vec{a}^{(i)}\vec{x} + x_{i}^{s} = b_{i}, x_{i}^{s} \geq 0 (\text{slack}) \\
    \geq \rightarrow =&\Rightarrow \vec{a}^{(i)}\vec{x} \leq b_{i} \leftrightarrow \vec{a}^{(i)}\vec{x} - x_{i}^{s} = b_{i}, x_{i}^{s} \geq 0 (\text{surplus}) \\
    x_{j} \leq 0 &\Rightarrow x_{j} := -\bar{x_{j}}, \bar{x_{j}} \geq 0 \\
    x_{j} \text{free} &\Rightarrow x_{j} := x_{j}^{+} - x_{j}^{-}, x_{j}^{+}; x_{j}^{-} \geq 0
\end{aligned}
$$

\newpage