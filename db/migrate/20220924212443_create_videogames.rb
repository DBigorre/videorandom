class CreateVideogames < ActiveRecord::Migration[7.0]
  def change
    create_table :videogames do |t|
      t.string :nom
      t.string :plateforme
      t.boolean :termine

      t.timestamps
    end
  end
end
