// FamilyMember
package  hospital;

import java.sql.*;
import java.util.*;

import hospital.Database;
import hospital.*;

public class Investigation
{
    private  String sb_dr,hnb,chief_complaints,history_of_present_illness,dm,asthma,tb,htn,ihd,cva,epilepsy,copd;
    private String ckd,other,diet,sleep,appetite,bowel,bladder,occupation,alcohol,tobacco,smoking,pangutkha,drugs_history,family_history,higher_fun,temp;
    private String pr,bp,rr,pallor,edema,clubbing,lnpathy,icterus,jvp,sign_of_ccf,height_in_cm,weight_in_kg,higher_function,cranial_nerve,tone,right_ul,left_ul;
    private String right_ll,left_ll,glassglow_coma_scale,sensory_system,coordination_abnormal_movement,planter,left,right,cerebellum_fun,clinical_provisional_diagnosis;
                                                                        
  
    public  void setSb_dr(String sb_dr)
    { this.sb_dr = sb_dr; }

    public String getSb_dr()
    {  return sb_dr; }

    public  void setHnb(String hnb)
    { this.hnb= hnb; }

    public String getHnb()
    {  return hnb; }

    public  void setChief_complaints(String chief_complaints)
    { this.chief_complaints= chief_complaints; }

    public String getChief_complaints()
    {  return chief_complaints; }
    
    public  void setHistory_of_present_illness(String history_of_present_illness)
    { this.history_of_present_illness= history_of_present_illness; }

    public String getHistory_of_present_illness()
    {  return history_of_present_illness; }
    
    public  void setDm(String dm)
    { this.dm= dm; }

    public String getDm()
    {  return dm; }
    
    public  void setAsthma(String asthma)
    { this.asthma= asthma; }

    public String getAsthma()
    {  return asthma; }
    
    public  void setTb(String tb)
    { this.tb= tb; }

    public String getTb()
    {  return tb; }
    
    public  void setHtn(String htn)
    { this.htn= htn; }

    public String getHtn()
    {  return htn; }
    
    public  void setIhd(String ihd)
    { this.ihd= ihd; }

    public String getIhd()
    {  return ihd; }
    
    public  void setCva(String cva)
    { this.cva= cva; }

    public String getCva()
    {  return cva; }
    
    public  void setEpilepsy(String epilepsy)
    { this.epilepsy= epilepsy; }

    public String getEpilepsy()
    {  return epilepsy; }
    
    public  void setCopd(String copd)
    { this.copd= copd; }

    public String getCopd()
    {  return copd; }
    
    public  void setCkd(String ckd)
    { this.ckd= ckd; }

    public String getCkd()
    {  return ckd; }
    
    public  void setOther(String other)
    { this.other= other; }

    public String getOther()
    {  return other; }
    
    public  void setDiet(String diet)
    { this.diet= diet; }

    public String getDiet()
    {  return diet; }
    
    public  void setSleep(String sleep)
    { this.sleep= sleep; }

    public String getSleep()
    {  return sleep; }
    
    public  void setAppetite(String appetite)
    { this.appetite= appetite; }

    public String getAppetite()
    {  return appetite; }
    
    public  void setBowel(String bowel)
    { this.bowel= bowel; }

    public String getBowel()
    {  return bowel; }
    
    public  void setBladder(String bladder)
    { this.bladder= bladder; }

    public String getBladder()
    {  return bladder; }
    
    
    public  void setOccupation(String occupation)
    { this.occupation= occupation; }

    public String getOccupation()
    {  return occupation; }
    
    public  void setAlcohol(String alcohol)
    { this.alcohol= alcohol; }

    public String getAlcohol()
    {  return alcohol; }
    
    public  void setTobacco(String tobacco)
    { this.tobacco= tobacco; }

    public String getTobacco()
    {  return tobacco; }
    
    public  void setSmoking(String smoking)
    { this.smoking= smoking; }

    public String getSmoking()
    {  return smoking; }
    
    public  void setPangutkha(String pangutkha)
    { this.pangutkha= pangutkha; }

    public String getPangutkha()
    {  return pangutkha; }
    
