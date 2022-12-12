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
    public boolean UpdatePengumumanMahasiswa(UserModel model);
    public boolean UpdatePengumumanMahasiswaManual(String id, String title, String category, String type, String desc, String image);
    public boolean InsertPengumumanMahasiswa(UserModel model);//model merupakan aliasing dari UserModel sebagai perantara data
    public List<UserModel> getSinglePengumumanMahasiswa(String id);
    public List<BeasiswaModel> getAllBeasiswa();
    public List<KipModel> getAllKip();
}
