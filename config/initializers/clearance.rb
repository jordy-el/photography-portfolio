Clearance.configure do |config|
  config.routes = false
  config.allow_sign_up = false
  config.mailer_sender = 'admin@krissiflynn.com.au'
  config.redirect_url = '/admin'
  config.rotate_csrf_on_sign_in = true
  config.secure_cookie = true
end
