# frozen_string_literal: true
require_relative 'company_name.rb'

class PassengerWagon
  include CompanyName
  attr_reader :type
  def initialize
    @type = 'passenger'
  end

  def to_s
    @type
  end
end
