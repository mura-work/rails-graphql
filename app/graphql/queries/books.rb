module Queries
  class Books < Queries::BaseQuery

    ## カッコ外したらエラー、、、
    type [ObjectTypes::Book], null: false

    def resolve
      ::Book.all.order(:id)
    end
  end
end