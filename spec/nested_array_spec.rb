require_relative '../nested_array'

describe NestedArray do
  let(:array) { [] }
  subject { described_class.new(array) }

  describe '#flatten' do
    context 'when the array is empty' do
      specify { expect(subject.flatten).to match_array [] }
    end

    context 'when the array is flat' do
      let(:array) { [1, 2, 3] }
      specify { expect(subject.flatten).to match_array [1, 2,3] }
    end
  end
end