class CreateSentences < ActiveRecord::Migration[6.0]
  def change
    create_table :sentences do |t|
      t.text :text
      t.integer :node, default: 0
      t.boolean :start

      t.timestamps
    end
  end
end
