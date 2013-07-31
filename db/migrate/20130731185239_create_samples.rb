class CreateSamples < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.timestamps
    end

    create_table :samples do |t|
      t.string :name
      t.integer :value
      t.boolean :enabled
      t.text :description
      t.date :the_date
      t.time :the_time
      t.datetime :the_datetime
      t.references :user
      t.timestamps
    end

    create_table :widgets do |t|
      t.string :name
      t.references :sample
    end

    create_table :companies do |t|
      t.string :name
    end

    create_table :companies_samples, :id => false do |t|
      t.references :company
      t.references :sample
    end
    add_index :companies_samples, [:company_id, :sample_id]
  end
end
