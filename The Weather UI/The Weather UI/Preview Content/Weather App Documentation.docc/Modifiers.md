# Modifiers

<!--@START_MENU_TOKEN@-->Summary<!--@END_MENU_TOKEN@-->

## Overview

In this article, we have mentioned basics modifiers for the ease of developer

### padding()

```swift
.padding(200, .bottom)
```
This gives us padding to only the bottom part of the frame in a `Stack`.

### Spacer()
```swift
Spacer()
```
This used in a Stack, Without a stack it wont affect the item for it is being used.

### ZStack()
```swift
ZStack{
    Spacer()

    VStack{    }

    Spacer()

    HStack{    }
    
    Spacer()
}
```
Above `ZStack` has 5 Views.

ZStack has a limit of 10 views. Views like `VStack`, `HStack`, `Spacer()`
