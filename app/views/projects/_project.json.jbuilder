json.extract! project, :id, :project_name, :project_description, :member_count, :created_at, :updated_at
json.url project_url(project, format: :json)
