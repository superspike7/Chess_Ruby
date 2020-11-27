require '../lib/board.rb'

describe Board do

  subject(:board) { described_class.new }

  describe '#selection_mode' do

    it 'allows board to change to selection mode' do
      expect { board.selection_mode }.to change { board.instance_variable_get(:@mode)}.to eq 'selection_mode'
    end

  end

  describe '#move_mode' do

  end
  
end