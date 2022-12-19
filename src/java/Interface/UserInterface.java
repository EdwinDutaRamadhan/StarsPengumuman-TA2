/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interface;

import Model.BeasiswaModel;
import Model.KipModel;
import Model.UserModel;
import java.util.List;

/**
 *
 * @author HP
 */
public interface UserInterface {
    //Interface semua fungsi yang digunakan
    public List<UserModel> getAllPengumumanMahasiswa();
    public boolean DeletePengumumanMahasiswa(UserModel model);
    public boolean InsertPengumumanMahasiswa(UserModel model);//model merupakan aliasing dari UserModel sebagai perantara data
    public boolean UpdatePengumumanMahasiswa(UserModel model);
    public boolean UpdatePengumumanMahasiswaManual(String id, String title, String category, String type, String desk, String image);
    public List<UserModel> getSinglePengumumanMahasiswa(String id);
    public List<BeasiswaModel> getAllBeasiswa();
    public List<KipModel> getAllKip();
    public boolean DeleteDetailBeasiswa(BeasiswaModel model);
    public boolean InsertDetailBeasiswa(BeasiswaModel model);//model merupakan aliasing dari UserModel sebagai perantara data
    public List<BeasiswaModel> getSingleDetailBeasiswa(String id);
    public boolean UpdateDetailBeasiswa(BeasiswaModel model);
    public boolean UpdateDetailBeasiswaManual(String id, String nama, String nim, String besaran);
    public boolean DeleteDetailKip(KipModel model);
    public boolean InsertDetailKip(KipModel model);//model merupakan aliasing dari UserModel sebagai perantara data
    public List<KipModel> getSingleDetailKip(String id);
    public boolean UpdateDetailKip(KipModel model);
    public boolean UpdateDetailKipManual(String id, String nim, String nama, String progdi);
    
}
