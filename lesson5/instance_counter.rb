module InstanceCounter
  def self.included(base)
    base.extend ClassMethods
    base.send :include, InstanceMethods
  end

  module ClassMethods
    attr_writer :instances
    def instances
      @instances 
    end
  end

  module InstanceMethods
    protected

    def register_instance
      @instances == nil ? @instances = 0 : self.class.instances += 1 
    end
  end
end