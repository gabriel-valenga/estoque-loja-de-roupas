unit AdicionaVarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, untGerenciaDados;

type
  TFrmAdicionaVarios = class(TForm)
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    edtSetor: TEdit;
    edtCor: TEdit;
    edtTamanho: TEdit;
    edtValorEntrada: TEdit;
    edtValorSaida: TEdit;
    edtMarca: TEdit;
    edtCategoria: TEdit;
    edtNome: TEdit;
    rdModa: TRadioGroup;
    Button1: TButton;
    edtQtdItems: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure AddVarios;
    procedure SetaDados;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAdicionaVarios: TFrmAdicionaVarios;
  LetraModa:String;
  DataAtual:string;

implementation

{$R *.dfm}

procedure TFrmAdicionaVarios.Button1Click(Sender: TObject);
begin






 AddVarios;




  Close;

end;




procedure TFrmAdicionaVarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=caFree;
end;

procedure TFrmAdicionaVarios.AddVarios;
var
i: Integer;
recebeEdtQtdItems: integer;

begin

recebeEdtQtdItems:= StrToInt( edtQtdItems.Text);

for i:=1 to recebeEdtQtdItems do


begin

  Gerenciador.AureliusDataset1.Append;


    SetaDados;
   DataAtual:=FormatDateTime('dd/mm/yyyy',Now);
 Gerenciador.AureliusDataset1.FieldByName('DataEntrada').AsString:= DataAtual;

  Gerenciador.AureliusDataset1.Post;

end;




end;


procedure TFrmAdicionaVarios.SetaDados;

begin

Gerenciador.AureliusDataset1.FieldByName('Nome').AsString:= edtNome.Text;
Gerenciador.AureliusDataset1.FieldByName('Marca').AsString:= edtMarca.Text;
Gerenciador.AureliusDataset1.FieldByName('Categoria').AsString:= edtCategoria.Text;
Gerenciador.AureliusDataset1.FieldByName('Setor').AsString:= edtSetor.Text;
Gerenciador.AureliusDataset1.FieldByName('Cor').AsString:= edtCor.Text;
Gerenciador.AureliusDataset1.FieldByName('Tamanho').AsString:= edtTamanho.Text;
Gerenciador.AureliusDataset1.FieldByName('ValorEntrada').AsString:= edtValorEntrada.Text;
Gerenciador.AureliusDataset1.FieldByName('ValorSaida').AsString:= edtValorSaida.Text;

     If rdModa.ItemIndex = 0 Then
    Begin

    LetraModa:='M';
    end;
  If rdModa.ItemIndex = 1 Then
    Begin

    LetraModa:='F';

        end;


Gerenciador.AureliusDataset1.FieldByName('Moda').AsString:= LetraModa;




end;

end.
