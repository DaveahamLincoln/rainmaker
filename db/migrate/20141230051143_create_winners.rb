class CreateWinners < ActiveRecord::Migration
  def change
    create_table :winners do |t|
      t.string :username

      t.timestamps
    end
  end
end
