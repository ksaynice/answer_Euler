total_days = 365*100 + 25 + 366
four_year_days = 365 * 4 + 1
days_on_first_of_month = [1, 32, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335]
days_on_first_of_month_leap = [1, 32, 61, 92, 122, 153, 183, 214, 245, 275, 306, 336]

sundays = 0
(367..total_days).each do |day|
  day_in_four_year = (day - 366) % four_year_days
  if day_in_four_year <= 365 * 3
    day_in_year = day_in_four_year % 365    
    sundays += 1 if (days_on_first_of_month.include?(day_in_year) && (day % 7 == 1))
  else
    day_in_year_leap = day_in_four_year % (365 * 3)
    sundays += 1 if (days_on_first_of_month_leap.include?(day_in_year_leap) && (day % 7 == 1))
  end
end

puts sundays