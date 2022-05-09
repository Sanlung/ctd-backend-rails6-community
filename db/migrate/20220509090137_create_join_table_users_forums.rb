class CreateJoinTableUsersForums < ActiveRecord::Migration[6.1]
  def change
    create_join_table :users, :forums do |t|
      t.index %i[user_id forum_id]
      t.index %i[forum_id user_id]
    end
  end
end
