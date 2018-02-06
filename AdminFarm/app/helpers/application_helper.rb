module ApplicationHelper
  
  def show_table1(action, page, table)
    if (action = 'show' && page == Gender && table == AnimalStage)
        'animal_category_id,name,min_month,max_month,obsolete'
    elsif (action = 'show' && page == Gender && table == AnimalState)
        'animal_category_id,name,weigh_min,weigh_max,obsolete'
    elsif (action = 'show' && page == Gender && table == Animal)
        'animal_category_id,breed_animal_id,animal_stage_id,animal_state_id,origin_id,farm_id,number_earring'
    elsif (action = 'show' && page == Animal && table == AnimalDeath)
        'death_type_id,destiny_id,date_death,final_weigh'
    elsif (action = 'show' && page == Animal && table == AnimalSale)
        'sale_type_id,destiny_id,date_sale,final_weigh'
    elsif (action = 'show' && page == Animal && table == Weighing)
        'animal_stage_id,animal_state_id,weigh_date,weight,gain_weight,pregnant,sick'
    elsif (action = 'show' && page == Animal && table == ApplicationMedicine)
        'medicine_id,date_medicine'
    else
      "gaga2"
    end
  end
  
  def attribute_name(model, field_name)
    
    if model == AnimalStage
      if (['animal_category_id'].include? field_name) 
        :name
      end
    elsif model == AnimalState
      if (['animal_category_id'].include? field_name) 
        :name
      end
    elsif model == Animal
      if (['animal_category_id','breed_animal_id','animal_stage_id','animal_state_id','origin_id','farm_id'].include? field_name) 
        :name
      end
    elsif model == AnimalDeath
      if (['death_type_id','destiny_id'].include? field_name) 
        :name
      end
    elsif model == AnimalSale
      if (['sale_type_id','destiny_id'].include? field_name) 
        :name
      end
    elsif model == Weighing
      if (['animal_stage_id','animal_state_id'].include? field_name) 
        :name
      end
    elsif model == ApplicationMedicine
      if (['medicine_id'].include? field_name) 
        :name
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
  
  def testeApp
    "testeApp"
  end
end