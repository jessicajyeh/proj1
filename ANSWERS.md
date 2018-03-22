# Q0: Why is this error being thrown?
Because I haven't created the Pokemon model yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
They are generated from the db/seeds.rb file, and the options are pikachu, charmander, squirtle, and bulbasaur. They are all starter pokemon! 

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It renders a button, and upon pressing the button, it routes to the capture method in the pokemons controller while passing back the id of the pokemon to params. Then I can use the id in the capture method, and the pokemon is updated.

# Question 3: What would you name your own Pokemon?
Henry

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in redirect_to trainer_path(params[:tid]). The path needed the id of the trainer to figure out which trainer's profile to show, so I passed in the tid trainer id in the damage button as well.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
application.html.erb is the html that will appear on every page. The error messages are included here because they will look the same when they aappear on any page. Where it says <%= render 'layouts/messages' %>, it renders _messages.html.erb, which has the code for flashing the error messages.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
