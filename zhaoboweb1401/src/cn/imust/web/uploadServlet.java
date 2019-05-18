package cn.imust.web;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

@WebServlet("/upload")
public class uploadServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
        ServletFileUpload servletFileUpload = new ServletFileUpload(diskFileItemFactory);
        try {
            List items = servletFileUpload.parseRequest(request);
            Iterator iterator = items.iterator();
            while(iterator.hasNext()) {
                FileItem fileItem = (FileItem) iterator.next();
                if (fileItem.isFormField()) {  //判断当前FileItem对象是否为传递参数的表单项目
                    System.out.println("表单参数名" + fileItem.getFieldName() + "表单参数值:" + fileItem.getString("utf-8"));
                } else {
                    if (fileItem.getName() != null) {
                        System.out.println("file size" + fileItem.getSize());
                        System.out.println("file type" + fileItem.getContentType());
                        //filePath1是需要上传的源文件的路径
                        String filePath1 = fileItem.getName();
                        System.out.println("file path1" + filePath1);

                        File tempFile = new File(filePath1);
                        File filePath2 = new File(request.getRealPath("/uploadFiles"), tempFile.getName());
                        if (!filePath2.getParentFile().exists()) {
                            filePath2.getParentFile().mkdirs();
                        }
                        fileItem.write(filePath2);
                        request.setAttribute("message", "上传文件成功!");
                    }else{
                            request.setAttribute("message","上传文件失败!");
                        }
                    }
                }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("message","上传文件失败!");
        }
        request.getRequestDispatcher("/uploadResult.jsp").forward(request,response);
    }
}
