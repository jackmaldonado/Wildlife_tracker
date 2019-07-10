class CreateSightings < ActiveRecord::Migration[5.2]
  def change
    create_table :sightings do |t|
      t.datetime :date
      t.string :lognitude
      t.string :latitude

      t.timestamps
    end
  end
end
