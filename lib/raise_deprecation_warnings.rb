# frozen_string_literal: true

require_relative "raise_deprecation_warnings/version"
require 'active_support'

module RaiseDeprecationWarnings
  class Error < StandardError; end
  # Your code goes here...
end

module ActiveSupport
  class Deprecation
    module Reporting
      def warn(message = nil, callstack = nil)
        return if message =~ /currently checks both tables and views/

        e = Exception.new(message)
        callstack ||= caller_locations(2)
        e.set_backtrace(callstack.map(&:to_s))
        raise e
      end
    end
  end
end
