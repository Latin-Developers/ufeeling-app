# frozen_string_literal: true

require 'dry-types'
require 'dry-struct'

require_relative 'video_thumbnail'

module YoutubeAnalytics
  module Entity
    # Provides access to Category data
    class Video < Dry::Struct
      include Dry.Types

      attribute :id,                      Integer.optional
      attribute :origin_id,               Strict::String
      attribute :published_at,            Strict::String
      attribute :origin_channel_id,       Strict::String
      attribute :title,                   Strict::String
      attribute :description,             Strict::String
      attribute :thumbnails,              Array.of(VideoThumbnail)
      attribute :channel_title,           Strict::String
      attribute :origin_category_id,      Strict::String
      attribute :live_broadcast_content,  Strict::String
      attribute :duration,                String.optional
      attribute :dimension,               Strict::String.optional
      attribute :definition,              Strict::String.optional
      attribute :caption,                 Strict::String.optional
      attribute :licensed_content,        Strict::Bool.optional
      attribute :projection,              Strict::String.optional
      attribute :view_count,              Strict::String.optional
      attribute :like_count,              Strict::String.optional
      attribute :favorite_count,          Strict::String.optional
      attribute :comment_count,           Strict::String.optional
    end
  end
end