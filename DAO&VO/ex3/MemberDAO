package sec02.ex02;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {

	private Connection con;
	private PreparedStatement pstmt;
	private DataSource dataFactory;		

	public MemberDAO() {
		try {
			Context ctx = new InitialContext();									//고정
			Context envContext = (Context) ctx.lookup("java:/comp/env");		//고정

			dataFactory = (DataSource) envContext.lookup("jdbc/oracle");		//톰켓의 context파일에 저장되있는 Resource중
		}catch(Exception e) {													//이름이 jdbc/oracle를 찾는다.
			e.printStackTrace();
		}
	}

	public void addMember(MemberVO memberVO) {
		try {
			con = dataFactory.getConnection();				//DBMS와 연동
			String id = memberVO.getId();
			String pwd = memberVO.getPwd();
			String name = memberVO.getName();
			String email = memberVO.getEmail();

			String query = "insert into t_member";
			query += " (id,pwd,name,email)";
			query += " values(?,?,?,?)";
			System.out.println("prepareStatement: "+query);
			pstmt = con.prepareStatement(query);				//구문 전달
			
			//insert문의 각 '?'에 순서대로 회원 정보를 세팅합니다.
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			pstmt.setString(3, name);
			pstmt.setString(4, email);
			
			pstmt.executeUpdate();
			pstmt.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public void delMember(String id) {
		try {
			con=dataFactory.getConnection();
			String query = "delete from t_member"+" where id = ?";
			System.out.println("prepareStatement:"+query);
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			pstmt.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<MemberVO> listMembers() {
		List<MemberVO> list = new ArrayList();
		try {
			con = dataFactory.getConnection();				//DBMS와 연동		
			String query = "select * from t_member";
			System.out.println("prepareStatememt: " + query);
			pstmt = con.prepareStatement(query);		//prepareStatement : SQL구문 전달역활
			ResultSet rs = pstmt.executeQuery();		//쿼리문 실행(select문)

			while(rs.next()) {		//while문 돌면서 ResultSet에 저장된 레코드를 하나씩 가져와서
				String id = rs.getString("id");		//각각의 column값을 지정한 값으로 얻어온 후,
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String email = rs.getString("email");
				Date joinDate = rs.getDate("joinDate");

				MemberVO vo = new MemberVO();	//vo 객체에 저장한다.
				vo.setId(id);
				vo.setPwd(pwd);
				vo.setName(name);
				vo.setEmail(email);
				vo.setJoinDate(joinDate);
				list.add(vo);		//각각의 튜플마다 VO객체에 저장한 뒤, list에 VO객체를 추가한다.
			}
			rs.close();
			pstmt.close();
			con.close();

		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
