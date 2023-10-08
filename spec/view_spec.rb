require_relative '../lib/view'

describe 'View' do
  let(:view) { View.new }

  describe '#give_report' do
    it 'should respond to the give_report method' do
      expect(view).to respond_to :give_report
    end
  end

  describe '#ask_user_for' do
    it 'should respond to the ask_user_for method' do
      expect(view).to respond_to :ask_user_for
    end
  end
end
