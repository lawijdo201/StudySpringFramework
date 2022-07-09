import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class MemberDAO {
	private static final String driver = "oracle.jdbc.driver.OracleDriver";
	private static final String url = "jdbc:oracle:thin:@localhost:1521:XE";
	private static final String user = "scott";
	private static final String pwd = "tiger";
	private Connection con;
	private PreparedStatement pstmt;

	public List<MemberVO> listMembers(){
		List<MemberVO> list = new ArrayList<MemberVO>();

		try {
			connDB();		//db연결
			String query = "select * from t_member";
			System.out.println(query);	
			ResultSet rs = pstmt.executeQuery(query);		//쿼리문 실행(select문)

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
	private void connDB() {
		try {
			Class.forName(driver);
			System.out.println("Oracle 드라이버 로딩 성공");
			con = DriverManager.getConnection(url, user, pwd);
			System.out.println("Connection 생성 성공");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
