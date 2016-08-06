module FlashHelper

  def bootstrap_class_for_flash_type(flash_type)
    case flash_type.to_s
    when "success"
      "bg-success"
    when "failure"
      "bg-danger"
    when "notice"
      "bg-info"
    end
  end

end
