package com.btti.manager;

import com.btti.db.DBHelper;
import com.btti.db.QueryHelper;
import com.btti.model.Student;
import com.darwinsys.spdf.PDF;
import com.darwinsys.spdf.Page;
import com.darwinsys.spdf.Text;
import com.darwinsys.spdf.MoveTo;
import java.awt.AWTException;
import java.awt.Robot;
import java.awt.event.KeyEvent;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Insert extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, AWTException {
        response.setContentType("application/pdf");

        try (PrintWriter out = response.getWriter()) {

            String name = request.getParameter("student_name");
            String date = request.getParameter("date");
            String session = request.getParameter("session");
            String admissionFee = request.getParameter("admission_fee");
            String courseFee = request.getParameter("course_fee");
            String paid = request.getParameter("paid");
            String courseName = request.getParameter("course_name");
            String received = request.getParameter("received");
            String fatherName = request.getParameter("father_name");
            String motherName = request.getParameter("mother_name");
            String mobile = request.getParameter("mobile");
            String birthDate = request.getParameter("birth_date");
            String address = request.getParameter("permanent_address");
            String remarks = request.getParameter("remarks");
            String picture = request.getParameter("file_picture");

            Student student = new Student(name, date, session, admissionFee, courseFee, paid, courseName, received, fatherName, motherName, mobile, birthDate, address, remarks, picture);
            DBHelper.getConnection();
            int row = QueryHelper.insertStudentInfo(student);

            if (row > 0) {

                PDF p = new PDF(out);
                Page p1 = new Page(p);
                p1.add(new MoveTo(p, 200, 700));
                p1.add(new Text(p, "www.javatpoint.com"));
                p1.add(new Text(p, "by Sonoo Jaiswal"));

                p.add(p1);
                p.setAuthor("Ian F. Darwin");
                p.writePDF();

                try {

                    Thread.sleep(2000);
                    Robot robot = new Robot();
                    robot.keyPress(KeyEvent.VK_CONTROL);
                    robot.keyPress(KeyEvent.VK_P);       

                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else {
                request.setAttribute("STATUS", "Faild");
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (AWTException ex) {
            Logger.getLogger(Insert.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (AWTException ex) {
            Logger.getLogger(Insert.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
