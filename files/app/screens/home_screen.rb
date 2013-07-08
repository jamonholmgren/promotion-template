class HomeScreen < PM::Screen
  title "Home"

  def on_load
    set_nav_bar_button :left, title: "Help", action: :help_tapped
    set_nav_bar_button :right, title: "States", action: :states_tapped
  end

  def on_presented
    @view_setup ||= self.set_up_view
  end

  def set_up_view
    set_attributes self.view, {
      background_color: UIColor.grayColor
    }

    add UILabel.new, {
      text: "Welcome to ProMotion!",
      text_color: UIColor.whiteColor,
      background_color: UIColor.clearColor,
      shadow_color: UIColor.blackColor,
      number_of_lines: 0,
      text_alignment: UITextAlignmentCenter,
      font: UIFont.boldSystemFontOfSize(18.0),
      resize: [ :left, :right, :top ], # ProMotion sugar here
      frame: CGRectMake(10, 10, 300, 45)
    }

    true
  end
  
  def states_tapped
    open StatesScreen
  end

  def help_tapped
    open_modal HelpScreen.new(nav_bar: true)
  end
end
