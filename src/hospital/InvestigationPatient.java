// FamilyMember
package  hospital;

import java.sql.*;
import java.util.*;

import hospital.*;

public class InvestigationPatient
{
    private  String date,retro,hbs_ag,hcv,cbc_hb,tlc,platelet_count,esr,mcvps,r,f,pp,bul,serum_creatinine,sr_na,sr_ca,pt_inr,aptt,electrocardiogram,sr_cholesterol,sr_ldl;
    private String sr_triglyserides,sr_vldl,sr_hdl,sr_cholesterol_sr_hdi_ratio,mp,dengue,widal_test,lepto_spira,hav,hev,sr_bilirubin_total,d,i,sgot,sgpt,
    				sr_alkaline_phosphage;
    private String t3,t4,tsh,cpk_mb,tropi_t,albumin,suger,rbc,pus_cells,urineexam_other,stoolexam_rbc,stoolexam_pus_cells,worms,stoolexam_other,sr_poteins_albumin,
    				gloulin,other,sputum;
    private String ultrasound_report,chamber_size,rw_ma,lv_systolic,ef,dd,clot_pe,ct_scan_report,mri_mra,protein,sugar,fluid_tlc,p,l,ada,funduscopy;

    public void setDate(String date)
    {this.date=date;}
    
    public String getDate()
    {
    	return date;
    }
    public  void setRetro(String retro)
    { this.retro = retro; }

    public String getRetro()
    {  return retro; }

    public  void setHbs_ag(String hbs_ag)
    { this.hbs_ag= hbs_ag; }

    public String getHbs_ag()
    {  return hbs_ag    		; }

    public  void setHcv(String hcv)
    { this.hcv= hcv; }

    public String getHcv()
    {  return hcv; }
    
    public  void setCbc_hb(String cbc_hb)
    { this.cbc_hb= cbc_hb; }

    public String getCbc_hb()
    {  return cbc_hb; }
    
    public  void setTlc(String tlc)
    { this.tlc= tlc; }

    public String getTlc()
    {  return tlc; }
    
    public  void setPlatelet_count(String platelet_count)
    { this.platelet_count= platelet_count; }

    public String getPlatelet_count()
    {  return platelet_count; }
    
    public  void setEsr(String esr)
    { this.esr= esr; }

    public String getEsr()
    {  return esr; }
    
    public  void setMcvps(String mcvps)
    { this.mcvps= mcvps; }

    public String getMcvps()
    {  return mcvps; }
    
    public  void setR(String r)
    { this.r= r; }

    public String getR()
    {  return r; }
    
    public  void setF(String f)
    { this.f= f; }

    public String getF()
    {  return f; }
    
    public  void setPp(String pp)
    { this.pp= pp; }

    public String getPp()
    {  return pp; }
    
    public  void setBul(String bul)
    { this.bul= bul; }

    public String getBul()
    {  return bul; }
    
    public  void setSerum_creatinine(String serum_creatinine)
    { this.serum_creatinine= serum_creatinine; }

    public String getSerum_creatinine()
    {  return serum_creatinine; }
    
    public  void setSr_na(String sr_na)
    { this.sr_na= sr_na; }

    public String getSr_na()
    {  return sr_na; }
    
    public  void setSr_ca(String sr_ca)
    { this.sr_ca= sr_ca; }

    public String getSr_ca()
    {  return sr_ca; }
    
    public  void setPt_inr(String pt_inr)
    { this.pt_inr= pt_inr; }

    public String getPt_inr()
    {  return pt_inr; }
    
    public  void setAptt(String aptt)
    { this.aptt= aptt; }

    public String getAptt()
    {  return aptt; }
    
    public  void setElectrocardiogram(String electrocardiogram)
    { this.electrocardiogram= electrocardiogram; }

    public String getElectrocardiogram()
    {  return electrocardiogram; }
    
    public  void setSr_cholesterol(String sr_cholesterol)
    { this.sr_cholesterol= sr_cholesterol; }

    public String getSr_cholesterol()
    {  return sr_cholesterol; }
    
    
    public  void setSr_ldl(String sr_ldl)
    { this.sr_ldl= sr_ldl; }

    public String getSr_ldl()
    {  return sr_ldl; }
    
    public  void setSr_triglyserides(String sr_triglyserides)
    { this.sr_triglyserides= sr_triglyserides; }

    public String getSr_triglyserides()
    {  return sr_triglyserides; }
    
