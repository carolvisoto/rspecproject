describe Burger do
  describe "#apply_ketchup" do
    context "with ketchup" do
      before do
        @burger = Burger.new(:ketchup => true)
        @buger.apply_ketchup
      end

      it "sets the katchup flag to true" do
        @burger.has_ketchup_on_it?.should be_true
      end
    end

    context "without ketchup" do
      before do
        @burger = Burger.new(:ketchup => false)
        @burger.apply_ketchup
      end

      it "sets teh ketchup flag to false" do
        @burger.has_ketchup_on_it?.should be_false
      end
    end
  end
end
