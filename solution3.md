# Solution 3

## Stylesheet (swiftui.ex)

```elixir
defmodule LvnWorkshopWeb.Styles.SwiftUI do
  use LiveViewNative.Stylesheet, :swiftui

  ~SHEET"""
  "frame:h" <> height do
    frame(height: {height})
  end
  """
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
</VStack>
```