module Jekyll
  class Youtube < Liquid::Tag

    def initialize(name, id, tokens)
      @id = id.strip
	  super      
    end

    def render(context)
	%(<div class="embed-video-container"><iframe width="640" height="360" src="//www.youtube.com/embed/#{@id}" frameborder="0" allowfullscreen></iframe></div>)
    # %(<div class="embed-video-container"><iframe src="http://www.youtube.com/embed/#{@id}" allowfullscreen></iframe></div>)
    end
  end
end

Liquid::Template.register_tag('youtube', Jekyll::Youtube)