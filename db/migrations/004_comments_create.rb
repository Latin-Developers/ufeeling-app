# frozen_string_literal: true

require 'sequel'

Sequel.migration do
  change do
    create_table(:comments) do
      primary_key :id
      foreign_key :video_id, :videos
      foreign_key :author_channel_id, :channels
      String      :text_display
      String      :text_original
      DateTime    :published_at
      DateTime    :updated_at
      Integer     :like_count
      Integer     :total_reply_Count
      String      :day
      String      :month
      String      :year
    end
  end
end
