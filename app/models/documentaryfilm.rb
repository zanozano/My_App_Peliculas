class Documentaryfilm < ApplicationRecord
    validates :name, :synopsis, :director, presence: true
end
