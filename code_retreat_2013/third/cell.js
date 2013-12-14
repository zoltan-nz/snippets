describe('cell',function(){
  var c;
  
  beforeEach(function(){
    c = new Cell();
  });
  
  
  it('should have a kill method',function(){

    c.kill();
    expect(c.getAlive()).toBe(false);
  });
  
  it('should count neighbors', function() {

    expect(c.neighbours).toBe(0);
  });
  
  it('should have increase neighbours with one', function() {

  c.addNeighbour();
  expect(c.neighbours).toBe(1);
  });
  
  it('should die if neighbours less than 2', function() {

    c.addNeighbour();
    expect(c.neighbours).toBe(1);
    c.check();
    expect(c.getAlive()).toBe(false);
  });
  
  it('should live if has two or three neighbours', function() {
    c.neighbours = 2;
    c.check();
    expect(c.getAlive()).toBe(true);
    
    c.neighbours = 3;
    c.check();
    expect(c.getAlive()).toBe(true);
  
  
  });

  it('should become live cell if has exactly three live neighbours and was dead', function() {
    c.isAlive = false;
    c.neighbours = 3;
    c.check();
    expect(c.getAlive()).toBe(true);
  
  
  });
  
});


var Cell = function() {
  this.alive = true;
  this.neighbours = 0;
  
  this.getAlive = function(){
    return this.alive;
  }
  this.kill = function() {
    this.alive = false;
  };
  this.resurrect = function() {
    this.alive = true;
  };
  this.addNeighbour = function() {
    this.neighbours++;
  };
  this.check = function(){
    if (this.neighbours < 2) {
      this.alive = false;
    } else if (this.neighbours < 4 && this.alive) {
      this.alive = true;
    }
    if (!this.alive && this.neighbours === 3){
      this.alive = true;
    }
    
  };
  
};