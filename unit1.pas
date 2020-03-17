unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus, LCLTranslator, unit2;

type

  { TForm1 }

  TForm1 = class(TForm)
    Fille: TMainMenu;
    Memo1: TMemo;
    Fillle: TMenuItem;
    En: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem24: TMenuItem;
    Rus: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    View: TMenuItem;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    Help: TMenuItem;
    Search: TMenuItem;
    Edit: TMenuItem;
    procedure FillleClick(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem17Click(Sender: TObject);
    procedure MenuItem18Click(Sender: TObject);
    procedure MenuItem19Click(Sender: TObject);
    procedure MenuItem20Click(Sender: TObject);
    procedure MenuItem21Click(Sender: TObject);
    procedure MenuItem22Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MenuItem23Click(Sender: TObject);
    procedure MenuItem24Click(Sender: TObject);
    procedure RusClick(Sender: TObject);
    procedure EnClick(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  FName: string;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FillleClick(Sender: TObject);
begin

end;

procedure TForm1.MenuItem11Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem17Click(Sender: TObject);
begin

end;

       //Sasha
procedure TForm1.MenuItem18Click(Sender: TObject);
begin
    Form1.color:=clPurple;
end;

procedure TForm1.MenuItem19Click(Sender: TObject);
begin
    Form1.color:=clGreen;
end;

procedure TForm1.MenuItem20Click(Sender: TObject);
begin
    Form1.color:=clBase;
end;
procedure TForm1.MenuItem21Click(Sender: TObject);

begin
    Form1.color:=clBlack;
end;
procedure TForm1.MenuItem22Click(Sender: TObject);

begin
    Form1.color:=clBlue;
end;

 //Nastya
procedure TForm1.RusClick(Sender: TObject);
begin
 SetDefaultLang('ru');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
     SetDefaultLang('en');
end;

procedure TForm1.MenuItem23Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem24Click(Sender: TObject);
begin

end;

procedure TForm1.EnClick(Sender: TObject);
begin
     SetDefaultLang('en');
end;

  // Vova
  procedure TForm1.MenuItem2Click(Sender: TObject);
begin
   if OpenDialog1.Execute then
  begin
    FName := OpenDialog1.FileName;
    Memo1.Lines.LoadFromFile(FName);
  end;
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
   if SaveDialog1.Execute then
     begin
       FName := SaveDialog1.FileName;
       Memo1.Lines.SaveToFile(Fname);
     end;
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
    Form2.Show;
end;

end. 

