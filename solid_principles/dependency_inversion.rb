class Order
  def intialize(respoitory)
    @respoitory = respoitory
  end

  def save
    @respoitory.save(self)
  end
end

class DatabaseRepository
  def save(order)
    # Save the order to the database
  end
end

class MemoryRepository
  def save(order)
    # Save the order in the memory
  end
end
