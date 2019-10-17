class MoviesController < ApplicationController
    def index
        @movie_columns = ['movie', 'director', 'year']
        @movies = [
            {
                'movie' => 'Star Wars',
                'director' => 'George Lucas',
                'year' => 1977,
            },{
                'movie' => 'Pulp Fiction',
                'director' => 'Quentin Tarantino',
                'year' => 1994,
            },{
                'movie' => '...',
                'director' => '...',
                'year' => '...',
            },
        ]
    end

end
