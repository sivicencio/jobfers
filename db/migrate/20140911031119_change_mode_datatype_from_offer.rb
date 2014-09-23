class ChangeModeDatatypeFromOffer < ActiveRecord::Migration
  def change
    change_column :offers, :mode, 'integer USING CAST(mode AS integer)'
  end
end
