class BetaUser < ActiveRecord::Base
  validates_presence_of :name, :email, :wedding_date, :wedding_city, :wedding_state

  BOM = "\377\376" #Byte Order Mark
  
  def self.to_csv
    "Name,Email,Date,City,State\r#{BetaUser.all.map { |b| "#{b.name},#{b.email},#{b.wedding_date},#{b.wedding_city},#{b.wedding_state}"}.join("\r")}"
  end
end
