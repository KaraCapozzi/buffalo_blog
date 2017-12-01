class CreateEmailApis < ActiveRecord::Migration[5.1]
  def change
    create_table :email_apis do |t|
      t.string :email
      t.string :first_name

      t.timestamps
    end
  end
end
