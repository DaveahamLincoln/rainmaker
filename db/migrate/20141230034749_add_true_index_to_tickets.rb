class AddTrueIndexToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :true_index, :int
  end
end
