class Person < ApplicationRecord
   has_one_attached :photo,  dependent: :destroy
   validates_presence_of :first, :last, :title, :email, :gender
   scope :get_some, ->(key) {
       where("title = #{key} ") 
       .and(where("first = #{key}"))
       .and(where("last  = #{key}"))
       .and(where("gender = #{key}"))
       .and(where("email = #{key}"))
      }
end
