class AddRoleToWorkers < ActiveRecord::Migration
  def change
    add_column :workers, :role, :string
  end
end
