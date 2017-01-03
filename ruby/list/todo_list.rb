class TodoList
  def initialize(items)
    @items = items
  end
  def get_items 
     @items 
  end
  def add_item(item)
    @items.push(item)
    @items
  end
  def delete_item(item)
    @items.delete(item)
    @items
  end
  def get_item(i)
  @items = @items[i]
  end
end