class SerializableProject < JSONAPI::Serializable::Resource
  type 'projects'

  attributes :name, :description

  attribute :date do
    @object.created_at
  end

  link :self do
    @url_helpers.project_url(@object.id)
  end

  meta do
    { featured: true }
  end
end
