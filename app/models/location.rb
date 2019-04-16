class Location < ApplicationRecord
  include AlgoliaSearch

  has_and_belongs_to_many :projects

  algoliasearch do
    # all attributes will be sent
  end
end
