namespace :products do
  desc "Seeds categories"
  task seed_categories: :environment do
    Categorie.create!([{
      name: "Indoor"
    },
    {
      name: "Outdoor"
    },
    {
      name: "Watersports"
    }])

    p "Created #{Categorie.count} genres"
  end
end
