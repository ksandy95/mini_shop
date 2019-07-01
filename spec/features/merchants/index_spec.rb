require "rails_helper"

  describe "as a visitor" do
    before :each do
      @terry = create(:merchant)
      @kennith = create(:merchant)
    end
    describe "when i visit merchant index page" do
      it "it shows me the name of each merchant in the system" do
        visit '/merchants'

        expect(page).to have_content(@kennith.name)

        within "#merchant-#{@terry.id}" do
          expect(page).to have_content(@terry.name)
        end
      end
    end
  end
