class AddPhoneNoToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :phone_no, :string
  end
end
