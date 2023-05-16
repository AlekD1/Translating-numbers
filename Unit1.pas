unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus;

type
  TForm1 = class(TForm)
    grp1: TGroupBox;
    edt1: TEdit;
    edt2: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    mm1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    grp2: TGroupBox;
    grp3: TGroupBox;
    rb1: TRadioButton;
    rb2: TRadioButton;
    rb3: TRadioButton;
    rb4: TRadioButton;
    rb5: TRadioButton;
    rb6: TRadioButton;
    rb7: TRadioButton;
    rb8: TRadioButton;
    dlgSave1: TSaveDialog;
    Memo1: TMemo;
    Button1: TButton;
    N5: TMenuItem;
    Button2: TButton;
    RadioGroup1: TRadioGroup;
    Memo3: TMemo;
    Button3: TButton;
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure rb1Click(Sender: TObject);
    procedure rb2Click(Sender: TObject);
    procedure rb3Click(Sender: TObject);
    procedure rb4Click(Sender: TObject);
    procedure rb5Click(Sender: TObject);
    procedure rb6Click(Sender: TObject);
    procedure rb7Click(Sender: TObject);
    procedure rb8Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure edt1KeyPress(Sender: TObject; var Key: Char);
    procedure btn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    PROCEDURE BIN_to_OCT(const n:string;Sender: TObject);
    PROCEDURE P_to_DEC(const n:string;p:byte;Sender: TObject);
    PROCEDURE BIN_to_HEX(const n:string;Sender: TObject);
    PROCEDURE OCT_to_BIN(const n:string;Sender: TObject);
    PROCEDURE OCT_to_HEX(const st:string;Sender: TObject);
    PROCEDURE DEC_to_P(const st:string;p:byte;Sender: TObject);
    PROCEDURE HEX_to_BIN(const n:string;Sender: TObject);
    PROCEDURE HEX_to_OCT(const st:string;Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  const
cod:array[0..15]of char=
 ('0','1','2','3','4','5','6','7','8','9','A','B','C','D',
  'E','F');
cod2:array[0..7]of string[3]=
 ('000','001','010','011','100','101','110','111');
cod3:array[0..15]of string[4]=
 ('0000','0001','0010','0011','0100','0101','0110','0111',
  '1000','1001','1010','1011','1100','1101','1110','1111');
var
  Form1: TForm1;
  i,j:Integer;
  k:integer;
  tmp4:string;
  flag_clear:boolean;
  His:array[1..100] of string;
  f,c,l,off,count,t,p:integer;
  f2:TextFile;

implementation

uses Unit2, Unit3, Unit4;

{$R *.dfm}



procedure TForm1.N3Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
AboutBox.Show;
end;


procedure TForm1.rb1Click(Sender: TObject);
begin
rb5.Enabled:=false;
rb6.Enabled:=true;
rb7.Enabled:=true;
rb8.Enabled:=true;
rb6.Checked:=true;
edt1.SetFocus;
edt1.Text:='';
edt2.Text:='';
end;

procedure TForm1.rb2Click(Sender: TObject);
begin
rb5.Enabled:=true;
rb6.Enabled:=false;
rb7.Enabled:=true;
rb8.Enabled:=true;
rb5.Checked:=true;
edt1.SetFocus;
edt1.Text:='';
edt2.Text:='';
end;

procedure TForm1.rb3Click(Sender: TObject);
begin
rb5.Enabled:=true;
rb6.Enabled:=true;
rb7.Enabled:=false;
rb8.Enabled:=true;
rb5.Checked:=true;
edt1.SetFocus;
edt1.Text:='';
edt2.Text:='';
end;

procedure TForm1.rb4Click(Sender: TObject);
begin
rb5.Enabled:=true;
rb6.Enabled:=true;
rb7.Enabled:=true;
rb8.Enabled:=false;
rb5.Checked:=true;
edt1.SetFocus;
edt1.Text:='';
edt2.Text:='';
end;

procedure TForm1.rb5Click(Sender: TObject);
begin
edt1.SetFocus;
edt1.Text:='';
edt2.Text:='';
end;

procedure TForm1.rb6Click(Sender: TObject);
begin
edt1.SetFocus;
edt1.Text:='';
edt2.Text:='';
end;

procedure TForm1.rb7Click(Sender: TObject);
begin
edt1.SetFocus;
edt1.Text:='';
edt2.Text:='';
end;

procedure TForm1.rb8Click(Sender: TObject);
begin
edt1.SetFocus;
edt1.Text:='';
edt2.Text:='';
end;

procedure TForm1.btn1Click(Sender: TObject);
 var f1,f2:TextFile;
   v:TStringList;
i1,i2,i3,d,s:string;
begin
if k=1 then
   begin
   Form1.Height:=Form1.Height-290;
   k:=0;
   end;
  Memo1.Visible:=false;
  Memo1.Lines.Clear;
  l:=0;
  off:=0;
  d:='----------------------------------------';
 if rb1.checked and rb6.Checked then
 begin
 i1:='Перевод из '+rb1.Caption+' в '+rb6.Caption+' систему счисления';
 if edt1.text='' then
 begin
 l:=l+1;
 Application.MessageBox('Введите число для перевода','Перевод чисел',MB_ok);
 end else BIN_to_OCT(edt1.Text,Sender);
 end else
 if rb1.checked and rb7.Checked then
 begin
    i1:='Перевод из '+rb1.Caption+' в '+rb7.Caption+' систему счисления';
 if edt1.text='' then begin
 l:=l+1;
 Application.MessageBox('Введите число для перевода','Перевод чисел',MB_ok);
 end else P_to_DEC(edt1.Text,2,Sender);
 end else
 if rb1.Checked and rb8.Checked then
 begin
    i1:='Перевод из '+rb1.Caption+' в '+rb8.Caption+' систему счисления';
 if edt1.text='' then begin
 l:=l+1;
 Application.MessageBox('Введите число для перевода','Перевод чисел',MB_ok);
 end else BIN_to_HEX(edt1.Text,Sender);
 end else
 if rb2.Checked and rb5.Checked then
 begin
    i1:='Перевод из '+rb2.Caption+' в '+rb5.Caption +' систему счисления';
 if edt1.text='' then begin
 l:=l+1;
 Application.MessageBox('Введите число для перевода','Перевод чисел',MB_ok);
 end else OCT_to_BIN(edt1.Text,Sender);
 end else
 if rb2.checked and rb7.Checked then
 begin
    i1:='Перевод из '+rb2.Caption+' в '+rb7.Caption+' систему счисления';
 if edt1.text='' then begin
 l:=l+1;
 Application.MessageBox('Введите число для перевода','Перевод чисел',MB_ok);
 end else P_to_DEC(edt1.Text,8,Sender);
 end else
 if rb2.Checked and rb8.Checked then
 begin
    i1:='Перевод из '+rb2.Caption+' в '+rb8.Caption+' систему счисления';
 if edt1.text='' then begin
 l:=l+1;
 Application.MessageBox('Введите число для перевода','Перевод чисел',MB_ok);
 end else OCT_to_HEX(edt1.Text,Sender);
 end else
 if rb3.Checked and rb5.Checked then
 begin
    i1:='Перевод из '+rb3.Caption+' в '+rb5.Caption+' систему счисления';
 if edt1.text='' then begin
 l:=l+1;
 Application.MessageBox('Введите число для перевода','Перевод чисел',MB_ok);
 end else DEC_to_P(edt1.Text,2,Sender);
 end else
 if rb3.Checked and rb6.Checked then
 begin
    i1:='Перевод из '+rb3.Caption+' в '+rb6.Caption+' систему счисления';
 if edt1.text='' then begin
 l:=l+1;
 Application.MessageBox('Введите число для перевода','Перевод чисел',MB_ok);
 end else DEC_to_P(edt1.Text,8,Sender);
 end else
 if rb3.Checked and rb8.Checked then
 begin
    i1:='Перевод из '+rb3.Caption+' в '+rb8.Caption+' систему счисления';
if edt1.text='' then begin
 l:=l+1;
 Application.MessageBox('Введите число для перевода','Перевод чисел',MB_ok);
 end else  DEC_to_P(edt1.Text,16,Sender);
 end else
 if rb4.Checked and rb5.Checked then
 begin
    i1:='Перевод из '+rb4.Caption+' в '+rb5.Caption+' систему счисления';
 if edt1.text='' then begin
 l:=l+1;
 Application.MessageBox('Введите число для перевода','Перевод чисел',MB_ok);
 end else HEX_to_BIN(edt1.Text,Sender);
 end else
 if rb4.Checked and rb6.Checked then
 begin
    i1:='Перевод из '+rb4.Caption+' в '+rb6.Caption+' систему счисления';
if edt1.text='' then begin
 l:=l+1;
 Application.MessageBox('Введите число для перевода','Перевод чисел',MB_ok);
 end else  HEX_to_OCT(edt1.Text,Sender);
 end else
 if rb4.checked and rb7.Checked then
 begin
    i1:='Перевод из '+rb4.Caption+' в '+rb7.Caption+' систему счисления';
 if edt1.text='' then begin
 l:=l+1;
 Application.MessageBox('Введите число для перевода','Перевод чисел',MB_ok);
 end else P_to_DEC(edt1.Text,16,Sender);
 end else
 begin
 Showmessage('Выберите системы счисления');
 exit;
 end;
   AssignFile(f1,'История.txt');
 if FileExists('История.txt') then
 begin
 Append(f1);
 end
  else
  begin
  Rewrite(F1);
  c:=c+1;
  end;
  if l=0 then
  begin
 if c=0 then
 begin
  Writeln(f1,d);
  c:=1;
  end;
  i2:='Число: '+edt1.Text;
  i3:='Результат: '+edt2.Text;
  Writeln(f1,i1);
  Writeln(f1,i2);
  Writeln(f1,i3);
  Writeln(f1,d);
  end;
  edt2.Enabled:=true;
  memo3.Height:=200;
   N5.enabled:=true;
   RadioGroup1.Height:=240;
    Button3.Visible:=true;
  CloseFile(f1);
   Memo3.Lines.Clear;
   Memo3.Lines.LoadFromFile('История.txt');
  Memo3.Lines.SaveToFile('История.txt');
end;


procedure TForm1.btn3Click(Sender: TObject);
begin
rb1.Checked:=false;
rb2.Checked:=false;
rb3.Checked:=false;
rb4.Checked:=false;

rb5.Checked:=false;
rb6.Checked:=false;
rb7.Checked:=false;
rb8.Checked:=false;
rb1.Enabled:=true;
rb2.Enabled:=true;
rb3.Enabled:=true;
rb4.Enabled:=true;
rb5.Enabled:=true;
rb6.Enabled:=true;
rb7.Enabled:=true;
rb8.Enabled:=true;
edt1.Text:='';
edt2.Text:='';
AssignFile(f2,'История.txt');
  rewrite(f2,'История.txt');
  CloseFile(f2);
edt2.Enabled:=false;
Memo1.Lines.Clear;
Memo3.Lines.Clear;
end;

procedure TForm1.edt1KeyPress(Sender: TObject; var Key: Char);
begin
edt2.Text:='';

if rb1.Checked then if key in ['0','1',#8] then else key:=#0 else
if rb2.Checked then if key in ['0'..'7',#8] then else key:=#0 else
if rb3.Checked then if key in ['0'..'9',#8] then else key:=#0 else
if rb4.Checked then if key in ['0'..'9','A','B','C','D','E','F',#8] then else key:=#0 else
end;

PROCEDURE TForm1.BIN_to_OCT(const n:string;Sender: TObject);
var
st1,st2,tmp,tmp2:string;
flag:array[0..7]of boolean;
d,j:byte;
h:integer;
begin
if flag_clear then memo1.Lines.Clear;
memo1.Lines.Add('                           ПЕРЕВОД ЧИСЛА '+edt1.text+#13#10+'                       из 2-й в 8-ую систму счисления');
memo1.Lines.Add('');
memo1.Lines.Add('Для перевода числа из двоичной системы счисления '+
'в восьмеричную систему счисления, необходимо разбить число на тройки цифр, '+
'в случае необходимости следует дополнить число нулями. '+
'Затем заменить полученные группы цифр соответствующими им восьмеричными цифрам.');
memo1.Lines.Add('');
memo1.Lines.Add('Разбиение числа на тройки цифр:');
//Разбивка целой части
st1:=n;
if length(st1) mod 3<>0 then  //добавляем нули ,если надо
   for i:=1 to 3-(length(st1) mod 3) do st1:='0'+st1;
   tmp:='';       //  в tmp часть разделенную пробелами


for i:=1 to length(st1) do
 if i mod 3=0 then tmp:=tmp+st1[i]+' ' else tmp:=tmp+st1[i];
 memo1.Lines.Add(' '+tmp);
 tmp2:='';//ответ
  memo1.Lines.Add('Замена:');
      h:=0;
 for i:=1 to 7 do flag[i]:=false;
for i:=1 to round(length(st1)div 3) do
 begin
  tmp:=copy(st1,(i-1)*3+1,3);
  for j:=0 to 7 do
  if tmp=cod2[j] then
   begin
    d:=j;
    break;
   end;
  if flag[d]=false then
   begin
    flag[d]:=true;
     if h = 0 then
     begin
     if tmp='000' then h:=h+1 else memo1.Lines.Add(tmp+'  на '+inttostr(d));
     end else
     begin
     memo1.Lines.Add(tmp+'  на '+inttostr(d));
     end;
   end;
   if h = 1 then h:=2 else
   begin
  tmp2:=tmp2+inttostr(d);
  end;
end;
  memo1.Lines.Add('');
memo1.Lines.Add('Результат перевода: '+tmp2);
edt2.Text:=tmp2;
His[f]:=edt1.text;
f:=f+1;
His[f]:=edt2.text;
f:=f+1;
end;

PROCEDURE TForm1.P_to_DEC(const n:string;p:byte;Sender: TObject);
var
tmp,ost,tmp2:string;
e,j:integer;
result:longint;
BEGIN
if flag_clear then memo1.Lines.Clear;
tmp:='';
i:=0;
repeat
i:=i+1;
if (n[i]<>',')then tmp:=tmp+n[i];
until (i=length(n));
ost:='';
memo1.Lines.Clear;
memo1.Lines.Add('                              ПЕРЕВОД ЧИСЛА '+edt1.Text+#13#10+'                     ИЗ '+inttostr(p)+'-й В 10-ую СИСТЕМУ СЧИСЕНИЯ');
memo1.Lines.Add('');
memo1.Lines.Add('Необходимо написать разряды символов числа:');
tmp2:='';
for i:=1 to length(tmp) do tmp2:=tmp2+'  '+tmp[i];
tmp2:=tmp2+'     - само число';
memo1.Lines.Add(tmp2);
tmp2:='';
for i:=1 to length(tmp) do tmp2:=tmp2+'  '+inttostr(length(tmp)-i);
if ost<>'' then
 begin
  tmp2:=tmp2+'  ';
  for i:=1 to length(ost) do tmp2:=tmp2+' -'+inttostr(i);
 end;
tmp2:=tmp2+'     - разряды чила';
memo1.Lines.Add(tmp2+#13#10);
memo1.Lines.Add('Перевод числа:'+#13#10);
tmp2:='';
result:=0;
for i:=length(tmp) downto 1 do
 begin
  for j:=0 to 15 do if tmp[i]=cod[j] then
   begin
    e:=j;
    //j:=15;
    break;
   end;

  tmp2:=tmp2+inttostr(e)+' * '+inttostr(p)+'^'+inttostr(length(tmp)-i);
  if i<>1 then tmp2:=tmp2+' + ';
  result:=result+e*round(exp(ln(p)*(length(tmp)-i)));
 end;
tmp:=inttostr(result);
tmp4:=tmp2;
tmp4:=tmp4+' = '+tmp;
memo1.Lines.Add('');
memo1.Lines.Add(tmp4);
memo1.Lines.Add('');
memo1.Lines.Add('Результат перевода:'+tmp);
edt2.Text:=tmp;
end;

PROCEDURE TForm1.BIN_to_HEX(const n:string;Sender: TObject);
var
st1,st2,tmp,tmp2,tmp3:string;
flag:array[0..15]of boolean;
d,j:byte;
begin
 if flag_clear then memo1.Lines.Clear;
   memo1.Lines.Add('                              ПЕРЕВОД ЧИСЛА '+n+#13#10+'                     ИЗ 2-й В 16-ую СИСТЕМУ СЧИСЕНИЯ');
memo1.Lines.Add('');
memo1.Lines.Add('Для перевода числа из двоичной системы счисления '+
'в шестнадцатеричную систему счисления, необходимо разбить число на четвёрки цифр, '+
'в случае необходимости следует дополнить числа нулями ). '+
'Затем заменить полученные группы цифр соответствующими им шестнадцатеричным цифрам.');
memo1.Lines.Add('');
memo1.Lines.Add('Разбиение числа на четвёрки цифр:');
    st1:=n;                    //целая   101
if length(st1) mod 4<>0 then  //добавляем нули к целой части, если надо
   for i:=1 to 4-(length(st1) mod 4) do st1:='0'+st1;
tmp:='';       //   в tmp целую часть разделенную пробелом
for i:=1 to length(st1) do
 if i mod 4=0 then tmp:=tmp+st1[i]+' ' else tmp:=tmp+st1[i];
memo1.Lines.Add(' '+tmp);
tmp2:='';  //ответ
memo1.Lines.Add('Замена:');
for i:=1 to 15 do flag[i]:=false;
for i:=1 to round(length(st1) div 4) do
 begin
  tmp:=copy(st1,(i-1)*4+1,4);
  for j:=0 to 15 do if tmp=cod3[j] then
   begin
    d:=j;
    break;
   end;
  if d<=9 then tmp3:=inttostr(d) else
  case d of
  10: tmp3:='A';
  11: tmp3:='B';
  12: tmp3:='C';
  13: tmp3:='D';
  14: tmp3:='E';
  15: tmp3:='F';
  end;
  if flag[d]=false then
   begin
    flag[d]:=true;
    memo1.Lines.Add(tmp+'  на  '+tmp3);
   end;
  tmp2:=tmp2+tmp3;
  if (i=round(length(st1)div 4)) then tmp2:=tmp2;
 end;
memo1.Lines.Add('');
memo1.Lines.Add('Результат перевода: '+tmp2);
edt2.Text:=tmp2;
end;

PROCEDURE TForm1.OCT_to_BIN(const n:string;Sender: TObject);
var
tmp,tmp2,tmp3:string;
d:byte;
flag:array[0..7]of boolean;
begin
if flag_clear then memo1.Lines.Clear;
memo1.Lines.Add('                               ПЕРЕВОД ЧИСЛА '+n+#13#10+'                    ИЗ 8-й В 2-ую СИСТЕМУ СЧИСЕНИЯ');
memo1.Lines.Add('');
memo1.Lines.Add('Для перевода числа из восьмеричной  системы счисления  '+
'двоичную систему счисления, необходимо заменить каждую цифру числа соответствующими им  '+
'тройками двоичных цифр.');
memo1.Lines.Add('');
memo1.Lines.Add('Замена цифр числа '+edt1.Text+':');
tmp:='';       //результат
for i:=1 to 7 do flag[i]:=false;
for i:=1 to length(n) do
if n[i]<>',' then
  begin
   d:=strtoint(n[i]);
   tmp:=tmp+cod2[d];
   if flag[d]=false then
    begin
     flag[d]:=true;
     memo1.Lines.Add(n[i]+'  на  '+cod2[d]);
    end;
  end else tmp:=tmp+',';
///
//для лучшего понимания
tmp2:='';
tmp3:=tmp;
for i:=1 to length(tmp3) do
 if i mod 3=0 then tmp2:=tmp2+tmp3[i]+' ' else tmp2:=tmp2+tmp3[i];
memo1.Lines.Add('');
memo1.Lines.Add('Получаем: '+tmp2);
memo1.Lines.Add('');
memo1.Lines.Add('То есть число: '+tmp);
edt2.Text:=tmp;
end;

PROCEDURE TForm1.OCT_to_HEX(const st:string;Sender: TObject);
BEGIN
if flag_clear then memo1.Lines.Clear;
memo1.Lines.Add('                               ПЕРЕВОД ЧИСЛА '+st+#13#10+'                    ИЗ 8-ой В 16-ую СИСТЕМУ СЧИСЕНИЯ');
memo1.Lines.Add('');
memo1.Lines.Add('Сначало необходимо перевести число в двоичную систему счисления, а затем результат перевести в шестнадцатеричную систему счисления.'+
'То есть перевод из восьмеричной системы счисления в шестнадцатеричную провести в два этапа.');
memo1.Lines.Add('');
memo1.Lines.Add('============= Первый этап ==============');
memo1.Lines.Add('');
flag_clear:=false;
OCT_to_BIN(st,Sender);
memo1.Lines.Add('');
memo1.Lines.Add('============= Второй этап ==============');
BIN_to_HEX(edt2.Text,Sender);
flag_clear:=true;
END;

PROCEDURE TForm1.DEC_to_P(const st:string;p:byte;Sender: TObject);
var
ost,tmp,tmp2,b:string;
d:longint;
e,c,v:integer;
BEGIN
  d:=strtoint(st);
memo1.Lines.Clear;
memo1.Lines.Add('                               ПЕРЕВОД ЧИСЛА '+edt1.Text+#13#10+'                    ИЗ 10-ой В '+inttostr(p)+'-ую СИСТЕМУ СЧИСЕНИЯ');
memo1.Lines.Add('');
memo1.Lines.Add('Разделить число '+inttostr(d)+' на основание системы счисления = '+inttostr(p)+':');
memo1.Lines.Add('');
i:=0;
repeat
inc(i);
e:=d mod p;
if e<=9 then str(e,tmp) else
 case e of
 10:tmp:='A';
 11:tmp:='B';
 12:tmp:='C';
 13:tmp:='D';
 14:tmp:='E';
 15:tmp:='F';
 end;
if e<=9 then tmp2:='' else tmp2:='   заменить на '+tmp;
memo1.Lines.Add(inttostr(d)+' / '+inttostr(p)+' = '+inttostr(d div p)+
#13#10+'                               остаток '+inttostr(e)+tmp2);
memo1.Lines.Add('');
b:=b+tmp;
c:=d;
d:=d div p;
until d<p;
if d<=9 then str(d,tmp) else
 case d of
 10:tmp:='A';
 11:tmp:='B';
 12:tmp:='C';
 13:tmp:='D';
 14:tmp:='E';
 15:tmp:='F';
 end;
b:=b+tmp;
if d<=9 then tmp2:='' else tmp2:=' заменить на '+tmp;
memo1.Lines.Add('Дальше делить нельзя, поэтому необходимо собрать все остатки, начиная с конца, и '+
'учитываем конечный результат от деления т.е. '+inttostr(c)+' / '+inttostr(p)+' = '+
inttostr(c div p)+tmp2);
memo1.Lines.Add('');
tmp:='';
v:=0;
for i:=length(b) downto 1 do
begin
if (p=8) or (p=16)  then
if (b[i]='0') and (v=0)  then v:=v+1 else
tmp:=tmp+b[i];
if (p=2) then
tmp:=tmp+b[i];
end;
memo1.Lines.Add('Результат перевода: '+tmp);
edt2.text:=tmp;
end;

PROCEDURE TForm1.HEX_to_BIN(const n:string;Sender: TObject);
var
tmp,tmp2,tmp3:string;
d:byte;
flag:array[0..15]of boolean;
BEGIN
if flag_clear then memo1.Lines.Clear;
memo1.Lines.Add('                               ПЕРЕВОД ЧИСЛА '+n+#13#10+'                    ИЗ 16-й В 2-ую СИСТЕМУ СЧИСЕНИЯ');
memo1.Lines.Add('');
memo1.Lines.Add('Для перевода числа из шестнадцатеричной системы счисления в '+
'двоичную систему счисления, необходимо заменить каждую цифру числа соответствующими им '+
'четвёркам двоичных цифр.');
memo1.Lines.Add('');
memo1.Lines.Add('Замена цифр числа '+edt1.Text+':');
tmp:='';       //результат
for i:=1 to 15 do flag[i]:=false;
for i:=1 to length(n) do
if n[i]<>',' then
  begin
   tmp3:=n[i];
   if n[i]<='9' then d:=strtoint(n[i]) else
   case n[i] of
   'A': d:=10;
   'B': d:=11;
   'C': d:=12;
   'D': d:=13;
   'E': d:=14;
   'F': d:=15;
  end;
   tmp:=tmp+cod3[d];
   if flag[d]=false then
    begin
     flag[d]:=true;
     memo1.Lines.Add(tmp3+'  на  '+cod3[d]);
    end;
  end else tmp:=tmp+',';
///
//для лучшего понимания
tmp2:='';
tmp3:=tmp;
for i:=1 to length(tmp3) do
 if i mod 4=0 then tmp2:=tmp2+tmp3[i]+' ' else tmp2:=tmp2+tmp3[i];
memo1.Lines.Add('');
memo1.Lines.Add('Получаем: '+tmp2);
///
memo1.Lines.Add('');
memo1.Lines.Add('То есть число: '+tmp);
memo1.Lines.Add('');
memo1.Lines.Add('Лишние нули можно удалить.');
edt2.Text:=tmp;
END;

PROCEDURE TForm1.HEX_to_OCT(const st:string;Sender: TObject);
BEGIN
memo1.Lines.Clear;
memo1.Lines.Add('                               ПЕРЕВОД ЧИСЛА '+st+#13#10+'                    ИЗ 16-ой В 8-ую СИСТЕМУ СЧИСЕНИЯ');
memo1.Lines.Add('');
memo1.Lines.Add('Сначало необходимо перевести число в двоичную систему счисления, а затем перевести результат в восьмеричную систему счисления.'+
'То есть перевод из шестнадцатеричной системы счисления в восьмеричную провести в два этапа.');
memo1.Lines.Add('============= Первый этап ==============');
flag_clear:=false;
memo1.Lines.Add('');
HEX_to_BIN(st,Sender);
memo1.Lines.Add('');
memo1.Lines.Add('============= Второй этап ==============');
BIN_to_OCT(edt2.Text,Sender);
flag_clear:=true;
END;

procedure TForm1.btn2Click(Sender: TObject);
begin
   if k =0 then
  begin
  Form1.Height:=Form1.Height+290;
  Memo3.Height:=480;
  RadioGroup1.Height:=505;
  Button3.Visible:=false;
  Button2.Visible:=true;
  k:=k+1;
  end else
  begin
  Form1.Height:=Form1.Height-290;
  k:=k-1;
   Memo3.Height:=289;
  memo3.Height:=225;
  Button3.Visible:=true;
  Button2.Visible:=false;
  end;
  Memo1.Visible:=true;
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
  k:=0;
  f:=0;
  c:=0;
  btn2.Enabled:=False;
  l:=0;
  off:=0;
  N5.enabled:=False;
  p:=0;
  count:=-5;
  Form1.Height:=305;
  Form1.Width:=350;
Memo1.Visible:=false;
   AssignFile(f2,'История.txt');
  rewrite(f2,'История.txt');
  CloseFile(f2);

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 if k=1 then
   begin
   Form1.Height:=Form1.Height-290;
   memo3.Height:=200;
   RadioGroup1.Height:=240;
   Button3.Visible:=true;
   Button2.Visible:=false;
   k:=0;
   end;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
 if dlgSave1.Execute then
begin
  Memo1.Lines.SaveToFile('История.txt');
end;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
  memo3.lines.clear;
  Memo3.Lines.LoadFromFile('История.txt');
  Memo3.Lines.SaveToFile('История.txt');
  if Form1.Height=595 then
  begin
    Form1.Width:=670;
   Memo3.Height:=480;
  RadioGroup1.Height:=505;
  Button3.Visible:=false;
   Button3.Enabled:=true;
  Button2.Visible:=true;
  Button2.Enabled:=True;
  end else
  begin
 Form1.Width:=670;
   memo3.Height:=200;
   RadioGroup1.Height:=240;
      Button3.Enabled:=true;
   end;
end;


procedure TForm1.Button3Click(Sender: TObject);
begin
    memo3.lines.clear;
 Form1.Width:=350;
 Button3.Enabled:=false;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    memo3.lines.clear; 
Form1.Width:=350;
Button2.Enabled:=false;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     AssignFile(f2,'История.txt');
  rewrite(f2,'История.txt');
  CloseFile(f2);
end;

procedure TForm1.edt2Change(Sender: TObject);
begin
if ((edt2.Text <>'') and (edt1.text <> '')) then btn2.Enabled:=true else btn2.Enabled:=False;
end;

end.
