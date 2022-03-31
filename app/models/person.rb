class Person < ApplicationRecord
    has_one_attached :photo,  dependent: :destroy
end
