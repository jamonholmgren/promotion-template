class HomeScreen < PM::Screen
  include HomeStyles

  title "Home"

  def on_load
    set_nav_bar_button :left, title: "Help", action: :help_tapped
    set_nav_bar_button :right, title: "States", action: :states_tapped
  end

  def will_appear
    @view_setup ||= self.set_up_view
  end

  def set_up_view
    set_attributes self.view, :home_view_style # found in HomeStyles module
    add UILabel.new, :label_view_style

    true
  end

  def states_tapped
    open StatesScreen
  end

  def help_tapped
    open_modal HelpScreen.new(nav_bar: true)
  end
end
