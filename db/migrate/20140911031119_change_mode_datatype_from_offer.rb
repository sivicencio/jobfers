class ChangeModeDatatypeFromOffer < ActiveRecord::Migration
  def change
    remove_column :offers, :mode
    add_column :offers, :mode, :integer
  end
end
