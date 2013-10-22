class EditForums < ActiveRecord::Migration
  def change
		remove_column :topics, :last_poster_id, :integer
		remove_column :topics, :last_post_at, :datetime
		remove_column :topics, :forum_id, :integer
		add_column :forums, :last_poster_id, :integer
		add_column :forums, :last_post_at, :datetime
  end
end
