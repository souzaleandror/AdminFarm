module ApplicationHelper
  def show_table1(action, page, table)
    #GENDER
    if (action = 'show' && page == Gender && table == AnimalStage)
        'id,animal_category_id,gender_id,name,min_month,max_month,obsolete'
    elsif (action = 'show' && page == Gender && table == AnimalState)
        'id,animal_category_id,gender_id,name,weigh_min,weigh_max,obsolete'
    elsif (action = 'show' && page == Gender && table == Animal)
        'id,animal_category_id,breed_animal_id,gender_id,animal_stage_id,animal_state_id,origin_id,farm_id,number_earring'
    #ORIGIN
    elsif (action = 'show' && page == Origin && table == Animal)
        'id,animal_category_id,breed_animal_id,gender_id,animal_stage_id,animal_state_id,origin_id,farm_id,number_earring'
    #DESIGN
    elsif (action = 'show' && page == Destiny && table == AnimalDeath)
        'id,animal_id,death_type_id,destiny_id,date_death,final_weigh'
    elsif (action = 'show' && page == Destiny && table == AnimalSale)
        'id,animal_id,sale_type_id,destiny_id,date_sale,purchase_value,sales_value,final_weigh'
    #FARM
    elsif (action = 'show' && page == Farm && table == FarmLot)
        'id,name,obsolete'
    #FARMLOT
    elsif (action = 'show' && page == FarmLot && table == Farm)
        'id,name,address,obsolete'
    #CATEGORY ANIMAL
    elsif (action = 'show' && page == AnimalCategory && table == Animal)
        'id,animal_category_id,breed_animal_id,gender_id,animal_stage_id,animal_state_id,origin_id,farm_id,number_earring'
    elsif (action = 'show' && page == AnimalCategory && table == BreedAnimal)
        'id,name,animal_category_id,name,obsolete'
    elsif (action = 'show' && page == AnimalCategory && table == AnimalStage)
        'id,animal_category_id,gender_id,name,min_month,max_month,obsolete'
    elsif (action = 'show' && page == AnimalCategory && table == AnimalState)
        'id,animal_category_id,gender_id,name,weigh_min,weigh_max,obsolete'
    elsif (action = 'show' && page == AnimalCategory && table == Medicine)
        'id,animal_category_id,name,obsolete'
    elsif (action = 'show' && page == AnimalCategory && table == Vaccine)
        'id,animal_category_id,name,obsolete'
    #MEDICINES
    elsif (action = 'show' && page == Medicine && table == ApplicationMedicine)
        'id,animal_id,medicine_id,date_medicine'
    #VACCINEaccin
    elsif (action = 'show' && page == Vaccine && table == Vaccination)
        'id,animal_id,vaccine_id,date_vaccine'
    #ANIMAL
    elsif (action = 'show' && page == Animal && table == AnimalDeath)
        'id,death_type_id,destiny_id,date_death,final_weigh'
    elsif (action = 'show' && page == Animal && table == AnimalSale)
        'id,sale_type_id,destiny_id,date_sale,final_weigh'
    elsif (action = 'show' && page == Animal && table == Weighing)
        'id,animal_stage_id,animal_state_id,weigh_date,weight,gain_weight,pregnant,sick'
    elsif (action = 'show' && page == Animal && table == ApplicationMedicine)
        'id,medicine_id,date_medicine'
    else
      "gaga2"
    end
  end
  
  def attribute_name(model, field_name)
    if model == AnimalStage
      if (['animal_category_id','gender_id'].include? field_name) 
        :name
      end
    elsif model == AnimalState
      if (['animal_category_id','gender_id'].include? field_name) 
        :name
      end
    elsif model == Animal
      if (['animal_category_id','breed_animal_id','animal_stage_id','animal_state_id','origin_id','farm_id','gender_id'].include? field_name) 
        :name
      end
    elsif model == AnimalDeath
      if (['death_type_id','destiny_id'].include? field_name) 
        :name
      elsif (['animal_id'].include? field_name)
        :number_earring
      end
    elsif model == AnimalSale
      if (['sale_type_id','destiny_id'].include? field_name) 
        :name
      elsif (['animal_id'].include? field_name)
        :number_earring
      end
    elsif model == Weighing
      if (['animal_stage_id','animal_state_id'].include? field_name) 
        :name
      end
    elsif model == ApplicationMedicine
      if (['medicine_id'].include? field_name) 
        :name
      elsif (['animal_id'].include? field_name)
        :number_earring
      end
    elsif model == BreedAnimal
      if (['animal_category_id'].include? field_name) 
        :name
      end
    elsif model == Medicine
      if (['animal_category_id'].include? field_name) 
        :name
      end
    elsif model == Vaccine
      if (['animal_category_id'].include? field_name) 
        :name
      end
    elsif model == Vaccination
      if (['vaccine_id'].include? field_name) 
        :name
      elsif (['animal_id'].include? field_name)
        :number_earring
      end
    else
      nil
    end
  end
  
  def t_get_boolean(value)
  	if (value == 'False' || value == 'false' || value == FalseClass || value == false)
  		t('boolean.false_')
  	elsif (value == 'True' || value == 'true' || value == TrueClass || value == true)
  		t('boolean.true_')
  	else
  		'teste'
  	end	
  end
  
  def show_table(action, page)
    if action == 'show'
      if page == Gender
        [AnimalStage, AnimalState, Animal]
      else
        []
      end
    end
  end
  
  def testeApp
    "testeApp"
  end
end