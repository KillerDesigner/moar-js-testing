require 'spec_helper'

describe Square do
  let(:square) { Square.create(width: 5, height: 5) }

  it 'should have an id' do
    square.should respond_to(:id)
    square.id.should_not == nil
  end

  it 'should have a width' do
    square.should respond_to(:width)
    square.width.should_not == nil
  end

  it 'should have a height' do
    square.should respond_to(:height)
    square.height.should_not == nil
  end

  it 'should be invalid unless width == height' do
    square.valid?.should be_true

    bad_square = Square.create(width: 1, height: 2)
    bad_square.valid?.should be_false
  end

  describe '#length' do
    it 'should be equal to width (or height)' do
      square.length.should == square.width
    end

    it 'should also work for a 8x8 square' do
      square = Square.create(height: 8, width: 8)
      square.length.should == square.width
    end
  end

  describe '#area' do
    it 'should exist' do
      square.should respond_to(:area)
    end

    it 'should be equal to length^2' do
      square.area.should == square.length ** 2
    end
  end
end
