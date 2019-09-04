package service;

import model.Customer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerServiceImpl implements CustomerService {

  private static Map<Integer, Customer> customers;

  static {
    customers = new HashMap<>();
    customers.put(1, new Customer(1, "name", "email", "address"));
    customers.put(2, new Customer(2, "name", "email", "address"));
    customers.put(3, new Customer(3, "name", "email", "address"));
    customers.put(4, new Customer(4, "name", "email", "address"));
    customers.put(5, new Customer(5, "name", "email", "address"));
  }

  @Override
  public List<Customer> findAll() {
    return new ArrayList<>(customers.values());
  }

  @Override
  public Customer findById(int id) {
    return customers.get(id);
  }

  @Override
  public Customer findByName(String name) {
    for (int key : customers.keySet()) {
      if (customers.get(key).getName().equals(name)) {
        int foundCustomerId = customers.get(key).getId();
        return findById(foundCustomerId);
      }
    }
    return null;
  }

  @Override
  public void save(Customer customer) {
customers.put(customer.getId(),customer);
  }

  @Override
  public void update(int id, Customer customer) {
customers.put(id,customer);
  }

  @Override
  public void delete(int id) {
customers.remove(id);
  }
}

