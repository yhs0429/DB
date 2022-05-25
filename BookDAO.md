```
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import utility.DBClose;
import utility.DBOpen;

public class BookDAO {
  /**

   * db로 한건의 레코드 등록 (DML)
   * @param dto 등록할 한건의 데이터
   * @return flag 성공/실패
     */
    public boolean create(BookDTO dto) {
		boolean flag = false;
		Connection con = DBOpen.getConnection();
		PreparedStatement pstmt = null;

		StringBuffer sql = new StringBuffer();
	sql.append(" insert into book (title , author , publisher , price , publish_date) ");
	sql.append(" values (?,?,?,?,?) ");
	boolean flag = false;
	Connection con = DBOpen.getConnection();
	PreparedStatement pstmt = null;

	StringBuffer sql = new StringBuffer();
	sql.append(" insert into book (title , author , publisher , price , publish_date) ");
	sql.append(" values (?,?,?,?,?) ");
	try {
    	pstmt = con.prepareStatement(sql.toString());
    	pstmt.setString(1, dto.getTitle());
    	pstmt.setString(2, dto.getAuthor());
    	pstmt.setString(3, dto.getPublisher());
   		pstmt.setInt(4, dto.getPrice());
    	pstmt.setString(5, dto.getPublish_date());
    	int cnt = pstmt.executeUpdate();
    	if(cnt>0) flag = true;  
    } catch (SQLException e) {
    	e.printStackTrace();
    }finally {
    	DBClose.close(pstmt, con);
    }​
    	return flag;
  }
  /**

   * db에서 한건의 레코드 가져옴(DQL)
   * @param isbn pk (primary key)
   * @return 한건의 레코드
     */
public BookDTO read(int isbn) {
	BookDTO dto = null;
	Connection con = DBOpen.getConnection();
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	StringBuffer sql = new StringBuffer();
	sql.append(" select * from book ");
	sql.append(" where isbn = ? ");

try {
  	pstmt = con.prepareStatement(sql.toString());
  	pstmt.setInt(1, isbn);

 	rs = pstmt.executeQuery();
  	if(rs.next())
    	dto = new BookDTO();
    	dto.setIsbn(rs.getInt("isbn"));
    	dto.setTitle(rs.getString("title"));
    	dto.setAuthor(rs.getString("author"));
    	dto.setPublisher(rs.getString("publisher"));
    	dto.setPrice(rs.getInt("price"));
    	dto.setSangse(rs.getString("sangse"));
    	dto.setPublish_date(rs.getString("publish_date"));

}catch (SQLException e) {
  e.printStackTrace();
}finally {
  DBClose.close(rs, pstmt, con);
}
	return dto;
  }
  /**

   * db에서 한건의 레코드 수정(DML)
   * @param dto 수정할 데이터
   * @return 성공/실패
     */
public boolean update(BookDTO dto) {
	boolean flag = false;
	Connection con = DBOpen.getConnection();
	PreparedStatement pstmt = null;

	StringBuffer sql = new StringBuffer();
	sql.append(" UPDATE book ");
	sql.append(" SET title= ?, ");
	sql.append(" author= ? ");
	sql.append(" WHERE isbn = ? ");

try {
  	pstmt = con.prepareStatement(sql.toString());
  	pstmt.setString(1, dto.getTitle());
  	pstmt.setString(2, dto.getAuthor());
  	pstmt.setInt(3, dto.getIsbn());

  	int cnt = pstmt.executeUpdate();

  	if(cnt>0) flag = true;
} catch (SQLException e) {
  	e.printStackTrace();
}finally {
  	DBClose.close(pstmt, con);
}

	return flag;
  }
  /**

   * db에서 한건의 데이터 삭제(DML)
   * @param isbn pk(Primary key)
   * @return 성공/실패
     */
public boolean delete(int isbn) {
	boolean flag = false;
	Connection con = DBOpen.getConnection();
	PreparedStatement pstmt = null;

	StringBuffer sql = new StringBuffer();
	sql.append(" DELETE FROM book ");
	sql.append(" WHERE isbn = ? ");
try {
    pstmt = con.prepareStatement(sql.toString());
    pstmt.setInt(1, isbn);
	int cnt = pstmt.executeUpdate();

	if(cnt>0)flag = true;
} catch (SQLException e) {
    e.printStackTrace();
}finally {
    DBClose.close(pstmt, con);
}
return flag;
}
  /**

   * db에서 여러건의 데이터 가져옴 (DQL)
   * @return List 가져온 데이터
     */
public List<BookDTO> list(){
	List<BookDTO> list = new ArrayList<BookDTO>();
	Connection con = DBOpen.getConnection();
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	StringBuffer sql = new StringBuffer();
	sql.append(" select title , author , publisher, price , sangse, publish_date  ");
	sql.append(" from book ");
	sql.append(" order by publish_date desc ");

try {
  	pstmt = con.prepareStatement(sql.toString());
  	rs = pstmt.executeQuery();

while(rs.next()) {
    BookDTO dto = new BookDTO();
    dto.setTitle(rs.getString("title"));
    dto.setAuthor(rs.getString("author"));
    dto.setPublisher(rs.getString("publisher"));
    dto.setPrice(rs.getInt("price"));
    dto.setSangse(rs.getString("sangse"));
    dto.setPublish_date(rs.getString("publish_date"));

    list.add(dto);
  }
}catch (SQLException e) {
  	e.printStackTrace();
}finally {
  	DBClose.close(rs, pstmt, con);
}

return list;
 }
}
```
