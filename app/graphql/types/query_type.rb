module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    ## booksクエリが実行されるとQueries::Booksクラスのresolveメソッドが呼ばれる
    field :books, resolver: Queries::Books
    field :book, resolver: Queries::Book
  end
end
