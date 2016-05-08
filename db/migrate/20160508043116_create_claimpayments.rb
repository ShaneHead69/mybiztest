class CreateClaimpayments < ActiveRecord::Migration
  def change
    create_table :claimpayments do |t|
      t.belongs_to :paymentschedule, index: true
      t.date :cpdate
      t.decimal :cpamount, precision: 18, scale: 2
      t.text :cpdesc, default: "Payment made by transfer."
      t.timestamps null: false
    end
  end
end
