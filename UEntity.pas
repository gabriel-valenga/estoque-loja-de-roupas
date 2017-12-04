unit UEntity;

interface


uses

Aurelius.Mapping.Attributes, System.SysUtils, System.DateUtils, Aurelius.types.Nullable;

type


[Entity, AutoMapping]
TProduto = class

private

FId: integer;
FNome: string;
FCategoria: string;
FMarca: string;
FModa: string;
FSetor: string;
FCor: string;
FTamanho: string;
FValorEntrada: double;
[ Column( 'VALOR_SAIDA', []) ]
FValorSaida: double;
FDataEntrada: TDateTime;
[ Column('DATA_SAIDA', []) ]
FDataUltimaEdicao: Nullable <TDateTime>;




public

property Id: integer read FId write FId;
property Nome: string read FNome write FNome;
property Categoria: string read FCategoria write FCategoria;
property Marca: string read FMarca write FMarca;
property Moda: string read FModa write FModa;
property Setor: string read FSetor write FSetor;
property Cor: string read FCor write FCor;
property Tamanho: string read FTamanho write FTamanho;
property ValorEntrada: double read FValorEntrada write FValorEntrada;
property ValorSaida: double read FValorSaida write  FValorSaida;
property DataEntrada: TDateTime read FDataEntrada write FDataEntrada;
property DataUltimaEdicao: Nullable <TDateTime> read FDataUltimaEdicao write FDataUltimaEdicao;



end;



implementation




end.
