module Types
  class MutationType < Types::BaseObject

    # class GraphqlTutorialSchema < GraphQL::Schema
    #   mutation Types::MutationType
    #   query Types::QueryType
    # end

    field :create_link, mutation: Mutations::CreateLink
    field :create_user, mutation: Mutations::CreateUser
    field :signin_user, mutation: Mutations::SignInUser
    field :create_vote, mutation: Mutations::CreateVote
  end
end
