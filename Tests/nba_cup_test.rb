RSpec.describe "#nba_cup" do
    it "result" do
      expect(nba_cup(r, "Boston Celtics")).to eq "Boston Celtics:W=4;D=0;L=0;Scored=403;Conceded=350;Points=12"
      expect(nba_cup(r, "Boston Celt")).to eq "Boston Celt:This team didn't play!"
      expect(nba_cup(r, "Charlotte Hornets")).to eq "Charlotte Hornets:W=2;D=0;L=2;Scored=373;Conceded=382;Points=6"
    end
  end