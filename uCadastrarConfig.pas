unit uCadastrarConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,














  cxButtons,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxCurrencyEdit, Vcl.ComCtrls,
  FireDAC.Comp.Client, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus;

type
  TfrmCadastrarConfig = class(TForm)
    shp1: TShape;
    lbl1: TLabel;
    edtdiaslvcampo: TEdit;
    lbl4: TLabel;
    edtdiaslvpro: TEdit;
    edtdiassemlvcampo: TEdit;
    edtdiassemlvatu: TEdit;
    edtdiassemlvpro: TEdit;
    edtdiaslvatu: TEdit;
    lbl17: TLabel;
    edtcodtecnico: TEdit;
    edtdesctecnico: TEdit;
    pnl1: TPanel;
    btnbtsair: TcxButton;
    btnbtgravar: TcxButton;
    lbl10: TLabel;
    edttotaldiascomlev: TEdit;
    lbl11: TLabel;
    edttotaldiassemlev: TEdit;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    edtcampotop: TEdit;
    edtatutop: TEdit;
    edtprojtop: TEdit;
    edttottop: TEdit;
    grp2: TGroupBox;
    grp1: TGroupBox;
    rgcampo: TRadioGroup;
    rgatu: TRadioGroup;
    rgproj: TRadioGroup;
    rgvalor: TRadioGroup;
    rgacesso: TRadioGroup;
    rgedtvl: TRadioGroup;
    lblTravessia: TLabel;
    lbl39: TLabel;
    lbl40: TLabel;
    lbl41: TLabel;
    lbl18: TLabel;
    lbl21: TLabel;
    lbl33: TLabel;
    lbl34: TLabel;
    lbl35: TLabel;
    lbl38: TLabel;
    edtvlpostproj: TcxCurrencyEdit;
    edtvlpostrural: TcxCurrencyEdit;
    edtvlpostlev: TcxCurrencyEdit;
    edtvlpostatu: TcxCurrencyEdit;
    edtvltopografia: TcxCurrencyEdit;
    edtvlincorporacao: TcxCurrencyEdit;
    edtvloutros: TcxCurrencyEdit;
    edtvltravessia: TcxCurrencyEdit;
    edtvlimpro: TcxCurrencyEdit;
    edtvldeslocamento: TcxCurrencyEdit;
    grp3: TGroupBox;
    grp4: TGroupBox;
    grp5: TGroupBox;
    pgcontrol: TPageControl;
    tsprojeto: TTabSheet;
    tsRural: TTabSheet;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl12: TLabel;
    grp6: TGroupBox;
    lbl19: TLabel;
    lbl22: TLabel;
    lbl23: TLabel;
    edtRuralCampo: TEdit;
    edtRuralProjeto: TEdit;
    edtRuralTotal: TEdit;
    edtCodAcesso: TEdit;
    edtDescAcesso: TEdit;
    grp7: TGroupBox;
    rgRuralCampo: TRadioGroup;
    rgRuralTopografia: TRadioGroup;
    rgRuralProjeto: TRadioGroup;
    rgRuralValores: TRadioGroup;
    rgRuralAcesso: TRadioGroup;
    rgRuralEdValores: TRadioGroup;
    lbl24: TLabel;
    lbl25: TLabel;
    edtTopografia: TEdit;
    lbl20: TLabel;
    edtlevRural: TcxCurrencyEdit;
    Label1: TLabel;
    tsConfig: TTabSheet;
    GroupBox1: TGroupBox;
    chkExibirAnomalia: TCheckBox;
    Label2: TLabel;
    edtCodUser: TEdit;
    edtDescricao: TEdit;
    chkexibirprodutividade: TCheckBox;
    Chkexbirindicadoresgerais: TCheckBox;
    procedure edtcodtecnicoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnbtgravarClick(Sender: TObject);
    procedure btnbtsairClick(Sender: TObject);
    procedure edtdiaslvcampoExit(Sender: TObject);
    procedure edtdiaslvatuExit(Sender: TObject);
    procedure edtdiaslvproExit(Sender: TObject);
    procedure edtdiassemlvcampoExit(Sender: TObject);
    procedure edtdiassemlvatuExit(Sender: TObject);
    procedure edtdiassemlvproExit(Sender: TObject);
    procedure edtcampotopExit(Sender: TObject);
    procedure edtatutopExit(Sender: TObject);
    procedure edtprojtopExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodAcessoKeyPress(Sender: TObject; var Key: Char);
    procedure edtRuralCampoExit(Sender: TObject);
    procedure edtRuralTopografiaExit(Sender: TObject);
    procedure edtRuralProjetoExit(Sender: TObject);
    procedure edtTopografiaExit(Sender: TObject);
    procedure edtCodUserKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    FidConfidAcesso:Integer;
    FidConfidAcessoRural:Integer;
    FidValorProjeto:Integer;
    procedure CarregarDados;
  public
    { Public declarations }
    FidFuncionario:Integer;
    procedure montarObjetosUrbano(qry:TFDQuery);
    procedure montarObjetosUrbanoRural(qry:TFDQuery);
  end;

