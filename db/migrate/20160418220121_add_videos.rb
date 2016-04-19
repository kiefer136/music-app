class AddVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.string :author
      t.string :embed
      t.timestamps
    end
  end
end
