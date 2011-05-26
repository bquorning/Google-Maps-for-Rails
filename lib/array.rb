class Array
  def to_gmaps4rails
    json = collect do |object|
      Gmaps4rails.create_json(object).to_s
    end
    json.last.chop!.chop! unless json.empty?
    "[#{json.join}]"
  end
end