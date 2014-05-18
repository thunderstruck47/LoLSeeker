require 'spec_helper'

describe "Authentication" do

  subject { page }

  describe "login page" do
    before { visit login_path }

    it { should have_content('Log in') }
    it { should have_title('Log in') }
  end
end
