require_relative 'game' #<access

describe Game do 
	let(:game) { Game.new }

	it "takes user2's guess out of user1's word" do 
		expect(game.hangman("a", "attack")).to eq false
	end
end