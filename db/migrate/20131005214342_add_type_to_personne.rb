class AddTypeToPersonne < ActiveRecord::Migration
  def change
    add_column :personnes, :type, :string
    add_column :personnes, :referedBy, :string
    add_column :personnes, :legalCaregiver, :string
    add_column :personnes, :trade, :string
    add_column :personnes, :employer, :string
    add_column :personnes, :employerAddress, :string
  end
end
