unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus,
  LCLTranslator, ExtCtrls, ComCtrls, SynEdit, SynHighlighterCpp,
  SynHighlighterJava, SynHighlighterHTML, SynHighlighterCss;

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
    StatusBar1: TStatusBar;
    SynCppSyn1: TSynCppSyn;
    SynCssSyn1: TSynCssSyn;
    SynEdit1: TSynEdit;
    SynHTMLSyn1: TSynHTMLSyn;
    SynJavaSyn1: TSynJavaSyn;
    Timer1: TTimer;
    View: TMenuItem;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
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
    ReplaceDialog1: TReplaceDialog;
    FindDialog1: TFindDialog;
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
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure JavaClick(Sender: TObject);
    procedure CClick(Sender: TObject);
    procedure CssClick(Sender: TObject);
    procedure FindDialog1Find(Sender: TObject);
    procedure ReplaceDialog1Replace(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SynEdit1Change(Sender: TObject);
    procedure SynEdit1Click(Sender: TObject);
  private
    procedure AppClose();
    procedure FileSave();
    procedure FileSaveAs();
  public

  end;

  function searchext(temp: String): String;

  resourcestring
  rNewDocument = 'New document';
  rLine = 'Line: ';
  rSaved = 'Saved';
  rEdited = 'Changed';
  rSaveFile = 'Save';
  rNotSaveFile = 'Dont save';
  rWarning = 'Warning';
  rFile = 'File ';
  rFiledNotSaved = ' not saved. Save?';

var
  Form1: TForm1;
  FName: string;
  flag: boolean;

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
  synEdit1.Color:= clBlack;
  SynEdit1.Font.Color:= clWhite;
  Form1.color:=clBlack;
  synEdit1.Gutter.color:=clBlack;
  synEdit1.RightGutter.color:=clBlack;
end;

procedure TForm1.ColorGreenClick(Sender: TObject);
begin
   synEdit1.Color:= clGray;
   SynEdit1.Font.Color:= clBlack;
   Form1.color:=clGray;
   synEdit1.Gutter.color:=clGray;
   synEdit1.RightGutter.color:=clGray;
end;

procedure TForm1.ColorStandartClick(Sender: TObject);
begin
       synEdit1.Color:= clWhite;
       SynEdit1.Font.Color:= clBlack;
       Form1.color:=clWhite;
       synEdit1.Gutter.color:=clWhite;
       synEdit1.RightGutter.color:=clWhite;
end;

procedure TForm1.ColorBlackClick(Sender: TObject);
begin
   synEdit1.Color:= clMoneyGreen;
   SynEdit1.Font.Color:= clBlack;
   Form1.color:=clMoneyGreen;
   synEdit1.Gutter.color:=clMoneyGreen;
   synEdit1.RightGutter.color:=clMoneyGreen;
end;

procedure TForm1.ColorBlueClick(Sender: TObject);
begin
   synEdit1.Color:= clSkyBlue;
   SynEdit1.Font.Color:= clBlack;
   Form1.color:=clSkyBlue;
   synEdit1.Gutter.color:=clSkyBlue;
   synEdit1.RightGutter.color:=clSkyBlue;
end;

procedure TForm1.FontDialogClick(Sender: TObject);
begin
 if FontDialog1.Execute then
     SynEdit1.Font.Assign(FontDialog1.Font);
 SynEdit1.SetFocus;
end;

procedure TForm1.MenuItem26Click(Sender: TObject);
begin
    Form2.Show;
end;

procedure TForm1.MenuItem14Click(Sender: TObject);
begin
    ReplaceDialog1.Execute();
end;

procedure TForm1.ReplaceDialog1Replace(Sender: TObject);
var temp1: String;
  newTemp: String;
begin
  temp1:= SynEdit1.Text;
  newTemp:= StringReplace(temp1, ReplaceDialog1.FindText, ReplaceDialog1.ReplaceText, []);
  SynEdit1.Text:= newTemp;
end;

 //Nastya
procedure TForm1.RusClick(Sender: TObject);
begin
     SetDefaultLang('ru');
     StatusBar1.Panels.Items[0].Text:= rLine + IntToStr(SynEdit1.CaretY);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
     SetDefaultLang('en');
     SynEdit1.Lines.Clear;
     Form1.Caption:= rNewDocument;
     StatusBar1.Panels.Items[0].Text:= rLine + IntToStr(SynEdit1.CaretY);
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
     StatusBar1.Panels.Items[0].Text:= rLine + IntToStr(SynEdit1.CaretY);
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

procedure TForm1.MenuItem13Click(Sender: TObject);
begin
   FindDialog1.Execute();
end;

procedure TForm1.FindDialog1Find(Sender: TObject);
begin
if pos(FindDialog1.FindText,SynEdit1.Text) <> 0 then
begin
   SynEdit1.HideSelection := False;
   SynEdit1.SelStart := pos(FindDialog1.FindText, SynEdit1.Text);
   SynEdit1.SelEnd := SynEdit1.SelStart + Length(FindDialog1.FindText);
end else MessageDlg ('Строка ' + FindDialog1.FindText + ' не найдена!', mtConfirmation, [mbYes], 0);
end;

procedure TForm1.MenuItem10Click(Sender: TObject);
begin
  SynEdit1.PasteFromClipboard;
end;
procedure TForm1.MenuItem7Click(Sender: TObject);
begin
    SynEdit1.SelectAll;
end;

procedure TForm1.MenuItem8Click(Sender: TObject);
begin
    SynEdit1.CutToClipboard;
end;

procedure TForm1.MenuItem9Click(Sender: TObject);
begin
  SynEdit1.CopyToClipboard;
end;

procedure TForm1.SynEdit1Change(Sender: TObject);
begin
  flag:= false;
  StatusBar1.Panels.Items[0].Text:= rLine + IntToStr(SynEdit1.CaretY);
end;

procedure TForm1.SynEdit1Click(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text:= rLine + IntToStr(SynEdit1.CaretY);
end;

  // Vova

procedure TForm1.MenuItem1Click(Sender: TObject);
begin
  if flag = false then
    begin
      case QuestionDlg(rWarning, rFile + fname + rFiledNotSaved, mtCustom, [mrYes, rSaveFile, mrNo, rNotSaveFile], '') of
         mrYes: begin
           FileSave();
         end;
      end;
    end;
  SynEdit1.Lines.Clear;
  Form1.Caption:= rNewDocument;
  fname:= '';
  flag:= True;
end;

  procedure TForm1.MenuItem2Click(Sender: TObject);
  var temp: String;
  begin
    openDialog1.Filter:= 'All extentions|*|Text files|*.txt|HTML|*.html;*.htm|CSS|*.css|Java|*.java|C++|*.c;*.cpp;*.h;*.hpp;*.hh';
    if flag = True then
      begin
       if OpenDialog1.Execute then
         begin
              fname:= OpenDialog1.FileName;
              SynEdit1.Lines.LoadFromFile(fname);
              Form1.Caption:= fname;
         end;
      end
    else
      begin
        case QuestionDlg(rWarning, rFile + fname + rFiledNotSaved, mtCustom, [mrYes, rSaveFile, mrNo, rNotSaveFile], '') of
           mrYes: begin
             FileSave();
           end;
        end;
        if OpenDialog1.Execute then
         begin
              fname:= OpenDialog1.FileName;
              SynEdit1.Lines.LoadFromFile(fname);
              Form1.Caption:= fname;
         end;
      end;

      temp:= searchext(fname);
      case temp of
         'c': begin
             SynEdit1.Highlighter:= SynCPPSyn1;
         end;
         'cpp': begin
             SynEdit1.Highlighter:= SynCPPSyn1;
         end;
         'h': begin
             SynEdit1.Highlighter:= SynCPPSyn1;
         end;
         'hpp': begin
             SynEdit1.Highlighter:= SynCPPSyn1;
         end;
         'hh': begin
             SynEdit1.Highlighter:= SynCPPSyn1;
         end;
         'java': begin
           SynEdit1.Highlighter:= SynJavaSyn1;
         end;
         'html': begin
           SynEdit1.Highlighter:= SynHTMLSyn1;
         end;
         'htm': begin
           SynEdit1.Highlighter:= SynHTMLSyn1;
         end;
         'css': begin
           SynEdit1.Highlighter:= SynCSSSyn1;
         end;
         'txt': begin
           SynEdit1.Highlighter:= nil;
         end;
      end;
  end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
 AppClose();
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
 FileSave();
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
 FileSaveAs();
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
 AppClose();
end;

procedure TForm1.FileSave();
var i: integer;
  n: integer;
  tempfile: text;
begin
  if FName <> '' then
    begin
      if fileexists(fname) then
         begin
            AssignFile(tempfile, fname);
            Rewrite(tempfile);
            n:= SynEdit1.Lines.Count;
            for i:=0 to n-1 do
                Writeln(tempfile, SynEdit1.Lines[i]);
            CloseFile(tempfile);
            flag:= True;
        end
      else FileSaveAs();
    end
 else FileSaveAs();
end;

procedure TForm1.FileSaveAs();
begin
 SaveDialog1.Filter:= 'All extentions|*|Text files|*.txt|HTML|*.html;*.htm|CSS|*.css|Java|*.java|C++|*.c;*.cpp;*.h;*.hpp;*.hh';
 if SaveDialog1.Execute then
    begin
      fname:= SaveDialog1.filename;
      Form1.Caption:= fname;
      SynEdit1.Lines.SaveToFile(fname);
      flag:= True;
    end;
end;

procedure TForm1.AppClose();
begin
if flag = false then
 begin
   case QuestionDlg(rWarning, rFile + fname + rFiledNotSaved, mtCustom, [mrYes, rSaveFile, mrNo, rNotSaveFile], '') of
   mrYes: begin
     FileSave();
     Application.Terminate;
   end;
   mrNo: Application.Terminate;
   end;
 end
else Application.Terminate;
end;

function searchext(temp: String): String;
var x: integer;
  begin
  x:= pos('.', temp);
  searchext:= Copy(temp, x+1);
  end;

procedure TForm1.Timer1Timer(Sender: TObject);
var hr: word;
  min: word;
  sec: word;
  ms: word;
begin
  DecodeTime(Time, hr, min, sec, ms);
  if min < 10 then StatusBar1.Panels.Items[1].Text:= IntToStr(hr) + ':' + '0' + IntToStr(min)
  else
  StatusBar1.Panels.Items[1].Text:= IntToStr(hr) + ':' + IntToStr(min);
end;

end.
