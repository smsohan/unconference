module Types
  class QueryType < Types::BaseObject
    field :sessions, [SessionType], null: false,
      description: "List of Sessions" do
      argument :offset, Integer, required: false, default_value: 0
      argument :limit, Integer, required: false, default_value: 10
    end

    def sessions(offset:, limit:)
      SessionType.paged(offset: offset, limit: limit)
    end
  end
end
