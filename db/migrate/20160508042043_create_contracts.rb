class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.date :contractdate
      t.string :contractreference
      t.decimal :contractprice, precision: 18, scale: 2
      t.string :contractdesc
      t.integer :contractlastpsno
      t.decimal :contractmaxretention, precision: 18, scale: 2
      t.decimal :contractretentiontodate, precision: 18, scale: 2
      t.string :contractcreatedby
      t.string :contractmodifiedby
      t.integer :contractretentionrate
      t.timestamps null: false
    end
  end
end
