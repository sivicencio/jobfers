class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :title
      t.string :mode
      t.decimal :salary
      t.text :description
      t.references :company, index: true

      t.timestamps
    end
  end
end
