class PassengerWagon < Wagon
    def initialize(all)
      super
      @type = 'passenger'
    end
  
  def fill
    raise MAX_VALUE_ERROR if @occupied > free
    @occupied += 1
  end

  def to_s
    "#{@type} число мест: #{@all}, свободно: #{free}, занято: #{@occupied}"
  end
end
