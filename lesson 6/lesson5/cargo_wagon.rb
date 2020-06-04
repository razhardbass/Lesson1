# frozen_string_literal: true
require_relative 'company_name.rb'

class CargoWagon
  include CompanyName
  attr_reader :type
  def initialize
    @type = 'cargo'
  end

  def to_s
    @type
  end
end
