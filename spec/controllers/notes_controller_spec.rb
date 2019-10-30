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
  describe "notes#create action" do 
    it "should successfully create a note in our database" do 
      post :create, params: { note: { title: 'Hello!', note: 'Well, hello there!' } }
      expect(response).to redirect_to root_path

      note = Note.last
      expect(note.title).to eq('Hello!')
      expect(note.note).to eq('Well, hello there!')
    end
  end
  
end
