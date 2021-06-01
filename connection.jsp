package database;
import java.sql.*;
public class connection{
    public static void main(String[] args)
    {
        String dataURL="jdbc: ucanaccess://e://user//yuva//eclipse-workspace//database//employee.accdb";
        try{
            class.forName("net.ucanaccess.jdbc.ucanaccessDriver");
            Connection con=DriverManager.getConnection(dataURL);
            String sql="Inserrt into Employee(E-id,E_Name,E-Add)values(?,?,/)";
            PreparedStatement preparedStatement=con.preparedStatement(sql);
            preparedStatement.setString(1,"100");
            preparedStatement.setString(2,"Prajwal");
            preparedStatement.setString(3,"Banglore");
            int row=preparedStatement.executedUpdate();
            if(row>0)
            {
                System.out.println("Inserted successfully");
            }
            sql="select * from Employees";
            statement st=con.createStatement();
            ResultSet rs=st.executedQuery(sql);
            while(rs.next())
            {
                int no=rs.getInt("Employee_No");
                String eid=rs.getString("E_id");
                String ename=rs.getString("E_Name");
                String eadd=rs.getString("E_Add");
                System.out.println(no+","+eid+","+ename+","+eadd);
            }
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
    }
}