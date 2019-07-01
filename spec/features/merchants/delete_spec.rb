require "rails_helper"

  describe "as a visitor" do
    before :each do
      @terry = create(:merchant)
      @kennith = create(:merchant)
    end
    describe "When I visit '/merchants/:id'" do
      it "I see a link to delete the merchant" do
        visit "/merchants/#{@terry.id}"

        expect(page).to have_content('Delete Merchant')

        click_link 'Delete Merchant'

        expect(current_path).to eq("/merchants")
        expect(page).to_not have_content(@terry.id)
        expect(page).to_not have_button('Delete')
      end
    end
  end
