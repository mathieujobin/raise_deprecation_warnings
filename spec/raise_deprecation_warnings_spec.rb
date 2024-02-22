# frozen_string_literal: true

RSpec.describe RaiseDeprecationWarnings do
  it "has a version number" do
    expect(RaiseDeprecationWarnings::VERSION).not_to be nil
  end

  it "raise an error on deprecation warning" do
    expect do
      ActiveSupport::Deprecation.warn("Deprecated!")
      # rescue Exception
      #   debugger
      #   raise
    end.to raise_error(
      Exception,
      'Calling warn on ActiveSupport::Deprecation is deprecated and will be removed from Rails (use your own Deprecation object instead)'
    )
  end
end
