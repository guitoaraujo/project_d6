# frozen_string_literal: true

class CreateOccupations < ActiveRecord::Migration[6.1]
  def change
    create_table :occupations do |t|
      t.string :name, null: false, default: ''
      t.text :description

      t.timestamps
    end
  end
end
