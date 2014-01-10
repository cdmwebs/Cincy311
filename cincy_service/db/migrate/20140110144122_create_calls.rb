class CreateCalls < ActiveRecord::Migration
  def change
    create_table :calls do |t|
      t.string :csr_number
      t.string :status
      t.string :sr_type
      t.text :description
      t.timestamp :received_at
      t.string :location
      t.string :address
      t.string :community
      t.decimal :census_tract
      t.string :priority
      t.string :method
      t.string :parcel_num
      t.string :user

      t.timestamps
    end
  end
end
