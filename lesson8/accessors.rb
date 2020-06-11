# frozen_string_literal: true

module Accessors
  def attr_accessor_with_history(*names)
    names.each do |name|
      var_name = "@#{name}".to_sym
      hystory_name_method = "#{name}_hystory"
      var_name_with_hystory = "@#{hystory_name_method}".to_sym

      define_method(name) { instance_variable_get(var_name) }
      define_method(hystory_name_method) { instance_variable_get(var_name_with_hystory) }

      hystory_name = []
      define_method("#{name}=".to_sym) do |value|
        hystory_name << value
        instance_variable_set(var_name, value)
        instance_variable_set(var_name_with_hystory, hystory_name)
      end
    end
  end

  def strong_attr_accessor(name, classs)
    var_name = "@#{name}".to_sym

    define_method(name) { instance_variable_get(name) }
    define_method("#{name}=".to_sym) do |value|
      raise ArgumentError unless value.is_a?(classs)

      instance_variable_set(var_name, value)
    end
  end
end
