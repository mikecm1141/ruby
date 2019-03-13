class Array
  def keep
    find_all do |element|
      yield element
    end
  end

  def discard
    delete_if do |element|
      yield element
    end
  end
end
