---
papersize: a4
documentclass: article
header-includes:
    - \usepackage{multicol}
    - \newcommand{\hideFromPandoc}[1]{#1}
    - \hideFromPandoc{
        \let\Begin\begin
        \let\End\end
      }
---

## Preparations

1. Replace non-positiv variables ($x_{i} \leq b_{i}$) with non-negative variables ($\overline{x_{i}} \geq b_{i}$), i.e. substitute $x_{i} := -\overline{x_{i}}$
   1. Substitute $x_{i}$ everywhere with $-\overline{x_{i}}$.
2. Replace all free variables $x_{i}$ with two non-negative variables $x^{+}_{i}, x^{-}_{i} \geq 0$, i.e. substitute $x_{i} := x^{+}_{i} - x^{-}_{i}$
   1. Substitute $x_{i}$ everywhere with $x^{+}_{i} - x^{-}_{i}$

## Substitution Rules

$$
max \vec{c}^T \vec{x} max(1,3,2)\begin{pmatrix} x_{1} \\ x_{2} \\ x_{3} \end{pmatrix}
$$

## Forms

All forms.

## General Form

$$
\begin{aligned}
    \text{max/min} \vec{c}^{T}\vec{x}   \\
    \vec{a}^{i}\vec{x} &\leq b_{i}      \\
    \vec{a}^{i}\vec{x} &= b_{i}         \\
    \vec{a}^{i}\vec{x} &\geq b_{i}      \\
    x_{j} &\leq 0                       \\
    x_{j} &\text{ free}                  \\
    x_{j} &\geq 0
\end{aligned}
$$

### Canonical Form

$$
\begin{equation*}
    \begin{aligned}[c]
        \text{max } \vec{c}^{T}\vec{x} \\
        \vec{a}^{i}\vec{x} &\leq b_{i}      \\
        x_{j} &\leq 0                       \\
    \end{aligned}
    
    \begin{aligned}[c]
        \text{min } \vec{c}^{T}\vec{x} \\
        \vec{a}^{i}\vec{x} &\leq b_{i}      \\
        x_{j} &\leq 0                       \\
    \end{aligned}
\end{equation*}
$$