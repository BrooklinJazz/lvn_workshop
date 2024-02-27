# Solution 1

## Stylesheet (swiftui.ex)

```elixir
defmodule LvnWorkshopWeb.Styles.SwiftUI do
  use LiveViewNative.Stylesheet, :swiftui

  ~SHEET"""
  "font:title" do
    font(.title)
  end

  "font:subheadline" do
    font(.subheadline)
  end

  # Alternatively the above could be refactored into a single dynamic class.
  "font:" <> font do
    font(.{font})
  end

  "padding" do
    padding()
  end
  """
end
```

## Template (home_live.swiftui.neex)

```html
<VStack class="padding" alignment="leading">
    <Text class="font:title">Turtle Rock</Text>
    <HStack>
        <Text class="font:subheadline">Joshua Tree National Park</Text>
        <Spacer/>
        <Text class="font:subheadline">California</Text>
    </HStack>
</VStack>
```