class ChangeModeDatatypeFromOffer < ActiveRecord::Migration
  def change
    change_table :offers do |t|
      t.change :mode, :integer, 'integer USING CAST(mode AS integer)'
    end
  end
end
