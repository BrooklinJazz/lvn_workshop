defmodule LvnWorkshopWeb.HomeLive do
  use LvnWorkshopWeb, :live_view
  use LiveViewNative.LiveView,
    formats: [:swiftui],
    layouts: [
      swiftui: {LvnWorkshopWeb.Layouts.SwiftUI, :app}
    ]

  def render(assigns), do: ~H""
end
