#app/helpers/application_helper.rb

#Helpers accessibles dans toute l'application
module ApplicationHelper
  
  #Permet de renvoyer une date au format **sexy**
  def sexy_date(date)
    #Option verbeuse
    # if date.nil?
    #  return date.strftime("%d/%m/%Y")
    #else
    #  return "Jamais"
    #end
    
    #Option flêmmard
    return date.strftime("%d/%m/%Y") rescue "Jamais"
  end
  
  #Permet de protéger time_ago_in_words contre les dates nil
  def sexy_time_ago_in_words(date)
    if date.nil?
      return "Jamais"
    else
      return time_ago_in_words date
    end
    
    #Pour les flêmmards
    return  (date) rescue "Jamais"
  end
end
