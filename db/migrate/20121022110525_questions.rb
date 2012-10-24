class Questions < ActiveRecord::Migration
  def change
    create_table :questions, :force => true do |t|
      t.belongs_to :section
      t.text :content, null: false
    end
  end
end