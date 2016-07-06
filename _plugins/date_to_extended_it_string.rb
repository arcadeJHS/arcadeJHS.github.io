module Jekyll
  module DateToExtendedItString
    include Liquid::StandardFilters
    def date_to_extended_it_string(dateIn)
      
     _month = case date(dateIn, "%-m")
        when "1"
          "Gennaio"
        when "2"
          "Febbraio"
        when "3"
          "Marzo"
        when "4"
          "Aprile"
        when "5"
          "Maggio"
        when "6"
          "Giugno"
        when "7"
          "Luglio"
        when "8"
          "Agosto"
        when "9" 
          "Settembre"
        when "10"
          "Ottobre"
        when "11"
          "Novembre"
        when "12"
          "Dicembre"
      end
      
      _dateOut = date(dateIn, "%-d") + ' ' + _month + ' ' + date(dateIn, "%-Y")     
	  
    end
  end
end

Liquid::Template.register_filter(Jekyll::DateToExtendedItString)