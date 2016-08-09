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

  def glyphicon_for_flash_type(flash_type)
    case flash_type.to_s
    when "success"
      "glyphicon glyphicon-ok alert-success"
    when "failure"
      "glyphicon glyphicon-exclamation-sign alert-danger"
    when "notice"
      "glyphicon glyphicon-triangle-right alert-info"
    end
  end

end
