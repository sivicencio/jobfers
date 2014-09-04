class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.text :description
      t.string :website
      t.string :twitter
      t.string :github

      t.timestamps
    end
  end
end
