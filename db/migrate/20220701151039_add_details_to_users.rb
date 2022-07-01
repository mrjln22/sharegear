class AddDetailsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :last_name, :string
    add_column :users, :dob, :integer
    add_column :users, :address, :string
  end
end
