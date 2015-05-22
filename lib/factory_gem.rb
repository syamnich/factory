require "factory/version"

module Factory
  class Factory
   def self.new(*args, &block)

    Class.new do
      args.each { |i| attr_accessor i }
      define_method :initialize do |*param| 
        args.each_index do |i| 
          instance_variable_set("@#{args[i]}", param[i])
        end
      end
    
      define_method :[] do |arg|
        if arg.instance_of? Fixnum
          instance_variable_get(instance_variables[arg])
        else
          instance_variable_get("@#{arg}")
        end
      end

      class_eval(&block) if block_given?
    end
   end
  end
end
