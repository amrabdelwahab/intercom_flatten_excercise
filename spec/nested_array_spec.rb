require './lib/nested_array'

describe NestedArray do
  let(:array) { [] }
  subject { described_class.new(array) }

  describe '#flatten' do
    context 'when the array is empty' do
      specify { expect(subject.flatten).to match_array [] }
    end

    context 'when the array is flat' do
      let(:array) { [1, 2, 3] }
      specify { expect(subject.flatten).to match_array [1, 2, 3] }
    end

    context 'when the array is nested yet still empty' do
      let(:array) { [[[[]]]] }
      specify { expect(subject.flatten).to match_array [] }
    end

    context 'when the array is a mixture of empty arrays and numbers' do
      let(:array) { [1, [[[]]]] }
      specify { expect(subject.flatten).to match_array [1] }
    end

    context 'when the array is a mixture of non empty arrays and numbers' do
      let(:array) { [1, [[[2]]]] }
      specify { expect(subject.flatten).to match_array [1, 2] }
    end
  end
end
