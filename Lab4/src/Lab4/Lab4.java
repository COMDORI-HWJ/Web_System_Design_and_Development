package Lab4;
import java.sql.Timestamp; //시간 라이브러리 불러오기

public class Lab4 {
	private String order_num="2019_0001"; //주문번호는 getProperty로 초기화 출력
	private String coffee;
	private String option;
	private String size;
	private Timestamp date;
	public String getOrder_num() { //주문번호
		return order_num;
	}
	public void setOrder_num(String order_num) {
		this.order_num = order_num;
	}
	public String getCoffee() { //커피종류
		return coffee;
	}
	public void setCoffee(String coffee) {
		this.coffee = coffee;
	}
	public String getOption() { //커피온도
		return option;
	}
	public void setOption(String option) {
		this.option = option;
	}
	public String getSize() { //커피크기
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public Timestamp getDate() { //주문한날짜
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
}

/*201504034 하원지*/