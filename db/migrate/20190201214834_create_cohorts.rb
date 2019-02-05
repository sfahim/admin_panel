class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.date :startdate
      t.date :enddate
      t.string :instructor
      t.string :students

      t.timestamps
    end
  end
end
