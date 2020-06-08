class CargoWagon < Wagon
  def initialize(capacity)
    super
    @type = 'cargo'
  end

  def to_s
    "#{@type} общий объем: #{@capacity}, свободно: #{free}, занято: #{@occupied_capacity}"
  end
end
