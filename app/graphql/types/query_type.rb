module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :moves, Types::MoveType.connection_type, null: false, resolve: -> (_object, _args, _context) do
      Move.all
    end

    field :locations, Types::LocationType.connection_type, null: false, resolve: -> (_object, _args, _context) do
      Location.all
    end

    field :monsters, Types::MonsterType.connection_type, null: false, resolve: -> (_object, _args, _context) do
      Monster.all
    end
  end
end