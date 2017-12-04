unit ConnectionModule;

interface

uses
  Aurelius.Drivers.Interfaces,
  Aurelius.SQL.SQLite,
  Aurelius.Schema.SQLite,
  Aurelius.Drivers.SQLite,
  System.SysUtils, System.Classes, Data.DB, Aurelius.Bind.Dataset;



type
  TSQLiteSQLiteConnection = class(TDataModule)
  private
  public
    class function CreateConnection: IDBConnection;
    class function CreateFactory: IDBConnectionFactory;
 end;

   var
       nomedb:string;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses 
  Aurelius.Drivers.Base;

{$R *.dfm}

{ TMyConnectionModule }

class function TSQLiteSQLiteConnection.CreateConnection: IDBConnection;
begin
  nomedb:='Estoque.db';
  Result := TSQLiteNativeConnectionAdapter.Create(nomedb);
end;

class function TSQLiteSQLiteConnection.CreateFactory: IDBConnectionFactory;
begin
  Result := TDBConnectionFactory.Create(
    function: IDBConnection
    begin
      Result := CreateConnection;
    end
  );
end;


end.
