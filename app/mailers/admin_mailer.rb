class AdminMailer < BaseMailer

  def login_info(admin_id, password)
    @admin      = Admin.find admin_id
    @password   = password
    @subject    = t('email.admin.login_info.title')
    mail(to: @admin.email, subject: @subject)
  end
  def welcome_message admin_id
    @admin      = Admin.find admin_id
    @subject    = t('email.admin.login_info.title')
    mail(to: @admin.email, subject: @subject)
  end

end
