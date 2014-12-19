class CreateLojas < ActiveRecord::Migration
  def change
    create_table :lojas do |t|
      t.string :name
      t.integer :cidade_id
      t.string :endereco
      t.integer :telefone
      t.string :email
      t.string :owner
      t.string :mapa

      t.timestamps
    end
  end
end
