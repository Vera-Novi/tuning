class AddFullNameToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end
end

# commande rails g migration AddFullNameToUser/s first_name last_name
# and after db:migrate this data to the original schema
