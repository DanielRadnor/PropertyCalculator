module ApplicationHelper
  
  def date_array(start_date, term_in_years)
    y=term_in_years
    array = Array.new(y)
    date = start_date
    array.each_with_index do |val, i|
      if i == 0
        array[i] = start_date
      else
        array[i] = date
      end
      date += 1.year
    end
  end
  
end
