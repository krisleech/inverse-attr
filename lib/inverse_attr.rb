require "inverse_attr/version"

module InverseAttr
  def self.included(recipient)
    recipient.extend ClassMethods
  end

  module ClassMethods
    def inverted_attr(source_attr, target_attr = nil)
      target_attr ||= "not_#{source_attr}"
      define_method target_attr do
        !send(source_attr)
      end
    end

    private :inverted_attr
  end
end
