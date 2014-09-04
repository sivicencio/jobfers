class Offer < ActiveRecord::Base
  belongs_to :company

  default_scope { order('updated_at DESC') }
end
