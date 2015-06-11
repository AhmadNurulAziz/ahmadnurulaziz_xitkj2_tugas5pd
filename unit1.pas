unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, DBGrids,
  StdCtrls, ExtCtrls, ZConnection, ZDataset, db;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label5: TLabel;
    Label6: TLabel;
    NIS: TEdit;
    NAMA: TEdit;
    KELAS: TEdit;
    EMAIL: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    ZQuery2: TZQuery;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  Zquery2.SQL.Clear;
  try
    ZQuery2.SQL.add('insert into datasiswa values("'+NIS.text+'","'+NAMA.text+'","'+KELAS.text+'","'+EMAIL.text+'")');
    ZQuery2.ExecSQL;
    Showmessage('SUCCESS !');
  except
    showmessage('FAILED !!!');

  end;
  ZQuery1.refresh;
end;

end.

