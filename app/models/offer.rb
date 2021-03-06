class Offer < ActiveRecord::Base
  belongs_to :company
  has_and_belongs_to_many :skills

  enum mode: [:full_time, :part_time, :freelance, :internship]

  validates :title, presence: true

  default_scope { order('updated_at DESC') }

  self.per_page = 10

  def human_mode
    I18n.t "offers.modes.#{mode}"
  end
end
