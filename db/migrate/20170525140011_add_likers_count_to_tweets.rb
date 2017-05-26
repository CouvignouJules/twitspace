class AddLikersCountToTweets < ActiveRecord::Migration[5.0]
  def change
    add_column :tweets, :likers_count, :integer, :default => 0
  end
end
