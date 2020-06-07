# frozen_string_literal: true

require_relative 'company_name.rb'

class CargoWagon
  include CompanyName
  include Validation
  attr_reader :type, :all_volume
  attr_writer :occupied_volume, :free_volume

  NUMBER_ERROR = 'Введите положительное число'
  MAX_VOLUME_ERROR = 'Превышен доступный объем'

  def initialize(all_volume)
    @all_volume = all_volume
    @occupied_volume = 0
    @free_volume = all_volume
    @type = 'cargo'
    validate!
  end

  def fill_a_volume(volume)
    raise MAX_VOLUME_ERROR if volume > @free_volume

    @occupied_volume += volume
    @free_volume -= volume
  end

  def validate!
    raise NUMBER_ERROR unless all_volume.positive?
  end

  def to_s
    "#{@type} общий объем: #{@all_volume}, свободно: #{@free_volume}, занято: #{@occupied_volume}"
  end
end
