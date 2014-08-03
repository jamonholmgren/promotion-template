describe HomeScreen do
  tests HomeScreen

  def home_screen
    @home_screen ||= HomeScreen.new(nav_bar: true)
  end

  def controller
    home_screen.navigationController
  end

  after { @home_screen = nil }

  it "has a navigationController" do
    home_screen.navigationController.should.be.kind_of(UINavigationController)
  end

  it "has a right nav bar button" do
    home_screen.navigationItem.rightBarButtonItem.should.be.kind_of(UIBarButtonItem)
  end

  it "opens the help screen when tapping Help" do
    tap("Help")
    controller.topViewController.should.be.kind_of(HelpScreen)
  end

end

