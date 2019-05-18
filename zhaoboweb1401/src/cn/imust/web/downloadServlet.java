package cn.imust.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

@WebServlet("/download")
public class downloadServlet extends HttpServlet {
    private String path;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.获取文件名和路径
        String filename = request.getParameter("file");
        path = new String(filename.getBytes("ISO-8859-1"),"utf-8");
        String path = this.getServletContext().getRealPath("/uploadFiles/"+filename);

        //2.文件下载设置
        response.setContentType(this.getServletContext().getMimeType(filename));
        //MIME类型:设定某种扩展名的文件用一种应用程序来打开的方式类型
        response.addHeader("Content-Disposition", "attachment;filename=\""+filename);
        //IE通过"Content-Disposition"和文件名的后缀来识别文件的类型

        //3.创建文件的输入流和输出流,进行文件的读写
        FileInputStream fis = new FileInputStream(path);
        OutputStream os = response.getOutputStream();
        int len = 0;  //读写的字节数
        byte[] buff = new byte[1024];  //创建缓冲字节数组
        while((len = fis.read(buff))>0){
            os.write(buff,0,len);
        }
        //4.关闭资源
        fis.close();  //关闭输出流
        os.flush();  //缓冲区刷新,发出数据
        os.close();  //关闭输入流
    }
}
