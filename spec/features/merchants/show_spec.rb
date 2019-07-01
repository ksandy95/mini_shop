require "rails_helper"

  describe "as a visitor" do
    before :each do
      @terry = create(:merchant)
    end
    describe "When I visit '/merchants/:id'" do
      it "Then I see the merchant with that merchant's information" do
        visit "/merchants/#{@terry.id}"

        expect(page).to have_content(@terry.name)
        expect(page).to have_content(@terry.address)
        expect(page).to have_content(@terry.city)
        expect(page).to have_content(@terry.state)
        expect(page).to have_content(@terry.zip)
      end
    end
  end
