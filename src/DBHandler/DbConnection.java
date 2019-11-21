package DBHandler;

import java.sql.*;

/**
 * Created by fawad.tariq on 9/26/2019.
 */
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

    public void insertData(String name,String email,String regNo){
        try {
            String sqlQuery = "INSERT INTO persons(name,email,password) VALUES(?,?,?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, password);
            int noOfRowsInserted = preparedStatement.executeUpdate();
            if(noOfRowsInserted>0){
                System.out.println(noOfRowsInserted + " rows inserted!");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void displayRecords(){
        try {
            String sqlQuery = "SELECT * FROM persons";
            Statement statement = connection.createStatement();
            ResultSet result = statement.executeQuery(sqlQuery);
            while (result.next()){
                System.out.println("Name is "+result.getString("name"));
                System.out.println("Email is "+result.getString("email"));
                System.out.println("Password is "+result.getString("password"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
