require 'spec_helper'

describe Post do
  before(:each) do 
    @post = Factory.build(:post)
  end
  
  it 'is valid with the proper attributes' do
    @post.should be_valid
  end
  
  it 'is not valid without a title' do 
    @post.title = nil
    @post.should_not be_valid
  end
  
  it 'is not valid without a body' do 
    @post.body = nil
    @post.should_not be_valid
  end
  
end