var
  frmCadastrarConfig: TfrmCadastrarConfig;

implementation

{$R *.dfm}

uses DataModule, UConsFuncionario;



procedure TfrmCadastrarConfig.btnbtgravarClick(Sender: TObject);
var
i:Integer;
qryLocal:TFDQuery;
begin
  //ATUALIZAR TABELAS
  //DATAS
  i:=1;
    while i<=4 do
    begin
      if(i=1)then
      begin
        DataModule1.qryCRUD.SQL.Text := 'UPDATE  os_config SET  dias_geral =:dias_geral ,dias_campo  = :dias_campo,dias_projeto  = :dias_projeto, dias_mub  = :dias_mub  WHERE  id  ='+IntToStr(i);
        DataModule1.qryCRUD.ParamByName('dias_campo').Value   :=StrToIntDef(edtdiaslvcampo.Text,0);
        DataModule1.qryCRUD.ParamByName('dias_projeto').Value :=StrToIntDef(edtdiaslvpro.Text,0);
        DataModule1.qryCRUD.ParamByName('dias_mub').Value     :=StrToIntDef(edtdiaslvatu.Text,0);
        DataModule1.qryCRUD.ParamByName('dias_geral').Value   :=StrToIntDef(edttotaldiascomlev.Text,0);
        DataModule1.qryCRUD.ExecSQL;
        DataModule1.qryCRUD.SQL.Clear;
      end;

      if(i=2)then
      begin
      sqlstr:= 'UPDATE  os_config SET dias_geral =:dias_geral , dias_campo  = :dias_campo,dias_projeto  = :dias_projeto, dias_mub  = :dias_mub WHERE  id  ='+IntToStr(i);
      DataModule1.qryCRUD.SQL.Text                                 :=sqlstr;
      DataModule1.qryCRUD.Params.ParamByName('dias_campo').Value   :=StrToIntDef(edtdiassemlvcampo.Text,0);
      DataModule1.qryCRUD.Params.ParamByName('dias_projeto').Value :=StrToIntDef(edtdiassemlvpro.Text,0);
      DataModule1.qryCRUD.Params.ParamByName('dias_mub').Value     :=StrToIntDef(edtdiassemlvatu.Text,0);
      DataModule1.qryCRUD.ParamByName('dias_geral').Value          :=StrToIntDef(edttotaldiassemlev.Text,0);
      DataModule1.qryCRUD.ExecSQL;
      DataModule1.qryCRUD.SQL.Clear;
      end;

      if(i=3)then
      begin
      sqlstr:= 'UPDATE  os_config SET dias_geral =:dias_geral , dias_campo  = :dias_campo,dias_projeto  = :dias_projeto, dias_mub  = :dias_mub,dias_topografia = :dias_topografia WHERE  id  ='+IntToStr(i);
      DataModule1.qryCRUD.SQL.Text                                 :=sqlstr;
      DataModule1.qryCRUD.Params.ParamByName('dias_campo').Value   :=StrToIntDef(edtcampotop.Text,0);
      DataModule1.qryCRUD.Params.ParamByName('dias_projeto').Value :=StrToIntDef(edtprojtop.Text,0);
      DataModule1.qryCRUD.Params.ParamByName('dias_mub').Value     :=StrToIntDef(edtatutop.Text,0);
      DataModule1.qryCRUD.Params.ParamByName('dias_topografia').Value             :=StrToIntDef(edtTopografia.Text,0);
      DataModule1.qryCRUD.ParamByName('dias_geral').Value          :=StrToIntDef(edttottop.Text,0);
      DataModule1.qryCRUD.ExecSQL;
      DataModule1.qryCRUD.SQL.Clear;
      end;

      if(i=4)then
      begin
      sqlstr:= 'UPDATE  os_config SET dias_geral =:dias_geral , dias_campo  = :dias_campo,dias_projeto  = :dias_projeto WHERE  id  ='+IntToStr(i);
      DataModule1.qryCRUD.SQL.Text                                 :=sqlstr;
      DataModule1.qryCRUD.Params.ParamByName('dias_campo').Value   :=StrToIntDef(edtRuralCampo.Text,0);
      DataModule1.qryCRUD.Params.ParamByName('dias_projeto').Value :=StrToIntDef(edtRuralProjeto.Text,0);
      //DataModule1.qryCRUD.Params.ParamByName('dias_mub').Value     :=StrToIntDef(edtRuralTopografia.Text,0);
      DataModule1.qryCRUD.ParamByName('dias_geral').Value          :=StrToIntDef(edtRuralTotal.Text,0);
      DataModule1.qryCRUD.ExecSQL;
      DataModule1.qryCRUD.SQL.Clear;
      end;

     Inc(i);
    end;
    //verificar se ja existe na tabela
   if(edtcodtecnico.Text<>'')then begin
    //atualizar funcionario
    qryLocal:=TFDQuery.Create(nil);
    qryLocal.Connection:=DataModule1.ConMySql;

    ConsultaSqlFd(qryLocal,'select * from os_engenharia_acesso where cod_usuario='+IntToStr(FidConfidAcesso));
    if(qryLocal.IsEmpty)then
    begin
      DataModule1.qryCRUD.SQL.Text:=' INSERT into os_engenharia_acesso  (serv_camp,serv_atu,serv_proj,serv_vl,serv_ace,cod_usuario,serv_edt_vl) '+
                                    ' values(:os_acesso_campo,:os_acesso_atualizacao, :os_acesso_projeto,:os_acesso_valores, :os_acesso_config,:cod_user,:serv_edt_vl) ';
    end
    else
    begin
          DataModule1.qryCRUD.SQL.Text:=' UPDATE os_engenharia_acesso SET serv_camp = :os_acesso_campo,serv_atu = :os_acesso_atualizacao, '+
            ' serv_proj = :os_acesso_projeto,serv_vl = :os_acesso_valores,serv_ace = :os_acesso_config ,serv_edt_vl=:serv_edt_vl'+
            ' where cod_usuario= :cod_user ';
    end;



     DataModule1.qryCRUD.Params.ParamByName('os_acesso_campo').Value:=rgcampo.ItemIndex;
     DataModule1.qryCRUD.Params.ParamByName('os_acesso_atualizacao').Value:=rgatu.ItemIndex;
     DataModule1.qryCRUD.Params.ParamByName('os_acesso_projeto').Value:=rgproj.ItemIndex;
     DataModule1.qryCRUD.Params.ParamByName('os_acesso_valores').Value:=rgvalor.ItemIndex;
     DataModule1.qryCRUD.Params.ParamByName('os_acesso_config').Value:=rgacesso.ItemIndex;
     DataModule1.qryCRUD.Params.ParamByName('serv_edt_vl').Value:=rgedtvl.ItemIndex;
     DataModule1.qryCRUD.Params.ParamByName('cod_user').Value:=FidConfidAcesso;
     DataModule1.qryCRUD.ExecSQL;
     DataModule1.qryCRUD.SQL.Clear;

     FreeAndNil(qryLocal);
   end;

   if(edtCodAcesso.Text<>'')then begin
    //atualizar funcionario
    qryLocal:=TFDQuery.Create(nil);
    qryLocal.Connection:=DataModule1.ConMySql;

    ConsultaSqlFd(qryLocal,'select * from os_engenharia_acesso_rural where cod_usuario='+IntToStr(FidConfidAcessoRural));
    if(FidConfidAcessoRural=0)then
    begin
      DataModule1.qryCRUD.SQL.Text:=' INSERT into os_engenharia_acesso_rural  (serv_camp,serv_topografia,serv_proj,serv_vl,serv_ace,cod_usuario,serv_edt_vl) '+
                                    ' values(:os_acesso_campo,:serv_topografia, :os_acesso_projeto,:os_acesso_valores, :os_acesso_config,:cod_user,:serv_edt_vl) ';
    end
    else
    begin
          DataModule1.qryCRUD.SQL.Text:=' UPDATE os_engenharia_acesso_rural SET serv_camp = :os_acesso_campo,serv_topografia = :serv_topografia, '+
            ' serv_proj = :os_acesso_projeto,serv_vl = :os_acesso_valores,serv_ace = :os_acesso_config ,serv_edt_vl=:serv_edt_vl'+
            ' where cod_usuario= :cod_user ';
    end;



     DataModule1.qryCRUD.Params.ParamByName('os_acesso_campo').Value:=rgRuralCampo.ItemIndex;
     DataModule1.qryCRUD.Params.ParamByName('serv_topografia').Value:=rgRuralTopografia.ItemIndex;
     DataModule1.qryCRUD.Params.ParamByName('os_acesso_projeto').Value:=rgRuralProjeto.ItemIndex;
     DataModule1.qryCRUD.Params.ParamByName('os_acesso_valores').Value:=rgRuralValores.ItemIndex;
     DataModule1.qryCRUD.Params.ParamByName('os_acesso_config').Value:=rgRuralAcesso.ItemIndex;
     DataModule1.qryCRUD.Params.ParamByName('serv_edt_vl').Value:=rgRuralEdValores.ItemIndex;
     DataModule1.qryCRUD.Params.ParamByName('cod_user').Value:=FidConfidAcessoRural;
     DataModule1.qryCRUD.ExecSQL;

     FreeAndNil(qryLocal);
   end;

       //atualizar valores
    sqlstr:= ' INSERT INTO os_engenharia_valoresprojeto (id,posteprojetadourbano,posteprojetadorural,postelevantado,posteatualizado,topografia,travessia,incorporacao,improcedente,deslocamento,outros,levantamento) '+
    'values (:id,:posteprojetadourbano,:posteprojetadorural,:postelevantado,:posteatualizado,:topografia,:travessia,:incorporacao,:improcedente,:deslocamento,:outros,:levantamento) ' +
    'ON DUPLICATE KEY UPDATE '+
    'id=:id,posteprojetadourbano=:posteprojetadourbano,posteprojetadorural =:posteprojetadorural,postelevantado = :postelevantado'+
    ' ,posteatualizado =:posteatualizado,topografia =:topografia,travessia =:travessia,incorporacao = :incorporacao, '+
    ' improcedente =:improcedente,deslocamento =:deslocamento,outros =:outros,levantamento=:levantamento ';

   with DataModule1.qryCRUD do
   begin
     SQL.Text:=sqlstr;
     Params.ParamByName('id').AsInteger                    :=FidValorProjeto;
     Params.ParamByName('posteprojetadourbano').AsCurrency :=edtvlpostproj.Value;
     Params.ParamByName('posteprojetadorural').AsCurrency  :=edtvlpostrural.Value;
     Params.ParamByName('postelevantado').AsCurrency       :=edtvlpostlev.Value;
     Params.ParamByName('posteatualizado').AsCurrency      :=edtvlpostatu.Value;
     Params.ParamByName('topografia').AsCurrency           :=edtvltopografia.value;
     Params.ParamByName('travessia').AsCurrency            :=edtvltravessia.value;
     Params.ParamByName('incorporacao').AsCurrency         :=edtvlincorporacao.value;
     Params.ParamByName('improcedente').AsCurrency         :=edtvlimpro.value;
     Params.ParamByName('deslocamento').AsCurrency         :=edtvldeslocamento.value;
     Params.ParamByName('outros').AsCurrency               :=edtvloutros.value;
     Params.ParamByName('levantamento').AsCurrency         :=edtlevRural.Value;
     ExecSQL;

  end;

  //atualizar acesso a relatorio
  if edtCodUser.Text<>'' then
  begin
    qryLocal:=TFDQuery.Create(nil);
    qryLocal.Connection:=DataModule1.ConMySql;

    ConsultaSqlFd(qryLocal,'select * from os_engenharia_acesso where cod_usuario='+IntToStr(FidFuncionario));

    DataModule1.qryCRUD.SQL.Text:=' UPDATE os_engenharia_acesso SET exibir_anomalias  = :exibir_anomalias,exibir_rel_produtividade = :exibir_rel_produtividade,exibir_rel_indicadores = :exibir_rel_indicadores    where cod_usuario= :cod_user ';
    DataModule1.qryCRUD.Params.ParamByName('exibir_anomalias').Value:=Integer(chkExibirAnomalia.Checked);
    DataModule1.qryCRUD.Params.ParamByName('exibir_rel_produtividade').Value:=Integer(chkexibirprodutividade.Checked);
    DataModule1.qryCRUD.Params.ParamByName('exibir_rel_indicadores').Value:=Integer(Chkexbirindicadoresgerais.Checked);
    DataModule1.qryCRUD.Params.ParamByName('cod_user').Value:=FidFuncionario;
    DataModule1.qryCRUD.ExecSQL;
  end;

   Application.MessageBox('Configurações Gravadas com Sucesso!', 'Informação',MB_OK + MB_ICONINFORMATION);
   Self.Close;

  //FUNCIONARIO
  {Carregar Dados de config do usuario logado}

