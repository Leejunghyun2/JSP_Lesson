package sihum._mybatisConfig;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisManager {
	private static SqlSessionFactory instance;
	
	private MybatisManager() {
		
	}
	
	public static SqlSessionFactory getinstance() {
		Reader reader = null;
		try {
			String resource = "sihum/_mybatisConfig/mybatisConfig.xml";
			reader = Resources.getResourceAsReader(resource);
			instance = new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("에러 . . .");
		} finally {
			try {
				if (reader != null) { reader.close(); }
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return instance;
	}
}
