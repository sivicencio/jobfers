class ChangeModeDatatypeFromOffer < ActiveRecord::Migration
  def change
    change_table :offers do |t|
      t.change :mode, :integer
    end
  end
end
