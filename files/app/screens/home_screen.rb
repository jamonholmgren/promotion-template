class HomeScreen < PM::Screen
  include HomeStyles

  title "Home"

  def on_load
    set_nav_bar_button :left, title: "Help", action: :help_tapped
    set_nav_bar_button :right, title: "States", action: :states_tapped
  end

  def on_present
    @view_setup ||= self.set_up_view
  end

  def set_up_view
    set_attributes self.view, {
      background_color: UIColor.grayColor
    }

    add UILabel.new, label_view # found in HomeStyles module

    true
  end

  def states_tapped
    open StatesScreen
  end

  def help_tapped
    open_modal HelpScreen.new(nav_bar: true)
  end
end
