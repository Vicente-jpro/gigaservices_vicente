class Person < ApplicationRecord
   has_one_attached :photo,  dependent: :destroy  do |attachable|
      attachable.variant :thumb, resize_to_limit: [255, 255]
    end
   validates_presence_of :first, :last, :title, :email, :gender
   scope :get_some, ->(key) {
        where(   "title  = '#{key}' " ) 
       .or(where("first  = '#{key}' "))
       .or(where("last   = '#{key}' "))
       .or(where("gender = '#{key}' "))
       .or(where("email  = '#{key}' "))
      }
end
