class Note < ApplicationRecord
  validates :title, presence: {allow_blank: false}, uniqueness: {case_sensitive: false}
  validates :content, presence: true

  attr_reader :created, :updated

  def created
    @created = format_date(DateTime.parse(self.created_at.to_s))
  end

  def updated
    @updated = format_date(DateTime.parse(self.updated_at.to_s))
  end

  def format_date(date_object)
    date_object.strftime("%_m-%d-%Y at%l:%M%P")
  end

end