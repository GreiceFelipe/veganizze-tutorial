@app.config ['$stateProvider', '$urlRouterProvider', '$locationProvider', ($stateProvider, $urlRouterProvider, $locationProvider) ->

  $urlRouterProvider
    .otherwise('/404')
  # $urlRouterProvider

  $locationProvider
      .html5Mode(true)
      .hashPrefix('!')
   # $locationProvider

  $stateProvider
    .state 'home',
      url: ''
      controller: 'ApplicationCtrl'
    # home

    .state 'recipes',
      abstract: true
      views:
        '':
          controller: 'RecipesCtrl'
          templateUrl: '/recipes/layout.html'
        # ''
      # views
    # recipe

  .state 'recipes.index',
    url: '/recipes'
    views:
      'recipes':
        controller: 'RecipesIndexCtrl'
        templateUrl: '/recipes.html'
      # 'recipes'
    # views
  # recipe.index


  .state 'recipes.new',
    url: '/recipes/new'
    views:
      'recipes':
        controller: 'RecipesNewCtrl'
        templateUrl: '/recipes/new.html'
      # 'recipes'
    # views
  # recipe.new


  .state 'recipes.show',
    url: '/recipes/:id'
    views:
      'recipes':
        controller: 'RecipeShowController'
        templateUrl: (stateParams) -> '/recipes/' + stateParams.id + '.html'
      # 'recipes'
    # views
  # recipe.show


  .state 'recipes.edit',
    url: '/recipes/:id/edit'
    views:
      'recipes':
        controller: 'RecipesEditController'
        templateUrl: (stateParams) -> '/recipes/' + stateParams.id + '/edit.html'
      # 'recipes'
    # views
  # recipe.edit

# $stateProvider
] # config