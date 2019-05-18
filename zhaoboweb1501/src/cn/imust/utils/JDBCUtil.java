package cn.imust.utils;

import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;

public class JDBCUtil {
	private String dataSourceName;
	private DataSource dataSource;
	
	public String getDataSourceName() {
		return dataSourceName;
	}
	public void setDataSourceName(String dataSourceName) {
		this.dataSourceName = dataSourceName;
	}
	public DataSource getDataSource() {
		return dataSource;
	}
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	public JDBCUtil(String dataSourceName) {
		this.dataSourceName = dataSourceName;
	}
	
	/**
	 * 初始化方法
	 */
	public void init() {
		Context initContext;
		try {
			initContext = new InitialContext();
			dataSource = (DataSource) initContext.lookup(dataSourceName);
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 查询方法
	 * @param sql
	 * @param rsh
	 * @return
	 */
	public Object query(String sql, ResultSetHandler rsh) {
		Object result= null;
		QueryRunner qr = new QueryRunner(dataSource);
		try {
			result = qr.query(sql, rsh);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public Object query(String sql, int param,ResultSetHandler rsh) {
		Object result= null;
		QueryRunner qr = new QueryRunner(dataSource);
		try {
			result = qr.query(sql,param, rsh);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public Object query(String sql, String param[],ResultSetHandler rsh) {
		Object result= null;
		QueryRunner qr = new QueryRunner(dataSource);
		try {
			result = qr.query(sql,param, rsh);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	/**
	 * 添加和更新方法
	 * @param sql
	 * @param
	 * @return
	 */
	public int update(String sql,String params[]) {
		int result = 0;
		QueryRunner qr = new QueryRunner(dataSource);
		try {
			result = qr.update(sql, params);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	/**
	 * 删除信息
	 * @param
	 * @param sql
	 * @param param
	 * @return
	 */
	public int update(String sql, int param) {
		int result = 0;
		QueryRunner qr = new QueryRunner(dataSource);
		try {
			result = qr.update(sql,param);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
}
