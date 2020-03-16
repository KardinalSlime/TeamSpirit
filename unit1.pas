unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    Fille: TMainMenu;
    Memo1: TMemo;
    Fillle: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
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
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
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
   Form1.Close;
   Application.Terminate;
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

end.

