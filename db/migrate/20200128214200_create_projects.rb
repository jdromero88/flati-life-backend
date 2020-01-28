class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :image
      t.string :repository_url

      t.timestamps
    end
  end
end
