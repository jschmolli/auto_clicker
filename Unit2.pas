unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TForm2 = class(TForm)
    procedure FormClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
    g_sender1 : byte;
  end;

var
  Form2: TForm2;
  sender1: byte;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm2.FormClick(Sender: TObject);
var
  x, y: integer;
begin
  x:= Mouse.CursorPos.X;
  y:= Mouse.CursorPos.Y;

  case g_sender1 of
    1: begin Form1.Edit1.Text := inttostr(x); Form1.Edit2.Text := inttostr(y); end;
    2: begin Form1.Edit4.Text := inttostr(x); Form1.Edit5.Text := inttostr(y); end;
    3: begin Form1.Edit7.Text := inttostr(x); Form1.Edit8.Text := inttostr(y); end;
  end;


  Form2.Close;
  Form1.Show;
end;

end.
