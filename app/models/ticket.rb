class Ticket < ActiveRecord::Base
  belongs_to :trip

  validates_presence_of :origin
  validates_presence_of :destination
  validates_presence_of :means_of_transport
end
