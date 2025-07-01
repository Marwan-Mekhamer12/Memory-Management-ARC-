# Memory-Management-ARC-

🔑 How ARC works here

When you create per and lap, each object’s reference count is 1.
per.laptop = lap increases lap’s reference count (because laptop is strong by default).
lap.person = per does not increase per’s reference count because it’s a weak reference.
When we set per = nil:
Person is deallocated (no more strong references to it).
ARC calls deinit → prints: The Person is NOot Good!
When we set lap = nil:
LapTop is deallocated.
ARC calls deinit → prints: The LapTop is NOot Nice!
👉 Because LapTop.person is weak, no retain cycle happens — both objects are properly deallocated.

🚀 Swift Memory Management using ARC (Automatic Reference Counting)
In this code, I created a simple relationship between two classes: Person and LapTop.

Person owns a LapTop using a strong reference (default in Swift).
LapTop holds a weak reference to Person to avoid a retain cycle.

When both Person and LapTop are set to nil, ARC automatically deallocates the objects and calls their deinit methods.
✅ No memory leaks occur because we used weak where needed to break the retain cycle.

In Swift, ARC keeps track of how many strong references point to an object. When no strong references remain, the object is removed from memory. In my example, I connected a Person and a LapTop:
The Person strongly owns the LapTop.
The LapTop weakly refers to the Person to avoid a retain cycle.
When both variables are set to nil, Swift deallocates them cleanly, demonstrating how to manage memory safely using strong and weak references.
