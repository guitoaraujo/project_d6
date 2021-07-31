# frozen_string_literal: true

class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name,           null: false, default: ''
      t.string :age,            null: false, default: ''
      t.integer :strength,      null: false, default: 2
      t.integer :agility,       null: false, default: 2
      t.integer :constitution,  null: false, default: 2
      t.integer :intelligence,  null: false, default: 2
      t.integer :presence,      null: false, default: 2
      t.integer :power,         null: false, default: 2
      t.integer :level,         null: false, default: 1
      t.integer :tier,          null: false, default: 1
      t.integer :stage,         null: false, default: 1
      t.integer :experience,    null: false, default: 0

      t.timestamps
    end
  end
end