end;

procedure TfrmCadastrarConfig.btnbtsairClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmCadastrarConfig.CarregarDados;
begin
    if(ConsultaSqlFd(DataModule1.qryCRUD,'SELECT * FROM os_config'))then
    begin
      with DataModule1.qryCRUD do
      begin
        while not Eof do
        begin
          if(FieldByName('id').AsInteger=1)then
          begin
            edtdiaslvcampo.Text:=FieldByName('dias_campo').AsString;
            edtdiaslvpro.Text:=FieldByName('dias_projeto').AsString;
            edtdiaslvatu.Text:=FieldByName('dias_mub').AsString;
            edttotaldiascomlev.Text:=FieldByName('dias_geral').AsString;
          end;
          if(FieldByName('id').AsInteger=2)then
          begin
            edtdiassemlvcampo.Text:=FieldByName('dias_campo').AsString;
            edtdiassemlvpro.Text:=FieldByName('dias_projeto').AsString;
            edtdiassemlvatu.Text:=FieldByName('dias_mub').AsString;
            edttotaldiassemlev.Text:=FieldByName('dias_geral').AsString;
          end;
          if(FieldByName('id').AsInteger=3)then
          begin
            edtcampotop.Text:=FieldByName('dias_campo').AsString;
            edtprojtop.Text:=FieldByName('dias_projeto').AsString;
            edtatutop.Text:=FieldByName('dias_mub').AsString;
            edttottop.Text:=FieldByName('dias_geral').AsString;
            edtTopografia.Text:=FieldByName('dias_topografia').AsString;
          end;
          if(FieldByName('id').AsInteger=4)then
          begin
            edtRuralCampo.Text:=FieldByName('dias_campo').AsString;
            edtRuralProjeto.Text:=FieldByName('dias_projeto').AsString;
            //edtRuralTopografia.Text:=FieldByName('dias_mub').AsString;
            edtRuralTotal.Text:=FieldByName('dias_geral').AsString;
          end;
          Next;
        end;
      end;
    end;
   // DataModule1.qryCRUD.Close;
   if(ConsultaSqlFd(DataModule1.qryCRUD,'SELECT * FROM os_engenharia_valoresprojeto '))then
   begin
      FidValorProjeto:= DataModule1.qryCRUD.FieldByName('id').AsInteger;
      edtvlpostproj.Text := FormatFloat('#####0.00',DataModule1.qryCRUD.FieldByName('posteprojetadourbano').AsFloat);
      edtvlpostrural.Text := FormatFloat('#####0.00',DataModule1.qryCRUD.FieldByName('posteprojetadorural').AsFloat);
      edtvlpostlev.Text := FormatFloat('#####0.00',DataModule1.qryCRUD.FieldByName('postelevantado').AsFloat);
      edtvlpostatu.Text := FormatFloat('#####0.00',DataModule1.qryCRUD.FieldByName('posteatualizado').AsFloat);
      edtvltopografia.Text := FormatFloat('#####0.00',DataModule1.qryCRUD.FieldByName('topografia').AsFloat);
      edtvltravessia.Text := FormatFloat('#####0.00',DataModule1.qryCRUD.FieldByName('travessia').AsFloat);
      edtvlincorporacao.Text := FormatFloat('#####0.00',DataModule1.qryCRUD.FieldByName('incorporacao').AsFloat);
      edtvlimpro.Text := FormatFloat('#####0.00',DataModule1.qryCRUD.FieldByName('improcedente').AsFloat);
      edtvldeslocamento.Text := FormatFloat('#####0.00',DataModule1.qryCRUD.FieldByName('deslocamento').AsFloat);
      edtvloutros.Text := FormatFloat('#####0.00',DataModule1.qryCRUD.FieldByName('outros').AsFloat);
      edtlevRural.Text := FormatFloat('#####0.00',DataModule1.qryCRUD.FieldByName('levantamento').AsFloat);
   end;

  {Aba Rural}
 

