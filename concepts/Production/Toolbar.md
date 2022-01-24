# TOOLBARS

This document shall elaborate on how toolbars might work and look.

## The Issue

Most (even compact) CLIs like `htop` or `nwipe` use toolbars, not to store buttons or anything that GUIs need them for but to give present an overview about which functions are bound to what key. Especially the bottom toolbar is used quite often. 

## The Solution

Provide toolbars as well. The struct would be called `CToolbar` or similiar (see [Naming](../Conceptual/Naming.md)) and take `CToolbarItem`s and `CButton`s, which would hold a key, a title, and, optionally a function to register with the key. These would be displayed as i. e. black text on a white bar, vice versa or on a similiar easy-to-read element, either on top or or below the content. Speaking of positioning, the toolbars would have style options collected in a `CToolbarPositioning` enum, holding `.top` and (default) `.bottom`, which would be applied when building. 

## The Implementation

Similiar to the other content builders, these would simply generate the respective [cursesKit](https://github.com/theBreadCompany) codeblocks. The given functions would be registered with the views `KeyStore`, see [Control](../Conceptual/Control.md) for details.

## The Examples

```swift
CToolbar {
    CToolbarItem(title: "quit", key: "q")
    CToolbarItem(title: "new", key: "n")
    Button/
}
``` 

aka

```swift 
CToolbar([
    CToolBarItems(title: "quit", key: "q"),
    Button(title: "new", key: "n", linkingTo: CreationScreen())
])
```
