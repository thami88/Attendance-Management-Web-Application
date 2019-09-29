
package in.thamindu.dao;

import java.util.List;

import in.thamindu.entity.AttendanceRecord;

public interface AttendanceDAO {

	List<AttendanceRecord> get();
	
	AttendanceRecord get(int id);
	
	boolean save(AttendanceRecord attendanceRec);
	
	boolean delete(int id);
	
	boolean update(AttendanceRecord attendanceRec);
}
