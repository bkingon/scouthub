class PagePresenter < BasePresenter

  def initialize(page, view_context)
    @page         = super(page)
    @view_context = view_context
  end

  def page_title
    @page[:page_title]
  end

  def content(key, md=true)
    md ? markdown(key) : key
  end

  def content_line(key, md=true)
    md ? markdown_line(key) : key
  end

  def script
    h.javascript_tag(super.html_safe) if !super.blank?
  end

end
