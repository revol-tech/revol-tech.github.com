require 'spec_helper'

describe 'home page' do
  before(:each) do
  visit '/'
  end

  it 'should show our tagline' do
    page.should have_content('Revolutionizing lives through technology')
  end

  it 'should show current day' do
    page.should have_content("#{Time.new.strftime("Happy %A")}")
  end

  it 'should have top navigation bar' do
    page.should have_selector 'div', :class => 'nav'
  end

  it 'should have our logo' do
    page.should have_selector 'div', :class => 'rotator'
  end

  it 'should show our business motto' do
    page.should have_content('Smarter business through smarter web apps.')
  end

   it 'should have footer' do
    page.should have_selector 'footer'
  end

end
