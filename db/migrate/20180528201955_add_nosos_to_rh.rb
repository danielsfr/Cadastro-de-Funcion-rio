class AddNososToRh < ActiveRecord::Migration
  def change
    add_column :rhs, :Telefone, :string
    add_column :rhs, :Celular, :string
    add_column :rhs, :Email, :string
  end
end
