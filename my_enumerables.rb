module MyEnumerables
  def all
    each { |element| return false unless yield(element) }
    true
  end

  def any
    each { |element| return true if yield(element) }
    false
  end

  def filter
    result = []
    each do |element|
      result << element if yield(element)
    end
    result.inspect
  end
end
