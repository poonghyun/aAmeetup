class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string  :title
      t.string  :location
      t.text  :description
      t.date    :date
      t.time  :time

      t.timestamps
    end
  end
end
