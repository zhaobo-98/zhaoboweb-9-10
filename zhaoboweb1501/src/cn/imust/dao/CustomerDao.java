package cn.imust.dao;

import cn.imust.pojo.Customer;

import java.util.List;

public interface CustomerDao {
    /**
     * 添加用户
     * @param customer
     * @return
     */
    boolean saveCustomer(Customer customer);

    /**
     * 删除用户
     * @param param
     * @return
     */
    boolean deleteCustomer(int param);

    /**
     * 更新用户
     * @param customer
     * @return
     */
    boolean updateCustomer(Customer customer);

    /**
     * 查询所有用户
     */
    List<Customer> findAllCustomer();

    /**
     * 按着id查询用户
     * @param param
     * @return
     */
    List<Customer> findCustomerById(int param);
}
