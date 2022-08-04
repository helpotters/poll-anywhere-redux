class AddPollToOption < ActiveRecord::Migration[7.0]
  def change
    add_reference :options, :poll, null: false, foreign_key: true
  end
end
