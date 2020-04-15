class AddColumnToUsers < ActiveRecord::Migration[5.0]
  if table_exists? 'users'

    unless column_exists? 'users', :sign_in_count
      add_column 'users', :sign_in_count, :integer, default: 0, null: false
    end
    unless column_exists? 'users', :current_sign_in_at
      add_column 'users', :current_sign_in_at, :datetime
    end
    unless column_exists? 'users', :last_sign_in_at
      add_column 'users', :last_sign_in_at, :datetime
    end
    unless column_exists? 'users', :current_sign_in_ip
      add_column 'users', :current_sign_in_ip, :inet
    end
    unless column_exists? 'users', :last_sign_in_ip
      add_column 'users', :last_sign_in_ip, :inet
    end

  end
end
