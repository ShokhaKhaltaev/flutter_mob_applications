package com.example.fragmentpractice;

import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    Button btn_sign_in;
    private AutoCompleteTextView actv;
    private String[] cars = new String[] {
         "Volvo", "Mercedes Benz", "Ravon", "Chevrolet", "Ford", "BMW", "Lada", "Forza"
    };
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        actv = (AutoCompleteTextView)findViewById(R.id.carOptions);
        ArrayAdapter adapter = new ArrayAdapter(this, android.R.layout.select_dialog_item, cars);
        actv.setThreshold(1);
        actv.setAdapter(adapter);
        addListenerOnButton();
    }

    public void addListenerOnButton(){
        btn_sign_in = (Button)findViewById(R.id.button);
        btn_sign_in.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View view){
                changeAct();
            }
        });
    }

    public void changeAct(){
        Intent intent = new Intent(this, MainActivity2.class);
        startActivity(intent);
    }
}