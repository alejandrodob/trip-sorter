class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :origin
      t.string :destination
      t.string :means_of_transport
      t.string :seat
      t.text :extra_info
      t.references :trip, index: true

      t.timestamps
    end
  end
end
