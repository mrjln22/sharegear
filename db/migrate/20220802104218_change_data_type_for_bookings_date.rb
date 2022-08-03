class ChangeDataTypeForBookingsDate < ActiveRecord::Migration[6.1]
  def change
    change_table :bookings do |t|
      t.change :date, :string
    end
  end
end
