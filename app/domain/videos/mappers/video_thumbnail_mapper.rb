# frozen_string_literal: false

module UFeeling
  module Videos
    module Mappers
      # Data Mapper: Youtube Video Thumbnail -> Video Thumbnail Entity
      class ApiVideoThumbnail
        def self.build_entity(thumbnails)
          thumbnails.map { |key, value| DataMapper.new(key, value).build_entity }
        end

        # Extracts entity specific elements from data structure
        class DataMapper
          attr_reader :resolution

          def initialize(resolution, data)
            @resolution = resolution
            @data = data
          end

          def build_entity
            UFeeling::Videos::Entity::VideoThumbnail.new(
              id: nil,
              resolution:,
              url:,
              width:,
              height:
            )
          end

          private

          def url
            @data['url']
          end

          def width
            @data['width']
          end

          def height
            @data['height']
          end
        end
      end
    end
  end
end