end;

procedure TfrmCadastrarConfig.edtatutopExit(Sender: TObject);
var
num,num2,num3,num4:Real;
begin
    num:= StrToFloatDef(edtcampotop.Text,0);
    num2:=StrToFloatDef(edtprojtop.Text,0);
    num3:=StrToFloatDef(edtatutop.Text,0);
    num4:=StrToFloatDef(edtTopografia.Text,0);
    edttottop.Text:=FloatToStr(Trunc(num+num2+num3+num4));
end;

procedure TfrmCadastrarConfig.edtcampotopExit(Sender: TObject);
var
num,num2,num3,num4:Real;
begin
    num:= StrToFloatDef(edtcampotop.Text,0);
    num2:=StrToFloatDef(edtprojtop.Text,0);
    num3:=StrToFloatDef(edtatutop.Text,0);
    num4:=StrToFloatDef(edtTopografia.Text,0);
    edttottop.Text:=FloatToStr(Trunc(num+num2+num3+num4));
end;

procedure TfrmCadastrarConfig.edtCodAcessoKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
  begin
    if trim(edtCodAcesso.text)='' then
    begin
      if FrmConsFuncionario = nil then
      Application.CreateForm(TFrmConsFuncionario,FrmConsFuncionario);
      FrmConsFuncionario.Tag :=9;
      FrmConsFuncionario.ShowModal;
    end
    else
    begin
      sqlstr:='select u.iduser,u.nome as nome_razaosocial,u.login, os.* from uccaduser u left join os_engenharia_acesso_rural os on (u.iduser= os.cod_usuario) where u.login='+Trim(edtCodAcesso.Text);
      if not ConsultaSqlFd(datamodule1.Query01,sqlstr)  then
      begin
        SemRegistros;
        if FrmConsFuncionario = nil then
        Application.CreateForm(TFrmConsFuncionario,FrmConsFuncionario);
        FrmConsFuncionario.Tag :=9;
        FrmConsFuncionario.ShowModal;
      end
      else
      begin
        FidFuncionario       := datamodule1.Query01.FieldByName('cod_usuario').AsInteger;
        montarObjetosUrbanoRural(datamodule1.Query01);
      end;
    end;
  end;
