#rails g model track title:string
#db/migrate/2017010913123123_create_tracks.rb
class CreateTracks < ActiveRecord::Migration[5.0]
  def change
    create_table :tracks do |t|
      t.string     :title
      t.references :album

      t.timestamps #created_at & updated_at
    end
  end
end
