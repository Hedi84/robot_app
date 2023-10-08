require_relative 'board'
require_relative 'controller'
require_relative 'router'

board = Board.new
controller = Controller.new(board)
router = Router.new(controller)

router.run
