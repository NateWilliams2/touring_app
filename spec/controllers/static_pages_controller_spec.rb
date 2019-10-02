require 'rails_helper'

describe 'staticController' do
  before (:all) do
    @base_title = "Grinnell Canvassing App"
  end
  context 'when the user visits the home page' do
    it 'displays the home page' do
        visit 'static_pages/home'
        expect(page).to have_title @base_title
    end
         it 'displays a random quote' do 
      visit 'static_pages/home'
      expect(page).to have_content '“'
   end
  end
   context 'when the user visits the canvas page' do
    it 'displays the canvas page' do
        visit 'static_pages/canvas'
        expect(page).to have_title 'Canvassing | ' + @base_title
    end
   end
   context 'when the user visits the maps page' do
    it 'displays the maps page' do
        visit 'static_pages/maps'
        expect(page).to have_title 'Maps | ' + @base_title
    end
   end
   context 'when the user visits the contact page' do
    it 'displays the contact page' do
      visit 'static_pages/contact'
        expect(page).to have_title 'Contact Us | ' + @base_title
    end
   end
  end

