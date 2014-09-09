class Offer < ActiveRecord::Base
  belongs_to :company
  has_and_belongs_to_many :skills

  validates :title, presence: true

  default_scope { order('updated_at DESC') }

  self.per_page = 10
end
