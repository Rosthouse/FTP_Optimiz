# Cutting Planes

Berechnet eine Linearisierung für ein LP-Problem.

## Algo

Gegeben sei ein Lineares Programm in Inequality Form.

1. Gebe jeder Ungleichung eine Indexnummer.
2. Identifiziere die Ziel-Ungleichungen:
   1. Betrachte die Grafik und notiere die Ungleichung für jede Linie, welche man zeichnen muss
      - Dies wird wahrscheinlich etwas einfaches wie folgendes sein: $x_{1} \leq 1$
3. Finde die Ausgangs-Ungleichungen, mit welcher wir die Ziel-Ungleichung definieren können:
   1. Für jeden (End)Punkt in der Ziel-Ungleichung, nimm die Ausgangs-Ungleichung, welche der Punkt berührt.
4. Stelle ein Lineares Ungleichungssystem auf mit den 2 gewählten Ausgangsgleichungen.
5. Kombiniere dies nun so, dass schlussendlich die Ziel-Ungleichung entsteht.
   1. Bemerke, dass wir keine Brüche haben können. Diese müssen im letzten Schritt immer auf den nächsten Integer abgerundet werden.

![Gomory Chvatal Cuts](images/gomory_chvatal_cuts.png)

