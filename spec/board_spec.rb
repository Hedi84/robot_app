require_relative '../lib/board'

describe 'Board' do
  describe '#initialize' do
    it 'Creates a board with attributes' do
      board = Board.new
      expect(board.x).to eq(0)
      expect(board.y).to eq(0)
      expect(board.direction).to eq('')
    end
  end

  describe '#place' do
    let(:board) { Board.new }

    it 'places the robot in the right spot' do
      expect { board.place('1', '2', 'EAST') }.to change { board.x }.from(0).to(1)
                                                                    .and change { board.y }.from(0).to(2)
                                                                                           .and change {
                                                                                                  board.direction
                                                                                                }.from('').to('EAST')
    end

    it 'does not allow you to place the robot off the board' do
      expect { board.place('-4', '8', 'WEST') }.to change { board.x }.by(0)
                                                                     .and change { board.y }.by(0)
      expect(board.direction).to eq('')
    end

    it 'does not allow a non-existing direction' do
      expect { board.place(2, 3, 'COFFEE') }.to change { board.x }.by(0)
                                                                  .and change { board.y }.by(0)
      expect(board.direction).to eq('')
    end
  end

  describe '#move' do
    let(:board) { Board.new }

    it 'moves the robot in the right direction North' do
      board.place('0', '0', 'NORTH')
      expect { board.move }.to change { board.y }.from(0).to(1)
                                                 .and change { board.x }.by(0)
    end

    it 'moves the robot in the right direction East' do
      board.place('2', '2', 'EAST')
      expect { board.move }.to change { board.x }.from(2).to(3)
                                                 .and change { board.y }.by(0)
    end

    it 'moves the robot in the right direction West' do
      board.place('3', '3', 'WEST')
      expect { board.move }.to change { board.x }.from(3).to(2)
                                                 .and change { board.y }.by(0)
    end

    it 'moves the robot in the right direction West' do
      board.place('4', '4', 'SOUTH')
      expect { board.move }.to change { board.y }.from(4).to(3)
                                                 .and change { board.x }.by(0)
    end

    it 'does not allow you to move the robot off the board' do
      board.place('4', '3', 'EAST')
      expect { board.move }.to change { board.x }.by(0)
                                                 .and change { board.x }.by(0)
    end
  end
end
