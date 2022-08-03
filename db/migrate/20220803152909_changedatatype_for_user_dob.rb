class ChangedatatypeForUserDob < ActiveRecord::Migration[6.1]
  def change
    change_table :users do |t|
      t.change :dob, :string
    end
  end
end
