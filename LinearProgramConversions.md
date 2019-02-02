# Konvertieren

Gibt Varianten wie man Lineare Programme ineinander umwandeln kann.

## Annahmen und Notationen

- $\vec{x} \in \mathbb{R}^{n}, A \in \mathbb{R}^{m \times n}, \vec{b} \in \mathbb{R}^{m}, \vec{c} \in \mathbb{R}^{n}, I = \{1,...,m\}, J = \{1,...,n\}$
- $a^{i} \in \mathbb{R}$ ist die $i$-te Zeile von $A$, $A_{j} \in \mathbb{R}^{m}$ ist die $j$-te von $A$

## Lineare Funktion

$$
f(\vec{x}) = a_{1}x_{1} + a_{2}x_{2} + ... + a_{n}x_{n} = \sum_{j=1}^{n}a_{j}x{j} = \vec{a}^{T}\vec{x}, \vec{a} \in \mathbb{R}^{n}
$$

##  System von linearen Ungleichungen

$\sum_{j=1}^{n} a_{j}x_{j} \leq b_{j}$ resp. $\vec{a}^{T}\vec{x} \leq \vec{b}, \vec{a} \in \mathbb{R}^{n}, \vec{b} \in \mathbb{R}$

Analog zu $\geq$ und $=$

## Elementare Eigenschaft
$f: \mathbb{R}^{n} \mapsto \mathbb{R}$ (Linearität)

$$
f(\alpha\vec{x} + \beta\vec{y}) = \alpha f(\vec{x}) + \beta f(\vec{y}), \{\alpha, \beta \in \mathbb{R}^{n}\}
$$

## Lineares Program (LP)

Minimiere die lineare Objective-Funkction gemäss linearen Einschränkungen

| General Form                 | Canonical | Standard | Inequality |
| ---------------------------- | --------- | -------- | ---------- |
| $max/min \vec{c}^{T}\vec{x}$ | $hello$   | $hello$  | $hello$    |