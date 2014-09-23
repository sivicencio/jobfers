RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods

  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    begin
      DatabaseCleaner.start
    ensure
      DatabaseCleaner.clean
    end
  end
end