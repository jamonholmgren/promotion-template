# This is a simple, CSS-like way to style your application.
# You can set these attributes in your screens by using `add` or `set_attributes`
# and passing in the method you want to use.
#
# Example usage: `add UILabel.new, :label_view_style`
module HomeStyles
  def label_view_style
    {
      text: "Welcome to ProMotion!",
      text_color: UIColor.whiteColor,
      background_color: UIColor.clearColor,
      shadow_color: UIColor.blackColor,
      number_of_lines: 0,
      text_alignment: UITextAlignmentCenter,
      font: UIFont.boldSystemFontOfSize(18.0),
      resize: [ :left, :right, :top ], # ProMotion sugar here
      frame: CGRectMake(10, 100, 300, 45)
    }
  end

  def home_view_style
    {
      background_color: UIColor.grayColor
    }
  end
end