end;

procedure TfrmCadastrarConfig.edtcodtecnicoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if trim(edtcodtecnico.text)='' then
    begin
      if FrmConsFuncionario = nil then
      Application.CreateForm(TFrmConsFuncionario,FrmConsFuncionario);
      FrmConsFuncionario.Tag :=5;
      FrmConsFuncionario.ShowModal;
    end
    else
    begin
      sqlstr:='select u.iduser as id,u.nome as nome_razaosocial ,u.login,os.* from uccaduser u left join os_engenharia_acesso os on (u.iduser= os.cod_usuario) where u.login='+edtcodtecnico.Text;
      if not ConsultaSqlFd(datamodule1.Query01,sqlstr) then
      begin
        SemRegistros;
        if FrmConsFuncionario = nil then
        Application.CreateForm(TFrmConsFuncionario,FrmConsFuncionario);
        FrmConsFuncionario.Tag :=5;
        FrmConsFuncionario.ShowModal;
      end
      else
      begin
        FidFuncionario       := datamodule1.Query01.FieldByName('cod_usuario').AsInteger;
        montarObjetosUrbano(DataModule1.query01);
      end;
    end;
  end;
end;

procedure TfrmCadastrarConfig.edtCodUserKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
  begin
    if trim(edtCodUser.text)='' then
    begin
      if FrmConsFuncionario = nil then
      Application.CreateForm(TFrmConsFuncionario,FrmConsFuncionario);
      FrmConsFuncionario.Tag :=17;
      FrmConsFuncionario.ShowModal;
    end
    else
    begin
      sqlstr:='select u.iduser,u.nome as nome_razaosocial,u.login, os.* from uccaduser u left join os_engenharia_acesso_rural os on (u.iduser= os.cod_usuario) where u.login='+Trim(edtCodUser.Text);
      if not ConsultaSqlFd(datamodule1.Query01,sqlstr) then
      begin
        SemRegistros;
        if FrmConsFuncionario = nil then
        Application.CreateForm(TFrmConsFuncionario,FrmConsFuncionario);
        FrmConsFuncionario.Tag :=17;
        FrmConsFuncionario.ShowModal;
      end
      else
      begin
        FidFuncionario       := datamodule1.Query01.FieldByName('cod_usuario').AsInteger;
        //montarObjetosUrbanoRural(datamodule1.Query01);
      end;
    end;
  end;
