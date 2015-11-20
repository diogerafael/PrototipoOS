unit URelMedicoesRural;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  URelPadrao, cxControls,
  cxContainer, cxEdit, Vcl.ComCtrls,













  Vcl.Dialogs,
  Vcl.StdCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  Vcl.ExtCtrls, Vcl.Menus, RDprint, Vcl.Buttons, PngSpeedButton,
  Vcl.Controls, Vcl.Imaging.pngimage, System.Classes, Vcl.Samples.Gauges,
  FireDAC.Comp.Client, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TFrmRelMedicoesRural = class(TFrmRelPadrao)
    grp1: TGroupBox;
    rgTpPeriodo: TRadioGroup;
    grp2: TGroupBox;
    lbl3: TLabel;
    lbl2: TLabel;
    edtini: TcxDateEdit;
    edtfim: TcxDateEdit;
    GroupBox1: TGroupBox;
    chkcadastrada: TCheckBox;
    chkLevantamento: TCheckBox;
    chkImprocedente: TCheckBox;
    chksoltopografia: TCheckBox;
    chkTopografia: TCheckBox;
    chkprojeto: TCheckBox;
    chkConcluido: TCheckBox;
    chkTodos: TCheckBox;
    chkDevolvida: TCheckBox;
    SaveDialog1: TSaveDialog;
    rgTipo: TRadioGroup;
    procedure btnrelatorioClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Excel:Variant;
    procedure  MontarMedicao(qry: Tfdquery);
    function somarValoresRelExcel(qry: TFDQuery): Currency;
  public
    { Public declarations }
  end;

var
  FrmRelMedicoesRural: TFrmRelMedicoesRural;

implementation

uses
  System.Win.ComObj, DataModule, Vcl.Forms;

{$R *.dfm}

procedure TFrmRelMedicoesRural.btnrelatorioClick(Sender: TObject);
var
qryTemp:TFDQuery;
  _CaminhoRelatorio: string;
