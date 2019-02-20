# Creating Reuseable Components in Godot

This is the accompanying project for my presentation on creating reuseable components. [Youtube link](https://www.youtube.com/watch?v=0tST_-b3flQ)

It contains two examples.

## Example 1: A keybindings menu

* `base.tscn` contains the starting point for the workshop. It is just a menu with two halves: settings and some keybindings. The goal is to make the keybindings menu work.
* `nonreuseable.tscn` contains the non-reuseable approach to making the keybindings menu work.
* `reuseable.tscn` contains the reuseable approach to making the keybindings menu work, by splitting it into repetitive subscenes.

## Example 2: A player scene with particles

* `base.tscn` contains the starting point for the workshop. It is just a scene containing a player which has a particles node. The goal is to make it possible to change the color of the particles (for example, to have the player change between elements)
* `nonreuseable.tscn` contains the non-reuseable approach to making just that. Unfortunatelly, it won't work if we want similar functionality on enemies and projectiles.
* `reuseable.tscn` contains the reuseable approach to doing that, by splitting the particles script off. That way it can be used in many places.
