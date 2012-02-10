require 'spec_helper'

describe 'home page' do

  it 'should show our tagline' do
    visit '/'
    page.should have_content('Revolutionizing lives through technology')
  end
end
