/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interface;

import Model.UserModel;
import java.util.List;

/**
 *
 * @author HP
 */
public interface UserInterface {
    //Interface semua fungsi yang digunakan
    public List<UserModel> getAllPengumumanMahasiswa();
    public boolean InsertPengumumanMahasiswa(UserModel model);//model merupakan aliasing dari UserModel sebagai perantara data
}
