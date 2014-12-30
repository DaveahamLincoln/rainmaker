class CreateShasums < ActiveRecord::Migration
  def change
    create_table :shasums do |t|
      t.string :sum

      t.timestamps
    end
  end
end
