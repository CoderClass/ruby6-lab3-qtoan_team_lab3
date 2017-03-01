require 'rails_helper'

RSpec.feature "SortProducts", type: :feature do

  def prod_links
    page.all(:css, "h4.product-name a").map(&:text)
  end

  scenario "Click on sort  by Alphabetical" do
    Product.create!(name: "A")
    Product.create!(name: "B")
    Product.create!(name: "C")

    visit root_path

    expect(prod_links).to eq ["A", "B", "C"]

    click_link "Sort by Alphabetical"

    expect(current_url).to eq root_url(sort: "alphabetical")
    expect(prod_links).to eq ["A", "B", "C"]
  end
end
