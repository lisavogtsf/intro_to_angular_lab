# app.js.coffee

# define application
IntroApp = angular.module "IntroApp", []

IntroApp.controller "IndexCtrl", ['$scope', ($scope) ->

	$scope.favoriteMovies = [
		{title : "ET"},
		{title: "Ever After"},
		{title: "The Taker"},
		{title: "Guardians of the Galaxy"},
		{title: "Iron Man"},
		{title: "The Chef"}
	]


]