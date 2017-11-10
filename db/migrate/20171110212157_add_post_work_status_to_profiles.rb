class AddPostWorkStatusToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :work_status, :integer
  end
end
