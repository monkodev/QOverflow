class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :titulo
      t.text :descripcion
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
