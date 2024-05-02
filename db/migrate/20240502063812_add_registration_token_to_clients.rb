class AddRegistrationTokenToClients < ActiveRecord::Migration[7.0]
  def change
    add_column :clients, :registration_token, :string
  end
end
