module Breadcrumbs
  class Builder < BreadcrumbsOnRails::Breadcrumbs::Builder

    def seperator
      @context.content_tag(:span, '/', class: 'breadcrumb__seperator')
    end

    def active_breadcrumb(text)
      @context.content_tag(:span, text, class: 'breadcrumb__item is-active')
    end

    def render
      @elements.collect { |element| render_element(element) }.join(@options[:separator] || seperator)
    end

    def render_element(element)
      element.options[:class] = 'breadcrumb__item'

      if element.path == nil
        content = active_breadcrumb(compute_name(element))
      else
        if @context.current_page?(compute_path(element))
          content = active_breadcrumb(compute_name(element))
        else
          content = @context.link_to(compute_name(element), compute_path(element), element.options)
        end
      end

      if @options[:tag]
        @context.content_tag(@options[:tag], content)
      else
        content
      end
    end

  end
end
