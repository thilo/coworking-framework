class Sections < ActiveRecord::Migration
  def change
    create_table :sections, :force => true do |t|
      t.string :name, null: false
    end
  end
end