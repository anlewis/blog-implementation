require 'rails_helper'

describe "Post API" do
  let!(:user) {create(:user)}

  before :each do
    sign_in user
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
  end

  it "can create a new post" do    
    post_params = {
                    title: "A blog post",
                    content: "stuff about blog post"
                         }

    post "/api/v1/posts", params: {post: post_params}

    post = Post.last

    expect(response).to be_success

    expect(post.title).to eq(post_params[:title])
    expect(post.content).to eq(post_params[:content])
  end  




end