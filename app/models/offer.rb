class Offer < ActiveRecord::Base
  belongs_to :company

  default_scope { order('updated_at DESC') }

  self.per_page = 10
end
