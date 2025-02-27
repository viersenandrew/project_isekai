extends Node2D

var gameTime = 0;
var hour = 6;
var minute = 0;
var gameDay = 1;
var pm = false;

signal time_updated

enum season {
	Spring,
	Summer,
	Fall,
	Winter
};
