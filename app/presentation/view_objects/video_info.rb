# frozen_string_literal: true

module Views
  # View for a single video entity
  class VideoInfo
    def initialize(video, comments, index = nil)
      @video = video
      @comments = comments
      @index = index
    end

    attr_reader :video, :comments

    def video_image
      @video[:thumbnail_url]
    end

    def video_title
      @video[:title]
    end

    def video_description
      @video[:description]
    end

    def origin_id
      @video[:origin_id]
    end
  end
end