    public  void setSr_vldl(String sr_vldl)
    { this.sr_vldl= sr_vldl; }

    public String getSr_vldl()
    {  return sr_vldl; }
    
    public  void setSr_hdl(String sr_hdl)
    { this.sr_hdl= sr_hdl; }

    public String getSr_hdl()
    {  return sr_hdl; }
    
    public  void setSr_cholesterol_sr_hdi_ratio(String sr_cholesterol_sr_hdi_ratio)
    { this.sr_cholesterol_sr_hdi_ratio= sr_cholesterol_sr_hdi_ratio; }

    public String getSr_cholesterol_sr_hdi_ratio()
    {  return sr_cholesterol_sr_hdi_ratio; }
    
    public  void setMp(String mp)
    { this.mp= mp; }

    public String getMp()
    {  return mp; }
    
    public  void setDengue(String dengue)
    { this.dengue= dengue; }

    public String getDengue()
    {  return dengue; }
    
    public  void setWidal_test(String widal_test)
    { this.widal_test= widal_test; }

    public String getWidal_test()
    {  return widal_test; }
    
    public  void setLepto_spira(String lepto_spira)
    { this.lepto_spira= lepto_spira; }

    public String getLepto_spira()
    {  return lepto_spira; }
    
    public  void setHav(String hav)
    { this.hav= hav; }

    public String getHav()
    {  return hav; }
    
    public  void setHev(String hev)
    { this.hev= hev; }

    public String getHev()
    {  return hev; }
    
    public  void setSr_bilirubin_total(String sr_bilirubin_total)
    { this.sr_bilirubin_total= sr_bilirubin_total; }

    public String getSr_bilirubin_total()
    {  return sr_bilirubin_total; }
    
    public  void setD(String d)
    { this.d= d; }

    public String getD()
    {  return d; }
    
    public  void setI(String i)
    { this.i= i; }

    public String getI()
    {  return i; }
    
    public  void setSgot(String sgot)
    { this.sgot= sgot; }

    public String getSgot()
    {  return sgot; }
    
    public  void setSgpt(String sgpt)
    { this.sgpt= sgpt; }

    public String getSgpt()
    {  return sgpt; }
    
    public  void setSr_alkaline_phosphage(String sr_alkaline_phosphage)
    { this.sr_alkaline_phosphage= sr_alkaline_phosphage; }

    public String getSr_alkaline_phosphage()
    {  return sr_alkaline_phosphage; }
    
    public  void setT3(String t3)
    { this.t3= t3; }

    public String getT3()
    {  return t3; }
    
    public  void setT4(String t4)
    { this.t4= t4; }

    public String getT4()
    {  return t4; }
    
    public  void setTsh(String tsh)
    { this.tsh= tsh; }

    public String getTsh()
    {  return tsh; }
    
    public  void setCpk_mb(String cpk_mb)
    { this.cpk_mb= cpk_mb; }

    public String getCpk_mb()
    {  return cpk_mb; }
    
    public  void setTropi_t(String tropi_t)
    { this.tropi_t= tropi_t; }

    public String getTropi_t()
    {  return tropi_t; }
    
    public  void setAlbumin(String albumin)
    { this.albumin= albumin; }

    public String getAlbumin()
    {  return albumin; }
    
    public  void setSuger(String suger)
    { this.suger= suger; }

    public String getSuger()
    {  return suger; }
    
    public  void setRbc(String rbc)
    { this.rbc= rbc; }

    public String getRbc()
    {  return rbc; }
    
    public  void setPus_cells(String pus_cells)
    { this.pus_cells= pus_cells; }

    public String getPus_cells()
    {  return pus_cells; }
    
    public  void setUrineexam_other(String urineexam_other)
    { this.urineexam_other= urineexam_other; }

    public String getUrineexam_other()
    {  return urineexam_other; }
    
    public  void setStoolexam_rbc(String stoolexam_rbc)
    { this.stoolexam_rbc= stoolexam_rbc; }

    public String getStoolexam_rbc()
    {  return stoolexam_rbc; }
    
    public  void setStoolexam_pus_cells(String stoolexam_pus_cells)
    { this.stoolexam_pus_cells= stoolexam_pus_cells; }

    public String getStoolexam_pus_cells()
    {  return stoolexam_pus_cells; }
    
    public  void setWorms(String worms)
    { this.worms= worms; }

    public String getWorms()
    {  return worms; }
    
