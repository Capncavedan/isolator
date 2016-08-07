module ApplicationHelper

  def yes_no_true_false_options
    [
      ["Yes", true ],
      ["No",  false]
    ]
  end

  def sex_options
    %w(Male Female)
  end

end
