module EventsHelper

  def price_helper(event)
   if (event.free?)
     "Free!"
    else
      number_to_currency(event.price, precision: 2)
    end
  end
end
