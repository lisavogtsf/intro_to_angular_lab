# app.js.coffee

# define application
IntroApp = angular.module "IntroApp", []

IntroApp.controller "IndexCtrl", ['$scope', ($scope) ->

	$scope.favoriteMovies = [
		{title : "ET"},
		{title: "Love, Actually"},
		{title: "Ever After"},
		{title: "The Taker"},
		{title: "Guardians of the Galaxy"},
		{title: "Iron Man"},
		{title: "The Chef"}
	]

	$scope.removeFavorite = (movie) ->
		# console.log "removing ", $scope.favoriteMovies.movie.titles
		$scope.favoriteMovies.splice($scope.favoriteMovies.indexOf(movie), 1)

	$scope.goStealth = () ->
		console.log $scope.invisibleInk
		$scope.submitted = true
		$scope.notice = "A cleverly done thing!"

	# $scope.$watch "invisibleInk", ->
	# 	console.log $scope.invisibleInk
	# 	if $scope.invisibleInk == "answer"
	# 		# Better refactor!
	# 		$scope.submitted = true
	# 		# ANYTIME YOU USE ANGULAR
	# 		# $(".magic").hide()
	# 		$scope.notice = "A cleverly done thing!"


]

IntroApp.filter 'reverse', ->
	(movie_title) ->
		# replace globally with g
		movie_title.split("").reverse().join().replace(/,/g, "")

	
