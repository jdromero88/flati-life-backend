class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :pronouns
      t.string :avatar
      t.text :bio
      t.string :fav_language
      t.string :course_name
      t.string :current_job
      t.references :cohort, null: false, foreign_key: true

      t.timestamps
    end
  end
end
