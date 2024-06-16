
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
