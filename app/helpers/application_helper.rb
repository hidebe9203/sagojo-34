module ApplicationHelper
  def qiita_markdown(markdown)
    processor = Qiita::Markdown::Processor.new(hostname: "example.com")
    processor.call(markdown)[:output].to_s.html_safe
  end

  def markdown(text)
    render_options = {
      filter_html: true,
      hard_wrap: true
    }
    renderer = Redcarpet::Render::HTML.new(render_options)

    extensions = {
      autolink: true,
      fenced_code_blocks: true,
      lax_spacing: true,
      no_intra_emphasis: true,
      strikethrough: true,
      superscript: true,
      tables: true,
    }
    Redcarpet::Markdown.new(renderer, extensions).render(text).html_safe
  end
end
