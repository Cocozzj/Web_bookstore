package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import javax.sql.DataSource;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import util.DataSourceUtils;

public class OrderDao {
	/*
	 * 往订单orders表中插入一条订单记录
	 * @param Order
	 * @return void
	 */
	public void addOrder(Order order) {
		try {
			Connection connection = DataSourceUtils.getConnection();
			String sql = "INSERT orders (id, money, receiveAddress, receiveName, receivePhone, paystate, orderTime, user_id)"
					+ "value(?, ?, ?, ?, ?, ?, ?, ?)";
			System.out.println("here2");
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, order.getId());
			statement.setDouble(2, order.getMoney());
			statement.setString(3, order.getReceiveAddress());
			statement.setString(4, order.getReceiveName());
			statement.setString(5, order.getReceivePhone());
			statement.setDouble(6, order.getPaystate());
			statement.setString(7, order.getOrderTime());
			statement.setInt(8, order.getUserId());
			statement.executeUpdate();
			System.out.println("here3");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public List<Order> getAllOrder() {
		List<Order> lists = null;
		
		try {
			Connection connection = DataSourceUtils.getConnection();
			String sql = "SELECT * from orders";
			Statement statement = connection.createStatement();

			lists = new ArrayList<Order>();
			ResultSet resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
				Order order = new Order();
				order.setUserId(resultSet.getInt("user_id"));
				order.setId(resultSet.getString("id"));
				order.setMoney(resultSet.getDouble("money"));
				order.setReceiveAddress(resultSet.getString("receiveAddress"));
				order.setReceiveName(resultSet.getString("receiveName"));
				order.setReceivePhone(resultSet.getString("receivePhone"));
				order.setPaystate(resultSet.getInt("paystate"));
				order.setOrderTime(resultSet.getString("orderTime"));
				lists.add(order);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return lists;
	}
	public Set<Order> getOrder(int userId) {
		Set<Order> set = null;
		
		try {
			String sql = "SELECT * FROM orders where user_id=" + userId;
			Connection connection = DataSourceUtils.getConnection();
			Statement statement = connection.createStatement();

			set = new LinkedHashSet<Order>();
			ResultSet resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
				Order order = new Order();
				order.setUserId(userId);
				order.setId(resultSet.getString("id"));
				order.setMoney(resultSet.getDouble("money"));
				order.setReceiveAddress(resultSet.getString("receiveAddress"));
				order.setReceiveName(resultSet.getString("receiveName"));
				order.setReceivePhone(resultSet.getString("receivePhone"));
				order.setPaystate(resultSet.getInt("paystate"));
				order.setOrderTime(resultSet.getString("orderTime"));
				set.add(order);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return set;
	}
}
