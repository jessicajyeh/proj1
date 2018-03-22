class PokemonsController < ApplicationController
	def capture
		pokemon = Pokemon.find(params[:id])
		pokemon.trainer_id = current_trainer.id
		pokemon.save
		redirect_to root_path
	end

	def damage
		pokemon = Pokemon.find(params[:id])
		pokemon.health = pokemon.health - 10
		pokemon.save
		if pokemon.health <= 0
			pokemon.destroy
		end 
		redirect_to trainer_path(params[:tid])
	end 

	def new 
		@pokemons = Pokemon.all
		@pokemon = Pokemon.new
	end 

	def create
		@pokemon = Pokemon.create(new_params)
		@pokemon.trainer_id = current_trainer.id
		@pokemon.health = 100
		@pokemon.level = 1
		@pokemon.save
		puts('heres the id of trainer')
		if @pokemon.valid? == true
			puts('u tried')
			redirect_to trainer_path(current_trainer.id)
		else
			redirect_to new_path
			flash[:error] = @pokemon.errors.full_messages.to_sentence
		end
		
	end 

	private

	def new_params
		params.require(:pokemon).permit(:name, :ndex)
	end
end
