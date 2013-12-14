class HelpScreen < PM::GroupedTableScreen
  title "Help"
  
  def will_appear
    set_nav_bar_button :left, title: "Close", action: :close_tapped
    
    # This is a workaround for an iOS 7 issue.
    # Ref: https://github.com/clearsightstudio/ProMotion/issues/348
    self.navigationController.navigationBar.translucent = false
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
