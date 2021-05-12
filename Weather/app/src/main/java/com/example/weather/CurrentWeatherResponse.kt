package com.example.weather

data class CurrentWeatherResponse(
    val current: Current,
    val location: Location,
    val request: Request
)