begin
  inherited;
  //validacoes
  if edtini.Date>edtfim.Date then
  begin
    Application.MessageBox('Data Inicial N�o Pode ser Superior a Data Final !',
      'Aten��o', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  try
    try
      //criando objeto qry
      qryTemp:=TFDQuery.Create(nil);
      qryTemp.Connection:=DataModule1.ConMySql;

    sqlstr:=' SELECT os.id,os.numero_os,n.descricao as nota, '+
            ' os.dt_chegada_geral,os.dt_conclusao, os.qtd_outros,os.observacao_geral,os.vl_levantamento,os.qtd_levantamento,'+
            ' os.qtd_deslocamento,os.qtd_improcedente,'+
            ' os.qtd_incorporacao,os.qtd_travessia,'+
            ' os.qtd_topografia,os.qtd_post_atu,'+
            ' os.qtd_post_lev,os.qtd_post_proj_rur,'+
            ' os.qtd_post_proj_urb,os.vl_outros,'+
            ' os.vl_deslocamento,os.vl_improcedente,'+
            ' os.vl_post_proj_urb,os.vl_post_porj_rur,'+
            ' os.vl_post_lev,os.vl_post_atu,'+
            ' os.vl_topografia,os.vl_travessia,'+
            ' os.vl_incorporacao,os.id_os_vinculacao, '+
            ' (os.vl_outros+os.vl_deslocamento+'+
            ' os.vl_improcedente+os.vl_post_proj_urb+os.vl_post_porj_rur+os.vl_post_lev+os.vl_post_atu+'+
            ' os.vl_topografia+os.vl_travessia+os.vl_incorporacao+os.vl_levantamento) as valorTotal '+
            ' from os_engenharia_projeto_rural os INNER JOIN os_engenharia_notas_rural n on (n.id_os_projeto=os.id) '+
            ' where ';
            //periodo
            case rgTpPeriodo.ItemIndex of
                   0:begin
                      sqlstr:=sqlstr+'  os.dt_chegada_geral between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                   end;
                  1:begin
                      sqlstr:=sqlstr+'  os.dt_liberacao_tec between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                    end;
                   2:begin
                      sqlstr:=sqlstr+'  os.dt_chegada_tec between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                     end;
                   3:begin
                      sqlstr:=sqlstr+'  os.dt_envio_topografia between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                    end;
                   4:begin
                      sqlstr:=sqlstr+'  os.dt_chegada_topografia between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                    end;
                   5:begin
                      sqlstr:=sqlstr+'  os.dt_envio_projeto between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                    end;
                   6:begin
                      sqlstr:=sqlstr+'  os.dt_chegada_projeto between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                    end;
                   7:begin
                      sqlstr:=sqlstr+'  os.dt_devolvida between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                    end;
                  8:begin
                      sqlstr:=sqlstr+'  os.dt_conclusao between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                    end;
                end;
            //verifiando se eh ativo ou passivo
            case rgTipo.ItemIndex of

              0:begin
                 sqlstr:=sqlstr+' and os.ativo_passivo=0';
                end;
              1:begin
                  sqlstr:=sqlstr+' and os.ativo_passivo=1';
                end;
            end;

            if ConsultaSqlFd(qryTemp,sqlstr)then
            begin
              MontarMedicao(qryTemp);
            end
            else
            begin
               Application.MessageBox('N�o Foram Encontradas Informa��es !',
                                      'Aten��o', MB_OK+MB_ICONINFORMATION);
               Exit;
            end;

            //salvando relatorio excel
            if SaveDialog1.Execute then
            begin
              _CaminhoRelatorio:=SaveDialog1.FileName;
              Excel.WorkBooks[1].SaveAs(_CaminhoRelatorio+'.xls');
              Excel.WorkBooks[1].Close;
              Application.MessageBox(PChar('Arquivo criado com sucesso!!!' + #13 +_CaminhoRelatorio+'.xls'), PChar(Application.Title), MB_OK + MB_ICONINFORMATION);
            end;

    except on E: Exception do
      begin
        CriarLog(Self,E,'Relatorio Medicoes Rural');
      Exit;
      end;
    end;
  finally
    qryTemp.Free;
  end;
end;

procedure TFrmRelMedicoesRural.FormShow(Sender: TObject);
begin
  inherited;
  edtini.Text:=funcRetornaPrimeiroDiaMes;
  edtfim.Text:=funcRetornaUltimoDiaMes;
end;

procedure TFrmRelMedicoesRural.MontarMedicao(qry: Tfdquery);
var
  qryTemp: tfdquery;
  notas: String;
  numeroos: String;
begin
  try
    try
        Excel := CreateOleObject('Excel.Application');
        Excel.Visible :=False;
        Excel.Workbooks.Add;
        Excel.WorkBooks[1].Sheets[1].Cells[1,5]:='Relat�rio Medi��es Detalhado';

        Excel.WorkBooks[1].Sheets[1].Cells[2,1]:='NOTA';
        Excel.WorkBooks[1].Sheets[1].Cells[2,2]:='O.S';
        Excel.WorkBooks[1].Sheets[1].Cells[2,3]:='DATA DE ENVIO';
        Excel.WorkBooks[1].Sheets[1].Cells[2,4]:='QTD PLANTA BAIXA';
        Excel.WorkBooks[1].Sheets[1].Cells[2,5]:='QTD PROJ. ALT';
        Excel.WorkBooks[1].Sheets[1].Cells[2,6]:='QTD LEVANTAMENTO';
       // Excel.WorkBooks[1].Sheets[1].Cells[2,7]:='QTD POSTE ATUALIZADO';
        Excel.WorkBooks[1].Sheets[1].Cells[2,7]:='TOPOGRAFIA';
        Excel.WorkBooks[1].Sheets[1].Cells[2,8]:='TRAVESSIA';
        Excel.WorkBooks[1].Sheets[1].Cells[2,9]:='INCORPORA��O';
      //  Excel.WorkBooks[1].Sheets[1].Cells[2,11]:='IMPROCEDENTE';
        Excel.WorkBooks[1].Sheets[1].Cells[2,10]:='DESLOCAMENTO';
        Excel.WorkBooks[1].Sheets[1].Cells[2,11]:='OUTROS';
       // Excel.Workbooks[1].sheets[1].cells[2,12]:='OBSERVA��O';
        Excel.Workbooks[1].sheets[1].cells[2,12]:='LEVANTAMENTO';
        Excel.WorkBooks[1].Sheets[1].Cells[2,13]:='TOTALIZA��O';

        g1.Visible := False;
        g1.MaxValue:= DataModule1.qryCRUD.RecordCount;
        g1.Progress:=0;
        Linha:=3;
        qry.First;
        g1.Visible := True;
        while(not qry.Eof)do
        begin
        //se for filha  avanca
          if (Trim(qry.FieldByName('id_os_vinculacao').AsString)<>'') and  (qry.FieldByName('id_os_vinculacao').AsInteger<>0) then
          begin
            qry.Next;
            Break;
          end;

          qryTemp:=TFDQuery.Create(nil);
          qryTemp.Connection:=DataModule1.ConMySql;
          qryTemp.SQL.Add('select * from os_engenharia_notas where id_os_projeto='+qry.FieldByName('id').AsString);
          qryTemp.Open();
          qryTemp.First;

          while not qry.Eof do
          begin
            notas :=qryTemp.FieldByName('descricao').AsString;
            qryTemp.Next;
            if not qryTemp.Eof then
              notas :=notas+'-';
          end;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,1]:=notas;

          //Excel.WorkBooks[1].Sheets[1].Cells[Linha,1]:=qry.FieldByName('nota').AsString;;
          numeroos:=Trim(qry.FieldByName('numero_os').AsString);
          qryTemp.Close;
          qryTemp.SQL.Clear;
          qryTemp.SQL.Add('select numero_os,id,id_os_vinculacao from os_engenharia_projeto where id_os_vinculacao=+'+qry.FieldByName('id').AsString);
          qryTemp.Open();
          qryTemp.First;
          while not qryTemp.Eof do
          begin
            numeroos:=numeroos+'-'+qryTemp.FieldByName('numero_os').AsString;
            qryTemp.Next;
          end;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,2]:=numeroos;

          //Excel.WorkBooks[1].Sheets[1].Cells[Linha,2]:=Trim(qry.FieldByName('numero_os').AsString);
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,3]:=qry.FieldByName('dt_conclusao').AsString;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,4]:=qry.FieldByName('qtd_post_proj_urb').AsString;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,5]:=qry.FieldByName('qtd_post_proj_rur').AsString;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,6]:=qry.FieldByName('qtd_levantamento').AsString;
          // Excel.WorkBooks[1].Sheets[1].Cells[Linha,7]:=qry.FieldByName('qtd_post_atu').AsString;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,7]:=qry.FieldByName('qtd_topografia').AsString;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,8]:=qry.FieldByName('qtd_travessia').AsString;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,9]:=qry.FieldByName('qtd_incorporacao').AsString;
          //  Excel.WorkBooks[1].Sheets[1].Cells[Linha,11]:=qry.FieldByName('qtd_improcedente').AsString;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,10]:=qry.FieldByName('qtd_deslocamento').AsString;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,11]:=qry.FieldByName('qtd_outros').AsString;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,12]:=qry.FieldByName('qtd_levantamento').AsString;
          //Excel.WorkBooks[1].Sheets[1].Cells[Linha,13]:=qry.FieldByName('observacao_geral').AsString;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,13]:=somarValoresRelExcel(qry);

          qry.Next;
          g1.Progress:=g1.Progress+1;
          Inc(Linha);
        end;
    except on E: Exception do
      Application.MessageBox('Aplica��o se Comportou de Maneira Inesperada !',
        'Aten��o', MB_OK + MB_ICONWARNING);
    end;
  finally
    FreeAndNil(qryTemp);
  end;
end;

function TFrmRelMedicoesRural.somarValoresRelExcel(qry: TFDQuery): Currency;
begin
  Result:=(qry.FieldByName('vl_post_proj_urb').AsCurrency+qry.FieldByName('vl_post_porj_rur').AsCurrency+
  qry.FieldByName('vl_post_lev').AsCurrency+qry.FieldByName('vl_post_atu').AsCurrency+
  qry.FieldByName('vl_topografia').AsCurrency+qry.FieldByName('vl_travessia').AsCurrency+qry.FieldByName('vl_incorporacao').AsCurrency+
  qry.FieldByName('vl_improcedente').AsCurrency+qry.FieldByName('vl_deslocamento').AsCurrency+qry.FieldByName('vl_outros').AsCurrency+qry.FieldByName('vl_levantamento').AsFloat);
end;
end.
