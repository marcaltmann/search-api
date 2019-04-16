class SerializableLocation < JSONAPI::Serializable::Resource
  type 'locations'

  attributes :name, :city, :country, :lat, :long

  attribute :date do
    @object.created_at
  end

  link :self do
    @url_helpers.location_url(@object.id)
  end

  meta do
    { featured: true }
  end
end
