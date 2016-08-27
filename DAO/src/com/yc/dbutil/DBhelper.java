package com.yc.dbutil;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.yc.logutil.LogUtil;

public class DBhelper {
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	static {
		try {
			Class.forName(ReadPro.getReadPro().getProperty("drivername"));
			// Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			LogUtil.log.error(e.toString());

		}
	}

	public Connection getConnection() {
		Connection con = null;
		try {
			con = DriverManager.getConnection(ReadPro.getReadPro().getProperty(
					"url"), ReadPro.getReadPro().getProperty("username"),
					ReadPro.getReadPro().getProperty("password"));
			// con=DriverManager.getConnection("jdbc:oracle:thin:127.1.1.1:1521:orcl","scott","a");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			LogUtil.log.error(e.toString());
		}
		return con;
	}

	public void setvalues(PreparedStatement pstmt,List<Object> params){
		if(pstmt!=null && params!=null && params.size()>0){
			for(int i=0;i<params.size();i++){
				Object obj=params.get(i);
				try {
					if(obj!=null){
						if("byte[]".equals(obj.getClass().getSimpleName())){
							pstmt.setBytes(i+1, (byte[]) obj);
					   }else{
						pstmt.setString(i+1, (String)params.get(i));
					   } 
					}else{
						pstmt.setString(i+1, null);
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					LogUtil.log.error(e.toString());
				}
			}
		}
	}

	public List<Double> find(String sql, List<Object> params) {
		List<Double> list = new ArrayList<Double>();
		con = this.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			// this.setvalues(pstmt, params);
			ResultSet rs = pstmt.executeQuery();
			ResultSetMetaData rsmd = rs.getMetaData();

			if (rs.next()) {
				for (int i = 0; i < rsmd.getColumnCount(); i++) {
					list.add(rs.getDouble(i + 1));
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			LogUtil.log.error(e.toString());
		} finally {
			this.closeAll(pstmt, con, rs);
			con=null;
		}
		return list;

	}
	public List<Integer> findsinglenumber(String sql,List<Object> params){
		List<Integer> list = new ArrayList<Integer>();
		con = this.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			this.setvalues(pstmt, params);
			ResultSet rs = pstmt.executeQuery();
			ResultSetMetaData rsmd = rs.getMetaData();

			if (rs.next()) {
				for (int i = 0; i < rsmd.getColumnCount(); i++) {
					list.add(rs.getInt(i+1));
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			LogUtil.log.error(e.toString());
		} finally {
			this.closeAll(pstmt, con, rs);
			con=null;
		}
		return list;
	}
	

	public int update(String sql, List<Object> params) {
		int result = 0;
		Connection con = this.getConnection();
		PreparedStatement pstmt = null;

		try {
			pstmt = con.prepareStatement(sql);
			this.setvalues(pstmt, params);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			LogUtil.log.error(e.toString());
		} finally {
			this.closeAll(pstmt, con, null);
			con=null;
		}

		return result;
	}

	public void closeAll(PreparedStatement pstmt, Connection con, ResultSet rs) {
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				LogUtil.log.error(e.toString());
			}
		}
		if (con != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				LogUtil.log.error(e.toString());
			}
		}
		if (con != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				LogUtil.log.error(e.toString());
			}
		}
	}

	public List<Map<String, Object>> FindManyMessage(String sql,
			List<Object> params) {
		con = this.getConnection();
		List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();
		HashMap<String, Object> map = null;
		try {
			pstmt = con.prepareStatement(sql);
		
				this.setvalues(pstmt, params);
			
			rs = pstmt.executeQuery();
			ResultSetMetaData rsmd = rs.getMetaData();
			String[] cols = new String[rsmd.getColumnCount()];
			for (int i = 0; i < cols.length; i++) {
				cols[i] = rsmd.getColumnName(i + 1);
			}
			while (rs.next()) {
				map = new HashMap<String, Object>();
				
				for(String cl:cols){
					Object obj=rs.getObject(cl);
					
					if(obj!=null){
						//System.out.println(obj.getClass().getSimpleName());
						if("BLOB".equals(obj.getClass().getSimpleName())){
							System.out.println(obj.getClass().getSimpleName());
							byte[] bt=null;
							Blob blob=rs.getBlob(cl);
							BufferedInputStream bis=null;
							bis=new BufferedInputStream(blob.getBinaryStream());
							bt=new byte[(int)blob.length()];
							try {
								bis.read(bt);
							} catch (IOException e) {
								e.printStackTrace();
							}finally{
								if(bis!=null){
									try {
										bis.close();
									} catch (IOException e) {
										e.printStackTrace();
									}
								}
							}
							map.put(cl, bt);
							System.out.println(bt);
						}else if("BigDecimal".equals(obj.getClass().getSimpleName())){
							map.put(cl, rs.getInt(cl));
							//System.out.println()
						}else{
							map.put(cl, rs.getString(cl));
						}
					}
					else{
				       map.put(cl, "");
					}
				
				
			 }
				list.add(map);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			LogUtil.log.error(e.toString());
		} finally {
			this.closeAll(pstmt, con, rs);
			con=null;
		}
		return list;
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*String uname = "ly";
		String pwd = "a";
		DBhelper d = new DBhelper();
		byte[] bt=null;
		File file=new File("D:\\1.jpg");
		FileInputStream fis=null;
		try {
			 fis=new FileInputStream(file);
			try {
				bt=new byte[fis.available()];
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			try {
				fis.read(bt);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			if(fis!=null){
				try {
					fis.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
		String sql = "insert into userinfo values ( userinfo_usid.nextval,'–Ï∏’∑Á','ƒ–',10002,20, pic=?)";
		//String sql = "insert into userinfo values ( userinfo_usid.nextval,'–Ï∏’∑Á','ƒ–',10002,20,null)";
		System.out.println(bt.getClass().getName());
		System.out.println(sql);
		System.out.println();
		List<Object> params = new ArrayList<Object>();
		
		params.add(bt);
		/*List<Map<String, String>> list = new ArrayList<Map<String, String>>();

		list = d.FindManyMessage(sql, params);
		System.out.println(list.size());
		int result=d.update(sql, params);
		if(result>0){
			System.out.println("≤Â»Î≥…π¶");
		}else{
			System.out.println("≤Â»Î ß∞‹");
		}*/
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		DBhelper d = new DBhelper();
		String sql="select * from userinfo ";
		list=d.FindManyMessage(sql, null);
		System.out.println(list.toString());
		
		try {
			FileOutputStream fos=new FileOutputStream(new File("G:\\","tou1.jpg"));
			try {
				//System.out.println(list.get(0).get("PIC").getClass().getName());
				fos.write( (byte[])list.get(0).get("PIC"));
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//System.out.println(list.get(0).get("PIC").getClass().getName());
		
	}

}
