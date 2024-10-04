# 100 Days of SwiftUI

I've started doing [Paul Hudson](https://x.com/twostraws)'s [100 Days of SwiftUI](https://www.hackingwithswift.com/100/swiftui). I'd like to improve my RealityKit and Unity/Native iOS interoperability skills to make high-fidelity 3D experiences that live and feel like first-class citizens in the Apple ecosystem.

## Day One: Avoiding Xcode
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

## Day Two: Showing Off

Days three and four: Arrays, Dictionaries, Sets and Enums. Sets are kind of new to me. Dicts are just named arrays. All of these need single type for key and single type for value. I got a few quiz questions wrong. Paul gets a little sneaky with syntax. Watching videos in the background on 1x.

- Added a new [run configuration](.fleet/run.json) to run this on Fleet on Mac. Should just install swift in /usr/bin on Linux to consolidate the run configs.
- With the [second checkpoint](checkpoint-2.swift), I added splitting words out of a string, and providing sorts and reports.

### Takeaways:
- use of `case` in enums is weird
- explains all the things prefixed with `.`
- Arrays and Dicts are straightforward, but the syntax for Sets is going to trip me up later.
- Paul likes type inference, but it makes me nervous. I'm tempted to explicitly type and add semicolons like a crazy person
- While this is reading ahead, handling sorts, filters and maps on compound types have some weird syntax that's perhaps less intuitive than python or javascript.

## Day Three: Coding on iPhone

Day five is `if` statements, `switch` `cases` and ternary operators. Six is loops. [Checkpoint 3 is FizzBuzz](checkpoint-3.swift). I wrote it on the train in [Swifty Compiler](https://apps.apple.com/us/app/swifty-compiler/id1544749600), which is an iOS app that lets you write Swift on the phone, though the free version doesn't let you save, and you need an internet connection to compile. Paid version requires credits or something. Will try Swift Playgrounds on iPad before I jump to paid version. Quiz questions getting trickier with needing to watch for syntax errors and typos. Something is werid with the javascript on the quiz questions, I have to scroll before the onClick registers or something.

Takeaways:
- no `break` necessary in switches, use `fallthrough` to force it.
- Swift requires all possible cases satisfied in a `switch`.
- Ranges are three dots `...` (inclusive) or `..<` for exclusive (up to but excluding)
- `for _` means you don't need an iterator variable, just do something the right number of times.
- `names[1...]` means `name[1]` through `name[n]` where `n` is the last item in the array
- Swifty Compiler on iPhone is a neat trick, but impractical to compile in cloud when on the subway.

