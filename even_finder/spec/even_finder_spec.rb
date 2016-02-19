require 'spec_helper'

require_relative '../lib/even_finder'

describe 'even finder' do
  it 'finds 2 and 4 in the set [1,2,3,4]' do
    list = [1,2,3,4]

    result = even_finder(list)

    expect(result).to eq([2,4])
  end

  it 'finds nothing in the set [1,3,5]' do
    list = [1,3,5]

    expect(even_finder(list)).to eq([])
  end

  it 'finds 4 and 8 in an unordered/unsorted list' do
    list = [11, 8, 4]

    expect(even_finder(list)).to eq([8, 4])
  end

  it 'finds nothing in the set []' do
    expect(even_finder([])).to eq([])
  end
end
