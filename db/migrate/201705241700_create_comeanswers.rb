class CreateComeanswers < ActiveRecord::Migration[5.0]
  def change
    create_table :comeanswers do |t|
      t.text :descripcion
      t.references :answer, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end