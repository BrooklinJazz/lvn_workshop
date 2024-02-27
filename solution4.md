# Solution 4

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

  "frame:h" <> height do
    frame(height: {height})
  end

  "offset-y:" <> offset do
    offset(y: {offset})
  end

  "padding-bottom:" <> padding do
    padding(.bottom, {padding})
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
<VStack>
    <Map
        class="frame:h300"
        position="region"
        position:latitude={34.011_286}
        position:longitude={-116.166_868}
        position:latitude-delta={0.2}
        position:longitude-delta={0.2}
    />

    <Image class="clipShape:circle overlay-circle shadow-radius:7 offset-y:-130 padding-bottom:-130" name="turtlerock">
        <Circle class="stroke:white:4" template="circle" />
    </Image>

    <VStack class="padding" alignment="leading">
        <Text class="font:title">Turtle Rock</Text>
        <HStack class="font:subheadline">
            <Text>Joshua Tree National Park</Text>
            <Spacer/>
            <Text>California</Text>
        </HStack>
        <Divider/>

        <Text class="font:title2">About Turtle Rock</Text>
        <Text>Descriptive text goes here.</Text>
    </VStack>

    <Spacer/>
</VStack>
```