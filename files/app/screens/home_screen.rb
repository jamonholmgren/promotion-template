class HomeScreen < PM::Screen
  title "Home"

  def on_presented
    @view_setup ||= set_up_view
  end

  def set_up_view
    set_attributes self.view,
      stylename: :contact_view

    add label = UILabel.new, {
      text: "Welcome to ProMotion!",
      textColor: UIColor.whiteColor,
      backgroundColor: UIColor.clearColor,
      shadowColor: UIColor.blackColor,
      numberOfLines: 0,
      textAlignment: UITextAlignmentCenter,
      font: UIFont.boldSystemFontOfSize(18.0),
      resize: [ :left, :right, :top ], # ProMotion
      frame: CGRectMake(10, 10, 300, 45)
    }
    
    set_nav_bar_button :left, title: "Help", action: :help_tapped
    set_nav_bar_button :right, title: "States", action: :states_tapped
    
    true
  end
  
  def states_tapped
    open StatesScreen
  end
  
  def help_tapped
    open_modal HelpScreen.new(nav_bar: true)
  end
end
