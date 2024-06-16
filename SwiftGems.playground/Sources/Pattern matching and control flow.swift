import Foundation

enum Activity {
    case blogging(String)
    case running(Int)
    case talking(String)
    case sleeping
}

public class PatternMatching {

    public init() {}
    
    public func blogging() {
        let currentActivity = Activity.blogging("Swift Enums")
        
        if case let .blogging(topic) = currentActivity {
            print("Blogging about \(topic)")
        } else {
            print("Not blogging")
        }
    }
}
