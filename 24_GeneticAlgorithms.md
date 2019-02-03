# Genetic Algorithms

Versuchen eine Lösung durch Anlehnung an Evolutionäre Vorgänge zu suchen.

## Terminologie

Individual:
    Ein Lösungskandidat des Optimierungsproblems. Oftmals wird dies durch einen Vektor mit $n$ (binären, ganzen oder reelen) Einträgen dargestellt.

Genum:
    Die individuelen Einträgen des Vektors werden als die Gene des Individuums angesehen.

Alleles:
    Die konkreten Werte, welche die Einträge des Individuum-Vektors annehmen (bsp. 0/1 in einem binären Vektor).

Population:
    Set aus Individuen in einem Optimierungsproblem zu einer gegebenen Zeit.

Generation:
    Die Population zu einem spezifischen Zeitpunkt. Eine neue Generation wird in jeder Iteration des Algorithmus kreiert.

Genotyp:
    Die encodierte Darstellung eines Individuums. Dies hängt von unserer gewählten Darstellungsform ab.

Phenotyp:
    Die decodierte Darstellung eines Individum. Dies hängt nicht von unserer gewählten Darstellungsform ab.

Fitness Funktion:
    Misst die Qualität der Individuen im Optimierungsproblem.

Recombination:
    

## Algorithmus

Start:
    Erstelle eine zufällige Population.

