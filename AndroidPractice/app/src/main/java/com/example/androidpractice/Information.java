package com.example.androidpractice;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class Information extends AppCompatActivity {
    EditText name_second, username, age, university;
    Button finish_btn;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_information);
        addListenerOnButton();
        setTitle("Blank");
    }

    public void addListenerOnButton(){
        name_second = (EditText)findViewById(R.id.Name);
        username = (EditText)findViewById(R.id.Username);
        age = (EditText)findViewById(R.id.Age);
        university = (EditText)findViewById(R.id.University);
        finish_btn = (Button)findViewById(R.id.finish_btn);
        finish_btn.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View view){
                if(!(name_second.getText().toString().isEmpty()) && !(username.getText().toString().isEmpty()) && !(age.getText().toString().isEmpty()) &&
                !(university.getText().toString().isEmpty())){
                    openNewActivity();
                }
                else
                    Toast.makeText(Information.this, "Fill all blanks", Toast.LENGTH_SHORT).show();
            }
        });
    }
    public void openNewActivity(){
        Intent i = getIntent();
        String mail = i.getStringExtra("Email");
        Intent intent = new Intent(this, OutputInfoActivity.class);
        String name = name_second.getText().toString();
        String username_string = username.getText().toString().toString();
        String age_string = age.getText().toString();
        String university_string = university.getText().toString();
        intent.putExtra("Mail", mail);
        intent.putExtra("Name", name);
        intent.putExtra("Username", username_string);
        intent.putExtra("Age", age_string);
        intent.putExtra("University", university_string);
        startActivity(intent);
    }
}