package com.example.androidpractice;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    Button btn_sign_in;
    EditText email_text, password;
    private Object SecondActivity;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        addListenerOnButton();
        setTitle("Authorization");
    }
    public void addListenerOnButton(){
        btn_sign_in = (Button)findViewById(R.id.btn_sign);
        email_text = (EditText)findViewById(R.id.email);
        password = (EditText)findViewById(R.id.password);
        btn_sign_in.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View view){
                if(!(email_text.getText().toString().isEmpty()) && !(password.getText().toString().isEmpty()))
                    changeActivity();
                else if(email_text.getText().toString().isEmpty())
                    Toast.makeText(MainActivity.this, "Write your mail!", Toast.LENGTH_SHORT).show();
                    if(password.getText().toString().isEmpty()){
                        Toast.makeText(MainActivity.this, "Write your password!", Toast.LENGTH_SHORT).show();
                    }
            }
        });
    }
    public void changeActivity(){
        Intent intent = new Intent(this, Information.class);
        String email_new = email_text.getText().toString();
        intent.putExtra("Email", email_new);
        startActivity(intent);
    }
}