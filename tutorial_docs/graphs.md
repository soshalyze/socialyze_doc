# Creating Class and DB Diagrams

## Requirements

* [Graphviz](https://graphviz.org/)
* [Build Tools for Visual Studio 2019](https://visualstudio.microsoft.com/downloads/)

## Installation

Run the command 

```bash
pip install --global-option=build_ext --global-option="-I(INSTALL_DIR)\include" --global-option="-L(INSTALL_DIR)\lib" pygraphviz
```

## Configure `pydot`

Windows: Start a console in admin mode, run command `dot -c`.

Linux: Run `sudo dot -c`.

## Creating DB Schemas

### Create DB schema for all applications

`python manage.py graph_models -a -g -o output.png`

### Create DB schema for certain applications

`python manage.py graph_models app1 app2 -o app1_app2.png`

### Create DB schema including only certain classes

`python manage.py graph_models -a -I Model1,Model2,Model3 -o Models123.png`

### Create DB schema *excluding* certain classes

`python manage.py graph_models -a -X Model1,Model2,Model3 -o NoModels123.png`

## Creating Class Diagrams

In PyCharm, select the app folder or project folder you want to create a class diagram for,
and press CTRL+ALT+SHIFT+U.
Select "Python Class Diagram" from the popup menu.
You can add fields and methods by selecting them in the top left corner of the graph display window.
