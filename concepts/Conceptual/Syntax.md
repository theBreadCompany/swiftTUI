# SYNTAX

This document shall elaborate on how syntax might work.

## The Issue

The issue is the core of productivity when writing with this framework. No matter how well written the core might be, it is useless if noone understands how to use it and/or just wants to throw it away because it is annoying/impossible to debug.

## The Solution

There are two solutions:

1. Use the SwiftUI syntax. It is nice, clean and readable. The only noticable difference when writing would be the naming of the content builders, see [Naming](Naming.md) for details.
2. Use a "custom" Syntax, which would basically chain modifiers and content builders into one chunk.

## Implementation

1 is probably more annoying to implement as you have parse every block that builds content into a chunk first.

2 is easier to implement as the view-chunk is already there, ready to be parsed.

All ways require to create code that is able to represent the content via cursesKit.

## Examples

SwiftUI-like


```swift
var body: some View {
	CMenu {
		CMenuItem(title: "go to randomView", linkingTo: RandomView())
		CMenuItem(title: "go to testView", linkingTo: TestView()
	}
}
```
or 

custom

```swift
var body: some View {
	CMenu(withEntries: [
		CMenuItem(title: "go to randomView", linkingTo: RandomView())
		CMenuItem(title: "go to testView", linkingTo: TestView()
	])
```