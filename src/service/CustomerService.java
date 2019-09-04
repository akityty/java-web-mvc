package service;

import model.Customer;

import java.util.List;

public interface CustomerService {
  List<Customer>findAll();
  Customer findById(int id);
  Customer findByName(String name);
  void save(Customer customer);
  void update(int id,Customer customer);
  void delete(int id);
}
