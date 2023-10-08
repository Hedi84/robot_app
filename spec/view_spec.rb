require_relative '../lib/view'

describe 'View' do
  let(:view) { View.new }

  describe '#give_report' do
    it 'should respond to the give_report method' do
      expect(view).to respond_to :give_report
    end
  end

  describe '#ask_user_for_place' do
    it 'should respond to the ask_user_for_place method' do
      expect(view).to respond_to :ask_user_for_place
    end
  end

  describe '#get_user_input' do
  it 'should respond to the get_user_input method' do
    expect(view).to respond_to :get_user_input
  end
end

  describe '#something_went_wrong' do
  it 'should respond to the something_went_wrong method' do
    expect(view).to respond_to :something_went_wrong
  end
end

end
