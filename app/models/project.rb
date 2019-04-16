class Project < ApplicationRecord
  include AlgoliaSearch

  has_and_belongs_to_many :locations

  algoliasearch do
    # all attributes will be sent
    add_attribute :_geoloc
  end

  def _geoloc
    locations.map { |l| { lat: l.lat, lng: l.lng }}
  end
end
