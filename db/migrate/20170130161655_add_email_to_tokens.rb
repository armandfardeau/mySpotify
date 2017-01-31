class AddEmailToTokens < ActiveRecord::Migration[5.0]
  def change
    add_column :tokens, :email, :string
  end
end
