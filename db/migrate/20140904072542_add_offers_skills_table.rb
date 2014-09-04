class AddOffersSkillsTable < ActiveRecord::Migration
  def change
    create_table :offers_skills, id: false do |t|
      t.belongs_to :offer
      t.belongs_to :skill
    end
  end
end
