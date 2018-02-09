# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

C1 = Company.create(name: 'Admin Farm', slogan: 'Gerencie Sua Fazenda', phone: '(11)1122-4488', fax: '(11)1122-4488', cel: '(11)9-9999-9999', email: 'info@adminfarm.com.br', contact_email: 'contact@adminfarm.com.br')
puts 'CREATED Company'
G1 = Gender.create(name: 'Macho', description: 'Animais Machos', obsolete: false)
G2 = Gender.create(name: 'Fêmea', description: 'Animais Fêmeas', obsolete: false)
G3 = Gender.create(name: 'Outros', description: 'Outros', obsolete: true)
puts 'CREATED Gender'
O1 = Origin.create(name: 'Leilão', description: 'Animais vindos do Leilão', obsolete: false)
O2 = Origin.create(name: 'Fazenda', description: 'Animais vindo de outra Fazenda', obsolete: false)
O3 = Origin.create(name: 'Procriação', description: 'Animais Procriacados na nossas fazendas', obsolete: false)
O4 = Origin.create(name: 'Outros', description: 'Outros', obsolete: true)
puts 'CREATED Origin'
D1 = Destiny.create(name: 'Leilão', description: 'Animais vendidos para Leilão', obsolete: false)
D2 = Destiny.create(name: 'Fazenda', description: 'Animais vendidos a outras fazendas', obsolete: false)
D3 = Destiny.create(name: 'Venda Privada', description: 'Animais Vendidos a particulares', obsolete: false)
D4 = Destiny.create(name: 'Outros', description: 'Outros', obsolete: true)
puts 'CREATED Destiny'
F1 = Farm.create(name: 'Fazenda A', address: 'Rua Capivari , n 12 - Sao Paulo SP', hectare_quantity: 120, obsolete: false)
F2 = Farm.create(name: 'Fazenda B', address: 'Rua Madeira Filho , n 12 - Sao Paulo SP', hectare_quantity: 100, obsolete: true)
puts 'CREATED Farm'
FL1 = FarmLot.create(farm: F1, name: 'Lote A', description: 'Lote A - 50 hectares ao Norte', obsolete: false)
FL2 = FarmLot.create(farm: F1, name: 'Lote B', description: 'Lote A - 50 hectares ao Sul', obsolete: false)
FL3 = FarmLot.create(farm: F1, name: 'Lote C', description: 'Lote A - 50 hectares ao Leste', obsolete: false)
FL4 = FarmLot.create(farm: F2, name: 'Lote A', description: 'Lote A - 50 hectares ao Norte', obsolete: false)
FL5 = FarmLot.create(farm: F2, name: 'Lote A', description: 'Lote A - 50 hectares ao Sul', obsolete: false)
FL6 = FarmLot.create(farm: F2, name: 'Lote A', description: 'Lote A - 50 hectares ao Leste', obsolete: false)
puts 'CREATED FarmLot'
AC1 = AnimalCategory.create(name: 'Bovinos e Equinos', description: 'Remedios so para Bovinos e Equinos', obsolete: false)
AC2 = AnimalCategory.create(name: 'Ovelhas e Cabras', description: 'Remedios so para Ovelhas e Cabras', obsolete: true)
puts 'CREATED AnimalCategory'
V1 = Vaccine.create(animal_category: AC1, name: 'Vitamina A1', description: 'Vacinas so para Bovinos e Equinos', obsolete: false)
V2 = Vaccine.create(animal_category: AC1, name: 'Vitamina A2', description: 'Vacinas so para Bovinos e Equinos', obsolete: false)
V3 = Vaccine.create(animal_category: AC1, name: 'Vitamina B1', description: 'Vacinas so para Ovelhas e Cabras', obsolete: false)
V4 = Vaccine.create(animal_category: AC1, name: 'Vitamina B2', description: 'Vacinas so para Ovelhas e Cabras', obsolete: false)
M1 = Medicine.create(animal_category: AC1, name: 'Remedio A1', description: 'Remedios so para Bovinos e Equinos', obsolete: false)
M2 = Medicine.create(animal_category: AC1, name: 'Remedio A2', description: 'Remedios so para Bovinos e Equinos', obsolete: false)
M3 = Medicine.create(animal_category: AC1, name: 'Remedio B1', description: 'Remedios so para Ovelhas e Cabras', obsolete: false)
M4 = Medicine.create(animal_category: AC1, name: 'Remedio B2', description: 'Remedios so para Ovelhas e Cabras', obsolete: false)
puts 'CREATED Medicine'
BA1 = BreedAnimal.create(animal_category: AC1, name: 'Braford', description: 'Bovinos e Equinos raca Braford', obsolete: false)
BA2 = BreedAnimal.create(animal_category: AC1, name: 'Gabiru', description: 'Bovinos e Equinos raca Gabiru', obsolete: false)
BA3 = BreedAnimal.create(animal_category: AC1, name: 'Nelore', description: 'Bovinos e Equinos raca Nelore', obsolete: false)
BA4 = BreedAnimal.create(animal_category: AC1, name: 'Guzera', description: 'Bovinos e Equinos raca Guzera', obsolete: false)
BA5 = BreedAnimal.create(animal_category: AC1, name: 'Aberden', description: 'Bovinos e Equinos raca Aberden', obsolete: false)
puts 'CREATED BreedAnimal'
ASTAGE1 = AnimalStage.create(animal_category: AC1, gender: G2, name: 'Bezerra', min_month: 1 ,max_month: 11, description: 'Bovinos e Equinos sao Vitelos', obsolete: false)
ASTAGE2 = AnimalStage.create(animal_category: AC1, gender: G2, name: 'Soberana', min_month: 12,max_month: 24, description: 'Bovinos e Equinos sao Soberana', obsolete: false)
ASTAGE3 = AnimalStage.create(animal_category: AC1, gender: G2, name: 'Novilha 1', min_month: 25,max_month: 36, description: 'Bovinos e Equinos sao Novilha', obsolete: false)
ASTAGE4 = AnimalStage.create(animal_category: AC1, gender: G2, name: 'Vaca / Novilha 2', min_month: 37,max_month: 120, description: 'Bovinos e Equinos sao Vaca / Novilha 2', obsolete: false)
ASTAGE5 = AnimalStage.create(animal_category: AC1, gender: G1, name: 'Bezerro', min_month: 1 ,max_month: 11, description: 'Bovinos e Equinos sao Bezerro', obsolete: false)
ASTAGE6 = AnimalStage.create(animal_category: AC1, gender: G1, name: 'Bezerro Soberano', min_month: 12,max_month: 15, description: 'Bovinos e Equinos sao Bezerro Soberano', obsolete: false)
ASTAGE7 = AnimalStage.create(animal_category: AC1, gender: G1, name: 'Garrote', min_month: 16,max_month: 24, description: 'Bovinos e Equinos sao Garrote', obsolete: false)
ASTAGE8 = AnimalStage.create(animal_category: AC1, gender: G1, name: 'Erado', min_month: 25,max_month: 120, description: 'Bovinos e Equinos sao Erado', obsolete: false)
puts 'CREATED AnimalStage'
ASTATE1 = AnimalState.create(animal_category: AC1, gender: G1, name: 'Pessimo', weigh_min: 0, weigh_max: 200.99999, description: 'Bovinos e Equinos sao Vitelos', obsolete: false)
ASTATE2 = AnimalState.create(animal_category: AC1, gender: G1, name: 'Ruim', weigh_min: 201, weigh_max: 400.99999, description: 'Bovinos e Equinos sao Vitelos', obsolete: false)
ASTATE3 = AnimalState.create(animal_category: AC1, gender: G1, name: 'Regular', weigh_min: 401, weigh_max: 600.99999, description: 'Bovinos e Equinos sao Vitelos', obsolete: false)
ASTATE4 = AnimalState.create(animal_category: AC1, gender: G1, name: 'Bom', weigh_min: 601, weigh_max: 800.99999, description: 'Bovinos e Equinos sao Vitelos', obsolete: false)
ASTATE5 = AnimalState.create(animal_category: AC1, gender: G1, name: 'Ótimo', weigh_min: 801, weigh_max: 1500, description: 'Bovinos e Equinos sao Vitelos', obsolete: false)
ASTATE6 = AnimalState.create(animal_category: AC1, gender: G2, name: 'Pessimo', weigh_min: 0, weigh_max: 100.99999, description: 'Bovinos e Equinos sao Vitelos', obsolete: false)
ASTATE7 = AnimalState.create(animal_category: AC1, gender: G2, name: 'Ruim', weigh_min: 101, weigh_max: 200.99999, description: 'Bovinos e Equinos sao Vitelos', obsolete: false)
ASTATE8 = AnimalState.create(animal_category: AC1, gender: G2, name: 'Regular', weigh_min: 201, weigh_max: 300.99999, description: 'Bovinos e Equinos sao Vitelos', obsolete: false)
ASTATE9 = AnimalState.create(animal_category: AC1, gender: G2, name: 'Bom', weigh_min: 301, weigh_max: 400.99999, description: 'Bovinos e Equinos sao Vitelos', obsolete: false)
ASTATE10 = AnimalState.create(animal_category: AC1, gender: G2, name: 'Ótimo', weigh_min: 401, weigh_max: 1000, description: 'Bovinos e Equinos sao Vitelos', obsolete: false)
puts 'CREATED AnimalState'
A1 = Animal.create(animal_category: AC1, breed_animal: BA1, gender: G1, animal_stage: ASTAGE1, animal_state: ASTATE1, origin: O1, farm: F1, number_earring: '123456', date_register: '01/01/2018', birth_date: '01/01/2017', earring_mother_number: '654321', initial_weigh: 123.12)
A2 = Animal.create(animal_category: AC1, breed_animal: BA2, gender: G1, animal_stage: ASTAGE2, animal_state: ASTATE2, origin: O2, farm: F1, number_earring: '123567', date_register: '01/01/2018', birth_date: '01/01/2017', earring_mother_number: '654321', initial_weigh: 123.12)
A3 = Animal.create(animal_category: AC1, breed_animal: BA3, gender: G2, animal_stage: ASTAGE3, animal_state: ASTATE3, origin: O3, farm: F1, number_earring: '123678', date_register: '01/01/2018', birth_date: '01/01/2017', earring_mother_number: '654321', initial_weigh: 123.12)
A4 = Animal.create(animal_category: AC1, breed_animal: BA4, gender: G2, animal_stage: ASTAGE4, animal_state: ASTATE4, origin: O1, farm: F1, number_earring: '123789', date_register: '01/01/2018', birth_date: '01/01/2017', earring_mother_number: '654321', initial_weigh: 123.12)
A5 = Animal.create(animal_category: AC1, breed_animal: BA5, gender: G1, animal_stage: ASTAGE5, animal_state: ASTATE5, origin: O1, farm: F1, number_earring: '123890', date_register: '01/01/2018', birth_date: '01/01/2017', earring_mother_number: '654321', initial_weigh: 123.12)
A6 = Animal.create(animal_category: AC1, breed_animal: BA1, gender: G1, animal_stage: ASTAGE6, animal_state: ASTATE6, origin: O1, farm: F1, number_earring: '1234901', date_register: '01/01/2018', birth_date: '01/01/2017', earring_mother_number: '654321', initial_weigh: 123.12)
puts 'CREATED Animal'
W1 = Weighing.create(animal: A1, animal_stage: ASTAGE1, animal_state: ASTATE1, weigh_date: '01/01/2018', weight: 124.00, gain_weight: 0, pregnant: false, sick: false)
W2 = Weighing.create(animal: A1, animal_stage: ASTAGE2, animal_state: ASTATE2, weigh_date: '01/02/2018', weight: 125.00, gain_weight: 1, pregnant: false, sick: false)
W3 = Weighing.create(animal: A2, animal_stage: ASTAGE3, animal_state: ASTATE3, weigh_date: '01/01/2018', weight: 124.00, gain_weight: 0, pregnant: true, sick: true)
W4 = Weighing.create(animal: A2, animal_stage: ASTAGE4, animal_state: ASTATE4, weigh_date: '01/02/2018', weight: 126.00, gain_weight: 2, pregnant: false, sick:true)
W5 = Weighing.create(animal: A3, animal_stage: ASTAGE5, animal_state: ASTATE5, weigh_date: '01/01/2018', weight: 124.00, gain_weight: 0, pregnant: false, sick: true)
W6 = Weighing.create(animal: A3, animal_stage: ASTAGE6, animal_state: ASTATE6, weigh_date: '01/02/2018', weight: 127.00, gain_weight: 3, pregnant: true, sick: false)
W7 = Weighing.create(animal: A4, animal_stage: ASTAGE2, animal_state: ASTATE3, weigh_date: '01/01/2018', weight: 124.00, gain_weight: 0, pregnant: false, sick:true)
W8 = Weighing.create(animal: A5, animal_stage: ASTAGE3, animal_state: ASTATE2, weigh_date: '01/02/2018', weight: 128.00, gain_weight: 4, pregnant: false, sick:false)
puts 'CREATED Weighing'
VA1 = Vaccination.create(animal: A1, vaccine: V1, date_vaccine: '01/01/2018')
VA2 = Vaccination.create(animal: A1, vaccine: V2, date_vaccine: '01/02/2018')
VA3 = Vaccination.create(animal: A2, vaccine: V2, date_vaccine: '01/03/2018')
puts 'CREATED Vaccination'
AM1 = ApplicationMedicine.create(animal: A1, medicine: M1, date_medicine: '01/01/2018')
AM2 = ApplicationMedicine.create(animal: A1, medicine: M2, date_medicine: '01/01/2018')
AM3 = ApplicationMedicine.create(animal: A1, medicine: M1, date_medicine: '01/01/2018')
puts 'CREATED ApplicationMedicine'
ST1 = SaleType.create(name: 'Venda Leilao', description: 'Vendas para Leiloes', obsolete: false)
ST2 = SaleType.create(name: 'Venda Privada', description: 'Vendas para Privadas', obsolete: false)
ST3 = SaleType.create(name: 'Venda Mercado', description: 'Vendas no Mercado', obsolete: false)
ST4 = SaleType.create(name: 'Venda Outros', description: 'Vendas no Outro', obsolete: true)
puts 'CREATED SaleType'
DT1 = DeathType.create(name: 'Morte por doenca', description: 'Morte por Doença', obsolete: false)
DT2 = DeathType.create(name: 'Morte por envelhecimento', description: 'Morte por Envelhecimento', obsolete: false)
DT3 = DeathType.create(name: 'Morte por desconhecida', description: 'Morte por Desconhecido', obsolete: false)
DT4 = DeathType.create(name: 'Morte outros', description: 'Morte por outros', obsolete: true)
puts 'CREATED DeathType'
AD1 = AnimalDeath.create(animal: A1, death_type: DT1, destiny: D1, date_death: '01/03/2018', final_weigh: 132.00)
AD2 = AnimalDeath.create(animal: A2, death_type: DT2, destiny: D2, date_death: '01/04/2018', final_weigh: 135.00)
puts 'CREATED AnimalDeath'
AS1 = AnimalSale.create(animal: A5, sale_type: ST2, destiny: D3, date_sale: '01/03/2018', purchase_value: 255.00, sales_value: 500.00, final_weigh: 128.00)
AS2 = AnimalSale.create(animal: A6, sale_type: ST1, destiny: D4, date_sale: '01/04/2018', purchase_value: 300.00, sales_value: 600.00, final_weigh: 130.00)
puts 'CREATED AnimalSale'