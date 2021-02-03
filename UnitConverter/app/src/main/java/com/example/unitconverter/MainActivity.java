 package com.example.unitconverter;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    EditText editText;
    TextView textView, textView2, textView4, valueInPounds;
    Button button;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        textView = findViewById(R.id.textView);
        textView2 = findViewById(R.id.textView2);
        textView4 = findViewById(R.id.textView4);
        valueInPounds = findViewById(R.id.valueOfPounds);
        editText = findViewById(R.id.editTextNumber);
        button = findViewById(R.id.button);

        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v){
                ConvertFromKiloToPound();
            }
        });
    }

    private void ConvertFromKiloToPound() {
        String kilo = editText.getText().toString();
        double kiloInNum = Double.parseDouble(kilo);
        // converting kilo to pounds formula
        double pounds = kiloInNum * 2.205;
        valueInPounds.setText("" + pounds);
    }
}