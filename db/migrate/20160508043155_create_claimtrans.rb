class CreateClaimtrans < ActiveRecord::Migration
  def change
    create_table :claimtrans do |t|
      t.belongs_to :claim
      t.integer :claimlineno
      t.string :claimreference
      t.text :claimlinedesc
      t.decimal :claimlineamountex, precision: 18, scale: 2
      t.decimal :claimlinetotalapprovedex, precision: 18, scale: 2
      t.decimal :claimlinetotalamountex, precision: 18, scale: 2
      t.timestamps null: false
    end
  end
end
