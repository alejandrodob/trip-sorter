class Ticket < ActiveRecord::Base
  belongs_to :trip

  validate_presence_of :origin
  validate_presence_of :destination
  validate_presence_of :means_of_transport
end
