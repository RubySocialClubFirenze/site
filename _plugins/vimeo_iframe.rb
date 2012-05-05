module Jekyll
  module AssetFilter
    def vimeo_iframe(video_id)
      html = '<iframe src="http://player.vimeo.com/video/' + video_id + '" width="500" height="281" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>'
      return html
    end
  end
end

Liquid::Template.register_filter(Jekyll::AssetFilter)