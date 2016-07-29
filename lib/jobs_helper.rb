# Get system admin
def system_admin
  admin = Admin.where(email: "system@project_name.com").first
  if admin.nil?
    password = Devise.friendly_token.first(12)
    admin = Admin.create(name: 'System', surname: 'System', email: "system@project_name.com", password: password, password_confirmation: password)
  end
  admin
end
