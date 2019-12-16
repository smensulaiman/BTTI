
package com.btti.db;

import com.btti.model.Student;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class QueryHelper {

    public static int insertStudentInfo(Student student){
        try {
            String SQL_INSERT_STUDENT = "INSERT INTO ADMISSION (student_name, date, session, admission_fee, course_fee, paid, course_name, received, father_name, mother_name, mobile, birth_date, permanent_address, remarks, file_picture) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            Connection conn = DBHelper.conn;
            PreparedStatement pst = conn.prepareStatement(SQL_INSERT_STUDENT);
            pst.setString(1, student.getName());
            pst.setString(2, student.getDate());
            pst.setString(3, student.getSession());
            pst.setString(4, student.getAdmission_fee());
            pst.setString(5, student.getCourse_fee());
            pst.setString(6, student.getPaid());
            pst.setString(7, student.getCourse_name());
            pst.setString(8, student.getReceived());
            pst.setString(9, student.getFather_name());
            pst.setString(10, student.getMother_name());
            pst.setString(11, student.getMobile());
            pst.setString(12, student.getBirth_date());
            pst.setString(13, student.getAddress());
            pst.setString(14, student.getRemarks());
            pst.setString(15, student.getPicture());
            
            int row = pst.executeUpdate();
            
            if(row == 1)
            {
                System.out.println("Data Inserted Successfully");
                return 1;
            }
            else
            {
                System.out.println("Error in Inserting");
                return 0;
            }
        } catch (SQLException ex) {
            Logger.getLogger(QueryHelper.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
}
