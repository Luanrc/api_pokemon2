class Api::V1::PokemonsController < Api::V1::ApiController

 before_action :set_pokemon, only: [:show, :update, :destroy]

 # GET /api/v1/pokemons

 def index

   @pokemons = Pokemon.all

   render json: @pokemons

 end

 # GET /api/v1/pokemons/1

 def show

   render json: @pokemon

 end

 # POST /api/v1/pokemons

 def create

   @pokemon = Pokemon.new(pokemon_params)

   if @pokemon.save

     render json: @pokemon, status: :created

   else

     render json: @pokemon.errors, status: :unprocessable_entity

   end

 end

 # PATCH/PUT /api/v1/pokemon/1

 def update

   if @pokemon.update(pokemon_params)

     render json: @pokemon

   else

     render json: @pokemon.errors, status: :unprocessable_entity

   end

 end

 # DELETE /api/v1/pokemon/1

 def destroy

   @pokemon.destroy

 end

 private

   # Use callbacks to share common setup or constraints between actions.

   def set_pokemon

     @pokemon = Pokemon.find(params[:id])

   end

   # Only allow a trusted parameter "white list" through.

   def pokemon_params

     params.require(:pokemon).permit(:name, :pokemon_type_id, :gender_id, :user_id)

   end



end
