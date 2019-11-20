package jdbc;

import java.sql.*;
import user.member;
public class method {
    PreparedStatement ps=null;
    Connection conn=null;
    public String cha(String username,String password) throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/qklq?useSSL=false&useUnicode=true&characterEncoding=UTF-8","qkl","q3071456");
        String sql= "SELECT *FROM qkl where username=?";
        String s=null;
        ps=conn.prepareStatement(sql);
        ps.setString(1, username);
        ResultSet a=ps.executeQuery();
        while (a.next()){
            if(a.getString("password").equals(password)){
                s="成功";
                return s;
            }
        }
        return s;
    };
}
