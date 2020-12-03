package com.amusement2MVC.command.member;

import java.io.IOException;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.amusement2MVC.dao.MemberDAO;
import com.amusement2MVC.vo.MemberVO;

/**
 * Servlet implementation class SendEmail
 */
@WebServlet("/sendemail.do")
public class SendEmail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendEmail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String email =request.getParameter("email");
		
		  //mail server 설정
      String host = "smtp.naver.com";
      String user = "khs50851@naver.com"; //자신의 네이버 계정
      String password = "rkrhtlvek1";//자신의 네이버 패스워드
      
      //메일 받을 주소
      String to_email = email;
      
      //SMTP 서버 정보를 설정한다.
      Properties props = new Properties();
      props.put("mail.smtp.host", host);
      props.put("mail.smtp.port", 465);
      props.put("mail.smtp.auth", "true");
      props.put("mail.smtp.ssl.enable", "true");
      props.put("mail.smtp.ssl.trust",host);
      //인증 번호 생성기
      StringBuffer temp =new StringBuffer();
      Random rnd = new Random();
      for(int i=0;i<10;i++)
      {
          int rIndex = rnd.nextInt(3);
          switch (rIndex) {
          case 0:
              // a-z
              temp.append((char) ((int) (rnd.nextInt(26)) + 97));
              break;
          case 1:
              // A-Z
              temp.append((char) ((int) (rnd.nextInt(26)) + 65));
              break;
          case 2:
              // 0-9
              temp.append((rnd.nextInt(10)));
              break;
          }
      }
      String AuthenticationKey = temp.toString();
      System.out.println(AuthenticationKey);
      
      Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
          protected PasswordAuthentication getPasswordAuthentication() {
              return new PasswordAuthentication(user,password);
          }
      });
      
      //email 전송
      try {
          MimeMessage msg = new MimeMessage(session);
          msg.setFrom(new InternetAddress(user, "よみうりランド"));
          msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to_email));
          
          //메일 제목
          msg.setSubject("こんにちは よみうりランド にんしょうめーるです");
          //메일 내용
          msg.setText("会員登録認証メールです。");
          msg.setText("認証番号は :"+temp);
          
          Transport.send(msg);
          System.out.println("이메일 전송");
          
      }catch (Exception e) {
          e.printStackTrace();// TODO: handle exception
      }
      HttpSession saveKey = request.getSession();
      saveKey.setAttribute("AuthenticationKey", AuthenticationKey);
      MemberDAO mdao = MemberDAO.getInstance();
      MemberVO mvo = new MemberVO();
      HttpSession session2 = request.getSession();
      String id = (String)session2.getAttribute("userid");
      try {
			mvo = mdao.memUpdate(id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
      JSONObject obj = new JSONObject();
      
      	obj.put("msg","oo");
  		obj.put("msg1","メールを送信します。");
      
		
		
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		   response.setContentType("application/x-json,charset=utf-8");
	     	response.getWriter().print(obj);
		
		
		
		
		
	}

}
