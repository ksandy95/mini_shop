require "rails_helper"

  describe "as a visitor" do
    before :each do
      @terry = create(:merchant)
    end
    describe "When I visit '/merchants/:id'" do
      it "I see a link to update the merchant" do
        visit "/merchants/#{@terry.id}"

        expect(page).to have_content('Update Merchant')

        click_link 'Update Merchant'

        expect(page).to have_content('Update Merchant')
      end
    end
  end
