/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dic;

/**
 *
 * @author votun
 */
public class Data {

    private int id;
    private String tu;
    private String pAm;
    private String lTu;
    private String ng;
    private String am;
    private String anh;

    public Data() {
    }

    public Data(int id, String tu, String pAm, String lTu, String ng, String am, String anh) {
        this.id = id;
        this.tu = tu;
        this.pAm = pAm;
        this.lTu = lTu;
        this.ng = ng;
        this.am = am;
        this.anh = anh;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTu() {
        return tu;
    }

    public void setTu(String tu) {
        this.tu = tu;
    }

    public String getpAm() {
        return pAm;
    }

    public void setpAm(String pAm) {
        this.pAm = pAm;
    }

    public String getlTu() {
        return lTu;
    }

    public void setlTu(String lTu) {
        this.lTu = lTu;
    }

    public String getNg() {
        return ng;
    }

    public void setNg(String ng) {
        this.ng = ng;
    }

    public String getAm() {
        return am;
    }

    public void setAm(String am) {
        this.am = am;
    }

    public String getAnh() {
        return anh;
    }

    public void setAnh(String anh) {
        this.anh = anh;
    }

}
