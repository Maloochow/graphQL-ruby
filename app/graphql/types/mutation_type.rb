module Types
  class MutationType < Types::BaseObject

    class GraphqlTutorialSchema < GraphQL::Schema
      mutation Types::MutationType
      query Types::QueryType
    end

    field :create_link, mutation: Mutations::CreateLink
  end
end
