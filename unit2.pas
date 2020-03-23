unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;
  FName: string;
implementation

{$R *.lfm}

{ TForm2 }

uses unit1;

procedure TForm2.Button1Click(Sender: TObject);
begin
    Form2.Close;
end;

end.

