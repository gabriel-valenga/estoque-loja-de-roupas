unit TelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,ConnectionModule,
  Vcl.DBGrids,untGerenciaDados, untPreencheDados, AdicionaVarios,
  Vcl.ExtCtrls;


type
  TFrmPrincipal = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    btnAdicionar: TButton;
    btnEditar: TButton;
    btnDeletar: TButton;
    btnAdicionarVarios: TButton;
    btnFiltrar: TButton;
    rdBusca: TRadioGroup;
    edtFiltro: TEdit;
    btnDesativarFiltros: TButton;
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnAdicionarVariosClick(Sender: TObject);
    procedure Busca (Dataset:TDataset; var Accept: boolean);
    procedure rdBuscaClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure SelectBusca;
    procedure btnDesativarFiltrosClick(Sender: TObject);
    procedure edtFiltroKeyPress(Sender: TObject; var Key: Char);



   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

  nomeField: string;



implementation

{$R *.dfm}




procedure TFrmPrincipal.btnAdicionarClick(Sender: TObject);
begin

  Gerenciador.modoAdicionar:=true;
 Gerenciador.AureliusDataset1.Append;
 FrmPreencheDados:=TFrmPreencheDados.Create(Application);
FrmPreencheDados.ShowModal;

end;

procedure TFrmPrincipal.btnDeletarClick(Sender: TObject);
begin

Gerenciador.AureliusDataset1.Delete;
end;

procedure TFrmPrincipal.btnEditarClick(Sender: TObject);
begin
FrmPreencheDados:=TFrmPreencheDados.Create(Application);
Gerenciador.modoAdicionar:=false;
Gerenciador.AureliusDataset1.Edit;
FrmPreencheDados.ShowModal;

end;



procedure TFrmPrincipal.btnFiltrarClick(Sender: TObject);
begin
  Gerenciador.AureliusDataset1.Filtered := False;
 SelectBusca;
 Gerenciador.AureliusDataset1.OnFilterRecord := busca;
  Gerenciador.AureliusDataset1.Filtered := True;
end;

procedure TFrmPrincipal.btnAdicionarVariosClick(Sender: TObject);
begin
FrmAdicionaVarios:=TFrmAdicionaVarios.Create(Application);
FrmAdicionaVarios.ShowModal;
end;

procedure TFrmPrincipal.FormActivate(Sender: TObject);
begin

   gerenciador.AureliusDataset1.Close;
Gerenciador.AureliusDataset1.open;


end;


procedure TFrmPrincipal.rdBuscaClick(Sender: TObject);
begin
edtFiltro.Enabled:=true;
btnFiltrar.Enabled:=true;
end;

procedure TFrmPrincipal.Busca(Dataset:TDataset; var Accept: boolean);
begin

Accept:=  (Dataset.FieldByName(nomeField).AsString = edtFiltro.Text);


end;


procedure TFrmPrincipal.btnDesativarFiltrosClick(Sender: TObject);
begin
Gerenciador.AureliusDataset1.Filtered := False;
end;

procedure TFrmPrincipal.edtFiltroKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then

btnFiltrar.Click;

end;

procedure TFrmPrincipal.SelectBusca;





begin

case  rdBusca.ItemIndex of

 0:



nomeField:='Id';




1:




nomeField:='Nome';



2:




nomeField:='Categoria';



3:


nomeField:='Marca';



4:


  nomeField:='Moda';




5:


nomeField:='Setor';



6:



 nomeField:='Cor';




7:



nomeField:='Tamanho';




8:



nomeField:='ValorEntrada';




9:



nomeField:='ValorSaida';



10:
  


nomeField:='DataEntrada';


end;



end;


end.
