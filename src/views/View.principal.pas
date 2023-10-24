unit View.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList;

type
  TViewPrincipal = class(TForm)
    pnlTopo: TPanel;
    pnlMenu: TPanel;
    pnlBackPrincipal: TPanel;
    pnlRodape: TPanel;
    pnlConteudo: TPanel;
    pnlLogo: TPanel;
    pnlLineLogo: TPanel;
    pnlConteudoLogo: TPanel;
    lblLogoEmpresa: TLabel;
    lblDescricaoEmpresa: TLabel;
    pnlVersao: TPanel;
    lblVersao: TLabel;
    lblVersaoTitulo: TLabel;
    pnlUsuario: TPanel;
    pnlLineUsuario: TPanel;
    pnlImagemUsuario: TPanel;
    imgUsuario: TImage;
    pnlDadosUsuarios: TPanel;
    lblUsuario: TLabel;
    lblPerfil: TLabel;
    pnlLicenciado: TPanel;
    pnlLineRodape: TPanel;
    pnlConteudoLicenca: TPanel;
    lblLicenciado: TLabel;
    lblTitLicenciado: TLabel;
    pnlSair: TPanel;
    pnlShape: TPanel;
    ShapeMenu: TShape;
    pnlDadosMenu: TPanel;
    btnCaixa: TSpeedButton;
    btnClientes: TSpeedButton;
    btnFornecedores: TSpeedButton;
    btnProdutos: TSpeedButton;
    btnConfiguracoes: TSpeedButton;
    btnSair: TSpeedButton;
    imgBackground: TImage;
    procedure btnSairClick(Sender: TObject);
    procedure btnCaixaClick(Sender: TObject);
    procedure btnFornecedoresClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure btnConfiguracoesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lblLogoEmpresaMouseEnter(Sender: TObject);
    procedure lblLogoEmpresaMouseLeave(Sender: TObject);
  private
    { Private declarations }
    procedure GET_LineMENU(Sender: TObject);
  public
    { Public declarations }
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

procedure TViewPrincipal.btnClientesClick(Sender: TObject);
begin  // btn Clientes
  GET_LineMENU(Sender);
end;

procedure TViewPrincipal.btnCaixaClick(Sender: TObject);
begin  // btn Caixa
  GET_LineMENU(Sender);
end;

procedure TViewPrincipal.btnFornecedoresClick(Sender: TObject);
begin  // btn Fornecedores
  GET_LineMENU(Sender);
end;

procedure TViewPrincipal.btnProdutosClick(Sender: TObject);
begin // btn Produtos
  GET_LineMENU(Sender);
end;

procedure TViewPrincipal.btnConfiguracoesClick(Sender: TObject);
begin  // btn Configurações
  GET_LineMENU(Sender);
end;

procedure TViewPrincipal.btnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TViewPrincipal.FormShow(Sender: TObject);
begin  // SHOW
  GET_LineMENU(btnClientes);
end;

procedure TViewPrincipal.GET_LineMENU(Sender: TObject);
begin
  ShapeMenu.Left    := 0;
  ShapeMenu.Top     := 0;
  ShapeMenu.Height  := TSpeedButton(Sender).Height;
  ShapeMenu.Top     := TSpeedButton(Sender).Top;
  ShapeMenu.Repaint;
end;

procedure TViewPrincipal.lblLogoEmpresaMouseEnter(Sender: TObject);
begin
  lblLogoEmpresa.Font.Color := $000FBBD9;
end;

procedure TViewPrincipal.lblLogoEmpresaMouseLeave(Sender: TObject);
begin
  lblLogoEmpresa.Font.Color := clWhite;
end;

end.

