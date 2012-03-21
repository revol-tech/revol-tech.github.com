class Project < ActiveRecord::Base
  belongs_to :user

  def initialize_github
    github = Github.new do |opts|
      opts.user = "revol-tech"
      opts.repo = self.repo
      opts.login = "revol-tech"
      opts.password = "bhaktapur11"
    end
  end

end
