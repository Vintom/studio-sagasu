if Rails.env.production?
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    address: 'everysunday.sakura.ne.jp',
    domain: 'vintom.co.jp',
    port: 587,
    user_name: 'noreply@vintom.co.jp',
    password: 'rep-?Pass-nono',
    authentication: 'plain',
    enable_starttls_auto: true
  }
elsif Rails.env.staging?
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    address: 'everysunday.sakura.ne.jp',
    domain: 'vintom.co.jp',
    port: 587,
    user_name: 'noreply@vintom.co.jp',
    password: 'rep-?Pass-nono',
    authentication: 'plain',
    enable_starttls_auto: true
  }
elsif Rails.env.development?
  ActionMailer::Base.delivery_method = :letter_opener
else
  ActionMailer::Base.delivery_method = :test
end
