package com.example.weather

data class Request(
    val language: String,
    val query: String,
    val type: String,
    val unit: String
)