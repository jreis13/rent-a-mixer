class AddAddressToServices < ActiveRecord::Migration[6.1]
  def change
    add_column :services, :address, :string
  end
end
