class CreateClaims < ActiveRecord::Migration
  def change
    create_table :claims do |t|
      t.belongs_to :contract, index: true
      t.string :claimreference, index: true
      t.date :claimdate
      t.decimal :claimamountex, precision: 18, scale: 2
      t.string :claimwfmporef
      t.boolean :claimcomplete
      t.text :claimnotes
      t.binary :claimlink
      t.string :claimcreatedby
      t.string :claimmodifiedby
      t.timestamps null: false
    end
  end
end
