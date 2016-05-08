class CreatePaymentschedules < ActiveRecord::Migration
  def change
    create_table :paymentschedules do |t|
      t.belongs_to :claim
      t.date :psdate
      t.decimal :psapprovedamountex, precision: 18, scale: 2
      t.decimal :psretentionamountex, precision: 18, scale: 2
      t.boolean :psapproved
      t.string :psapprovedby
      t.date :psapproveddate
      t.text :psnotes
      t.boolean :pscomplete
      t.timestamps null: false
    end
  end
end
