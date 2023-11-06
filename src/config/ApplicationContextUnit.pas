unit ApplicationContextUnit;

interface

type
    TApplicationContext = class
    private
        FAuthorizationToken: String;
    public
        constructor Create;
        function GetAuthorization: String;
    end;

implementation

uses
    IniUtilUnit;

{ TApplicationContext }

constructor TApplicationContext.Create;
begin
    FAuthorizationToken := TIniUtil.ReadString('Tinkoff', 'Key');
end;

function TApplicationContext.GetAuthorization: String;
begin
    Result := 'Bearer ' + FAuthorizationToken;
end;

end.
