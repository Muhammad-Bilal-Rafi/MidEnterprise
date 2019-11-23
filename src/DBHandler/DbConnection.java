package DBHandler;

import java.sql.*;

/**
 * Created by fawad.tariq on 9/26/2019.
 */
public class DbConnection {
    private String dbURL = "jdbc:mysql://localhost:3306/eadmid";
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

    public void insertData(String name,String email,String password){
        try {
            String sqlQuery = "INSERT INTO registraion(name,email,password) VALUES(?,?,?)";
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


    public ResultSet getResults()
    {
        ResultSet result=null;
        try {
            String sqlQuery = "SELECT * FROM registraion";
            Statement statement = connection.createStatement();
            result = statement.executeQuery(sqlQuery);


        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
    public void insertJob(String title,String description,String jobtime,String jobcity,int postedby){
        try {
            System.out.println("In Inert JObs Function");
            String sqlQuery = "INSERT INTO jobs(title,description,jobtype,jobcity,postedby) VALUES(?,?,?,?,?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);

            preparedStatement.setString(1, title);
            preparedStatement.setString(2, description);
            preparedStatement.setString(3, jobtime);
            preparedStatement.setString(4, jobcity);
            preparedStatement.setInt(5, postedby);

            int noOfRowsInserted = preparedStatement.executeUpdate();
            if(noOfRowsInserted>0){
                System.out.println(noOfRowsInserted + " rows inserted!");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public ResultSet getjobs()
    {
        ResultSet result=null;
        try {
            String sqlQuery = "SELECT * FROM jobs";
            Statement statement = connection.createStatement();
            result = statement.executeQuery(sqlQuery);


        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }



}
