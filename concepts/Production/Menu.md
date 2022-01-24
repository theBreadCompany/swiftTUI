# MENUS

This document shall elaborate on how Menus might work and look.

## The Issue

It should be easy to create and use customizable menus of any kind. 

## The Solution

Create a `CMenu` or similiar named `struct` (see [Naming](../Conceptual/Naming.md)) which takes `CMenuItems` as arguments, either implicit or explicit. 
These `CMenu`s and `CMenuItem`s have several style options, stored in the `CMenuStyle` and `CMenuItemStyle` `enum`s, which would be considered upon content building.

Suggested `CMenuStyle`: 

## The Implementation

[cursesKit](https://github.com/theBreadCompany/swiftTUI) is missing some central abilities to create menu, like showing and moving a cursor, which would "light up" the selected option of a menu.
