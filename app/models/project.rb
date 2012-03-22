class Project < ActiveRecord::Base
  belongs_to :user
  DEVELOPERS = {
  "xecutioner" => "Kapil Raj Nakhwa",
  "nfloyd" => "Niraj Pradhan",
  "kakshpati" => "Anup kakshpati",
  "logic-seeker" => "Shobhab Shrestha",
  "shiv1j" => "Shivan Jung Thapa",
  "chucha" => "Niraj Shakya",
  "dhami" => "Ramesh Dhami",
  "julfikar" => "Julfiquar Ali Ahmed",
  "aaganja" => "Kuber Aaganja",
  }

  def initialize_github
    github = Github.new do |opts|
      opts.user = "revol-tech"
      opts.repo = self.repo
      opts.login = "revol-tech"
      opts.password = "bhaktapur11"
    end
  end

  def get_repo
    github_handle = self.initialize_github
    github_handle.repos.get_repo("revol-tech",self.repo)
  end

  def get_developers
    developers = []
    self.initialize_github.repos.collaborators(self.initialize_github.user,self.repo).each { |e| developers << e['login'] }
    developers.collect! {|e| e.downcase}
    developers.keep_if{|e| DEVELOPERS.keys.include?(e)}
    developers.collect!{ |e| DEVELOPERS[e].humanize}
  end

  def get_tickets
    self.initialize_github.issues.repo_issues(self.initialize_github.user,self.repo)
  end

end
