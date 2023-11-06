unit MainFormUnit;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
    Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, REST.Types, REST.Client, Data.Bind.Components,
    Data.Bind.ObjectScope,

    ApplicationContextUnit,

    cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxButtons, cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo;

type
    TForm1 = class(TForm)
        cxButton1: TcxButton;
        cxMemo1: TcxMemo;
        cxButton2: TcxButton;
        cxButton3: TcxButton;
        procedure cxButton1Click(Sender: TObject);
        procedure cxButton2Click(Sender: TObject);
        procedure cxButton3Click(Sender: TObject);
        procedure FormCreate(Sender: TObject);
        procedure FormDestroy(Sender: TObject);
    private
        ApplicationContext: TApplicationContext;
    public
        { Public declarations }
    end;

var
    Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
    ApplicationContext := TApplicationContext.Create;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
    ApplicationContext.Free;
end;

procedure TForm1.cxButton1Click(Sender: TObject);
var
    RESTClient: TRESTClient;
    RESTRequest: TRESTRequest;
    RESTResponse: TRESTResponse;
begin
    RESTClient := TRESTClient.Create(nil);
    RESTRequest := TRESTRequest.Create(nil);
    RESTResponse := TRESTResponse.Create(nil);
    try
        RESTRequest.Client := RESTClient;
        RESTRequest.Response := RESTResponse;
        RESTRequest.Method := TRESTRequestMethod.rmPOST;
        RESTRequest.Params.AddItem('Authorization', ApplicationContext.GetAuthorization, pkHTTPHEADER, [poDoNotEncode],
            TRESTContentType.ctAPPLICATION_JSON);
        RESTRequest.Params.AddItem('Contect-Type', 'application/json', pkHTTPHEADER, [poDoNotEncode],
            TRESTContentType.ctAPPLICATION_JSON);
        RESTClient.BaseURL :=
            'https://invest-public-api.tinkoff.ru/rest/tinkoff.public.invest.api.contract.v1.UsersService/GetInfo';
        RESTRequest.AddBody('{}');
        RESTRequest.Execute;

        cxMemo1.Text := RESTResponse.Headers.Text;
        cxMemo1.Lines.Add('========================================');
        cxMemo1.Lines.Add(RESTResponse.Content);
    finally
        RESTResponse.Free;
        RESTRequest.Free;
        RESTClient.Free;
    end;
end;

procedure TForm1.cxButton2Click(Sender: TObject);
var
    RESTClient: TRESTClient;
    RESTRequest: TRESTRequest;
    RESTResponse: TRESTResponse;
begin
    RESTClient := TRESTClient.Create(nil);
    RESTRequest := TRESTRequest.Create(nil);
    RESTResponse := TRESTResponse.Create(nil);
    try
        RESTRequest.Client := RESTClient;
        RESTRequest.Response := RESTResponse;
        RESTRequest.Method := TRESTRequestMethod.rmPOST;
        RESTRequest.Params.AddItem('Authorization', ApplicationContext.GetAuthorization, pkHTTPHEADER, [poDoNotEncode],
            TRESTContentType.ctAPPLICATION_JSON);
        RESTRequest.Params.AddItem('Contect-Type', 'application/json', pkHTTPHEADER, [poDoNotEncode],
            TRESTContentType.ctAPPLICATION_JSON);
        RESTClient.BaseURL :=
            'https://invest-public-api.tinkoff.ru/rest/tinkoff.public.invest.api.contract.v1.UsersService/GetAccounts';
        RESTRequest.AddBody('{}');
        RESTRequest.Execute;

        cxMemo1.Text := RESTResponse.Headers.Text;
        cxMemo1.Lines.Add('========================================');
        cxMemo1.Lines.Add(RESTResponse.Content);
    finally
        RESTResponse.Free;
        RESTRequest.Free;
        RESTClient.Free;
    end;
end;

procedure TForm1.cxButton3Click(Sender: TObject);
var
    RESTClient: TRESTClient;
    RESTRequest: TRESTRequest;
    RESTResponse: TRESTResponse;
begin
    RESTClient := TRESTClient.Create(nil);
    RESTRequest := TRESTRequest.Create(nil);
    RESTResponse := TRESTResponse.Create(nil);
    try
        RESTRequest.Client := RESTClient;
        RESTRequest.Response := RESTResponse;
        RESTRequest.Method := TRESTRequestMethod.rmPOST;
        RESTRequest.Params.AddItem('Authorization', ApplicationContext.GetAuthorization, pkHTTPHEADER, [poDoNotEncode],
            TRESTContentType.ctAPPLICATION_JSON);
        RESTRequest.Params.AddItem('Contect-Type', 'application/json', pkHTTPHEADER, [poDoNotEncode],
            TRESTContentType.ctAPPLICATION_JSON);
        RESTClient.BaseURL :=
            'https://invest-public-api.tinkoff.ru/rest/tinkoff.public.invest.api.contract.v1.UsersService/GetUserTariff';
        RESTRequest.AddBody('{}');
        RESTRequest.Execute;

        cxMemo1.Text := RESTResponse.Headers.Text;
        cxMemo1.Lines.Add('========================================');
        cxMemo1.Lines.Add(RESTResponse.Content);
    finally
        RESTResponse.Free;
        RESTRequest.Free;
        RESTClient.Free;
    end;
end;

end.
