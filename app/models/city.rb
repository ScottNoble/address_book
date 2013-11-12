class City < ActiveRecord::Base
  #if state = CO or Colorado then elevation must be > 3313.
  validates :state, length: {is: 2}
  validates :population, numericality: { greater_than: 0}
  #validates :population, :numericality => { :greater_than => 0 }
  validates :elevation, numericality: {
    greater_than_or_equal_to: 3315,
    if: :state_colorado?,
    message: "elevation is too low, the lowest point in Colorado is 3315 feet"
  }
  private
  def state_colorado?
    state == 'CO'
  end
end

