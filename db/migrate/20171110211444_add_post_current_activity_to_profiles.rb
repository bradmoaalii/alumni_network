class AddPostCurrentActivityToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :current_activity, :integer
  end
end
