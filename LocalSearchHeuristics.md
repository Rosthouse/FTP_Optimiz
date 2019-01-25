# Local Search Metaheuristisc

Given:

- A feasible solution: $\vec{x} \in S$
- A neighborhood function: $\vec{x} \mapsto N(\vec{x})$

Repeat:

1. Search for the best solution $\vec{x}'$ in the neighborhood $N(\vec{x})$
2. If $\vec{x}' = \vec{x}$ STOP
3. Otherwise, set $\vec{x} := \vec{x}'$ and goto 1.

## Possible questions

Given a base set

$$
S={\vec{x} \in \mathbb{Z}^{n}: \text{conditions}}
$$

and a function defined on this set like

$$
f: S \rightarrow \mathbb{R} \text{ with } f(\vec{x})=\vec{c}^{T}\vec{x}
$$

and a neighborhood function

$$
N(\vec{x})={\vec{x}' \in S: \text{conditions}}
$$

Following tasks may occur:

1. Write down all elements & their function values
2. Define the neighborhoods for all elements
3. Define if an element is a
   1. Local Minimum
   2. Local Maximum
   3. Global Minimum
   4. Global Maximum

__Hint:__ An element that is a global maximum is always also a local maximum, same for minimum.

Use the following table to reduce writing too much stuff:

|        i         | $\vec{x}_{i}$ | $f(\vec{x})_{i}$  |     $N(\vec{x})$     |    Qualifier     |
| :--------------: | :-----------: | :---------------: | :------------------: | :--------------: |
| Index of element |    element    | the element value | Indexes of neighbors | Loc/Glob min/max |