    public  void setStoolexam_other(String stoolexam_other)
    { this.stoolexam_other= stoolexam_other; }

    public String getStoolexam_other()
    {  return stoolexam_other; }
    
    public  void setSr_poteins_albumin(String sr_poteins_albumin)
    { this.sr_poteins_albumin= sr_poteins_albumin; }

    public String getSr_poteins_albumin()
    {  return sr_poteins_albumin; }
    
    public  void setGloulin(String gloulin)
    { this.gloulin= gloulin; }

    public String getGloulin()
    {  return gloulin; }
    
    public  void setOther(String other)
    { this.other= other; }

    public String getOther()
    {  return other; }
    
    public  void setSputum(String sputum)
    { this.sputum= sputum; }

    public String getSputum()
    {  return sputum; }
    
   
    
    public  void setUltrasound_report(String ultrasound_report)
    { this.ultrasound_report= ultrasound_report; }

    public String getUltrasound_report()
    {  return ultrasound_report; }
    
    public  void setChamber_size(String chamber_size)
    { this.chamber_size= chamber_size; }

    public String getChamber_size()
    {  return chamber_size; }
    
    public  void setRw_ma(String rw_ma)
    { this.rw_ma= rw_ma; }

    public String getRw_ma()
    {  return rw_ma; }
    
    public  void setLv_systolic(String lv_systolic)
    { this.lv_systolic= lv_systolic; }

    public String getLv_systolic()
    {  return lv_systolic; }
    
    public  void setEf(String ef)
    { this.ef= ef; }

    public String getEf()
    {  return ef; }
    
    public  void setDd(String dd)
    { this.dd= dd; }

    public String getDd()
    {  return dd; }
    
    public  void setClot_pe(String clot_pe)
    { this.clot_pe= clot_pe; }

    public String getClot_pe()
    {  return clot_pe; }
    
    public  void setCt_scan_report(String ct_scan_report)
    { this.ct_scan_report= ct_scan_report; }

    public String getCt_scan_report()
    {  return ct_scan_report; }
    
    public  void setMri_mra(String mri_mra)
    { this.mri_mra= mri_mra; }

    public String getMri_mra()
    {  return mri_mra; }
    
    public  void setProtein(String protein)
    { this.protein= protein; }

    public String getProtein()
    {  return protein; }
    
    public  void setSugar(String sugar)
    { this.sugar= sugar; }

    public String getSugar()
    {  return sugar; }
    
    
    public  void setFluid_tlc(String fluid_tlc)
    { this.fluid_tlc= fluid_tlc; }

    public String getFluid_tlc()
    {  return fluid_tlc; }
    
    
    public  void setP(String p)
    { this.p= p; }

    public String getP()
    {  return p; }
    
    public  void setL(String l)
    { this.l= l; }

    public String getL()
    {  return l; }
    
    public  void setAda(String ada)
    { this.ada= ada; }

    public String getAda()
    {  return ada; }
    
    public  void setFunduscopy(String funduscopy)
    { this.funduscopy= funduscopy; }

