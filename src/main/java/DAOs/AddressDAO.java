/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAOs;

import Models.Address;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Tran Duy Dat - CE172036
 */
public class AddressDAO {

	private Connection conn;

	public AddressDAO() {
		try {
			conn = DB.DBConnection.connect();
		} catch (SQLException ex) {
			Logger.getLogger(AddressDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
	}

	public ResultSet getAll() {
		ResultSet rs = null;
		try {
			Statement st = conn.createStatement();
			rs = st.executeQuery("select * from Address ");
		} catch (SQLException ex) {
			Logger.getLogger(AddressDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return rs;
	}

	public ResultSet getAllByEmail(String email) {
		ResultSet rs = null;
		try {
			PreparedStatement ps = conn.prepareStatement("select * from Address where email = ? and isDeleted = ?");
			ps.setString(1, email);
			ps.setBoolean(2, false);
			rs = ps.executeQuery();
		} catch (SQLException ex) {
			Logger.getLogger(AddressDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return rs;
	}

	public Address getAddressByID(int id) {
		Address address = null;
		try {
			PreparedStatement ps = conn.prepareStatement("select * from Address where addressID = ?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				address = new Address(rs.getInt("addressID"), rs.getString("phoneNumber"), rs.getString("name"), rs.getString("detailAddress"), rs.getString("email"), false);
			}
		} catch (SQLException ex) {
			Logger.getLogger(AddressDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return address;
	}

	public int createNewAddress(Address add) {
		int count = 0;
		try {
			PreparedStatement ps = conn.prepareStatement("insert into Address values (?,?,?,?,?)");
			ps.setString(1, add.getPhoneNumber());
			ps.setString(2, add.getName());
			ps.setString(3, add.getDetailAddress());
			ps.setString(4, add.getEmail());
			ps.setBoolean(5, false);

			count = ps.executeUpdate();
		} catch (SQLException ex) {
			Logger.getLogger(AddressDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return count;
	}

	public int updateAddresss(int addressID, Address newInfo) {
		int count = 0;

		try {
			PreparedStatement ps = conn.prepareStatement("update Address set phoneNumber=?, name=?, detailAddress=?, email=?, isDeleted=? where addressID=?");

			ps.setString(1, newInfo.getPhoneNumber());
			ps.setString(2, newInfo.getName());
			ps.setString(3, newInfo.getDetailAddress());
			ps.setString(4, newInfo.getEmail());
			ps.setBoolean(5, newInfo.isIsDeleted());
			ps.setInt(6, addressID);

			count = ps.executeUpdate();
		} catch (SQLException ex) {
			Logger.getLogger(AddressDAO.class.getName()).log(Level.SEVERE, null, ex);
		}

		return count;
	}

	public int deleteAddress(int addressID) {
		int count = 0;
		try {
			PreparedStatement ps = conn.prepareStatement("update Address set isDeleted=? where addressID=?");

			ps.setBoolean(1, true);
			ps.setInt(2, addressID);

			count = ps.executeUpdate();
		} catch (SQLException ex) {
			Logger.getLogger(AddressDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return count;
	}

	public List<Address> getAddressByEmail(String email) {
		List<Address> list = new ArrayList<>();
		ResultSet rs = null;

		try {
			PreparedStatement ps = conn.prepareStatement("select * from [Address] where email=?");
			ps.setString(1, email);

			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Address(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getBoolean(6)));
			}
		} catch (SQLException ex) {
			Logger.getLogger(AddressDAO.class.getName()).log(Level.SEVERE, null, ex);
		}

		return list;
	}

	public int getAddressIDByEmail(String email) {
		int addressID = -1;
		try {
			PreparedStatement ps = conn.prepareStatement("select addressID from Address where email=?");
			ps.setString(1, email);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				addressID = Integer.parseInt(rs.getString(1));
			}
		} catch (SQLException ex) {
			Logger.getLogger(AddressDAO.class.getName()).log(Level.SEVERE, null, ex);
		}

		return addressID;
	}
}
