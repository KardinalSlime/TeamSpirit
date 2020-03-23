unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus, LCLTranslator,
  SynEdit, SynHighlighterCpp, SynHighlighterJava,
  SynHighlighterHTML, SynHighlighterCss;

type

  { TForm1 }

  TForm1 = class(TForm)
    Fille: TMainMenu;
    Fillle: TMenuItem;
    En: TMenuItem;
    FontDialog1: TFontDialog;
    MenuItem23: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem25: TMenuItem;
    MenuItem26: TMenuItem;
    MenuItem27: TMenuItem;
    MenuItem28: TMenuItem;
    MenuItem29: TMenuItem;
    FontDialog: TMenuItem;
    Rus: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    ColorPurple: TMenuItem;
    ColorGreen: TMenuItem;
    ColorStandart: TMenuItem;
    ColorBlack: TMenuItem;
    ColorBlue: TMenuItem;
    SynCppSyn1: TSynCppSyn;
    SynCssSyn1: TSynCssSyn;
    SynEdit1: TSynEdit;
    SynHTMLSyn1: TSynHTMLSyn;
    SynJavaSyn1: TSynJavaSyn;
    View: TMenuItem;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    About: TMenuItem;
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
    procedure ColorPurpleClick(Sender: TObject);
    procedure ColorGreenClick(Sender: TObject);
    procedure ColorStandartClick(Sender: TObject);
    procedure ColorBlackClick(Sender: TObject);
    procedure ColorBlueClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MenuItem23Click(Sender: TObject);
    procedure MenuItem24Click(Sender: TObject);
    procedure MenuItem26Click(Sender: TObject);
    procedure FontDialogClick(Sender: TObject);
    procedure RusClick(Sender: TObject);
    procedure EnClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure JavaClick(Sender: TObject);
    procedure CClick(Sender: TObject);
    procedure CssClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  FName: string;

implementation

{$R *.lfm}

{ TForm1 }

uses unit2, Unit3;

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
procedure TForm1.ColorPurpleClick(Sender: TObject);
begin
    Form1.color:=clPurple;
end;

procedure TForm1.ColorGreenClick(Sender: TObject);
begin
    Form1.color:=clGreen;
end;

procedure TForm1.ColorStandartClick(Sender: TObject);
begin
    Form1.color:=clBase;
end;
procedure TForm1.ColorBlackClick(Sender: TObject);

begin
    Form1.color:=clBlack;
end;
procedure TForm1.ColorBlueClick(Sender: TObject);

begin
    Form1.color:=clBlue;
end;

procedure TForm1.FontDialogClick(Sender: TObject);
begin
 if FontDialog1.Execute then
     SynEdit1.Font.Assign(FontDialog1.Font);
 SynEdit1.SetFocus;
end;

procedure TForm1.MenuItem26Click(Sender: TObject);
begin
    Form3.Show;
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

procedure TForm1.HTMLClick(Sender: TObject);
begin
   SynEdit1.Highlighter:= SynHTMLSyn1;
end;

procedure TForm1.JavaClick(Sender: TObject);
begin
   SynEdit1.Highlighter:= SynJavaSyn1;
end;

procedure TForm1.CClick(Sender: TObject);
begin
   SynEdit1.Highlighter:= SynCppSyn1;
end;

procedure TForm1.CssClick(Sender: TObject);
begin
   SynEdit1.Highlighter:= SynCssSyn1;
end;

  // Vova

procedure TForm1.MenuItem1Click(Sender: TObject);
begin
 if OpenDialog1.Execute then
begin
  FName := OpenDialog1.FileName;
  SynEdit1.Lines.LoadFromFile(FName);
end;
end;

  procedure TForm1.MenuItem2Click(Sender: TObject);
begin
   if OpenDialog1.Execute then
  begin
    FName := OpenDialog1.FileName;
    SynEdit1.Lines.LoadFromFile(FName);
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
       SynEdit1.Lines.SaveToFile(Fname);
     end;
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
    Form2.Show;
end;

end. 

