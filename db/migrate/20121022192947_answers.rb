class Answers < ActiveRecord::Migration
    create_table :answers, :force => true do |t|
      t.text :results
      t.string :secret
      t.timestamps
    end
    
    add_index :answers, :secret
end