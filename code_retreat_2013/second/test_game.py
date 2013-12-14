import unittest
from game import Cell, Board, World


class TestWorld(unittest.TestCase):
    def setUp(self):
        pass
        
class TestCell(unittest.TestCase):
    def setUp(self):
        self.cell = Cell()
        
    def test_kill(self):
        self.cell.kill()
        self.assertEqual(self.cell.is_alive, False)

    def test_resurrect(self):
        self.cell.resurrect()
        self.assertEqual(self.cell.is_alive, True)

class TestBoard(unittest.TestCase):
    def setUp(self):
        self.board = Board(10,10)

    def test_initialise_collection(self):
        self.board.initialise_collection()
        self.assertEqual(len(self.board.collection), 100)

    def test_get_neighbours(self):
        for i in range (100):
            self.board.collection.append(Cell(False))

        
unittest.main()
