class RemoveUserId < ActiveRecord::Migration
  change_table :listings do |t|
    t.remove :user_id
  end
end
