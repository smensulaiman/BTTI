package com.btti.manager;

import com.btti.db.DBHelper;
import com.btti.db.QueryHelper;
import com.btti.model.Student;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Insert extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
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

//            System.out.println(name);
//            System.out.println(date);
//            System.out.println(session);
//            System.out.println(admission_fee);
//            System.out.println(course_fee);
//            System.out.println(paid);
//            System.out.println(name);
//            System.out.println(course_name);
//            System.out.println(received);
//            System.out.println(father_name);
//            System.out.println(name);
//            System.out.println(mother_name);
//            System.out.println(mobile);
//            System.out.println(birth_date);
//            System.out.println(address);
//            System.out.println(remarks);
//            System.out.println(picture);

            Student student = new Student(name, date, session, admissionFee, courseFee, paid, courseName, received, fatherName, motherName, mobile, birthDate, address, remarks, picture);
            DBHelper.getConnection();
            int row = QueryHelper.insertStudentInfo(student);
            
            if(row > 0){
                request.setAttribute("STUDENT_MODEL", student);
                request.getRequestDispatcher("preview.jsp").forward(request, response);
            }else{
                request.setAttribute("status", "faild");
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
