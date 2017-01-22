package vinayismd.trendingnews;

import android.content.Intent;
import android.support.v7.app.ActionBarActivity;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.widget.Button;
import android.widget.ListView;
import android.widget.Toast;

import com.amigold.fundapter.BindDictionary;
import com.amigold.fundapter.FunDapter;
import com.amigold.fundapter.extractors.StringExtractor;
import com.google.gson.annotations.SerializedName;
import com.kosalgeek.android.json.JsonConverter;
import com.kosalgeek.genasync12.AsyncResponse;
import com.kosalgeek.genasync12.PostResponseAsyncTask;

import java.util.ArrayList;

public class Main2Activity extends ActionBarActivity implements AsyncResponse, View.OnClickListener {

    final String LOG ="Main2Activity";
    private ListView lv;
    private ArrayList<Trendingnews> tn;
    Button rfsh;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main2);

        lv = (ListView)findViewById(R.id.listView);
        rfsh = (Button)findViewById(R.id.btnrfsh);
        rfsh.setOnClickListener(this);
        PostResponseAsyncTask tn = new PostResponseAsyncTask(Main2Activity.this , this);
        tn.execute("http://10.0.2.2/TrendingNews/news.php");
    }

    @Override
    public void processFinish(String s) {

        tn = new JsonConverter<Trendingnews>().toArrayList(s,Trendingnews.class);

        BindDictionary<Trendingnews> dict = new BindDictionary<Trendingnews>();
        dict.addStringField(R.id.tvnews, new StringExtractor<Trendingnews>() {
            @Override
            public String getStringValue(Trendingnews nr, int position) {
                return nr.status_message;
            }
        });
      /* dict.addStringField(R.id.textView2desc, new StringExtractor<Trendingnews>() {
            @Override
            public String getStringValue(Trendingnews nr, int position) {
                return nr.desc;
            }
        });*/


        //Toast.makeText(getApplicationContext() , "hgjhvjh" , Toast.LENGTH_LONG).show();

        FunDapter<Trendingnews> adapter;
        adapter = new FunDapter<>(Main2Activity.this, tn, R.layout.layout_news , dict);
        lv.setAdapter(adapter);
    }

    @Override
    public void onClick(View view) {
        Intent refresh = new Intent(this, Main2Activity.class);
        startActivity(refresh);//Start the same Activity
        finish();
    }

    public class Trendingnews {

        @SerializedName("status_message")
        public String status_message;

        //@SerializedName("desc")
        //public String desc;



    }


}