    public  void setDrugs_history(String drugs_history)
    { this.drugs_history= drugs_history; }

    public String getDrugs_history()
    {  return drugs_history; }
    
    public  void setFamily_history(String family_history)
    { this.family_history= family_history; }

    public String getFamily_history()
    {  return family_history; }
    
    public  void setHigher_fun(String higher_fun)
    { this.higher_fun= higher_fun; }

    public String getHigher_fun()
    {  return higher_fun; }
    
    public  void setTemp(String temp)
    { this.temp= temp; }

    public String getTemp()
    {  return temp; }
    
    public  void setPr(String pr)
    { this.pr= pr; }

    public String getPr()
    {  return pr; }
    
    public  void setBp(String bp)
    { this.bp= bp; }

    public String getBp()
    {  return bp; }
    
    public  void setRr(String rr)
    { this.rr= rr; }

    public String getRr()
    {  return rr; }
    
    public  void setPallor(String pallor)
    { this.pallor= pallor; }

    public String getPallor()
    {  return pallor; }
    
    public  void setEdema(String edema)
    { this.edema= edema; }

    public String getEdema()
    {  return edema; }
    
    public  void setClubbing(String clubbing)
    { this.clubbing= clubbing; }

    public String getClubbing()
    {  return clubbing; }
    
    public  void setLnpathy(String lnpathy)
    { this.lnpathy= lnpathy; }

    public String getLnpathy()
    {  return lnpathy; }
    
    public  void setIcterus(String icterus)
    { this.icterus= icterus; }

    public String getIcterus()
    {  return icterus; }
    
    public  void setJvp(String jvp)
    { this.jvp= jvp; }

    public String getJvp()
    {  return jvp; }
    
    public  void setSign_of_ccf(String sign_of_ccf)
    { this.sign_of_ccf= sign_of_ccf; }

    public String getSign_of_ccf()
    {  return sign_of_ccf; }
    
    public  void setHeight_in_cm(String height_in_cm)
    { this.height_in_cm= height_in_cm; }

    public String getHeight_in_cm()
    {  return height_in_cm; }
    
    public  void setWeight_in_kg(String weight_in_kg)
    { this.weight_in_kg= weight_in_kg; }

    public String getWeight_in_kg()
    {  return weight_in_kg; }
    
    public  void setHigher_function(String higher_function)
    { this.higher_function= higher_function; }

    public String getHigher_function()
    {  return higher_function; }
    
    public  void setCranial_nerve(String cranial_nerve)
    { this.cranial_nerve= cranial_nerve; }

    public String getCranial_nerve()
    {  return cranial_nerve; }
    
    public  void setTone(String tone)
    { this.tone= tone; }

    public String getTone()
    {  return tone; }
    
    public  void setRight_ul(String right_ul)
    { this.right_ul= right_ul; }

    public String getRight_ul()
    {  return right_ul; }
    
    public  void setLeft_ul(String left_ul)
    { this.left_ul= left_ul; }

    public String getLeft_ul()
    {  return left_ul; }
    
    public  void setRight_ll(String right_ll)
    { this.right_ll= right_ll; }

    public String getRight_ll()
    {  return right_ll; }
    
    public  void setLeft_ll(String left_ll)
    { this.left_ll= left_ll; }

    public String getLeft_ll()
    {  return left_ll; }
    
    public  void setGlassglow_coma_scale(String glassglow_coma_scale)
    { this.glassglow_coma_scale= glassglow_coma_scale; }

    public String getGlassglow_coma_scale()
    {  return glassglow_coma_scale; }
    
    public  void setSensory_system(String sensory_system)
    { this.sensory_system= sensory_system; }

    public String getSensory_system()
    {  return sensory_system; }
    
    public  void setCoordination_abnormal_movement(String coordination_abnormal_movement)
    { this.coordination_abnormal_movement= coordination_abnormal_movement; }

    public String getCoordination_abnormal_movement()
    {  return coordination_abnormal_movement; }
    
    public  void setPlanter(String planter)
    { this.planter= planter;
    System.out.println(planter);}

