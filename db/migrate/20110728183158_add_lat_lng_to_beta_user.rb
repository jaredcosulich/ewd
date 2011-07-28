class AddLatLngToBetaUser < ActiveRecord::Migration
  def self.up
    change_table :beta_users do |t|
      t.decimal  "wedding_lat",        :precision => 9, :scale => 6
      t.decimal  "wedding_lng",        :precision => 9, :scale => 6
    end
  end

  def self.down
  end
end
