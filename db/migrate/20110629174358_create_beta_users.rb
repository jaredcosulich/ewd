class CreateBetaUsers < ActiveRecord::Migration
  def self.up
    create_table :beta_users do |t|
      t.string :name
      t.string :email
      t.string :wedding_date
      t.string :wedding_city
      t.string :wedding_state

      t.timestamps
    end
  end

  def self.down
    drop_table :beta_users
  end
end
