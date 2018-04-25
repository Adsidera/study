require 'rails_helper'

RSpec.describe KittensController, type: :controller do
  before do
    @kitten = Kitten.create(name:"ciccio", age:"2", softness:"very", cuteness:"very")
  end
      
  it 'shows index of kittens' do
    get :index
    expect(response).to have_http_status(200)
  end

  it 'shows single kitten' do
    get :show, params: { id: @kitten.id }
    expect(response).to have_http_status(200)
  end

  it 'edits single kitten' do
    get :edit, params: { id: @kitten.id }
    expect(response).to have_http_status(200)
  end

  it 'destroys single kitten' do
  end

end
