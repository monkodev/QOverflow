class CreateVoteanswers < ActiveRecord::Migration[5.0]
  def change
    create_table :voteanswers do |t|
      t.references :answer, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end