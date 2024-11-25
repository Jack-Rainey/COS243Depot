# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

Rails.application.configure do
    # For sending emails
    config.action_mailer.delivery_method = :smtp

    # Email settings based upon typical Gmail settings
    config.action_mailer.smtp_settings = {
        address: "smtp.gmail.com",
        port: 587,
        domain: "domain.of.sender.net",
        authentication: "plain",
        user_name: "dave",
        password: "secret",
        enable_starttls_auto: true
    }
end