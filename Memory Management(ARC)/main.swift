
class Person {
    var laptop: LapTop?
    init(laptop: LapTop? = nil) {
        self.laptop = laptop
        print("The Person is Good!")
    }
    deinit {
        print("The Person is NOot Good!")
    }
}
class LapTop {
   weak var person: Person?
    init(person: Person? = nil) {
        self.person = person
        print("The LapTop is Nice!")
    }
    deinit {
        print("The LapTop is NOot Nice!")
    }
}
var per: Person? = Person()   // Creates a Person -> reference count +1
var lap: LapTop? = LapTop()  // Creates a LapTop -> reference count +1
per?.laptop = lap           // Person strongly owns LapTop -> LapTop's count +1
lap?.person = per          // LapTop weakly refers to Person -> no change in Person's count
per = nil                 // Person's strong count -1 -> now 0 -> deinit called
lap = nil                // LapTop's strong count -1 -> now 0 -> deinit called

