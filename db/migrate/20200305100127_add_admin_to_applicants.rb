class AddAdminToApplicants < ActiveRecord::Migration[5.0]
  def change
    add_column :applicants, :admin, :boolean, default: false 
  end
end
