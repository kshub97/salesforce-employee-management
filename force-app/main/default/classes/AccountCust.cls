public class AccountCust {

    public AccountCust(ApexPages.StandardController controller) {

    }


    private final Account account;

    public AccountCust(){ 
       Id id = ApexPages.currentPage().getParameters().get('id');
        account = (id==null)?new Account():[select id, Name, Phone, Industry,Site from Account where id=:id];
    }

    public Account getAccount() {
        return account;
    }
    
       public PageReference save() {
      try{
           upsert(account);
      }
      catch(Exception e){
      ApexPages.addMessages(e);
      
        return null;
       }
       
       return new ApexPages.StandardController(Account).view();
    }



}