class Trip < ActiveRecord::Base
  has_many :tickets


  def sort_tickets
    sorted = []
    unsorted = tickets
  end
end
