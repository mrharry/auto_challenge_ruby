Given ('I navigate to the login page') do
  @login_page.navigate
end

When ('I login with a/an {string} credential combination') do |cred_type|
  @login_page.fill_login_credentials(cred_type)
end

Then ('I should see the invalid credentials login error message') do |err_msg_table|
  expect(@login_page.creds_error_message).to eq(err_msg_table.raw.flatten[0])
end

Then ('I should see the Free Agent Login page') do
  expect(@login_page.title).to eq('FreeAgent : Login')
end

Then ('I should see the Free Agent Overview page') do
  expect(@overview_page.title).to eq('FreeAgent : Overview')
end
