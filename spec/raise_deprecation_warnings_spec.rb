# frozen_string_literal: true

require 'debug'
RSpec.describe RaiseDeprecationWarnings do
  it "has a version number" do
    expect(RaiseDeprecationWarnings::VERSION).not_to be nil
  end

  it "raise an error on deprecation warning" do
    error_message =
      if ActiveSupport.version >= "7.0"
        'Calling warn on ActiveSupport::Deprecation is deprecated and will be ' \
          'removed from Rails (use your own Deprecation object instead)'
      else
        'Deprecated!'
      end
    expect do
      ActiveSupport::Deprecation.warn("Deprecated!")
      # rescue Exception
      #   debugger
      #   raise
    end.to raise_error(Exception, error_message)
  end
end
