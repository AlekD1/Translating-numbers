unit Unit2;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, JPEG;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    ProductName: TLabel;
    Version: TLabel;
    OKButton: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    img1: TImage;
    lbl3: TLabel;
    procedure OKButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

{$R *.dfm}

procedure TAboutBox.OKButtonClick(Sender: TObject);
begin
  AboutBox.Close;
end;

end.
 
