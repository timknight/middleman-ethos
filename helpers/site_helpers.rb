module SiteHelpers

  # TODO: Get this supporting the subnav as well.
  def current?(nav)
    nav == data.page.nav
  end

  def page_title
    if data.page.title
      "#{data.page.title} - #{data.config.title}"
    else
      project.data.title
    end
  end

  def page_description
    content_tag :meta, "", {name: "description", value: data.page.description } if data.page.description
  end

end