end;

procedure TfrmCadastrarConfig.edtdiaslvatuExit(Sender: TObject);
var
num,num2,num3:Real;
begin
    num:= StrToFloatDef(edtdiaslvcampo.Text,0);
    num2:=StrToFloatDef(edtdiaslvatu.Text,0);
    num3:=StrToFloatDef(edtdiaslvpro.Text,0);
    edttotaldiascomlev.Text:=FloatToStr(Trunc(num+num2+num3));
end;

procedure TfrmCadastrarConfig.edtdiaslvcampoExit(Sender: TObject);
var
num,num2,num3:Real;
begin
    num:= StrToFloatDef(edtdiaslvcampo.Text,0);
    num2:=StrToFloatDef(edtdiaslvatu.Text,0);
    num3:=StrToFloatDef(edtdiaslvpro.Text,0);
    edttotaldiascomlev.Text:=FloatToStr(Trunc(num+num2+num3));
end;

procedure TfrmCadastrarConfig.edtdiaslvproExit(Sender: TObject);
var
num,num2,num3:Real;
begin
    num:= StrToFloatDef(edtdiaslvcampo.Text,0);
    num2:=StrToFloatDef(edtdiaslvatu.Text,0);
    num3:=StrToFloatDef(edtdiaslvpro.Text,0);
    edttotaldiascomlev.Text:=FloatToStr(Trunc(num+num2+num3));
