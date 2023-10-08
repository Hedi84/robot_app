require_relative '../lib/controller'
require_relative '../lib/board'

describe 'Controller' do
  let(:board) { Board.new }
  let(:controller) { Controller.new(board) }

  describe '#initialize' do
    it 'should store the Board in an instance variable' do
      expect(controller
        .instance_variable_get(:@board))
        .to be_a Board
    end
  end

  describe '#move_robot' do
    it 'should respond to the move_robot method' do
      expect(controller).to respond_to :move_robot
    end
  end

  describe '#turn_robot' do
    it 'should respond to the turn_robot method' do
      expect(controller).to respond_to :turn_robot
    end
  end

  describe '#report' do
    it 'should respond to the report method' do
      expect(controller).to respond_to :report
    end
  end

  describe '#placement' do
    it 'should respond to the placement method' do
      expect(controller).to respond_to :placement
    end
  end
end