    public String getFunduscopy()
    {  return funduscopy; }
    
    
    
    
    
    
    
    
    public String add(String pid,String patient_id,String patient_name)
    {

   
    	 Connection con = null;
    
     PreparedStatement ps = null;
     try
     {
      con = Database.getConnection();
      //insert question
      
      
      ps = con.prepareStatement("INSERT INTO investigation_record (id_patient,patient_name,patient_id,retro,hbs_ag,hcv,date,cbc_hb,tlc,platelet_count,esr,mcvps,r,f,pp,bul,serum_creatinine,sr_na,sr_ca,pt_inr,aptt,electrocardiogram,sr_cholesterol,sr_ldl,sr_triglyserides,sr_vldl,sr_hdl,sr_cholesterol_sr_hid_ratio,mp,dengue,widal_test,lepto_spira,hav,hev,sr_bilirubin_total,d,i,sgot,sgpt,sr_alkaline_phosphage,t3,t4,tsh,cpk_mb,tropi_t,albumin,suger,rbc,pus_cells,urineexam_other,stoolexam_rbc,stoolexam_pus_cells,worms,stoolexam_oher,sr_poteins_albumin,gloulin,other,sputum,ultrasound_report,chamber_size,rw_ma,lv_systolic,ef,dd,clot_pe,ct_scan_report,mri_mra,protein,sugar,fluid_tlc,p,l,ada,funduscopy) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
      ps.setString(1,pid);
      ps.setString(2,patient_name);
      ps.setString(3,patient_id);
      ps.setString(4,retro);
      ps.setString(5,hbs_ag);
      ps.setString(6,hcv);
      ps.setString(7,date);
      ps.setString(8,cbc_hb);
      ps.setString(9,tlc);
      ps.setString(10,platelet_count);
      
      ps.setString(11,esr);
      ps.setString(12,mcvps);
      ps.setString(13,r);
      ps.setString(14,f);
      ps.setString(15,pp);
      ps.setString(16,bul);
      ps.setString(17,serum_creatinine);
      ps.setString(18,sr_na);
      ps.setString(19,sr_ca);
      ps.setString(20,pt_inr);
      
      ps.setString(21,aptt);
      ps.setString(22,electrocardiogram);
      ps.setString(23,sr_cholesterol);
      ps.setString(24,sr_ldl);
      ps.setString(25,sr_triglyserides);
      ps.setString(26,sr_vldl);
      ps.setString(27,sr_hdl);
      ps.setString(28,sr_cholesterol_sr_hdi_ratio);
      ps.setString(29,mp);
      ps.setString(30,dengue);
      
      ps.setString(31,widal_test);
      ps.setString(32,lepto_spira);
      ps.setString(33,hav);
      ps.setString(34,hev);
      ps.setString(35,sr_bilirubin_total);
      ps.setString(36,d);
      ps.setString(37,i);
      ps.setString(38,sgot);
      ps.setString(39,sgpt);
      ps.setString(40,sr_alkaline_phosphage);
      
      ps.setString(41,t3);
      ps.setString(42,t4);
      ps.setString(43,tsh);
      ps.setString(44,cpk_mb);
      ps.setString(45,tropi_t);
      ps.setString(46,albumin);
      ps.setString(47,suger);
      ps.setString(48,rbc);
      ps.setString(49,pus_cells);
      ps.setString(50,urineexam_other);
      
      ps.setString(51,stoolexam_rbc);
      ps.setString(52,stoolexam_pus_cells);
      ps.setString(53,worms);
      ps.setString(54,stoolexam_other);
      ps.setString(55,sr_poteins_albumin);
      ps.setString(56,gloulin);
      ps.setString(57,other);
      ps.setString(58,sputum);
      ps.setString(59,ultrasound_report);
      ps.setString(60,chamber_size);
      
      ps.setString(61,rw_ma);
      ps.setString(62,lv_systolic);
      ps.setString(63,ef);
      ps.setString(64,dd);
      ps.setString(65,clot_pe);
      ps.setString(66,ct_scan_report);
      ps.setString(67,mri_mra);
      ps.setString(68,protein);
      ps.setString(69,sugar);
      ps.setString(70,fluid_tlc);
      
      ps.setString(71,p);
      ps.setString(72,l);
      ps.setString(73,ada);
      ps.setString(74,funduscopy);
      if ( ps.executeUpdate() == 1 )
           return null;
      else
           return "Could not insert details";
     }
     catch(Exception ex)
     {
      return ex.getMessage();
     }
     finally
     {
      Database.clean(con,ps);
     }
  } // end of add()
    
    
    public String Delete(String date)
    {
       Connection con = null;
       PreparedStatement ps = null;
       try
       {
        con = Database.getConnection();
        //insert question
        ps = con.prepareStatement("delete from investigation_record where date='"+date+"'");
         // value for fmname is set through property
        ps.executeUpdate();
       }
       catch(Exception ex)
       {
  	 return ex.getMessage();
       }
       finally
       {
         Database.clean(con,ps);
       }
       return null;
    } // end of add()

    

/*
   public String update(String mid, String oldfmname)
   {
     Connection con = null;
     PreparedStatement ps = null;
     try
     {
      con = Database.getConnection();
      //insert question
      ps = con.prepareStatement("update familymembers set fmname =  ?, fmrelation= ? , fmage = ? where mid = ? and fmname = ?");
      ps.setString(1,fmname);
      ps.setString(2,rel);
      ps.setInt(3,age);
      ps.setString(4,mid);
      ps.setString(5,oldfmname);
      ps.executeUpdate();
     }
     catch(Exception ex)
     {
       return ex.getMessage();
     }
     finally
     {
       Database.clean(con,ps);
     }
     return null;
  } // end of add()

*/
} // end of bean








