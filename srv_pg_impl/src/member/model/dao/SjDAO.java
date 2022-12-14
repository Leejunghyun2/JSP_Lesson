package member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import config.Db;
import member.model.dto.SjDTO;

public class SjDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	
	public ArrayList<SjDTO> getSelectAll(){
		ArrayList<SjDTO> list = new ArrayList<SjDTO>();
		conn = Db.dbConn();
		try {
			String sql = "select * from sj";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				SjDTO dto = new SjDTO();
				dto.setName(rs.getString("name"));
				dto.setSname(rs.getString("sname"));
				dto.setMun_1(rs.getInt("mun_1"));
				dto.setMun_2(rs.getInt("mun_2"));
				dto.setMun_3(rs.getInt("mun_3"));
				dto.setMun_4(rs.getInt("mun_4"));
				dto.setMun_5(rs.getInt("mun_5"));
				dto.setMun_ox_1(rs.getString("mun_ox_1"));
				dto.setMun_ox_2(rs.getString("mun_ox_2"));
				dto.setMun_ox_3(rs.getString("mun_ox_3"));
				dto.setMun_ox_4(rs.getString("mun_ox_4"));
				dto.setMun_ox_5(rs.getString("mun_ox_5"));
				dto.setJumsu(rs.getInt("jumsu"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			Db.dbConnClose(rs, pstmt, conn);
		}
		
		return list;
	}
	
	public int setInsert(SjDTO paramDto){
		int result = 0;
		conn = Db.dbConn();
		try {
			String sql = "insert Into sj values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, paramDto.getName());
			pstmt.setString(2, paramDto.getSname());
			pstmt.setInt(3, paramDto.getMun_1());
			pstmt.setInt(4, paramDto.getMun_2());
			pstmt.setInt(5, paramDto.getMun_3());
			pstmt.setInt(6, paramDto.getMun_4());
			pstmt.setInt(7, paramDto.getMun_5());
			pstmt.setString(8, paramDto.getMun_ox_1());
			pstmt.setString(9, paramDto.getMun_ox_2());
			pstmt.setString(10, paramDto.getMun_ox_3());
			pstmt.setString(11, paramDto.getMun_ox_4());
			pstmt.setString(12, paramDto.getMun_ox_5());
			pstmt.setInt(13, paramDto.getJumsu());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			Db.dbConnClose(rs, pstmt, conn);
		}
		return result;
	}
}
