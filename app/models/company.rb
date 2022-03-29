class Company < ActiveRecord::Base
  has_many :freebies
  has_many :devs, 
  # through: :freebies

  def give_freebie(dev, item_name, values)
    Freebie.create(item_name: item_name.id, value: value, dev: dev.id, company: self)
  end

  def self.oldest_company
    Companies.all.order(:founding_year).first
  end

end
