# frozen_string_literal: true

class CreatePaths < ActiveRecord::Migration[6.1]
  def change
    create_table :paths do |t|
      t.string :name, null: false, default: ''
      t.text :description
      t.references :occupation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
