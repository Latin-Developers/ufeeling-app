# frozen_string_literal: true

require 'sequel'

Sequel.migration do
  change do
    create_table(:authors) do
      primary_key :id
      String      :origin_id
      String      :name
      String      :thumbnail_url
      String      :description
      DateTime    :created_at
      DateTime    :updated_at
    end
  end
end
