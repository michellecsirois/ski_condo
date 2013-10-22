class EditForumAndTopicFields < ActiveRecord::Migration
  def change
		remove_column :forums, :description
		add_column :topics, :content, :text
  end
end
