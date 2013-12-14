require 'rspec'
require_relative 'cell'

describe Cell do

  before :each do
    @cell = Cell.new
  end

  it 'has zero neighbour than die' do
    expect(@cell.dead?).to eq(true)
  end

  it 'has one neighbour than die' do
    @cell += Cell.new

    expect(@cell.dead?).to eq(true)
  end

  it 'has two neighbour then dont die' do
    2.times {@cell += Cell.new}
    expect(@cell.dead?).to eq(false)
  end

  it 'has more than three neighbour then die' do
    4.times {@cell += Cell.new}
    expect(@cell.dead?).to eq(true)
  end
end

describe World do

end