require 'inverse_attr'

describe InverseAttr do

  let(:klass) do
    Class.new do
      include InverseAttr

      def published?
        true
      end
    end
  end

  subject { klass.new }

  describe 'inverted_attr' do
    it 'is not public' do
      expect(klass).not_to respond_to(:inverted_attr)
    end

    context 'given :published?' do
      before { klass.class_eval { inverted_attr :published? } }

      it 'provides not_published?' do
        expect(subject).to respond_to(:not_published?)
      end

      it 'not_published? returns inverse of published?' do
        expect(subject.not_published?).to eq !subject.published?
      end
    end

    context 'given :published? and :draft?' do
      before { klass.class_eval { inverted_attr :published?, :draft? } }

      it 'provides draft?' do
        expect(subject).to respond_to(:draft?)
      end

      it 'draft? return inverse of published?' do
        expect(subject.draft?).to eq !subject.published?
      end
    end
  end
end
