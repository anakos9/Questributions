class Project < ApplicationRecord

    has_many :tasks
    has_many :users

    def calculate_progress
        total_progress = 0
        total_complete = 0
        task_count = tasks.count
        tasks.each do |t|
            if t.status == "completed"
                total_complete += 1
            end
        end
        total_progress = total_complete/task_count
        return total_progress * 100
    end

end
