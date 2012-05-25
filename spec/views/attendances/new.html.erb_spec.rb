require 'spec_helper'

describe "attendances/new.html.erb" do
   it "displays the label name" do
        content.should have_label,
          :content => 'Name'
      end
end
