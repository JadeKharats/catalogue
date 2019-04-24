struct Endpoints::Hello
  include Onyx::HTTP::Endpoint

  params do
    query do
      type who : String = "Onyx" # The default value is "Onyx"
    end
  end

  def call
    Views::Hello.new(params.query.who)
  end
end
