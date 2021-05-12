package com.example.diceroller

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.*

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        val rollButton: Button = findViewById(R.id.button)
        rollButton.setOnClickListener() {
            rollDice()
        }
    }
    fun rollDice(){
        // Create new Dice object with 6 sides and roll it
        val dice = Dice(6)
        val diceText = dice.rollDice()
        // Update the screen with the dice roll
        val resultImageView: ImageView = findViewById(R.id.imageView)
        val drawableResource = when (diceText){
            1 -> R.drawable.dice_1
            2 -> R.drawable.dice_2
            3 -> R.drawable.dice_3
            4 -> R.drawable.dice_4
            5 -> R.drawable.dice_5
            else -> R.drawable.dice_6
        }
        resultImageView.setImageResource(drawableResource)
        val ranNumber : EditText = findViewById(R.id.editTextTextPersonName)
        val newRanNumber = ranNumber.text.toString().toInt()
        if(newRanNumber == diceText){
            Toast.makeText(this, "You win!", Toast.LENGTH_SHORT).show()
        }
        else{
            Toast.makeText(this, "Try again!", Toast.LENGTH_SHORT).show()
        }
        //resultImageView.contentDescription = diceText.toString()
    }
}

class Dice(private val numSides: Int) {
    fun rollDice(): Int {
        return (1..numSides).random()
    }

}