end;

procedure TfrmCadastrarConfig.edtdiassemlvatuExit(Sender: TObject);
var
num,num2,num3:Real;
begin
    num:= StrToFloatDef(edtdiassemlvcampo.Text,0);
    num2:=StrToFloatDef(edtdiassemlvatu.Text,0);
    num3:=StrToFloatDef(edtdiassemlvpro.Text,0);
    edttotaldiassemlev.Text:=FloatToStr(Trunc(num+num2+num3));
end;

procedure TfrmCadastrarConfig.edtdiassemlvcampoExit(Sender: TObject);
var
num,num2,num3:Real;
begin
    num:= StrToFloatDef(edtdiassemlvcampo.Text,0);
    num2:=StrToFloatDef(edtdiassemlvatu.Text,0);
    num3:=StrToFloatDef(edtdiassemlvpro.Text,0);
    edttotaldiassemlev.Text:=FloatToStr(Trunc(num+num2+num3));
end;

procedure TfrmCadastrarConfig.edtdiassemlvproExit(Sender: TObject);
var
num,num2,num3:Real;
begin
    num:= StrToFloatDef(edtdiassemlvcampo.Text,0);
    num2:=StrToFloatDef(edtdiassemlvatu.Text,0);
    num3:=StrToFloatDef(edtdiassemlvpro.Text,0);
    edttotaldiassemlev.Text:=FloatToStr(Trunc(num+num2+num3));
end;

procedure TfrmCadastrarConfig.edtprojtopExit(Sender: TObject);
var
num,num2,num3,num4:Real;
begin
    num:= StrToFloatDef(edtcampotop.Text,0);
    num2:=StrToFloatDef(edtprojtop.Text,0);
    num3:=StrToFloatDef(edtatutop.Text,0);
    num4:=StrToFloatDef(edtTopografia.Text,0);
    edttottop.Text:=FloatToStr(Trunc(num+num2+num3+num4));
