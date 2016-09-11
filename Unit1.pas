unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    CheckBox1: TCheckBox;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Button2: TButton;
    CheckBox2: TCheckBox;
    Edit6: TEdit;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Button3: TButton;
    CheckBox3: TCheckBox;
    Edit9: TEdit;
    Label11: TLabel;
    Button6: TButton;
    Edit16: TEdit;
    Label12: TLabel;
    IdHTTP1: TIdHTTP;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;
    function IsAeroEnabled: Boolean;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2;

function IsAeroEnabled: Boolean;
type
  TDwmIsCompositionEnabledFunc = function(out pfEnabled: BOOL): HRESULT; stdcall;
var
  IsEnabled: BOOL;
  ModuleHandle: HMODULE;
  DwmIsCompositionEnabledFunc: TDwmIsCompositionEnabledFunc;
begin
  Result := False;
  if Win32MajorVersion >= 6 then // Vista or Windows 7+
  begin
    ModuleHandle := LoadLibrary('dwmapi.dll');
    if ModuleHandle <> 0 then
    try
      @DwmIsCompositionEnabledFunc := GetProcAddress(ModuleHandle, 'DwmIsCompositionEnabled');
      if Assigned(DwmIsCompositionEnabledFunc) then
        if DwmIsCompositionEnabledFunc(IsEnabled) = S_OK then
          Result := IsEnabled;
    finally
      FreeLibrary(ModuleHandle);
    end;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Form2.show;
  Form1.Hide;
  Form2.g_sender1 := 1;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form2.show;
  Form1.Hide;
  Form2.g_sender1 := 2;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Form2.show;
  Form1.Hide;
  Form2.g_sender1 := 3;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Form2.show;
  Form1.Hide;
  Form2.g_sender1 := 4;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Form2.show;
  Form1.Hide;
  Form2.g_sender1 := 5;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
    Point:TPoint;
    i,e,f: integer;
begin
for e := 1 to strtoint(Edit16.Text) do
 begin

  Application.ProcessMessages;

  Point.X := strtoint(Edit1.Text);                      //set mouseposition 1
  Point.Y := strtoint(Edit2.Text);
  SetCursorPos(Point.X, Point.Y);
  Mouse_Event(MOUSEEVENTF_MOVE, 0, 0, 0, 0);

  if CheckBox1.Checked then f:=1 else f:=0;             //check for dbl click
  for I := 0 to f do
    begin
      Mouse_Event(MOUSEEVENTF_LEFTDOWN, 0,0,0,0);
      Mouse_Event(MOUSEEVENTF_LEFTUP, 0,0,0,0);
      sleep(300);
    end;
   sleep(strtoint(Edit3.Text));

  Point.X := strtoint(Edit4.Text);                      //set mouseposition 2
  Point.Y := strtoint(Edit5.Text);
  SetCursorPos(Point.X, Point.Y);
  Mouse_Event(MOUSEEVENTF_MOVE, 0, 0, 0, 0);
  if CheckBox2.Checked then f:=1 else f:=0;
  for I := 0 to f do
    begin
      Mouse_Event(MOUSEEVENTF_LEFTDOWN, 0,0,0,0);
      Mouse_Event(MOUSEEVENTF_LEFTUP, 0,0,0,0);
      sleep(300);
    end;
   sleep(strtoint(Edit6.Text));

  Point.X := strtoint(Edit7.Text);                      //set mouseposition 3
  Point.Y := strtoint(Edit8.Text);
  SetCursorPos(Point.X, Point.Y);
  Mouse_Event(MOUSEEVENTF_MOVE, 0, 0, 0, 0);
  if CheckBox3.Checked then f:=1 else f:=0;
  for I := 0 to f do
    begin
      Mouse_Event(MOUSEEVENTF_LEFTDOWN, 0,0,0,0);
      Mouse_Event(MOUSEEVENTF_LEFTUP, 0,0,0,0);
      sleep(300);
    end;
  sleep(strtoint(Edit9.Text));
  Label11.Caption := 'Count: ' + inttostr(e);
 end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  If IsAeroEnabled = False
  then begin
    showmessage('dieses prog erfordert win7 aero theme, programm schliesst sich jetzt');
    Form1.Close;
    Form2.Close;
  end;
end;

end.
