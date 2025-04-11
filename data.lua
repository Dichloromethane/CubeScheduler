local function update_data_schcomb(data)
  local schedulerCombinator = table.deepcopy(data.raw["arithmethic-combinator"]["arithmethic-combinator"])
  local schedulerCombinatorRecipe = table.deepcopy(data.raw.recipe["arithmethic-combinator"]["arithmethic-combinator"])

  local sc = schedulerCombinator
  sc.name = "scheduler-combinator"

  schedulerCombinatorRecipe.name = "scheduler-combinator"
  schedulerCombinatorRecipe.results = {
    {
      type = "item",
      name = "scheduler-combinator",
      amount = 1
    }
  }

  data:extend { sc, schedulerCombinatorRecipe }
end

update_data_schcomb(data)
