class Jira < ActiveRecord::Base
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      new_jira = Jira.new(
        key: row[1],
        
        )

    end
  end
end
