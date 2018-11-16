/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dic;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.swing.DefaultListModel;
import javax.swing.JList;
import javax.swing.JOptionPane;
import javazoom.jl.decoder.JavaLayerException;
import javazoom.jl.player.Player;

/**
 *
 * @author VTN
 */
public class MySQL {

    public static Connection mySqlConnectt() throws ClassNotFoundException, SQLException {

        String hostName = "localhost:3306/";
        String dbName = "dicdata";
        String userName = "root";
        String password = "root";

        Class.forName("com.mysql.cj.jdbc.Driver");
        //jdbc:mysql://localhost:3306/simplehr
        String connectionUrl = "jdbc:mysql://" + hostName + dbName;
        Connection conn = DriverManager.getConnection(connectionUrl + "?useSSL=false", userName, password);

        return conn;
    }

    public static void dsTu(JList<String> list) {

        try {

            String sql1 = "SELECT  * FROM dic    ";
            PreparedStatement ps1;
            ResultSet rs1;
            ps1 = mySqlConnectt().prepareStatement(sql1);
            rs1 = ps1.executeQuery();
            DefaultListModel<String> model = new DefaultListModel();
            while (rs1.next()) {
                model.addElement(rs1.getString("Từ"));
                list.setModel(model);

            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(MySQL.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static Data transTu(String value) {

        Data nc = new Data();

        try {

            String sql1 = "SELECT  * FROM dic WHERE Từ =?";
            PreparedStatement ps1;
            ResultSet rs1;
            ps1 = mySqlConnectt().prepareStatement(sql1);
            ps1.setString(1, value);
            rs1 = ps1.executeQuery();

            while (rs1.next()) {
                nc.setTu(rs1.getString("Từ"));
                nc.setpAm(rs1.getString("PhiênÂm"));
                nc.setlTu(rs1.getString("LoạiTừ"));
                nc.setNg(rs1.getString("Nghĩa"));
                nc.setAm(rs1.getString("Âm"));
                nc.setAnh(rs1.getString("Ảnh"));
            }

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(MySQL.class.getName()).log(Level.SEVERE, null, ex);
        }
        return nc;

    }

    public static void search(String value, JList<String> list) {

        try {

            String sql1 = "SELECT Từ FROM dic WHERE Từ LIKE ? ";
            PreparedStatement ps1;
            ResultSet rs1;
            ps1 = mySqlConnectt().prepareStatement(sql1);
            ps1.setString(1, value + "%");
            rs1 = ps1.executeQuery();
            DefaultListModel<String> model = new DefaultListModel();
            while (rs1.next()) {
                model.addElement(rs1.getString("Từ"));
                list.setModel(model);

            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(MySQL.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public static void audio(String urlAudio) {

        try {

            FileInputStream fis = null;
            try {
                fis = new FileInputStream(urlAudio);
            } catch (FileNotFoundException ex) {
                Logger.getLogger(MySQL.class.getName()).log(Level.SEVERE, null, ex);
            }
            Player player = new Player(fis);
            player.play();

        } catch (JavaLayerException ex) {
            Logger.getLogger(MySQL.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public static String image(String value) {
        String urlImage = null;
        try {

            String sql1 = "SELECT  * FROM dic WHERE Từ =?";
            PreparedStatement ps1;
            ResultSet rs1;
            ps1 = mySqlConnectt().prepareStatement(sql1);
            ps1.setString(1, value);
            rs1 = ps1.executeQuery();
            while (rs1.next()) {
                urlImage = rs1.getString("Ảnh");
            }

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(MySQL.class.getName()).log(Level.SEVERE, null, ex);
        }
        return urlImage;
    }

    public static void history(String value, int code) {
        try {
            String sql = "SELECT Từ FROM history WHERE Từ=? AND code=?";
            PreparedStatement ps1;
            ResultSet rs1;

            ps1 = mySqlConnectt().prepareStatement(sql);
            ps1.setString(1, value);
            ps1.setInt(2, code);
            rs1 = ps1.executeQuery();

            if (!rs1.next()) {

                String sql1 = "INSERT INTO history (Từ,code) VALUES(?,?)";
                ps1 = mySqlConnectt().prepareStatement(sql1);
                ps1.setString(1, value);
                ps1.setInt(2, code);
                ps1.execute();
            }

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(MySQL.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public static void showHistory(int code, JList<String> list) {
        try {
            String sql = "SELECT Từ FROM history WHERE code=?";
            PreparedStatement ps1;
            ResultSet rs1;
            ps1 = mySqlConnectt().prepareStatement(sql);
            ps1.setInt(1, code);
            rs1 = ps1.executeQuery();
            DefaultListModel<String> model = new DefaultListModel();
            while (rs1.next()) {
                model.addElement(rs1.getString("Từ"));
                list.setModel(model);

            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(MySQL.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void like(String value, int code) {
        try {
            String sql = "SELECT Từ FROM likee WHERE Từ=? AND code=?";
            PreparedStatement ps1;
            ResultSet rs1;

            ps1 = mySqlConnectt().prepareStatement(sql);
            ps1.setString(1, value);
            ps1.setInt(2, code);
            rs1 = ps1.executeQuery();

            if (!rs1.next()) {

                String sql1 = "INSERT INTO likee (Từ,code) VALUES(?,?)";
                ps1 = mySqlConnectt().prepareStatement(sql1);
                ps1.setString(1, value);
                ps1.setInt(2, code);
                ps1.execute();
            }

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(MySQL.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public static void showLike(int code, JList<String> list) {
        try {
            String sql = "SELECT Từ FROM likee WHERE code=?";
            PreparedStatement ps1;
            ResultSet rs1;
            ps1 = mySqlConnectt().prepareStatement(sql);
            ps1.setInt(1, code);
            rs1 = ps1.executeQuery();
            DefaultListModel<String> model = new DefaultListModel();
            while (rs1.next()) {
                model.addElement(rs1.getString("Từ"));
                list.setModel(model);

            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(MySQL.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void unLike(String value, int code) {
        try {
            String sql = "DELETE FROM likee WHERE code = ? AND Từ = ?";
            PreparedStatement ps;
            ps = mySqlConnectt().prepareStatement(sql);
            ps.setInt(1, code);
            ps.setString(2, value);
            ps.execute();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(MySQL.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static int statusLike(String value, int code) {
        try {
            String sql = "SELECT Từ FROM likee WHERE code=? AND Từ=?";
            PreparedStatement ps;
            ResultSet rs;
            ps = mySqlConnectt().prepareStatement(sql);
            ps.setInt(1, code);
            ps.setString(2, value);
            rs = ps.executeQuery();

            if (rs.next()) {
                return 1;
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(MySQL.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public static void adInsert(String tu, String pa, String lt, String ng, String am, String anh) {
        try {
            String sql = "SELECT Từ FROM dic WHERE Từ=?";
            PreparedStatement ps1;
            ResultSet rs1;
            ps1 = mySqlConnectt().prepareStatement(sql);
            ps1.setString(1, tu);
            rs1 = ps1.executeQuery();

            if (!rs1.next()) {

                String sql1 = "INSERT INTO dic (Từ,PhiênÂm,LoạiTừ,Nghĩa,Âm,Ảnh) VALUES(?,?,?,?,?,?)";
                ps1 = mySqlConnectt().prepareStatement(sql1);
                ps1.setString(1, tu);
                ps1.setString(2, pa);
                ps1.setString(3, lt);
                ps1.setString(4, ng);
                ps1.setString(5, am);
                ps1.setString(6, anh);

                ps1.execute();
            }
            else
            {
                JOptionPane.showMessageDialog(null," Word Already Exist ");
            }

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(MySQL.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public static void adDelete(String value) {
        try {
            String sql = "DELETE FROM dic WHERE Từ = ?";
            PreparedStatement ps;
            ps = mySqlConnectt().prepareStatement(sql);
            ps.setString(1, value);
            ps.execute();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(MySQL.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static ArrayList<Data> getUsersList() {
        ArrayList<Data> usersList = new ArrayList<>();

        try {

            String sql1 = "SELECT  * FROM dic    ";
            PreparedStatement ps1;
            ResultSet rs1;
            ps1 = mySqlConnectt().prepareStatement(sql1);
            rs1 = ps1.executeQuery();
            Data data1 ;
            while (rs1.next()) {
                data1 = new Data(rs1.getInt("Id"), rs1.getString("Từ"), rs1.getString("PhiênÂm"), rs1.getString("LoạiTừ"), rs1.getString("Nghĩa"), rs1.getString("Âm"), rs1.getString("Ảnh"));
                usersList.add(data1);

            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(MySQL.class.getName()).log(Level.SEVERE, null, ex);
        }

        return usersList;
    }

    public static void adUpdate(String tu, String pa, String lt, String ng, String am, String anh, int id) {
        try {
            String sql = "UPDATE dic SET Từ=?,PhiênÂm=?,LoạiTừ=?,Nghĩa=?,Âm=?,Ảnh=? WHERE Id=?";
            PreparedStatement ps;
            ps = mySqlConnectt().prepareStatement(sql);
            ps.setString(1, tu);
            ps.setString(2, pa);
            ps.setString(3, lt);
            ps.setString(4, ng);
            ps.setString(5, am);
            ps.setString(6, anh);
            ps.setInt(7, id);
            ps.execute();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(MySQL.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public static int checkAcc(String user, String pass) {
        try {
            String sql = "SELECT * FROM account WHERE Username=? AND Password=?";
            PreparedStatement ps;
            ResultSet rs;
            ps = mySqlConnectt().prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();

            if (rs.next()) {
                return 1;
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(MySQL.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;

    }

  

}
