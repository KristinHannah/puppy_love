dog_1 = DogBreed.create(name: 'Chihuahua', origins: 'South America', life_span: '5-18 year', group: 'companion')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: false, pet_friendly: false, noise: true, cold_weather: false, size: 'small')
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Tibetan Spaniel', origins: 'Tibet', life_span: '12-15 years', group: 'Non-sporting')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: false, pet_friendly: true, noise: true, cold_weather: false, size: 'small')
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Poodle', origins: 'Germany', life_span: '10-18 years', group: 'Non-sporting')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: true, pet_friendly: true, noise: false, cold_weather: true, size: 'large')
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Beagle', origins: 'Uncertain', life_span: '10-15 years', group: "hound")
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: false, pet_friendly: true, noise: true, cold_weather: false, size: 'medium')
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Bichon Frise', origins: 'Mediterranean', life_span: '12-15 years', group: 'companion')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: true, pet_friendly: true, noise: false, cold_weather: true, size: 'small')
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Shih Tzu', origins: 'China', life_span: '10-16 years', group: 'companion')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: true, pet_friendly: true, noise: false, cold_weather: true, size: 'small')
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Maltese', origins: 'Mediterranean', life_span: '12-15 years', group: 'companion')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: true, pet_friendly: true, noise: false, cold_weather: false, size: 'small')
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Pit Bull Terrier', origins: 'England', life_span: '12-16 years', group: 'Terrier')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: false, pet_friendly: false, noise: true, cold_weather: false, size: 'large' )
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Mastiff', origins: 'Asia', life_span: '6-10 years', group: 'working')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: false, hypoallergenic: false, pet_friendly: false, noise: false, cold_weather: true, size: 'large')
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Bernese Mountain', origins: 'Swiss', life_span: '6-10 years', group: 'working')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: false, hypoallergenic: false, pet_friendly: true, noise: true, cold_weather: true, size: 'large')
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Boxer', origins: 'German', life_span: '10-12 years', group: 'working')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: false, pet_friendly: true, noise: true, cold_weather: false, size: 'large')
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Great Dane', origins: 'The Middle East', life_span: '7-10 years', group: 'working')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: false, hypoallergenic: false, pet_friendly: true, noise: true, cold_weather: false, size: 'large')
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Rottweiler', origins: 'Germany', life_span: '8-11 years', group: 'working')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: false, hypoallergenic: false, pet_friendly: false, noise: true, cold_weather: false, size: 'large')
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Golden Retriever', origins: 'Scotland', life_span: '10-12 years', group: 'Sporting')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: false, hypoallergenic: false, pet_friendly: true, noise: true, cold_weather: true, size: 'large')
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Irish Setter', origins: 'Ireland', life_span: '11-15 years', group: 'sporting')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: false, hypoallergenic: false, pet_friendly: true, noise: true, cold_weather: true, size: 'large')
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Labrador Retriever', origins: "Newfoundland", life_span: '10-12 years', group: 'sporting')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: false, hypoallergenic: false, pet_friendly: true, noise: true, cold_weather: true, size: 'large' )
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Cocker Spaniel', origins: 'Spain', life_span: '12-15 years', group: 'sporting')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: false, pet_friendly: true, noise: true, cold_weather: true, size: 'medium' )
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Yorkshire Terrier', origins: 'England', life_span: '12-15 years', group: 'companion')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: true, pet_friendly: true, noise: true, cold_weather: false, size: 'small')
dog_1.atts_table_id = atts_1.id 
dog_1.save


dog_1 = DogBreed.create(name: 'Akita', origins: 'Japan', life_span: '10-12 years', group: 'working')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: false, hypoallergenic: false, pet_friendly: false, noise: true, cold_weather: true, size: 'large')
dog_1.atts_table_id = atts_1.id 
dog_1.save


dog_1 = DogBreed.create(name: 'German Shepherd', origins: 'German', life_span: '10-14 years', group: 'herding')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: false, pet_friendly: false, noise: true, cold_weather: true, size: 'large')
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Shiba Inu', origins: 'Japan', life_span: '12-16 years', group: 'companion')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: false, pet_friendly: true, noise: true, cold_weather: true, size: 'small')
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Siberian Husky', origins: 'Siberian nomad tribe, Chukchi', life_span: '12-15 years', group: 'working')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: false, hypoallergenic: false, pet_friendly: true, noise: true, cold_weather: true, size: 'medium')
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Corgi', origins: 'Wales', life_span: '12-14 years', group: 'herding')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: false, pet_friendly: false, noise: false, cold_weather: true, size: 'small')
dog_1.atts_table_id = atts_1.id 
dog_1.save


dog_1 = DogBreed.create(name: 'Bulldog', origins: 'England', life_span: '8-12 years', group: 'companion')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: false, pet_friendly: false, noise: true, cold_weather: false, size: 'medium')
dog_1.atts_table_id = atts_1.id 
dog_1.save
