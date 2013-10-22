class FixForumAndTopicsTables < ActiveRecord::Migration
  def change
		remove_column :forums, :last_post_at, :datetime
		remove_column :forums, :last_poster_id, :integer
		add_column :topics, :last_post_at, :datetime
		add_column :topics, :last_poster_id, :integer
  end
end
