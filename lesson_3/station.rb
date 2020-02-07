class Station 

  # only name will getting from instance of the class
  attr_reader  :name, :trains

  # def default st_name "main" & empty array of trains
  def initialize(st_name)
    @name = name
    @trains = []
  end

  # arrival - the train added to array of trains

  def train_in(train)
    @trains << train
  end

 
  # get the list of trains by type - just use .select method of Array (нужно будет пилить подобный метод у классса Train)

  def trains_by_type(train_type)
    @trains.select{ |train| train.type == train_type }
  end

  # departure just delete the train from array of trains (using .delete method of Array)

  def train_out(train)
    @trains.delete(train)
  end
end
