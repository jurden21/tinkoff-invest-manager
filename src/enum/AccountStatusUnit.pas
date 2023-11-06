unit AccountStatusUnit;

interface

uses
    System.SysUtils;

type
    TAccountStatus = (ACCOUNT_STATUS_UNKNOWN, ACCOUNT_STATUS_CLOSED, ACCOUNT_STATUS_OPEN);

    TAccountStatusHelper = record helper for TAccountStatus
    const
        Names: array [TAccountStatus] of String = (
            'ACCOUNT_STATUS_UNKNOWN', 'ACCOUNT_STATUS_CLOSED', 'ACCOUNT_STATUS_OPEN');
        function Name: string;
        class function ValueByName(Name: String): TAccountStatus; static;
    end;

implementation

{ TAccountStatusHelper }

function TAccountStatusHelper.Name: string;
begin
    Result := Names[Self];
end;

class function TAccountStatusHelper.ValueByName(Name: String): TAccountStatus;
var
    AccountStatus: TAccountStatus;
begin
    Result := ACCOUNT_STATUS_UNKNOWN;
    for AccountStatus := Low(TAccountStatus) to High(TAccountStatus) do
        if (Names[AccountStatus] = Name)
        then Result := AccountStatus;
end;

end.
