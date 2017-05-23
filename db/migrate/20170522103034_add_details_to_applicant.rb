class AddDetailsToApplicant < ActiveRecord::Migration[5.0]
  def change
    add_column :applicants, :username, :string
    add_column :applicants, :id_number, :bigint
  end
end
