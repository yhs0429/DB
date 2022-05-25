```
import java.util.List;

public class BookTest {

  public static void main(String[] args) {
    BookDAO dao = new BookDAO();
//    read(dao);
//    create(dao);
//    update(dao);
    list(dao);
//      delete(dao);
  }

  private static void delete(BookDAO dao) {
    int no = 5;
    if(dao.delete(no)) {
      p("성공");
    }else {
      p("실패");
    }
  }

  private static void list(BookDAO dao) {
    List<BookDTO> list = dao.list();

    for(int i=0; i<list.size(); i++) {
      BookDTO dto = list.get(i);
      p(dto);
    }
  }

  private static void update(BookDAO dao) {
    BookDTO dto = dao.read(5);
    dto.setTitle("가나다라");
    dto.setAuthor("세종대왕");

    if(dao.update(dto)) {
      p("성공!!");
      dto = dao.read(5);
      p(dto);
    }else {
      p("실패!");
    }
  }

  private static void create(BookDAO dao) {
    BookDTO dto = new BookDTO("크롱","크롱2","크롱3",400,"크롱4","2022-05-08");
    if(dao.create(dto)) {
      p("성공!!!");
    }else {
      p("실패");
    }
  }

  private static void read(BookDAO dao) {
    int isbn = 2;
    BookDTO dto = dao.read(isbn);
    p(dto);
  }

  private static void p(BookDTO dto) {
    p("title:"+dto.getTitle());
    p("author:"+dto.getAuthor());
    p("publisher:"+dto.getPublisher());
    p("price:"+dto.getPrice());
    p("sangse:"+dto.getSangse());
    p("publish_date:"+dto.getPublish_date());
  }

  private static void p(String string) {
    System.out.println(string);
  }

}

```
