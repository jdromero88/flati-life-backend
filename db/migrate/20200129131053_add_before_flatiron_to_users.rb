class AddBeforeFlatironToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :before_flatiron, :text
  end
end
