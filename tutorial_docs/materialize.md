# Materialize css - die Basics

## Intro
Materialize css ist ein Front-End-Framework basierend auf Material Design

Materialize.css wurde von Google mit dem Ziel leicht ein einheitliches design in jeder (Web-)Anwendung zu implementieren entwickelt. Im folgenden gibt's einen kurzen Überblick über die wichtigsten Funktionen vom Materialize css.

Materialize.css besteht dabei aus einer einzigen .css datei, in welcher sehr klug sehr viele Designmöglichkeiten verpackt wurden. (diese ist bei uns durch das django-standard html automatisch eingebunden worden)


## Wie wende ich das an?
 
Bei jedem html-tag gibt es die Eigenschaft class, über diese kann das komplette tag designt werden.

### Coloring
wenn ich einem div-tag eine hintergrundfarbe geben will schreibe ich also

![](../imgs/Tutorial-Imgs/MaterializeCss/1.png)  
Man schreibt also: class="div-art | Farbe | Helligkeit"

alle Farben mit allen Helligkeiten sind hier aufgelistet: https://materializecss.com/color.html

Das beispiel-div würde dann so aussehen:
![](../imgs/Tutorial-Imgs/MaterializeCss/2.png)  

Wenn man einen Text einfärben möchte nimmt man die eigenschaft color-text und text-darken/lighten-helligkeitsstufe
![](../imgs/Tutorial-Imgs/MaterializeCss/3.png)  

Das sieht dann so aus:

![](../imgs/Tutorial-Imgs/MaterializeCss/4.png)  

Wenn man keine Helligkeitsstufe angibt wird einfach nur die Farbe angezeigt (ohne veränderte Helligkeit).

### Grid

Eine Website besteht normalerweise immer aus einer Gitterstruktur (früher hat man Tabellen verwendet, heute nimmt man div-tags, da diese unabhängig voneinander sind)

Diese Gitterstruktur wird bei Materialize in ein Container-div gepackt, dadurch wird automatisch die gitterstruktur an verschiedene gerätegrößen angepasst (bspw. Handy vs Laptop) 

![](../imgs/Tutorial-Imgs/MaterializeCss/10.png)  

Mit Materialize lässt sich diese Gitterstruktur einfach generieren.
Dazu nennt man einfach die class eines div tags row oder col, für Reihe oder Spalte.
![](../imgs/Tutorial-Imgs/MaterializeCss/5.png)  

Insgesamt gibt es dabei bei Materialize 12 spalten, die auf jede art und weise verwendet werden können.

![](../imgs/Tutorial-Imgs/MaterializeCss/6.png)  

Man kann bspw. relativ einfach eine Dreiteilung der Oberfläche mit folgendem Code erreichen: (3 mal s4 -> insgesamt 12 spalten)

![](../imgs/Tutorial-Imgs/MaterializeCss/7.png)  

Außerdem kann man z.B. mit der offset-Eigenschaft eine Spalte verschieben. offset-s6 bedeutet bspw. eine verschiebung um 6 Spalten.

![](../imgs/Tutorial-Imgs/MaterializeCss/8.png)  

![](../imgs/Tutorial-Imgs/MaterializeCss/9.png)  

Weitere coole features zum grid unter: https://materializecss.com/grid.html

### Material-icons

In Materialize ist ein großer pool an verschiedenen icons integriert. Um diese einzufügen verwendet man den html-i-tag:
![](../imgs/Tutorial-Imgs/MaterializeCss/11.png)  

Man kann die Icons in folgenden verschiedenen Größen anzeigen lassen, dazu einfach die class umbenennen

![](../imgs/Tutorial-Imgs/MaterializeCss/12.png)  

unter folgendem Link findet sich eine Liste aller Icons: https://materializecss.com/icons.html

### Weiteres

Da jede Klassenart für jeden html-tag zu erklären für diesen Zweck den Rahmen sprengen würde, war das hier des nur ein überblick über die allerwichtigsten funktionen von Materialize, um ein halbwegs vernünftiges Design zu erstellen.

Hier zum selber nachlesen, falls ihr krasse buttons, floating action buttons, navigationsleisten, preloader, cards, checkboxen, collections, hebel, knöpfe, etc. erstellen wollt, und diese direkt mit einem schönen Design verseht: https://materializecss.com/ 
Dazu einfach auf der linken Seite im Suchfeld nach dem entsprechenden Tag suchen.

