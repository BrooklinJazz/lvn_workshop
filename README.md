# LvnWorkshop

This workshop turns the [SwiftUI Creating and Combining Views Tutorial](https://developer.apple.com/tutorials/swiftui/creating-and-combining-views) into an interactive workshop with included exercises.

By completing this workshop you will:

* Learn how to run a LiveView Native application
* Convert SwiftUI code examples into LiveView Native code
* Understand views and modifiers so you can build your own native UIs

## Prerequisites

* Xcode 15 or higher (ideally the latest version)
* Elixir/Erlang

## Getting Started

This workshop includes both a Phoenix project and a SwiftUI Xcode project.

To get started, first clone this project using your prefered method. Then launch the Xcode project and start the phoenix server. See further instructions below.

### Start the Phoenix Server

From the project folder in your terminal, run the following commands:

```
mix deps.get
mix phx.server
```

Then check to make sure the Phoenix server starts successfully.

### Launch the Xcode Project

First, make sure the Phoenix server is already running. Then:

* Open the Xcode project: File -> Open -> navigate to native/swiftui/LvnWorkshop.xcodeproj.
* Click on any errors that occur as a result of permissions issues and allow access.
* Press the play button in the top left corner of Xcode to start the active schem

If you encounter any issues, or the application does not automatically reload try starting the active scheme again.

## Slides

You may access the slides for this workshop at https://docs.google.com/presentation/d/1Tub42qB_JbZ-1yT6g44zM4i3Xq1o9YYKRJaYWF57hxU/edit?usp=sharing

The instructor will explain the required concepts before separating the participants into groups to complete each exercise.

## Further Resources

For more on LiveView Native, consider the following resources:

* LiveView Native Hexdocs: https://hexdocs.pm/live_view_native/overview.html
* LiveVIew Native MapKit: https://github.com/liveview-native/liveview-native-swiftui-mapkit
* LiveView Native blogs (coming soon) on the DockYard blog: https://dockyard.com/blog