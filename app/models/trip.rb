class Trip < ActiveRecord::Base
  has_many :tickets


  def sort_tickets
    if tickets.empty?
      []
    else
      unsorted = tickets.to_a
      sorted = [] << unsorted.shift
      anti_infinite_loop_counter = 0
      while !unsorted.empty? && anti_infinite_loop_counter < 100000
        ticket = unsorted.shift
        if ticket.origin == sorted[-1].destination
          sorted.push ticket
        elsif ticket.destination == sorted[0].origin
          sorted.unshift ticket
        else
          unsorted.unshift ticket
          unsorted.shuffle!
        end
        anti_infinite_loop_counter += 1
      end
      sorted
    end
  end
end
