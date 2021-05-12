package com.example.weather


import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import retrofit2.Retrofit

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        val retrofit = Retrofit.Builder().baseUrl("https:api.weatherstack.com/")
                .addConverterFactory(GsonConverterFactory.create())
                .build()
        val service = retrofit.create(WeatherStackService::class.java)
        service.getCurrentWeather(
                "7340a46c103c11fd9d09e05ab88f5275",
                "Tashkent").enqueue(object : Callback<CurrentWeatherResponse>{
            override fun onResponse(
                    call: Call<CurrentWeatherResponce>,
                    response: Response<CurrentWeatherResponce>
            ) {
                val data =response.body()
                if(response.isSuccessful && data != null){
                    val temperature = data.current.temperature
                    val temperatureTextView = findViewById(R.id.temperature)
                    temperatureTextView.setText("$temperature")
                }
            }

            override fun onFailure(call: Call<CurrentWeatherResponce>, t: Throwable) {
                TODO("Not yet implemented")
                t.printStackTrace()
            }
        })

    }
}