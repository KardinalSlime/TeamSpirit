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
    procedure MenuItem18Click(Sender: TObject);
    procedure MenuItem19Click(Sender: TObject);
    procedure MenuItem20Click(Sender: TObject);
    procedure MenuItem21Click(Sender: TObject);
    procedure MenuItem22Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FillleClick(Sender: TObject);
begin

end;

procedure TForm1.MenuItem11Click(Sender: TObject);
begin

end;

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

end.

