class CreatePaymentschtrans < ActiveRecord::Migration
  def change
    create_table :paymentschtrans do |t|
      t.belongs_to :paymentschedule, index: true
      t.decimal :pstapprovedamountex
      t.boolean :pstapproved
      t.text :pstclaimdiffreason
      t.string :pstapprovedby
      t.date :pstapprovedate
      t.timestamps null: false
    end
  end
end
