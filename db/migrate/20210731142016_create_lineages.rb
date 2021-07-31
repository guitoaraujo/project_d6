# frozen_string_literal: true

class CreateLineages < ActiveRecord::Migration[6.1]
  def change
    create_table :lineages do |t|
      t.string :name, null: false, default: ''
      t.text :description

      t.timestamps
    end
  end
end
