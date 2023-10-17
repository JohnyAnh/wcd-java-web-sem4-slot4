package servlet;


import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;

@MultipartConfig()
@WebServlet({"/upload"})
public class uploadImageServlet extends HttpServlet {
    @Override
    protected  void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        req.getRequestDispatcher("views/upload.jsp").forward(req, resp);
    }
    @Override
    protected  void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        resp.setContentType("text/html,charset=utf-8");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");
        try {
            File dir = new File(req.getServletContext().getRealPath("/files"));
            if (!dir.exists()) {
                dir.mkdirs();
            }

            Part avatar = req.getPart("image");
            Part document = req.getPart("document");

            if (dir != null && avatar != null && avatar.getSubmittedFileName() != null) {
                File imageFile = new File(dir, avatar.getSubmittedFileName());
                File docFile = new File(dir, document.getSubmittedFileName());

                avatar.write(imageFile.getAbsolutePath());
                document.write(docFile.getAbsolutePath());

                req.setAttribute("imageLink",imageFile.getName());
                req.setAttribute("doc",docFile.getName());

                req.setAttribute("ketqua", "thanhcong");

                req.getRequestDispatcher("views/Result.jsp").forward(req, resp);

                System.out.println("avatar path "+imageFile);
                System.out.println("file name "+imageFile.getName());
                System.out.println("dir "+dir);

                // Thực hiện công việc tiếp theo
            } else {
                System.out.println("Upload error");
                }
        } catch (Exception e){
            e.printStackTrace();
        }
    }
}
