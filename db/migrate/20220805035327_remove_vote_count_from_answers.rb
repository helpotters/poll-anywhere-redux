class RemoveVoteCountFromAnswers < ActiveRecord::Migration[7.0]
  def change
    remove_column :answers, :vote_count
  end
end
