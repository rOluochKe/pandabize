require 'rails_helper'

RSpec.describe Api::V1::BicyclesController, type: :controller do
  let(:valid_attributes) do
    {
      name: 'John Doe',
      description: 'Voluptatem et odit. Error similique voluptas. Autem quia laborum.',
      wheel_size: 18,
      rim_color: 'Grey',
      saddle_color: 'Brown',
      price: 25.43,
      image_url: 'https://robohash.org/my-own-slug.jpg?size=50x50&set=set1',
      user_id: 1
    }
  end

  let(:invalid_attributes) do
    {
      name: nil,
      description: nil,
      wheel_size: nil,
      rim_color: nil,
      saddle_color: nil,
      price: nil,
      image_url: nil,
      user_id: nil
    }
  end

  describe 'GET #index' do
    it 'returns a success response' do
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe 'GET #show' do
    it 'returns a success response' do
      bicycle = create(:bicycle)
      get :show, params: { id: bicycle.to_param }
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Bicycle' do
        expect do
          post :create, params: { bicycle: valid_attributes }
        end.to change(Bicycle, :count).by(1)
      end

      it 'returns a 201 status code' do
        post :create, params: { bicycle: valid_attributes }
        expect(response).to have_http_status(:created)
      end
    end

    context 'with invalid params' do
      it 'does not create a new Bicycle' do
        expect do
          post :create, params: { bicycle: invalid_attributes }
        end.to change(Bicycle, :count).by(0)
      end

      it 'returns a 422 status code' do
        post :create, params: { bicycle: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) do
        {
          name: 'Nancy Lucy',
          description: 'Lorem error similique voluptas. Autem quia laborum. Voluptatem et odit.',
          wheel_size: 14,
          rim_color: 'Red',
          saddle_color: 'Black',
          price: 32.13,
          image_url: 'https://robohash.org/my-own-slug.jpg?size=50x50&set=set2',
          user_id: 2
        }
      end

      it 'updates the requested bicycle' do
        bicycle = create(:bicycle)
        put :update, params: { id: bicycle.to_param, bicycle: new_attributes }
        bicycle.reload
        expect(bicycle.attributes).to include('name' => 'Nancy Lucy')
      end

      it 'returns a 200 status code' do
        bicycle = create(:bicycle)

        put :update, params: { id: bicycle.to_param, bicycle: valid_attributes }
        expect(response).to have_http_status(:ok)
      end
    end

    context 'with invalid params' do
      it 'returns a 422 status code' do
        bicycle = create(:bicycle)

        put :update, params: { id: bicycle.to_param, bicycle: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested bicycle' do
      bicycle = create(:bicycle)
      expect do
        delete :destroy, params: { id: bicycle.to_param }
      end.to change(Bicycle, :count).by(-1)
    end
  end
end
