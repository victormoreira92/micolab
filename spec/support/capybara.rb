require 'capybara/rails'
require 'capybara/rspec'
require 'selenium/webdriver'

options = Selenium::WebDriver::Chrome::Options.new(args: ['headless'])
options.add_argument('--enable-features=NetworkService,NetworkServiceInProcess')
options.add_preference(:download, prompt_for_download: false,
                       default_directory: '/tmp/downloads')
options.add_preference(:browser, set_download_behavior: { behavior: 'allow' })
Selenium::WebDriver::Chrome.path = "/home/vhmrj92/chrome-linux64/chrome"


# Driver pro chrome headless, executa os testes sem abrir a janela do navegador
Capybara.register_driver :headless_chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_preference(:download, prompt_for_download: false, default_directory: DownloadHelpers::PATH.to_s)
  options.headless!
  options.add_argument('window-size=1920x1080')
  Capybara::Selenium::Driver.new(app, browser: :chrome, capabilities: [options])
end

# Driver pro chrome full, abrindo a janela e exibindo o sistema funcionando
Capybara.register_driver :chrome do |app|
  options = ::Selenium::WebDriver::Chrome::Options.new
  options.add_preference(:download, prompt_for_download: false, default_directory: DownloadHelpers::PATH.to_s)
  options.add_preference(:browser, set_download_behavior: { behavior: 'allow' })
  Capybara::Selenium::Driver.new(app, browser: :chrome, capabilities: [options])
end

# Trocar quando for necessário, tentar manter o headless_chrome antes de comitar
Capybara.javascript_driver = :chrome
#Capybara.javascript_driver = :headless_chrome

RSpec.configure do |config|
  Capybara.raise_server_errors = false

  config.before(:each, js: true) do
    Capybara.page.driver.browser.manage.window.maximize
    DownloadHelpers.clear_downloads
  end
end
