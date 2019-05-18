package cn.imust.dao.impl;

import cn.imust.dao.CustomerDao;
import cn.imust.pojo.Customer;
import cn.imust.utils.JDBCUtil;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.util.List;

public class CustomerDaoImpl implements CustomerDao {
    private Customer customer;
    private JDBCUtil db;
    public CustomerDaoImpl(){
        db = new JDBCUtil("java:/comp/env/jdbc/mysqlds");
        db.init();
    }

    @Override
    public boolean saveCustomer(Customer customer) {
        String params[] = {customer.getCustName(),customer.getCustSource(),customer.getCustIndustry(),customer.getCustLevel(),customer.getCustAddress(),customer.getCustPhone()};
        int result = db.update("insert into cst_customer(custName,custSource,custIndustry,custLevel,custAddress,custPhone) values (?,?,?,?,?,?)",params);
        if(result == 0){
            return false;
        }else{
            return true;
        }
    }

    @Override
    public boolean deleteCustomer(int id) {
        int result = db.update("delete from cst_customer where custId = ?",id);
        if(result == 0){
            return false;
        }else{
            return true;
        }
    }

    @Override
    public boolean updateCustomer(Customer customer) {
        String params[] = {customer.getCustName(),customer.getCustSource(),customer.getCustIndustry(),customer.getCustLevel(),customer.getCustAddress(),customer.getCustPhone(), String.valueOf(customer.getCustId())};
        int result = db.update("update cst_customer set custName=?,custSource=?,custIndustry=?,custLevel=?,custAddress=?,custPhone=? where custId=?",params);
        if(result == 0){
            return false;
        }else{
            return true;
        }
    }

    @Override
    public List<Customer> findAllCustomer() {
        return (List<Customer>) db.query("select *from cst_customer", new BeanListHandler(Customer.class));
    }

    @Override
    public List<Customer> findCustomerById(int param) {
        return (List<Customer>) db.query("select *from cst_customer where custId=?",param,new BeanListHandler(Customer.class));
    }


}
