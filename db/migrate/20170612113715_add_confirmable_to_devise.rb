class AddConfirmableToDevise < ActiveRecord::Migration[5.0]
  def up
    add_column :applicants, :confirmation_token, :string
    add_column :applicants, :confirmed_at, :datetime
    add_column :applicants, :confirmation_sent_at, :datetime
    # add_column :applicants, :unconfirmed_email, :string # Only if using reconfirmable
    add_index :applicants, :confirmation_token, unique: true
    # User.reset_column_information # Need for some types of updates, but not for update_all.
    # To avoid a short time window between running the migration and updating all existing
    # applicants as confirmed, do the following
    execute("UPDATE applicants SET confirmed_at = NOW()")
    # All existing user accounts should be able to log in after this.
    # Remind: Rails using SQLite as default. And SQLite has no such function :NOW.
    # Use :date('now') instead of :NOW when using SQLite.
    # => execute("UPDATE applicants SET confirmed_at = date('now')")
    # Or => User.all.update_all confirmed_at: Time.now
  end

  def down
    remove_columns :applicants, :confirmation_token, :confirmed_at, :confirmation_sent_at
    # remove_columns :applicants, :unconfirmed_email # Only if using reconfirmable
  end
end
