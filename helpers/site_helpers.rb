module SiteHelpers

  # TODO: Get this supporting the subnav as well.
  def current?(nav)
    nav == data.page.nav
  end

  def page_title
    if data.page.title
      "#{data.page.title} - #{data.config.title}"
    else
      data.config.title
    end
  end

  def page_description
    content_tag :meta, "", {name: "description", value: data.page.description } if data.page.description
  end

  # Creates a link only if the condition returns true, otherwise returns only the element.
  def link_to_if(condition, element, link)
    if condition
      link_to(element, link)
    else
      element
    end
  end

end