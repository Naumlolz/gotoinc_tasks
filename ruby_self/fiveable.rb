# module which allows create only 5 objects of class
module Fivable
  def self.included(cls)
    cls.class_eval do
      def method_name
        
      end
    end
  end
end