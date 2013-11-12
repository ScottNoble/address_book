class Person < ActiveRecord::Base
  validates :first_name, :last_name, :address_line_one, :city,
            :state, :email, :zip, presence: true
  validates :email, uniqueness: true
  validates :zip, length: { is: 5 }
end
