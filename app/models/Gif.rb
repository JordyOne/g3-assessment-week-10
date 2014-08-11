class Gif < ActiveRecord::Base
  validates :title,
            :presence => {:message => "Title can't be blank"}
  validates :image_url,
            :presence => {:message => "Url can't be blank"}
end