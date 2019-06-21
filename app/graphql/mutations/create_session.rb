module Mutations
  class CreateSession < GraphQL::Schema::Mutation
    argument :title, String, required: true
    argument :abstract, String, required: true

    type Types::SessionType

    def resolve(title:, abstract:)
      Session.create!(title: title,
                      abstract: abstract)
    end
  end
end
