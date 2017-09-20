# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     RummageExample.Repo.insert!(%RummageExample.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias RummageExample.Repo
alias RummageExample.Products.Item
alias RummageExample.Products.Category
for x <- 1..2 do
	category = %Category{category_name: "Category #{x}"} 
	|> Repo.insert!

	for x <- 1..4 do	
		%Item{name: "Product #{x}", price: 10 * x, category_id: category.id } 
		|> Repo.insert!
	end
end
