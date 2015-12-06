class AddAlbumIdToEvent < ActiveRecord::Migration
  def change
    add_column :events, :album_id, :integer
  end
end
