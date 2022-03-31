class Person < ApplicationRecord
   has_one_attached :photo,  dependent: :destroy
   validates_presence_of :first, :last, :title, :email, :gender
end
