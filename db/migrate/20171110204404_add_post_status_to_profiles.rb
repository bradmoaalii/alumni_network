class AddPostStatusToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :status, :integer
  end
end
