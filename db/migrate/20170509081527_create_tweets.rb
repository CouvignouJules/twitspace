class CreateTweets < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets do |t|
      t.string :text
      t.string :photo
      t.string :username
      t.string :media
      t.integer :likers_count, :default => 0

      t.timestamps
    end
  end
end
