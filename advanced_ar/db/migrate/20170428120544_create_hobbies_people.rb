class CreateHobbiesPeople < ActiveRecord::Migration
  def change
    create_table :hobbies_people, id:false do |t|
      t.references :person, index: true, foreign_key: true
      t.references :hobby, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
