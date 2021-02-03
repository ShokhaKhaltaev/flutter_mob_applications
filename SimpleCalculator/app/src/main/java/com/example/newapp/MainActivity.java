package com.example.newapp;
import android.content.DialogInterface;
import android.content.Intent;
import android.text.Editable;
import android.util.Log;
import android.view.View;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    private EditText first_edit_number, second_edit_number;
    private TextView result_text;
    private Button plus, minus, multiply, division;
    private ImageButton exit_btn;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        setTitle("Calculator");
        addListenerOnButton();
    }


    public void addListenerOnButton() {
        Button plus = (Button) findViewById(R.id.button_plus);
        Button minus = (Button) findViewById(R.id.button_minus);
        Button multiply = (Button) findViewById(R.id.button_multiply);
        Button division = (Button) findViewById(R.id.button_division);
        ImageButton exit_btn = (ImageButton) findViewById(R.id.exit_btn);

        plus.setOnClickListener(new View.OnClickListener()  {
            @Override
            public void onClick(View view){
                TextView result_text = (TextView) findViewById(R.id.result);
                EditText first_edit_number = (EditText) findViewById(R.id.first_number);
                EditText second_edit_number = (EditText) findViewById(R.id.second_number);
                int first_number = Integer.parseInt(first_edit_number.getText().toString());
                int second_number = Integer.parseInt(second_edit_number.getText().toString());
                result_text.setText(Integer.toString(ButtonPlus(first_number, second_number)));
            }
        });
        minus.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                TextView result_text = (TextView) findViewById(R.id.result);
                EditText first_edit_number = (EditText) findViewById(R.id.first_number);
                EditText second_edit_number = (EditText) findViewById(R.id.second_number);
                int first_number = Integer.parseInt(first_edit_number.getText().toString());
                int second_number = Integer.parseInt(second_edit_number.getText().toString());
                result_text.setText(Integer.toString(ButtonMinus(first_number, second_number)));
            }
        });
        multiply.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                TextView result_text = (TextView) findViewById(R.id.result);
                EditText first_edit_number = (EditText) findViewById(R.id.first_number);
                EditText second_edit_number = (EditText) findViewById(R.id.second_number);
                int first_number = Integer.parseInt(first_edit_number.getText().toString());
                int second_number = Integer.parseInt(second_edit_number.getText().toString());
                result_text.setText(Integer.toString(ButtonMultiply(first_number, second_number)));
            }
        });
        division.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                TextView result_text = (TextView) findViewById(R.id.result);
                EditText first_edit_number = (EditText) findViewById(R.id.first_number);
                EditText second_edit_number = (EditText) findViewById(R.id.second_number);
                float first_number = Float.parseFloat(first_edit_number.getText().toString());
                float second_number = Float.parseFloat(second_edit_number.getText().toString());
                result_text.setText(Float.toString(ButtonDivision(first_number, second_number)));
            }
        });

        exit_btn.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View view){
                AlertDialog.Builder alert_exit = new AlertDialog.Builder(MainActivity.this);
                alert_exit.setMessage("Are you sure to exit? ").setCancelable(false)
                        .setPositiveButton("Yes", new DialogInterface.OnClickListener() {
                            @Override
                            public void onClick(DialogInterface dialog, int which) {
                                finish();
                            }
                        })
                        .setNegativeButton("No", new DialogInterface.OnClickListener() {
                            @Override
                            public void onClick(DialogInterface dialog, int which) {
                                dialog.cancel();
                            }
                        });
                AlertDialog alert = alert_exit.create();
                alert.setTitle("Exit app");
                alert.show();
            }
        });
    }
    public int ButtonPlus(int num1, int num2){
        return num1 + num2;
    }

    public int ButtonMinus(int num1, int num2){
        return num1 - num2;
    }

    public int ButtonMultiply(int num1, int num2){
        return num1 * num2;
    }

    public float ButtonDivision(float num1, float num2){
        return num1 / num2;
    }
}