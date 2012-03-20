module EventsHelper

  def price_helper(price)
   if (price > 0.0)
    number_to_currency(price, precision: 2)
    else
    "Free!"
    end
  end
end
