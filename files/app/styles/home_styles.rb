# This is a fairly limited way to style your application.
# For more complex apps, we recommend Teacup. https://github.com/rubymotion/teacup
module HomeStyles
  def label_view
    {
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
  end
end
