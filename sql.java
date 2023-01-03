try {
    String deleteAnnx = "delete from PACE_APPLICATION_ANNEXURE where I_APPLICATION_ID='"+value+"'";
    int row=getJDBCConnection().prepareStatement(deleteAnnx).executeUpdate();
    if(row>0){
        log.info("PACE_APPLICATION_ANNEXURE Deleted");	
    }

}catch (Exception e){
    log.info("PACE_APPLICATION_ANNEXURE Error"+ e);
}public class sql {
    
}
