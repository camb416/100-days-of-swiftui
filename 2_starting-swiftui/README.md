[< back](../README.md)
# Starting SwiftUI: WeSplit

## Day 16

The videos aren't holding my attention, I'm not sure why. Something about it's making me completely space out. Maybe because it's pragmatic. I might just start skipping around.

put `@State private` in front of a var in a SwiftUI struct to make 'em mutable. Dunno why yet, just do it!

The `$` preceding a variable name indicates *two way binding* (variable can be read and written from a Text Field for example.)

`ForEach(0..<100){` lets you create views with a loop. It passes a closure and the syntax hurts my head just a little.

## Days 17-18

Oh these app examples are fun. Added an emoji to the title, headers on all sections, and googled how to change the font of a text field with `.font(.largeTitle)`. The declarative aspect of the data and the UI is something I want printed on a t-shirt.

![We Split Screenshot](wesplit.jpg)

## Day 19

Made a temperature converter. Some observations are that
1. it's challenging to make data in the right formats to go into the SwiftUI code
2. @State watchers require an `.onChange` method instead of using `didSet`
3. `ForEach` requires a const range.

![Temp Convert Screenshot](tempConvert.jpg)
