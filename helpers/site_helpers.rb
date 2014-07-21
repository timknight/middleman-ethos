module SiteHelpers

  # Used to check if a link goes to the current page by passing in a nav and 
  # subnav string to check against the frontmatter within data.page.
  def current?(nav, subnav = "")
    if subnav.empty?
      nav == data.page.nav
    else
      nav == data.page.nav && subnav == data.page.subnav
    end
  end

  def page_title
    if data.page.title
      "#{data.page.title} - #{data.config.title}"
    else
      data.config.title
    end
  end

  # Creates a description meta tag based on the presence of a description value within the page frontmatter
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