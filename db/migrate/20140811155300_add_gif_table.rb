class AddGifTable < ActiveRecord::Migration
  def change
    create_table :gifs do |t|
      t.string :title
      t.string :image_url
    end
  end
end
