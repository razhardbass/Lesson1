# frozen_string_literal: true

module Validation
  def self.included(base)
    base.extend ClassMethods
    base.send :include, InstanceMethods
    base.validations = []
  end

  module ClassMethods
    attr_accessor :validations
    def validate(name, type, *format_or_class)
      @validations << { name: name, type: type, format_or_class: format_or_class }
    end
  end

  module InstanceMethods

    VALIDATION_ERROR = 'Неизвестный тип валидации'
    PRESENCE_ERROR = 'Значение не должно быть пустым или равным 0'
    FORMAT_ERROR = 'Неверный формат значения'
    TYPE_ERROR = 'Неверный тип значения'

    def validate!
      self.class.validations.each do |value| 
        attribute = "@#{value[:name]}".to_sym
        var_name = instance_variable_get(attribute)

        send("#{value[:type]}", var_name, *value[:format_or_class])
      end
    end

    def presence(attribute)
      raise PRESENCE_ERROR if attribute.nil? || attribute == ''
    end

    def format(attribute, format)
      raise FORMAT_ERROR  unless attribute =~ format
    end

    def type(attribute, classs)
      raise TYPE_ERROR unless attribute.is_a?(classs)
    end

    def valid?
      validate!
      true
    rescue StandardError, VALIDATION_ERROR
      false
    end
  end
end
