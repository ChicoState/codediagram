# codediagram

This is a relatively lightweight container that converts
D2 diagram files to UML diagrams in SVG format.

## Getting Started

1. Build the container: `docker build -t uml .`
2. Run it, binding the location of your .d2 files to the container's **in** volume: `docker run -it -v $(pwd):/in uml`

## D2 Diagramming

See [inheritance.d2](inheritance.d2) for an example of a simple UML class diagram with inheritance

* [D2 Cheat Sheet (PDF)](https://github.com/terrastruct/d2/blob/master/docs/assets/cheat_sheet.pdf) for D2 syntax

* [D2 Documentation](https://d2lang.com/tour/intro/)

* [D2 on GitHub](https://github.com/terrastruct/d2)