# Exercise 3

Convert the following SwiftUI Code into a LiveView Native Template.

```swift
 VStack {
    MapView()
        .frame(height: 300)
}
```

The MapView comes from the following SwiftUI example.

```swift
import MapKit


struct MapView: View {
    var body: some View {
        Map(initialPosition: .region(region))
    }


    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}
```

Comment your previous template code using html comments as you will use it later.

```html
<!--

Solution 1 code wrapped in HTML comments...

 -->
```

* Template code belongs in `home_live.swiftui.neex`.
* Style code belongs in `styles/swiftui.ex`