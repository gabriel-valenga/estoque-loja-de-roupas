unit untPreencheDados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask, Aurelius.Engine.DatabaseManager,
  Aurelius.Engine.ObjectManager, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Aurelius.Bind.Dataset,
  ConnectionModule, untGerenciaDados, Vcl.ExtCtrls, System.Generics.Collections, System.DateUtils;

type


  TFrmPreencheDados = class(TForm)
    dbeNome: TDBEdit;
    dbeValorEntrada: TDBEdit;
    dbeMarca: TDBEdit;
    Label5: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    dbeSetor: TDBEdit;
    Label7: TLabel;
    dbeCategoria: TDBEdit;
    Label8: TLabel;
    dbeCor: TDBEdit;
    Label9: TLabel;
    dbeTamanho: TDBEdit;
    Label10: TLabel;
    dbeValorSaida: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    btnConcluir: TButton;

    procedure PostaDados(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SelecionaModa;


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPreencheDados: TFrmPreencheDados;
   DataAtual:string;
   LetraModa:string;

implementation

{$R *.dfm}


procedure TFrmPreencheDados.PostaDados;
begin





         DataAtual:=FormatDateTime('dd/mm/yyyy',Now);

  if Gerenciador.modoAdicionar=true then

  begin



     Gerenciador.AureliusDataset1.FieldByName('DataEntrada').AsString:= DataAtual;

  end

  else

  begin
         Gerenciador.AureliusDataset1.FieldByName('DataUltimaEdicao').AsString:= DataAtual;

         end;
               SelecionaModa;





    Gerenciador.AureliusDataset1.Post;
    Close;




end;

procedure TFrmPreencheDados.FormClose(Sender: TObject; var Action: TCloseAction);
begin


action:=caFree;


end;

   procedure TFrmPreencheDados.SelecionaModa;
   begin

       If DBradiogroup1.ItemIndex = 0 Then
    Begin

    LetraModa:='M';
    end;
  If DBradiogroup1.ItemIndex = 1 Then
    Begin

    LetraModa:='F';

        end;

     Gerenciador.AureliusDataset1.FieldByName('Moda').AsString:= LetraModa;
   end;


end.
