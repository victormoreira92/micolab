RSpec.configure do |config|

  config.after(:each) do
    Warden.test_mode!
  end
end
