import org.json.*;
String j;
void setup(){
  j = new org.json.JSONObject().put("JSON", "Hello, World!").toString();
  println(j);
}
