class BasePage

  attr_reader :browser

  def initialize(browser)
    @browser = browser
  end

  def navigate
    browser.get "https://login.sandbox.freeagent.com/login"
  end

  def title
    browser.title
  end

  def find(locator)
    browser.find_element locator
  end

  def clear(locator)
    find(locator).clear
  end

  def fill_in(locator, input)
    clear locator
    find(locator).send_keys input
  end

  def text_of(locator)
    find(locator).text
  end

  def submit(locator)
    find(locator).click
  end

end