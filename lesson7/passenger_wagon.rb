class PassengerWagon < Wagon
    def initialize(capacity)
      super
      @type = 'passenger'
    end
  
  def available_capacity
    raise MAX_VALUE_ERROR if @occupied_capacity > free
    @occupied_capacity += 1
  end

  def to_s
    "#{@type} число мест: #{@capacity}, свободно: #{free}, занято:#{@occupied_capacity}"
  end
end
