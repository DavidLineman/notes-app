require 'rails_helper'

RSpec.describe NotesController, type: :controller do
  describe "notes#index action" do 
    it "should successfully show the page" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end 

  describe "notes#new action" do
    it "should successfully show the new form" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end
  
end
