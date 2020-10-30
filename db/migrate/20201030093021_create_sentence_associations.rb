class CreateSentenceAssociations < ActiveRecord::Migration[6.0]
  def change
    create_table :sentence_associations do |t|
      t.references :sentence, null: false, foreign_key: true
      t.references :top, null: true, foreign_key: { to_table: :sentences }
      t.references :right, null: true, foreign_key: { to_table: :sentences }
      t.references :down, null: true, foreign_key: { to_table: :sentences }
      t.references :left, null: true, foreign_key: { to_table: :sentences }

      t.timestamps
    end
  end
end
