class Book
{
  String title="";
  String author="";
  int pubyear=0;

  void details(String title,String author,int pubyear)
  {
    this.title=title;
    this.author=author;
    this.pubyear=pubyear;
    
    print("Title : $title");
    print("Author : $author");
    print("Publication year : $pubyear");
  }
  void over_ten_year_old()
  {
    int currentyear = DateTime.now().year;
    if(currentyear - pubyear > 10)
      {
        print("This book is over 10 years old");
      }
    else
      {
        print("This book is not over 10 years old");
      }
  }
}
void main()
{
  Book b1 = Book();
  b1.details("Flutter", "xyz", 2015);
  b1.over_ten_year_old();
}