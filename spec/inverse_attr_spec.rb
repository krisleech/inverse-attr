require 'simplecov'
SimpleCov.start

require 'spec_helper'
require 'inverse_attr'

describe InverseAttr do
  describe 'inverted_attr' do

    subject do
      Class.new do
        # include InverseAttr

        def published?
          true
        end

      end.new
    end

    describe 'adds attribute reader' do
      it 'with the name of the given method suffixed with "not_" returning inverse of given method' do
        subject.class.inverted_attr :published?
        subject.not_published?.should == false
      end

      it 'with given name returning inverse of given method' do
        subject.class.inverted_attr :published?, :draft?
        subject.draft?.should == false
      end
    end
  end
end
