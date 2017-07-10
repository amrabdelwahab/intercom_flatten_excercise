require_relative '../nested_array'

describe NestedArray do
  let(:array) { [] }
  subject { described_class.new(array) }

  describe '#flatten' do
    context 'when the array is empty' do
      specify { expect(subject.flatten).to match_array [] }
    end
  end
end
