# Simplex Algorithm

Notation: Ein Exponent in Klammer zeigt einen Index an, keine Operation, z.B. $\vec{x}^{(2)}$ oder $\vec{z}^{(i)}$

Benötigt ein lineares Programm in der inequality Form. Bedenke dass dieser Algorithmus das Maximum findet. Für Minim

Definiere folgende Variablen:

- $A$: Matrix aus der linken Hälfte der Ungleichheiten
- $\vec{b}$: Vektor aus der rechten Hälfte der Ungleichheiten.
- $\vec{c}$: Vektor aus der Optimierungsfunktion
  - ***Achtung*** dieser Algorithmus das Maximum findet. Für Minimum, berechne $min\{-cx:x\in P\}=-max\{cx:x\in P\}$
- $\vec{v}^{(0)}$: Startvektor

0. Bestimme $A_{B}$ und $\vec{b}_{B}$ welche jeweils den Zeilen des Index der Startgleichung bestehen
1. Berechne
   - $A_{B}^{-1}$
   - $\vec{v}^{(i)}=A_{B}^{-1}\vec{b}_{B}$
2. Berechne die reduzierten Kosten $\vec{u}^{T}$
   - $\vec{u}^{T}=c^{T}A_{B}^{-1}$
3. Ist $\vec{u} \geq \vec{0}$, dann STOP.
   - $\vec{v}_{(i)}$ ist optimal
4. Wähle $j \in B$ mit $\vec{u}_{j} < 0$ und berechne die Richtung $\vec{d}$
   - $\vec{d} = -(A_{B}^{-1})_{j}$
5. Bestimme alle $\lambda^{*}$ für alle Gleichungen, mit
   - $\lambda_{i} = \frac{b_{i} - a_{i}v_{i}}{a_{i}d_{i}}$
   - für $d_{i} \leq 0$ muss keine Berechnung vorgenommen werden.
6. Ist $max\{\lambda^{*}\} = \infty$, STOP
   - Kann nur der Fall sein wenn $A\vec{d} \leq \vec{0}$
7. Berechne $\lambda_{min} = min\{\lambda^{*}\}$
   - $\bold{A}(\vec{v} + \lambda\vec{d}) = \bold{A}\vec{v}+\lambda\vec{d}\bold{A}$
   - $\lambda_{i} = \frac{b_{i} - a^{(i)}v}{a^{(i)}d}$
   - Das Minimum ist an einem Index $k$
8. Bestimme die neue Basisselektion $B'$
   - $B' = B - \{j\} \cup \{k\}$
9.  Setzte $B = B'$ und gehe zu Schritt 1.

Folgende Tabelle kann für die Berechnung verwendet werden:

Mit $A$, $\vec{b}$, $\vec{c}$ und $\vec{v}^{(0)}$

$i$ | $B^{(i)}$ | $b_{B}^{(i)}$ | $A_{B^{(i)}}$ | $A_{B^{(i)}}^{-1}$ | $\vec{v}^{(i)}$ | $\vec{u}^{(i)}$ | $j$ | $d^{(i)}$ |$-d^{(i)}$ | $\lambda^{*}$ | $k$