    public String getPlanter()
    {  return planter; }
    
    public  void setRight(String right)
    { this.right= right;
    System.out.println(right);}

    public String getRight()
    {  return right; }
    
    public  void setLeft(String left)
    { this.left= left; }

    public String getLeft()
    {  return left; }
    
    public  void setCerebellum_fun(String cerebellum_fun)
    { this.cerebellum_fun= cerebellum_fun; }

    public String getCerebellum_fun()
    {  return cerebellum_fun; }
    
    public  void setClinical_provisonal_diagnosis(String clinical_provisional_diagnosis)
    { this.clinical_provisional_diagnosis= clinical_provisional_diagnosis; }

    public String getClinical_provisonal_diagnosis()
    {  return clinical_provisional_diagnosis; }
    
    
    
    public String add(String pid,String patient_id,String patient_name)
    {

     // get access to  Object
     	
    	 Connection con = null;
    
     PreparedStatement ps = null;
     try
     {
      con = Database.getConnection();
      //insert question
      
      ps = con.prepareStatement("INSERT INTO history_record (id_patient,patient_id,patient_name,sb_dr,hnb,chief_complaints,history_of_present_illness,dm,asthma,tb,htn,ihd,cva,epilepsy,copd,ckd,other,diet,sleep,appetite,bowel,bladder,occupation,alcohol,tobacco,smoking,pangutkha,drugs_history,family_history,higher_fun,temp,pr,bp,rr,pallor,edema,clubbing,lnpathy,icterus,jvp,sign_of_ccf,height_in_cm,weight_in_kg,higher_function,cranial_nerve,tone,right_ul,left_ul,right_ll,left_ll,glassglow_coma_scale,sensory_system,coordination_abnormal_movement) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
     //ps = con.prepareStatement("INSERT INTO history_record (id_patient,patient_id,patient_name) VALUES(?,?,?)");
      ps.setString(1,pid);
      ps.setString(2,patient_id);
      ps.setString(3,patient_name );
      ps.setString(4,sb_dr);
      ps.setString(5,hnb);
      ps.setString(6,chief_complaints);
      ps.setString(7,history_of_present_illness);
      ps.setString(8,dm);
      ps.setString(9,asthma);
      ps.setString(10,tb);
      ps.setString(11,htn);
      ps.setString(12,ihd);
      ps.setString(13,cva);
      ps.setString(14,epilepsy);
      ps.setString(15,copd);
      ps.setString(16,ckd);
      ps.setString(17,other);
      ps.setString(18,diet);
      ps.setString(19,sleep);
      ps.setString(20,appetite);
      ps.setString(21,bowel);
      ps.setString(22,bladder);
      ps.setString(23,occupation);
      ps.setString(24,alcohol);
      ps.setString(25,tobacco);
      ps.setString(26,smoking);
      ps.setString(27,pangutkha);
      ps.setString(28,drugs_history);
      ps.setString(29,family_history);
      ps.setString(30,higher_fun);
      ps.setString(31,temp);
      ps.setString(32,pr);
      ps.setString(33,bp);
      ps.setString(34,rr);
      ps.setString(35,pallor);
      ps.setString(36,edema);
      ps.setString(37,clubbing);
      ps.setString(38,lnpathy);
      ps.setString(39,icterus);
      ps.setString(40,jvp);
      ps.setString(41,sign_of_ccf);
      ps.setString(42,height_in_cm);
      ps.setString(43,weight_in_kg);
      ps.setString(44,higher_function);
      ps.setString(45,cranial_nerve);
      ps.setString(46,tone);
      ps.setString(47,right_ul);
      ps.setString(48,left_ul);
      ps.setString(49,right_ll);
      ps.setString(50,left_ll);
      ps.setString(51,glassglow_coma_scale);
      ps.setString(52,sensory_system);
      ps.setString(53,coordination_abnormal_movement);
      
      /*
      ps.setString(54,planter);
      ps.setString(55,right);
            ps.setString(56,left);
            ps.setString(57,cerebellum_fun);
            ps.setString(58,clinical_provisional_diagnosis);
        */  

   
  
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








