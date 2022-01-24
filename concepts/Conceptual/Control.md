# CONTROL

This document shall elaborate on how controlling might work.

## The Issue

Who needs an application that no one can control? 

## The Solution

Current target is to support controlling an application via key input. 
This input consists of characters + arrow keys.

## The Implementation

As the whole input is being handled by `TerminalWindow.awaitKeyInput()` which simply manages calls to `ncurses::getch()`, one could use one central (global) and several, view-indiviual dictionaries to store `key`s with their respective `action`s. These `Dictionary<String, () -> ()>`s would be checked whether they contain any of the `key`s upon input. 


Nevertheless, there is one issue to think about: How would one create `action`s which need the selected value as input?

Suggestion: Store type-erased versions of the functions together with an array that stores the types of the function. Then you could simply loop through the existing types and type-cast the stored functions back.
   
