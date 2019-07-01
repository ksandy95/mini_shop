require "rails_helper"

  describe "as a visitor" do
    before :each do
      @terry = create(:merchant)
      @kennith = create(:merchant)
      @lamp = create(:item)
      @elephant = create(:item)
    end
    describe "when i visit item index page" do
      it "it shows me each item in the system" do
        visit '/items'

        expect(page).to have_content(@lamp)
        expect(page).to have_content(@elephant)
      end
    end
  end
