class Note < ApplicationRecord
  validates :title, presence: {allow_blank: false}, uniqueness: {case_sensitive: false}
  validates :content, presence: true
end
