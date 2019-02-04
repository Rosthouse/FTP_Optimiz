# Local Search Metaheuristisc

Gegeben:

- Eine gültige Lösung: $\vec{x} \in S$
- Eine Nachbarschaftsfunktion: $\vec{x} \mapsto N(\vec{x})$

Wiederhole:

1. Suche die beste Lösung für $\vec{x}'$ in der Nachbarschaft $N(\vec{x})$
2. Ist $\vec{x}' = \vec{x}$ STOP
3. Andernfalls, setzte $\vec{x} := \vec{x}'$ und gehe zu 1.

## Mögliche Fragen

Gegeben ein Basisset

$$
S={\vec{x} \in \mathbb{Z}^{n}: \text{conditions}}
$$

und einer Funktion auf dem Set

$$
f: S \rightarrow \mathbb{R} \text{ with } f(\vec{x})=\vec{c}^{T}\vec{x}
$$

und eine Nachbarschaftsfunktion

$$
N(\vec{x})={\vec{x}' \in S: \text{conditions}}
$$

Folgende Aufgaben können vorkommen:

1. Finde alle Elemente und deren Funktionswerte.
2. Definiere für jedes Element dessen Nachbarschaft.
3. Definiere ob ein Element folgende Eigenschaften hat:
   1. Lokales Minimum
   2. Lokales Maximum
   3. Globales Minimum
   4. Globales Maximum

__Tipp:__ Ist ein Element ein globales Maximum/Minimum, so ist es selbstverständlich auch ein lokales Maximum/Minimum.

Benutze folgende Tabelle um den Schreibaufwand zu reduzieren:

|         i          | $\vec{x}_{i}$ | $f(\vec{x})_{i}$ |     $N(\vec{x})$      |    Qualifier     |
| :----------------: | :-----------: | :--------------: | :-------------------: | :--------------: |
| Index des Elements |    Element    |  Funktionswert   | Indizes der Nachbaren | Loc/Glob min/max |

Notiere über der Prüfung, dass in der Nachbarschaftstabelle nur die Indizes der Nachbarselemente stehen, nicht die Elemente selbst.
