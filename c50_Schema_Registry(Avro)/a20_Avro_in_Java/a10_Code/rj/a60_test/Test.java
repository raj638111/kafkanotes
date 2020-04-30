package rj.a60_test;


import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

public class Test {
    public static void main(String[] args) throws IOException {
        URL url = new URL("https://jsonmock/hackerrank.com/api/countries/search?name=s");
        HttpURLConnection con = (HttpURLConnection) url.openConnection();
        con.setRequestMethod("GET");
        int code = con.getResponseCode();
        System.out.println(code);
    }

}
