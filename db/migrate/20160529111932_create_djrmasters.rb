class CreateDjrmasters < ActiveRecord::Migration
  def change
    create_table :djrmasters do |t|
      t.date :subdate
      t.integer :subnum
      t.string :subform
      t.integer :subformver
      t.string :sectname
      t.string :projname
      t.date :djrdate
      t.string :weather
      t.string :foreman
      t.string :jobphase
      t.string :worktoday
      t.string :accdelay
      t.string :workschednextday

      t.timestamps null: false
    end
  end
end
