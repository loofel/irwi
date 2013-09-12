class Irwi::Formatters::RedCarpet

  def initialize
    require 'redcarpet'
  end

  def format( text )
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML.new(:hard_wrap => true), :space_after_headers => true, :tables => true, :no_intra_emphasis => true, :fenced_code_blocks => true)
    markdown.render(text)
  end

end
