class Person < ApplicationRecord
    attr_accessor :avatar_remote_url
    has_one_attached :photo,  dependent: :destroy

end
