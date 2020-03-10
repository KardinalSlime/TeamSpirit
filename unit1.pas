unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    Fille: TMainMenu;
    Edit: TMainMenu;
    Cut: TMenuItem;
    MenuItem1: TMenuItem;
    VblDLIT: TMenuItem;
    Reference: TMainMenu;
    Search: TMainMenu;
    View: TMainMenu;
    Memo1: TMemo;
    Create: TMenuItem;
    Close: TMenuItem;
    Log_out: TMenuItem;
    Save_as: TMenuItem;
    Save: TMenuItem;
    Open: TMenuItem;
    procedure CreateClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.CreateClick(Sender: TObject);
begin

end;

end.

