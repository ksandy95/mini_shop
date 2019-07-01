require "rails_helper"

  describe "as a visitor" do
    before :each do
      @terry = create(:merchant)
      @lamp = create(:item)
      @elephant = create(:item)
    end
    describe "when i visit item merchant index page" do
      it "it shows me each item in the system" do
        visit '/merchants/:merchant_id/items'

        expect(page).to have_content(@lamp)
        expect(page).to have_content(@elephant)
      end
    end
  end
