package in.thamindu.entity;



	public class AttendanceRecord {

			private Integer id;
			private String e_id;
			private String f_name;
			private String in_time;
			private String out_time;
			private String month;
			private String date;
			private String leave_type;
			
			
			public Integer getId() {
				return id;
			}
			public void setId(Integer id) {
				this.id = id;
			}
			public String getE_id() {
				return e_id;
			}
			public void setE_id(String e_id) {
				this.e_id = e_id;
			}
			public String getF_name() {
				return f_name;
			}
			public void setF_name(String f_name) {
				this.f_name = f_name;
			}
			public String getIn_time() {
				return in_time;
			}
			public void setIn_time(String in_time) {
				this.in_time = in_time;
			}
			public String getOut_time() {
				return out_time;
			}
			public void setOut_time(String out_time) {
				this.out_time = out_time;
			}
			public String getMonth() {
				return month;
			}
			public void setMonth(String month) {
				this.month = month;
			}
			public String getDate() {
				return date;
			}
			public void setDate(String date) {
				this.date = date;
			}
			public String getLeave_type() {
				return leave_type;
			}
			public void setLeave_type(String leave_type) {
				this.leave_type = leave_type;
			}
			
			
			
			@Override
			public String toString() {
				return "AttendanceRecord [id=" + id + ", e_id=" + e_id + ", f_name=" + f_name + ", in_time=" + in_time
						+ ", out_time=" + out_time + ", month=" + month + ", date=" + date + ", leave_type="
						+ leave_type + "]";
			}
			
			
			
			
			


	
	
}
