module Types
  class SessionType < Types::BaseObject
    description 'A session proposal'
    field :title, String, null: true
    #field :format, Type::Enum, null: true
    field :abstract, String, null: true
    #field :role, Types::Enum, null: true
    #
    def self.paged(offset:, limit:)
      Session.offset(offset).limit(1)
    end
  end
end
