
dog_1 = DogBreed.create(name: 'Chihuahua', origins: 'South America', life_span: '5-18 year', group: 'companion')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: false, pet_friendly: false, noise: true)
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Tibetan Spaniel', origins: 'Tibet', life_span: '12-15 years', group: 'Non-sporting')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: false, pet_friendly: true, noise: true)
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Poodle', origins: 'Germany', life_span: '10-18 years', group: 'Non-sporting')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: true, pet_friendly: true, noise: false)
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Beagle', origins: 'Uncertain', life_span: '10-15 years', group: "hound")
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: false, pet_friendly: true, noise: true)
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Bichon Frise', origins: 'Mediterranean', life_span: '12-15 years', group: 'companion')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: true, pet_friendly: true, noise: false)
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Shih Tzu', origins: 'China', life_span: '10-16 years', group: 'companion')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: true, pet_friendly: true, noise: false)
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Maltese', origins: 'Mediterranean', life_span: '12-15 years', group: 'companion')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: true, pet_friendly: true, noise: false)
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Pit Bull Terrier', origins: 'England', life_span: '12-16 years', group: 'Terrier')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: false, pet_friendly: false, noise: true)
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Mastiff', origins: 'Asia', life_span: '6-10 years', group: 'working')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: false, hypoallergenic: false, pet_friendly: false, noise: false)
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Bernese Mountain', origins: , life_span: , group: )
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: false, hypoallergenic: false, pet_friendly: true, noise: true)
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Boxer', origins: , life_span: , group: )
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: , hypoallergenic: pet_friendly: , noise: )
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Great Dane', origins: , life_span: , group: )
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: , hypoallergenic: pet_friendly: , noise: )
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Rottweiler', origins: , life_span: , group: )
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: , hypoallergenic: pet_friendly: , noise: )
dog_1.atts_table_id = atts_1.id 
dog_1.save