# Umbra 🌑

## Installation

Umbra is distributed using [Swift Package Manager](https://swift.org/package-manager). To install it into a project, simply add it as a dependency within your Package.swift manifest:
```swift
let package = Package(
    ...
    dependencies: [
        .package(url: "https://github.com/lucamegh/Umbra", from: "1.0.0")
    ],
    ...
)
```

## Usage

### Setting shadows

Umbra makes it easy to add shadows to your views. Just create a `UIView.Shadow` and assign it to your view via the `shadow` property.

```swift
view.shadow = UIView.Shadow(
    color: .black,
    opacity: 0.25,
    offset: CGSize(width: 0, height: 2),
    radius: 2
)
```

Changing single shadow properties is easier too:

```swift
view.shadow.color = .blue // Umbra
view.layer.shadowColor = UIColor.black.cgColor // UIKit
```

### Static factory methods

Given that all the shadow properties are contained within the `UIView.Shadow` type, you could, for example, declare static factory methods to make consistent shadows across your entire app:

```swift
extension UIView.Shadow {

    enum Elevation: Int { 

        case zero, one, two, three, four
    }

    static func elevation(_ elevation: Elevation) -> Self {
        ...
    }
}

view.shadow = .elevation(.four)
```

Umbra comes with a built-in static factory method that will save you a lot of arguments with your designer:

```swift
view.shadow = .sketch(color: .black, alpha: 0.25, x: 0, y: 2, blur: 8)
```
