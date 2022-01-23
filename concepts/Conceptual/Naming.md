# NAMING ISSUES

This document shall elaborate on how naming might work.

## The Issue

The issue is that SwiftUI and SwiftTUI would have at least very similiar names, both themselves and their structures. It would be at least confusing if one would write `Text("some text")`, escecially in applications that mix both frameworks, although they wouldn't be used at once in a file. 

## The Solution

Regarding the framework? Its name shouldn't be a great issue, you could leave it as is or only change it slightly to something like `Swift[y]CLI` or similiar.

Regarding the structures? One could introduce a prefix (like `NS` in `NSString` which stands for `NextStep`) like `T`, `TUI`, `C`, `CLI` or similiar, result in `TText`, `CText` etc. respectivly.

## Implementation

Nothing special, just write the chosen prefix in front of every struct name.

## Examples

```swift
CLIText("Some random")
```

or

```swift
CMenu {
    CMenuItem(title: "go to randomView", linkingTo: RandomView())
}
```

