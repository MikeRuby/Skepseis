require 'spec_helper'

describe PostsController do
  describe '#new' do
    it 'builds a new post' do
      get :new
      assigns(:post).should_not be_nil
    end
    
    it 'renders a new view' do
      get :new
      response.should render_template(:new)
    end
  end
end
