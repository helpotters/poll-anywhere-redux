class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.text :name

      t.timestamps
    end
    create_table :answers do |t|
      t.integer :vote_count
      t.references :poll, null: false, foreign_key: true
      t.references :option, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
