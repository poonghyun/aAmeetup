class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string  :title
      t.string  :location
      t.date    :date
      t.string  :time
      t.integer :owner_id

      t.timestamps
    end
  end
end
