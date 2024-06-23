
## Swift Gems by Natalia Panferova


### Pattern matching and control flow
```swift

enum Activity {
    case blogging(String)
    case running(Int)
    case talking(String)
    case sleeping
}

let currentActivity = Activity.blogging("Swift Enums")

if case let .blogging(topic) = currentActivity {
   print("Blogging about \(topic)")
} else {
   print("Not blogging")
}
```
Using if case let is particularly beneficial when we are only interested in one case and want to avoid the verbosity of a switch statement. It makes the intention of our code clearer when dealing with a single case.


## Overload the pattern matching operator for custom matching behavior
```swift
struct Circle {
    var radius: Double
}

func ~= (pattern: Double, value: Circle) -> Bool {
    return value.radius == pattern
}


let myCircle = Circle(radius: 5)

switch myCircle {
case 5:
    print("Circle with a radius of 5")
case 10:
    print("Circle with a radius of 10")
default:
    print("Circle with a different radius")
}

```

We’ll define a simple Circle struct and overload the ~= operator to match a Circle with a specific radius. This overload will allow us to use a Double in a switch statement case to match against a Circle.

```swift
func ~= (pattern: ClosedRange<Double>, value: Circle) -> Bool {
    return pattern.contains(value.radius)
}

switch myCircle {
case 0:
    print("Radius is 0, it's a point!")
case 1...10:
    print("Small circle with a radius between 1 and 10")
default:
    print("Circle with a different radius")
}
```

## Combine switch statements with tuples for complex conditions
```swift
let energy = 80
let timeOfDay = "evening"

switch (energy, timeOfDay) {
case (80...100, "morning"):
    print("You're full of energy! Great time for a workout.")
case (50...79, "morning"):
    print("You're doing okay. Maybe a light jog?")
case (0...49, "morning"):
    print("Take it easy, maybe stretch a little.")
case (80...100, "evening"):
    print("You're full of energy! Perfect for some evening training.")
case (50...79, "evening"):
    print("You have some energy left. How about some yoga?")
case (0...49, "evening"):
    print("Not much energy left. Time to rest.")
default:
    print("Check your energy level and time of day, something's off.")
}
```

Switch on multiple optional values
```swift
var optionalInt1: Int? = 1
var optionalInt2: Int? = nil

switch (optionalInt1, optionalInt2) {
case let (value1?, value2?):
    print("Both have values: \(value1) and \(value2)")
case let (value1?, nil):
    print("First has a value: \(value1), second is nil")
case let (nil, value2?):
    print("First is nil, second has a value: \(value2)")
case (nil, nil):
    print("Both are nil")
}
```
