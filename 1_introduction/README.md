[< back](../README.md)
# Introduction to Swift

## Days 1-2: Avoiding Xcode
Days one and two are basic data types and printing. Watched the videos on 2x and making my life harder by testing the cross-platform nature of Swift.
- Installed Jetbrains toolbox on Ubuntu, which required a system update and some effort to install something called FUSE. This borked my video card driver. Cool.
- Installed Swift 6.0.1, which requires Python and Clang.
- Created a [run configuration](.fleet/run.json) in Fleet so I could run with Ctrl-R (no debugger support yet though)
- Did [the first checkpoint excercise](https://www.hackingwithswift.com/quick-start/beginners/checkpoint-1) where you convert celsius to fahrenheit. Results [here](checkpoint-1.swift).

### Takeaways:
- `let` meaning const instead of local `var` is weird, but I get it
- lots of helper methods on basic types
- emoji support is pretty funny, but shouldn't be in 2024
- Avoiding Xcode is hard mode, avoiding VSCode is **Hurt Me Plenty**

## Days 3-4: Showing Off

Days three and four: Arrays, Dictionaries, Sets and Enums. Sets are kind of new to me. Dicts are just named arrays. All of these need single type for key and single type for value. I got a few quiz questions wrong. Paul gets a little sneaky with syntax. Watching videos in the background on 1x.

- Added a new [run configuration](.fleet/run.json) to run this on Fleet on Mac. Should just install swift in /usr/bin on Linux to consolidate the run configs.
- With the [second checkpoint](checkpoint-2.swift), I added splitting words out of a string, and providing sorts and reports.

### Takeaways:
- use of `case` in enums is weird
- explains all the things prefixed with `.`
- Arrays and Dicts are straightforward, but the syntax for Sets is going to trip me up later.
- Paul likes type inference, but it makes me nervous. I'm tempted to explicitly type and add semicolons like a crazy person
- While this is reading ahead, handling sorts, filters and maps on compound types have some weird syntax that's perhaps less intuitive than python or javascript.

## Days 5-6: Coding on iPhone

Day five is `if` statements, `switch` `cases` and ternary operators. Six is loops. Quiz questions getting trickier with needing to watch for syntax errors and typos. Something is werid with the javascript on the quiz questions, I have to scroll before the onClick registers or something.

- [Checkpoint 3](checkpoint-3.swift)  is FizzBuzz.
- Tried [Swifty Compiler](https://apps.apple.com/us/app/swifty-compiler/id1544749600), an iOS app that lets you write Swift on iPhone.

### Takeaways:
- no `break` necessary in switches, use `fallthrough` to force it.
- Swift requires all possible cases satisfied in a `switch`.
- Ranges are three dots `...` (inclusive) or `..<` for exclusive (up to but excluding)
- `for _` means you don't need an iterator variable, just do something the right number of times.
- `names[1...]` means `name[1]` through `name[n]` where `n` is the last item in the array
- Swifty Compiler on iPhone is a neat trick, but impractical for me. Free version doesn't let you save, and you need an internet connection to compile. Paid version requires credits or something. Will try Swift Playgrounds on iPad before I jump to paid version.

## Days 7-8: Brain Hurting a Bit

Day 7 is functions, params and returns, 8 is default values, throwing functions. Tests are getting sneaky. Feel good when I don't miss one. Tuples, default params, returns, Do/Try/Catches and Errors. I'm keeping up but can tell there's a lot of expressiveness to the syntax that'll take some more practice to fully understand.

- Added [exercise-1.swift](exercise-1.swift) which compares two strings using functions. Jumped ahead to default parameters on this.
- Tuples took me a sec to understand the syntax, so I wrote some [Notes](notes-day08.swift) for practice.
- Did [Checkpoint 4](checkpoint-4.swift), where you determine square roots without using `sqrt`

### Takeaways:
- Functions can omit the `return` keyword if its a single expression
- `_` can be used to avoid naming a param or an Tuple elements.
- `if` statements can act like an expression. Wild.
- Try/Catches need `do` as well. Very Yoda.
- Errors derive from Swift's `Error` type, and they act a lot like enums.

## Days 9-10: Lots of Rules

Closures. There's a lot of alternate syntax that's possible. It's getting easier to write than understand at this point. Structs have methods, get/setters, and observers. I've started swearing at the tests. I'm not totally sure when `self` is required. Something to do with Closures.

- Added [checkpoint 5](checkpoint-5.swift) where you filter, sort and map an array of Ints using closures
- Added [Day Nine Notes](notes-day09.swift) about Closures
- Added [Day Ten Notes](notes-day10.swift) about Structs

### Takeaways:
- `in` means closure
- `using` is a common external parameter name for a closure, but not a keyword.
- a LOT can be omitted in terms of parameters with closures and Swift will accept it if it makes sense.
- `$0` and `$1` represent the first/second params of a closure, and means you don't need to specify them in the parens at the start of it.
- structs can have `let`s and `vars` and `func`s
- struct methods can't change properties unless they're marked `mutating func`
- `StructName.init()` is equivalent to `StructName()` when initializing a struct
- if you assign struct vars in declaration, they act as defaults which can be overridden in initializer.
- Tuples are always defined inline, can't have methods, structs save you typing.
- Observers are mutating
- default initializers are called "member-wise" initializers. They can be customized with `init(){}` in struct declaration.
- use `self.` in custom initializers when param names are ambiguous.
- All struct props need to be initialized before init finishes or other methods are called.
- `struct`s can have `extension`s where new methods (and props I assume) can be added. Use this if you want to preserve memberwise initializer and override

## Day 11: Public-Private Partnership

There are a bunch more rules around syntax when it comes to whats public, private and static in Structs.

- Added [Checkpoint 6](checkpoint-6.swift) where you make a Car struct with changeable gears.

### Takeaways:
- static stuff is on Struct, non-static (assumed) is on instance.
- if you edit private stuff, you need `mutable`
- if you have private stuff you might need to make a custom intitializer method with `init()`
- you can add control blocks with `didSet` and `willSet` on variables that creates watcher methods. That's cool.
- Swift's compiler kind of tells you whats wrong with your code when you make mistakes.

## Day 12: Classes

There are lots of default behaviors if you need empty constructors for example... if theres no param or return, leave it out. `init`s and `deinit`s are pretty chill. Overriding `init`s, when to call super is a little funny, but the compiler errors are very descriptive. Checkpoint seemed easy, but maybe that's because OOP is burned in my brain.

- Added [Checkpoint 7](checkpoint-7.swift), where you make Animal classes and subclasses

### Takeaways:
- Classes are very straightforward, but the subtleties between structs, mutability and const can be tricky

## Day 13: Protocols and Extensions

This stuff is like inheritence for structs and types. POP (protocol oriented programming) says you should make protocols and extend the default implementations, then your types are less verbose... or something

- Added [Checkpoint 8](checkpoint-8.swift).

### Takeaways:

- POP is fun, though inheretance of `init` is still a little mysterious

## Day 14: Let it be

`if let` and `guard let` are funny combos that allow optionals to get checked for. Optionals allow for `nil` which seems like it would save 50-60% of the code I've written in my life.

- Added [Checkpoint 9](checkpoint-9.swift), where you write a one-liner function with some optionals

### Takeaways:
- `nil`s are their own thing, they won't pop up if you're strongly typed, unlike in JS.
- the syntax of all these `guard`s and `??` and `?` will take a little practice to weild with intention.

## Day 15

### My Self Eval:

#### High Confidence
Nothing much new with these
- Basic Types
- Control Flow
- Structs and OOP

#### Medium Confidence

Have to think, but no problem reading
- Arrays/Sets/Dictionaries
- Optionals and Unwrapping

#### Low Confidence

Some of the short forms are tripping me up or have new rules that I've not committed to memory.

- Closures
- Protocols
- Try/Catches