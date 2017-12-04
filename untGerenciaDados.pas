unit untGerenciaDados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Aurelius.Bind.Dataset, ConnectionModule,
  Generics.Collections, UEntity, Aurelius.Engine.DatabaseManager, Aurelius.Engine.ObjectManager,
  Data.DB;

type
  TGerenciador = class(TForm)
    AureliusDataset1: TAureliusDataset;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }

    modoAdicionar:boolean;

  end;

var
  Gerenciador: TGerenciador;

   DbManager: TDatabaseManager;
  ObjManager: TObjectManager;
  Produto: TProduto;
  ListaProdutos : TList<TProduto>;
   dataSTR: string;


implementation

{$R *.dfm}


procedure TGerenciador.FormCreate(Sender: TObject);
begin

DBManager:= TDatabaseManager.Create(TSQLiteSQLiteConnection.CreateConnection);


if FileExists(nomedb) then


  begin
   DbManager.UpdateDatabase;
  DBmanager.Free;
  ObjManager:= TObjectManager.Create(TSQLiteSQLiteConnection.CreateConnection);

  ListaProdutos  := objManager.Find<TProduto>.List;
    end

   else

begin
  DbManager.BuildDatabase;
    DBmanager.Free;
  ObjManager:= TObjectManager.Create(TSQLiteSQLiteConnection.CreateConnection);

  ListaProdutos:= TList<TProduto>.Create;
end;



    AureliusDataset1.SetSourceList(ListaProdutos);

    AureliusDataset1.Manager:= ObjManager;








end;

procedure TGerenciador.FormDestroy(Sender: TObject);
begin
ObjManager.Free;
AureliusDataset1.Free;
ListaProdutos.Free;
end;



end.
