/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Conncetion.UserConnection;
import Interface.UserInterface;
import Model.UserModel;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author HP
 */
public class UserDAO implements UserInterface{

    UserModel model = new UserModel();
    
    private Connection koneksi = null;
    
    public UserDAO() {
        this.koneksi = UserConnection.getConnection();
    }

    
    @Override
    public List<UserModel> getAllPengumumanMahasiswa() {
        List<UserModel> ls = new ArrayList<UserModel>();
        
        PreparedStatement ps;
        try {
            ps = koneksi.prepareStatement("SELECT * FROM tb_mahasiswa");
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                model = new UserModel();
                model.setId(rs.getString(1));
                model.setTitle(rs.getString(2));
                model.setCategory(rs.getString(3));
                model.setType(rs.getString(4));
                model.setDesc(rs.getString(5));
                model.setImage(rs.getString(6));
                ls.add(model);
            }  
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return ls;
    }

    @Override
    public boolean InsertPengumumanMahasiswa(UserModel model) {
        boolean result = false;
        
        try {
            PreparedStatement ps = koneksi.prepareStatement("INSERT INTO tb_mahasiswa VALUES(?,?,?,?,?,?)");
            ps.setString(1, null);
            ps.setString(2, model.getTitle());
            ps.setString(3, model.getCategory());
            ps.setString(4, model.getType());
            ps.setString(5, model.getDesc());
            ps.setString(6, model.getImage());
            ps.executeUpdate();
            result = true;
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return result;
    }
    
}
