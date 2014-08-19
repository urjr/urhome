class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :caption
      t.references :project, index: true

      t.timestamps
    end
  end
end
