program EstoqueRoupas;

uses
  Vcl.Forms,
  UEntity in 'UEntity.pas',
  untPreencheDados in 'untPreencheDados.pas' {FrmPreencheDados},
  ConnectionModule in 'ConnectionModule.pas' {SQLiteSQLiteConnection: TDataModule},
  TelaPrincipal in 'TelaPrincipal.pas' {FrmPrincipal},
  untGerenciaDados in 'untGerenciaDados.pas' {Gerenciador},
  AdicionaVarios in 'AdicionaVarios.pas' {FrmAdicionaVarios};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TGerenciador, Gerenciador);
  Application.Run;
end.
