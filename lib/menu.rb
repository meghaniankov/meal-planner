class Menu
  attr_reader :main_dishes, :side_dishes
  
  def initialize(main_dishes = [], side_dishes = [])
    @main_dishes = main_dishes
    @side_dishes = side_dishes
    set_menu
  end

  def set_menu
    set_mains
    set_sides
  end

  def set_mains
    if @main_dishes == []
      @main_dishes = [
        { dish: "Frozen Chicken", health_level: :kinda_heathy, ease: :quick, notes: "", side: true },
        { dish: "Tacos", health_level: :kinda_heathy, ease: :slow_cooker, notes: "", side: false },
        { dish: "Soup", health_level: :kinda_heathy, ease: :quick, notes: "", side: true },
        { dish: "Fresh Fish", health_level: :heathy, ease: :takes_prep, notes: "Sunday/Wednesday ideal", side: true },
        { dish: "Fish Sticks", health_level: :meh, ease: :quick, notes: "", side: true },
        { dish: "Pad Thai", health_level: :meh, ease: :special_occasion, notes: "", side: false },
        { dish: "Frozen Pizza", health_level: :treat_yo_self, ease: :quick, notes: "", side: false },
      ]
    end
  end

  def set_sides
    if @side_dishes == []
      @side_dishes = [
        { dish: "Rice", health_level: :kinda_heathy, ease: :takes_prep, notes: "" },
        { dish: "Bread", health_level: :meh, ease: :quick, notes: ""},
        { dish: "Frozen Veg", health_level: :kinda_heathy, ease: :quick, notes: ""},
      ]
    end
  end
end