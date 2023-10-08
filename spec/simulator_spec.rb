require_relative '../lib/simulator'
require_relative '../lib/board'

describe 'Simulator' do
  let(:board) { Board.new }
  let(:simulator) { Simulator.new(board) }

  describe '#initialize' do
    it 'should store the Board in an instance variable' do
      expect(simulator
        .instance_variable_get(:@board))
        .to be_a Board
    end
  end

  describe '#run' do
    it 'should respond to the run method' do
      expect(simulator).to respond_to :run
    end
  end

  describe '#turn_robot' do
    it 'should respond to the turn_robot method' do
      expect(simulator).to respond_to :turn_robot
    end
  end

  describe '#report' do
    it 'should respond to the report method' do
      expect(simulator).to respond_to :report
    end
  end
end
