class CreateVotequestions < ActiveRecord::Migration[5.0]
  def change
    create_table :votequestions do |t|
      t.references :question, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end