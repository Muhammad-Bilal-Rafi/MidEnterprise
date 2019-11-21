package MidEnterprise;
import javax.servlet.http.Part;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.*;

public class Handler {


    public class DbConnection {
        private String dbURL = "jdbc:mysql://localhost:3306/mid";
        private String username = "root";
        private String password = "";
        private Connection connection;
        public DbConnection(){
            try {
                Class.forName("com.mysql.jdbc.Driver");
                connection = DriverManager.getConnection(dbURL,username,password);
                if(connection!=null){
                    System.out.println("Success");
                }
            }catch (ClassNotFoundException e){
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }


        public ResultSet showMyTweets(int id){
            Statement stmt = null;
            String sql = "select * from message where user_id=?";
            PreparedStatement ps;
            ResultSet rs=null;
            try {

                ps = connection.prepareStatement(sql);
                ps.setInt(1,id);
                rs=ps.executeQuery();
                stmt = connection.createStatement();
                rs = stmt.executeQuery(sql);

            }catch (SQLException e) {
                System.out.println(e);
            }
            return rs;
        }
        public ResultSet showTweets(){
            Statement stmt = null;
            String sql = "select * from message";
            PreparedStatement ps;
            ResultSet rs=null;
            try {

                ps = connection.prepareStatement(sql);
                rs=ps.executeQuery();
                stmt = connection.createStatement();
                rs = stmt.executeQuery(sql);


            }catch (SQLException e) {
                System.out.println(e);
            }
            return rs;
        }
        public ResultSet getResults(String email,String pass)
        {
            Statement stmt = null;
            String sql = "select * from user where name=? and password=?";
            PreparedStatement ps;
            ResultSet rs=null;
            try {

                ps = connection.prepareStatement(sql);
                ps.setString(1,email);
                ps.setString(2,pass);
                rs=ps.executeQuery();
                stmt = connection.createStatement();
                rs = stmt.executeQuery(sql);


            }catch (SQLException e) {
                System.out.println(e);
            }
            return rs;
        }
        public ResultSet showResults()
        {
            Statement stmt = null;
            String sql = "select * from user";
            PreparedStatement ps;
            ResultSet rs=null;

            try {

                ps = connection.prepareStatement(sql);

                rs=ps.executeQuery();
                stmt = connection.createStatement();
                rs = stmt.executeQuery(sql);

                return rs;
            }catch (SQLException e) {
                System.out.println(e);
            }
            return rs;
        }
        public int insertData(String name,String email,String Password) {
            int res;
            try {
                String q = "INSERT into eadmid user(name,email,password) values(?,?,?)";
                PreparedStatement preparedStatement = connection.prepareStatement(q);
                Date dates=new Date(new java.util.Date().getTime());

                preparedStatement.setString(1, name);
                preparedStatement.setString(2, email);
                preparedStatement.setString(3,password);
                System.out.print(name);
                res = preparedStatement.executeUpdate();
                if(res>0){
                    System.out.println(res+ " rows inserted!");
                    return 1;
                }
            } catch (SQLException e) {

            }
            return 0;
        }

        public int insertTweets(String name,String email,String pass,) {
            int noOfRowsInserted;
            FileInputStream fis=null;
            try {

                String sqlQuery = "INSERT INTO eadmid user (name,email,password) VALUES(?,?,?)";
                PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);
                preparedStatement.setString(1, name);

                preparedStatement.setString(2, email);
                preparedStatement.setString(3, pass);


                noOfRowsInserted = preparedStatement.executeUpdate();
                if(noOfRowsInserted>0){
                    System.out.println(noOfRowsInserted + " rows inserted!");
                    return 1;
                }
            } catch (SQLException e) {
                System.out.println(e);
            }


            return 0;

        }
    }
}
