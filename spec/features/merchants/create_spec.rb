require "rails_helper"

  describe "as a visitor" do
    before :each do
      @terry = create(:merchant)
    end
    describe "When I visit '/merchants'" do
      it "I see a link to create a new merchant" do
        visit "/merchants"

        expect(page).to have_content('New Merchant')
      end
    end
    describe "When I visit '/merchants/new'" do
      it "I see a form to create a new merchant" do
        visit "/merchants/new"

        expect(page).to have_content('New Merchant Form')
      end
    end
  end
