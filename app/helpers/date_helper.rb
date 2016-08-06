module DateHelper

  def full_date_format(the_date)
    if the_date.is_a? String
      DateTime.parse(the_date).strftime "%Y-%m-%d %H:%M:%S %z"
    else
      the_date.strftime "%Y-%m-%d %H:%M:%S %z"
    end
  rescue
    "-"
  end

end
