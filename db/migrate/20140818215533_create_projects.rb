class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :location
      t.date :year
      t.string :client
      t.string :client_url
      t.references :category, index: true

      t.timestamps
    end
  end
end
