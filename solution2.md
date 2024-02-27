# Solution 2

## Stylesheet (swiftui.ex)

```elixir
defmodule LvnWorkshopWeb.Styles.SwiftUI do
  use LiveViewNative.Stylesheet, :swiftui

  ~SHEET"""
  "font:" <> font do
    font(.{font})
  end

  "padding" do
    padding()
  end

  "clipShape:" <> shape do
    clipShape(.{shape})
  end

  "overlay-circle" do
    overlay(content: :circle)
  end

  "shadow-radius:" <> radius do
    shadow(radius: {radius})
  end
  """
end

```

## Template (home_live.swiftui.neex)

```html
<Image name="turtlerock" class="clipShape:circle shadow-radius:7">
    <Circle class="stroke:white:4"></Circle>
</Image>
```