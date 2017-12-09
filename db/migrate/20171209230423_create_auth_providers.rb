class CreateAuthProviders < ActiveRecord::Migration[5.1]
  def change
    create_table :auth_providers do |t|
      t.string :provider
      t.string :uid
      t.belongs_to :user, foreign_key: true, index: true, null: false

      t.timestamps
    end

    add_index :auth_providers, [:provider, :user_id], unique: true
    add_index :auth_providers, [:provider, :uid], unique: true
  end
end
