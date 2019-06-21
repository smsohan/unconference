module Types
  class MutationType < Types::BaseObject
    field :create_session, mutation: Mutations::CreateSession, description: 'Creates a session'
  end
end
