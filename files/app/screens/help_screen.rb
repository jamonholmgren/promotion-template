class HelpScreen < PM::GroupedTableScreen
  title "Help"
  
  def will_appear
    set_nav_bar_button :left, title: "Close", action: :close_tapped
  end

  def table_data
    [{
      title: "Get Help",
      cells: [
        { title: "Email us", action: :email_us },
        { title: "Dummy cell" }
      ]
    }]
  end

  def email_us
    mailto_link = NSURL.URLWithString("mailto:jamon@clearsightstudio.com")
    UIApplication.sharedApplication.openURL(mailto_link)
  end
  
  def close_tapped
    close
  end
end
