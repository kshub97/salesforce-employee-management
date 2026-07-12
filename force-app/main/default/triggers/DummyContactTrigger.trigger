trigger DummyContactTrigger on Account (after insert)
{
    List<Contact> contactList = new List<Contact>();
    for (Account acc: Trigger.new)
    {
        Contact con = new Contact();
        con.firstName = 'Dummy';
        con.LastName = acc.name;
        con.AccountId = acc.id;
        con.MailingCity = acc.Billingcity;
    
    contactList.add(con);
	}
    insert contactList;
    

}