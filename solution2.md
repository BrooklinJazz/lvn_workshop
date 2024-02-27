# Solution 2

## Stylesheet (swiftui.ex)

```elixir
defmodule LvnWorkshopWeb.Styles.SwiftUI do
  use LiveViewNative.Stylesheet, :swiftui

  ~SHEET"""
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

  def class("stroke:" <> args) do
    [color, line_width] = String.split(args, ":")

    ~RULES"""
    stroke(.{color}, lineWidth: {line_width})
    """
  end
end

```

## Template (home_live.swiftui.neex)

```html
<Image class="clipShape:circle overlay-circle shadow-radius:7" name="turtlerock">
  <Circle class="stroke:white:4" template="circle" />
</Image>
```