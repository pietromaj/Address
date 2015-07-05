class CreatePostAddresses < ActiveRecord::Migration
  def change
    create_table :post_addresses do |t|
      t.string :postcode
      t.string :city
      t.string :street
      t.string :number
      t.string :range
      t.string :flat

      t.timestamps null: false
    end
  end
end
