import random

class World:
    def __init__(self):
        pass

class Cell:
    def __init__(self, is_alive=True):
        self.is_alive = is_alive

    def kill(self):
        self.is_alive = False

    def resurrect(self):
        self.is_alive = True

class Point:
    def __init__(x,y):
        self.x = x
        self.y = y


class Board:
    def __init__(self, width, height, steps=-1):
        self.width = width
        self.height = height
        self.steps = steps
        self.collection = []

    def initialise_collection(self):
        total = self.width * self.height
        for i in range (total):
            self.collection.append(Cell(bool(random.getrandbits(1))))

    def get_neighbours(self, point):
        live_neighbours = []
        for i in range (-1, 2):
            for j in range (-1, 2):
                if i == 0 and j == 0:
                    continue
                offset = self.width * (point.y + j) + (point.x + i)
                if collection[offset].is_alive:
                    live_neighbours.append(Point((point.x + i), (point.y + j)))


        



    

