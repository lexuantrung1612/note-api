require 'rails_helper'

RSpec.describe 'Note API', type: :request do
  let!(:user) { create(:user) }
  let!(:notes) { create_list(:note, 10, user_id: user.id) } 
  let(:note_id) { notes.first.id }

  describe 'GET /notes' do
    before { get '/notes' }

    it 'return notes' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'get status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /notes/:note_id' do
    before { get "/notes/#{note_id}" }

    context 'when record exists' do
      it 'return note' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(note_id)
      end

      it 'get status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when record not exists' do
      let(:note_id) { 100 }

      it 'get status code 404' do
        expect(response).to have_http_status(404)
      end
    end
  end

  describe 'POST /notes' do
    let(:valid_attributes) { { title: 'test api', content: Faker::Lorem.word, alias_name: 'kaak', group: 'rails', user_id: user.id } }

    context 'when the request is valid' do
      before { post '/notes', params: valid_attributes }

      it 'creates a note' do
        expect(json["title"]).to eq('test api') 
      end

      it 'get status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the request is invalid' do
      before { post '/notes', params: { content: 'kaka' } }

      it 'get status code 422' do
        expect(response).to have_http_status(422)
      end
    end
  end
end
