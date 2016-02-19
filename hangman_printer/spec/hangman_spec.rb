require 'spec_helper'

require_relative '../lib/hangman'

describe 'hangman printer' do
  context 'for the word "car"' do
    it 'prints 3 blank lines when there are no guesses' do
      # set up
      word = 'car'
      guesses = []

      # exercise
      result = puzzle(word, guesses)

      # verify
      expect(result).to eq('_ _ _')

      # teardown
      word = nil
      guesses = nil
      # normally, we would free up any resources or clean up after ourselves
      # in the filesystem here
    end

    it 'prints "a" in the middle if "a" is guessed' do
      #set up
      word = 'car'
      guesses = ['a']

      # exercise
      result = puzzle(word, guesses)

      # verify
      expect(result).to eq('_ a _')

      # teardown
      # assigning to nil is really not required.
      # only use teardowns when you have resources to free up or clean up to do
    end

    it 'prints all characters if I guessed all the right characters' do
      #compress the set up, exercise and verification to a single line
      expect(puzzle('car', ['r', 'a', 'c'])).to eq('c a r')
    end

    it 'does not print a character that does not exist in "car"' do
      expect(puzzle('car', ['d'])).to_not include('d')
    end
  end

  context 'for the word "home"' do
    it 'prints 4 blank lines when there are no guesses' do
      # set up
      word = 'home'
      guesses = []

      # exercise
      result = puzzle(word, guesses)

      # verify
      expect(result).to eq('_ _ _ _')

      # teardown
      word = nil
      guesses = nil
      # normally, we would free up any resources or clean up after ourselves
      # in the filesystem here
    end

    it 'prints "o" in the middle if "o" is guessed' do
      #set up
      word = 'home'
      guesses = ['o']

      # exercise
      result = puzzle(word, guesses)

      # verify
      expect(result).to eq('_ o _ _')

      # teardown
      # assigning to nil is really not required.
      # only use teardowns when you have resources to free up or clean up to do
    end

    it 'prints all characters if I guessed all the right chracters' do
      expect(puzzle('home', ['o', 'm', 'h', 'e'])).to eq('h o m e')
    end

    it 'does not print a character that does not exist in "home"' do
      expect(puzzle('home', ['c'])).to_not include('c')
    end
  end
end
