SimpleForm.setup do |config|
  config.boolean_style = :inline
  config.button_class = 'btn btn-primary'
  config.error_notification_tag = :div
  config.error_notification_class = 'alert alert-danger'
  config.browser_validations = false
  config.default_wrapper = :default
end
