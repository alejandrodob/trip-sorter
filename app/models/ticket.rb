class Ticket < ActiveRecord::Base
  belongs_to :trip

  validates_presence_of :origin
  validates_presence_of :destination
  validates_presence_of :means_of_transport

  def generate_indications
    indications = "From "+ origin.to_s + " take " + means_of_transport.to_s + " to " +destination.to_s + "."
    if seat != ""
      indications << " Sit in seat " + seat.to_s + "."
    else
      indications << " No seat assigned."
    end
    if extra_info != ""
      indications << "Additional info: " + extra_info.to_s + "."
    end
    indications
  end
end
