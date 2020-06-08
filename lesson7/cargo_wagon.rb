class CargoWagon < Wagon
  def initialize(all)
    super
    @type = 'cargo'
  end

  def to_s
    "#{@type} общий объем: #{@all}, свободно: #{free}, занято: #{@occupied}"
  end
end
