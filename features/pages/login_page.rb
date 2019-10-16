class LoginPage < BasePage

  LOGIN_EMAIL               = { id: 'login_email'     }
  LOGIN_PASSWORD            = { id: 'login_password'  }
  LOGIN_BUTTON              = { class: 'session_submit_button'}

  LOGIN_CREDS_ERROR_MESSAGE = { css: 'div.flash'}

  def initialize(browser)
    super
  end

  def fill_login_credentials(cred_type)
    if cred_type.include? 'registered'
      username = ENV['USERNAME']
      password = ENV['PASSWORD']
    else
      username = 'invalid_username@email'
      password = 'invalid_password'
    end

    fill_in LOGIN_EMAIL, username
    fill_in LOGIN_PASSWORD, password
    submit LOGIN_BUTTON
  end

  def creds_error_message
    text_of(LOGIN_CREDS_ERROR_MESSAGE)
  end

end