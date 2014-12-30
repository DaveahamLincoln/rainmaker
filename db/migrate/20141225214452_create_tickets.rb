class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :username
      t.boolean :valid_flag

      t.timestamps
    end
  end
end
