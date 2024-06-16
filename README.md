
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
