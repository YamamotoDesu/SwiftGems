
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
