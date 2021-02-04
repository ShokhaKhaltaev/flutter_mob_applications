package com.example.androidpractice;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.widget.RatingBar;
import android.widget.TextView;

import org.w3c.dom.Text;

public class OutputInfoActivity extends AppCompatActivity {
    TextView name_info, username_info, age_info, email_info, uni_info, text_show;
    private RatingBar rating;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_output_info);
        addListenerOnButton();
        printDetails();
        setTitle("Personal Info");
    }

    public void addListenerOnButton(){
        rating = (RatingBar)findViewById(R.id.ratingBar);
        text_show = (TextView)findViewById(R.id.textView20);
        rating.setOnRatingBarChangeListener(new RatingBar.OnRatingBarChangeListener() {
            @Override
            public void onRatingChanged(RatingBar ratingBar, float rating, boolean fromUser) {
                text_show.setText("Value: " + String.valueOf(rating));
            }
        });
    }

    public void printDetails(){
        Intent intent = getIntent();
        String name = intent.getStringExtra("Name");
        String new_username = intent.getStringExtra("Username");
        String new_mail = intent.getStringExtra("Mail");
        String new_age = intent.getStringExtra("Age");
        String new_university = intent.getStringExtra("University");
        name_info = (TextView)findViewById(R.id.name_info_text);
        username_info = (TextView)findViewById(R.id.username_info_text);
        age_info = (TextView)findViewById(R.id.age_info_text);
        email_info = (TextView)findViewById(R.id.email_text_info);
        uni_info = (TextView)findViewById(R.id.uni_info_text);

        name_info.setText(name);
        username_info.setText(new_username);
        age_info.setText(new_age);
        email_info.setText(new_mail);
        uni_info.setText(new_university);
    }
}