end;

procedure TfrmCadastrarConfig.edtRuralCampoExit(Sender: TObject);
var
num,num2,num3:Real;
begin
    //num:= StrToFloatDef(edtRuralTopografia.Text,0);
    num2:=StrToFloatDef(edtRuralProjeto.Text,0);
    num3:=StrToFloatDef(edtRuralCampo.Text,0);
    edtRuralTotal.Text:=FloatToStr(Trunc(num+num2+num3));
end;

procedure TfrmCadastrarConfig.edtRuralProjetoExit(Sender: TObject);
var
num,num2,num3:Real;
begin
    //num:= StrToFloatDef(edtRuralTopografia.Text,0);
    num2:=StrToFloatDef(edtRuralProjeto.Text,0);
    num3:=StrToFloatDef(edtRuralCampo.Text,0);
    edtRuralTotal.Text:=FloatToStr(Trunc(num+num2+num3));
end;

procedure TfrmCadastrarConfig.edtRuralTopografiaExit(Sender: TObject);
var
num,num2,num3:Real;
begin
    //num:= StrToFloatDef(edtRuralTopografia.Text,0);
    num2:=StrToFloatDef(edtRuralProjeto.Text,0);
    num3:=StrToFloatDef(edtRuralCampo.Text,0);
    edtRuralTotal.Text:=FloatToStr(Trunc(num+num2+num3));
end;

procedure TfrmCadastrarConfig.edtTopografiaExit(Sender: TObject);
var
num,num2,num3,num4:Real;
begin
    num:= StrToFloatDef(edtcampotop.Text,0);
    num2:=StrToFloatDef(edtprojtop.Text,0);
    num3:=StrToFloatDef(edtatutop.Text,0);
    num4:=StrToFloatDef(edtTopografia.Text,0);
    edttottop.Text:=FloatToStr(Trunc(num+num2+num3+num4));
end;

procedure TfrmCadastrarConfig.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_escape then
    close;

end;

procedure TfrmCadastrarConfig.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then selectnext(activecontrol,true, true);
end;

procedure TfrmCadastrarConfig.FormShow(Sender: TObject);
begin
  CarregarDados;
end;

procedure TfrmCadastrarConfig.montarObjetosUrbano(qry: TFDQuery);
begin
        edtcodtecnico.text  := qry.fieldbyname('login').asstring;
        //FidFuncionario:=       qry.FieldByName('id').AsInteger;
        edtdesctecnico.text := qry.fieldbyname('nome_razaosocial').asstring;
        rgcampo.ItemIndex   := qry.FieldByName('serv_camp').AsInteger;
        rgatu.ItemIndex     := qry.FieldByName('serv_atu').AsInteger;
        rgproj.ItemIndex    := qry.FieldByName('serv_proj').AsInteger;
        rgvalor.ItemIndex   := qry.FieldByName('serv_vl').AsInteger;
        rgacesso.ItemIndex  := qry.FieldByName('serv_ace').AsInteger;
        rgedtvl.ItemIndex   := qry.FieldByName('serv_edt_vl').AsInteger;
        FidConfidAcesso     := qry.FieldByName('id').AsInteger;
end;

procedure TfrmCadastrarConfig.montarObjetosUrbanoRural(qry: TFDQuery);
begin
        //edtcodtecnico.text  := qry.fieldbyname('login').asstring;
        FidFuncionario:=     qry.FieldByName('id').AsInteger;
        edtDescAcesso.text := qry.fieldbyname('nome_razaosocial').asstring;
        rgRuralCampo.ItemIndex   := qry.FieldByName('serv_camp').AsInteger;
        rgRuralTopografia.ItemIndex     := qry.FieldByName('serv_topografia').AsInteger;
        rgRuralProjeto.ItemIndex    := qry.FieldByName('serv_proj').AsInteger;
        rgRuralValores.ItemIndex   := qry.FieldByName('serv_vl').AsInteger;
        rgRuralAcesso.ItemIndex  := qry.FieldByName('serv_ace').AsInteger;
        rgRuralEdValores.ItemIndex   := qry.FieldByName('serv_edt_vl').AsInteger;
        FidConfidAcessoRural     :=qry.FieldByName('id').AsInteger;
end;

end.

