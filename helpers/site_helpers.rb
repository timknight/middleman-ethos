module SiteHelpers

  def current(nav)
    nav == current_page.data.nav
  end

  def page_title
    if current_page.data.title
      "#{current_page.data.title} - #{data.config.title}"
    else
      project.data.title
    end
  end

end