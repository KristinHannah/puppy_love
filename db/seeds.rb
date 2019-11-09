dog_1 = DogBreed.create(name: 'Chihuahua', origins: 'South America', life_span: '5-18 year', group: 'companion', image: '/images/dogs/chihuahua.jpg')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: false, pet_friendly: false, noise: true, cold_weather: false, size: 'small')
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Tibetan Spaniel', origins: 'Tibet', life_span: '12-15 years', group: 'Non-sporting', image:'/images/dogs/tibetan_spaniel.jpg')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: false, pet_friendly: true, noise: true, cold_weather: false, size: 'small')
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Poodle', origins: 'Germany', life_span: '10-18 years', group: 'Non-sporting', image:'/images/dogs/poodle.jpg')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: true, pet_friendly: true, noise: false, cold_weather: true, size: 'large')
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Beagle', origins: 'Uncertain', life_span: '10-15 years', group: "hound", image: '/images/dogs/beagle.jpg')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: false, pet_friendly: true, noise: true, cold_weather: false, size: 'medium')
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Bichon Frise', origins: 'Mediterranean', life_span: '12-15 years', group: 'companion', image: '/images/dogs/bichon_frise.jpg')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: true, pet_friendly: true, noise: false, cold_weather: true, size: 'small')
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Shih Tzu', origins: 'China', life_span: '10-16 years', group: 'companion', image: '/images/dogs/shih_tzu.jpg')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: true, pet_friendly: true, noise: false, cold_weather: true, size: 'small')
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Maltese', origins: 'Mediterranean', life_span: '12-15 years', group: 'companion', image: '/images/dogs/maltese.jpg')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: true, pet_friendly: true, noise: false, cold_weather: false, size: 'small')
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Pit Bull Terrier', origins: 'England', life_span: '12-16 years', group: 'Terrier', image: '/images/dogs/pit_bull_terrier.jpg')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: false, pet_friendly: false, noise: true, cold_weather: false, size: 'large' )
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Mastiff', origins: 'Asia', life_span: '6-10 years', group: 'working', image: '/images/dogs/mastiff.jpg')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: false, hypoallergenic: false, pet_friendly: false, noise: false, cold_weather: true, size: 'large')
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Bernese Mountain', origins: 'Swiss', life_span: '6-10 years', group: 'working', image: '/images/dogs/bernese_mountain.jpg')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: false, hypoallergenic: false, pet_friendly: true, noise: true, cold_weather: true, size: 'large')
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Boxer', origins: 'German', life_span: '10-12 years', group: 'working', image: '/images/dogs/boxer.jpg')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: false, pet_friendly: true, noise: true, cold_weather: false, size: 'large')
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Great Dane', origins: 'The Middle East', life_span: '7-10 years', group: 'working', image: '/images/dogs/great_dane.jpg')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: false, hypoallergenic: false, pet_friendly: true, noise: true, cold_weather: false, size: 'large')
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Rottweiler', origins: 'Germany', life_span: '8-11 years', group: 'working', image: '/images/dogs/rottweiler.jpg')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: false, hypoallergenic: false, pet_friendly: false, noise: true, cold_weather: false, size: 'large')
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Golden Retriever', origins: 'Scotland', life_span: '10-12 years', group: 'Sporting', image: '/images/dogs/golden_retriever.jpg')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: false, hypoallergenic: false, pet_friendly: true, noise: true, cold_weather: true, size: 'large')
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Irish Setter', origins: 'Ireland', life_span: '11-15 years', group: 'sporting', image: '/images/dogs/irish_setter.jpg')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: false, hypoallergenic: false, pet_friendly: true, noise: true, cold_weather: true, size: 'large')
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Labrador Retriever', origins: "Newfoundland", life_span: '10-12 years', group: 'sporting', image: '/images/dogs/labrador_retriever.jpg')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: false, hypoallergenic: false, pet_friendly: true, noise: true, cold_weather: true, size: 'large' )
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Cocker Spaniel', origins: 'Spain', life_span: '12-15 years', group: 'sporting', image: '/images/dogs/cocker_spaniel.jpg')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: false, pet_friendly: true, noise: true, cold_weather: true, size: 'medium' )
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Yorkshire Terrier', origins: 'England', life_span: '12-15 years', group: 'companion', image: '/images/dogs/yorkshire_terrier.jpg')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: true, pet_friendly: true, noise: true, cold_weather: false, size: 'small')
dog_1.atts_table_id = atts_1.id 
dog_1.save


dog_1 = DogBreed.create(name: 'Akita', origins: 'Japan', life_span: '10-12 years', group: 'working', image: '/images/dogs/akita.jpg')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: false, hypoallergenic: false, pet_friendly: false, noise: true, cold_weather: true, size: 'large')
dog_1.atts_table_id = atts_1.id 
dog_1.save


dog_1 = DogBreed.create(name: 'German Shepherd', origins: 'German', life_span: '10-14 years', group: 'herding', image: '/images/dogs/german_shepherd.jpg')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: false, pet_friendly: false, noise: true, cold_weather: true, size: 'large')
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Shiba Inu', origins: 'Japan', life_span: '12-16 years', group: 'companion', image: '/images/dogs/shiba_inu.jpg')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: false, pet_friendly: true, noise: true, cold_weather: true, size: 'small')
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Siberian Husky', origins: 'Siberian nomad tribe, Chukchi', life_span: '12-15 years', group: 'working', image: '/images/dogs/siberian_husky.jpg')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: false, hypoallergenic: false, pet_friendly: true, noise: true, cold_weather: true, size: 'medium')
dog_1.atts_table_id = atts_1.id 
dog_1.save

dog_1 = DogBreed.create(name: 'Pembroke Welsh Corgi', origins: 'Wales', life_span: '12-14 years', group: 'herding', image: '/images/dogs/corgi.jpg')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: false, pet_friendly: false, noise: false, cold_weather: true, size: 'medium')
dog_1.atts_table_id = atts_1.id 
dog_1.save


dog_1 = DogBreed.create(name: 'Bulldog', origins: 'England', life_span: '8-12 years', group: 'companion', image: '/images/dogs/bulldog.jpg')
atts_1 = AttsTable.create(dog_breed_id: dog_1.id, apartment_friendly: true, hypoallergenic: false, pet_friendly: false, noise: true, cold_weather: false, size: 'medium')
dog_1.atts_table_id = atts_1.id 
dog_1.save
