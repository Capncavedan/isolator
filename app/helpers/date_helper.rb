module DateHelper

  def full_date_format(the_date)
    if the_date.is_a? Date
      the_date.strftime "%Y-%m-%d %H:%M:%S %z"
    else
      full_date_format DateTime.parse(the_date)
    end
  rescue
    "-"
  end

end
