class Article < ApplicationRecord
  validates :title, presence: true,length: { minimum: 10, maximum:100}
  validates :writer_name, presence: true,length: { minimum: 6, maximum:50}
  validates :body, presence: true,length: { minimum: 20, maximum:500}
end
