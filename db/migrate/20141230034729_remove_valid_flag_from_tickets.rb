class RemoveValidFlagFromTickets < ActiveRecord::Migration
  def change
    remove_column :tickets, :valid_flag
  end
end
