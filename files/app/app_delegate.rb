class AppDelegate < PM::Delegate
  status_bar true, animation: :none

  def on_load(app, options)
    PM.logger.level = :verbose # :off, :error, :warn, :info, :debug, :verbose
    open HomeScreen.new(nav_bar: true)
  end
  
end
