class AddActiveToClients < ActiveRecord::Migration[7.0]
  def change
    add_column :clients, :active, :boolean
  end
end
