/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Conncetion.UserConnection;
import Interface.UserInterface;
import Model.BeasiswaModel;
import Model.KipModel;
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
public class UserDAO implements UserInterface {

    UserModel model = new UserModel();//Aliasing Model sebagai OBJECT
    BeasiswaModel modelBeasiswa = new BeasiswaModel();//Aliasing Model sebagai OBJECT
    KipModel modelKip = new KipModel();
    private Connection koneksi = null;//Function/class Connection yang berisi null

    public UserDAO() {
        this.koneksi = UserConnection.getConnection();//Constructor yang mengisi Function/class Connection dari hasil koneksi UserConnection.java
    }

    @Override
    public List<UserModel> getAllPengumumanMahasiswa() {//function pengambil semua data (SELECT *) disimpan sementara di LIST
        List<UserModel> ls = new ArrayList<UserModel>();//inisialisasi list

        PreparedStatement ps;
        try {
            ps = koneksi.prepareStatement("SELECT * FROM tb_mahasiswa");//query builder
            ResultSet rs = ps.executeQuery();//menyimpan sementara hasil query
            while (rs.next()) {//apabila rs.next() == false (semua data sudah di ulang)
                model = new UserModel();//alias model
                model.setId(rs.getString(1));
                model.setTitle(rs.getString(2));
                model.setCategory(rs.getString(3));
                model.setType(rs.getString(4));
                model.setDesc(rs.getString(5));
                model.setImage(rs.getString(6));
                ls.add(model);//insert data yang telah diisi di model menuju ke LIST untuk dikembalikan ke pemanggill fungsi ini
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return ls;//mengembalikan nilai dari eksekusi query ALL
    }

    @Override
    public boolean InsertPengumumanMahasiswa(UserModel model) {
        boolean result = false;//inisial pengkondisian

        try {
            PreparedStatement ps = koneksi.prepareStatement("INSERT INTO  tb_mahasiswa VALUES(?,?,?,?,?,?)");//diberi tanda tanya untuk menghindari SQL Injection dengan cara data bindi model
            ps.setString(1, null);//null karena ID Auto Increment dan PrimaryKey
            ps.setString(2, model.getTitle());
            ps.setString(3, model.getCategory());
            ps.setString(4, model.getType());
            ps.setString(5, model.getDesc());
            ps.setString(6, model.getImage());
            ps.executeUpdate();
            result = true;//apabila insert data berhasil result == True
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return result;//pengembalian nilai true/false untuk memastikan bahwa  eksekusi berhasil/tidak
    }

    @Override
    public boolean DeletePengumumanMahasiswa(UserModel model) {
        boolean result = false;

        try {
            PreparedStatement ps = koneksi.prepareStatement("DELETE FROM tb_mahasiswa WHERE id=?");
            ps.setString(1, model.getId());
            ps.executeUpdate();
            result = true;
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return result;
    }

    @Override
    public List<UserModel> getSinglePengumumanMahasiswa(String id) {
        List<UserModel> ls = new ArrayList<UserModel>();//inisialisasi list

        PreparedStatement ps;
        try {
            ps = koneksi.prepareStatement("SELECT * FROM tb_mahasiswa WHERE id= "+ id +"");//query builder
            ResultSet rs = ps.executeQuery();//menyimpan sementara hasil query
            while (rs.next()) {//apabila rs.next() == false (semua data sudah di ulang)
                model = new UserModel();//alias model
                model.setId(rs.getString(1));
                model.setTitle(rs.getString(2));
                model.setCategory(rs.getString(3));
                model.setType(rs.getString(4));
                model.setDesc(rs.getString(5));
                model.setImage(rs.getString(6));
                ls.add(model);//insert data yang telah diisi di model menuju ke LIST untuk dikembalikan ke pemanggill fungsi ini
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return ls;//mengembalikan nilai dari eksekusi query ALL
    }

    @Override
    public List<BeasiswaModel> getAllBeasiswa() {
        List<BeasiswaModel> ls = new ArrayList<BeasiswaModel>();//inisialisasi list

        PreparedStatement ps;
        try {
            ps = koneksi.prepareStatement("SELECT * FROM tb_beasiswa");//query builder
            ResultSet rs = ps.executeQuery();//menyimpan sementara hasil query
            while (rs.next()) {//apabila rs.next() == false (semua data sudah di ulang)
                modelBeasiswa = new BeasiswaModel();//alias model
                modelBeasiswa.setId(rs.getString(1));
                modelBeasiswa.setNama(rs.getString(2));
                modelBeasiswa.setNim(rs.getString(3));
                modelBeasiswa.setBesaran(rs.getString(4));
                ls.add(modelBeasiswa);//insert data yang telah diisi di model menuju ke LIST untuk dikembalikan ke pemanggill fungsi ini
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return ls;//mengembalikan nilai dari eksekusi query ALL
    }

    @Override
    public List<KipModel> getAllKip() {
        List<KipModel> ls = new ArrayList<KipModel>();//inisialisasi list

        PreparedStatement ps;
        try {
            ps = koneksi.prepareStatement("SELECT * FROM tb_kip");//query builder
            ResultSet rs = ps.executeQuery();//menyimpan sementara hasil query
            while (rs.next()) {//apabila rs.next() == false (semua data sudah di ulang)
                modelKip = new KipModel();//alias model
                modelKip.setId(rs.getString(1));
                modelKip.setNim(rs.getString(2));
                modelKip.setNama(rs.getString(3));
                modelKip.setProgdi(rs.getString(4));
                ls.add(modelKip);//insert data yang telah diisi di model menuju ke LIST untuk dikembalikan ke pemanggill fungsi ini
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return ls;//mengembalikan nilai dari eksekusi query ALL
    }

}
