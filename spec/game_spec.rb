require "game"


describe Game do

let(:player_1) {double :player_1, hp: 666, damage: nil}
let(:player_2) {double :player_2, hp: 666, damage: nil}
subject(:game) {described_class.new(player_1, player_2)}

	it "reduces HP after an attack" do
		expect(player_2).to receive(:damage)
		game.attack(player_2)
	end



end
