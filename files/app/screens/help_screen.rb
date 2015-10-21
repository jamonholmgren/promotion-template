class HelpScreen < PM::TableScreen
  title "Help"

  def table_data
    [{
      title: "About",
      cells: [{
        title: "About app",
        action: :about
      }, {
        title: "More about app",
        action: :more_about
      }]
    }, {
      title: "Help",
      cells: [{
        title: "Help me",
        action: :help
      }]
    }]
  end

  def about
    mp "Tapped about"
  end

  def more_about
    mp "Tapped more about"
  end

  def help
    mp "Tapped help"
  end
end
