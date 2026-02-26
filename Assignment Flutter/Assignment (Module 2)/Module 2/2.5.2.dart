class BankAccount
{
  int accnnum = 0;
  String accholder = "";
  double balance = 0;

  BankAccount(int accnnum,String accholder,double balance)
  {
    this.accnnum = accnnum;
    this.accholder = accholder;
    this.balance = balance;
  }
  void deposite(double amount)
  {
    balance = balance + amount;
    print("Deposited : $amount");
  }

  void withdraw(double amount)
  {
    if(amount<=balance)
      {
        balance = balance - amount;
        print("Withdrawn : $amount");
      }
    else
      {
        print("Insufficient balance! Withdrawal denied");
      }
  }
  void accountbalance()
  {
    print("Balance : $balance");
  }
}
void main()
{
      BankAccount b1 = BankAccount(3265684,"Ayush",5000);
      b1.deposite(2000);
      b1.withdraw(3000);
      b1.accountbalance();
}