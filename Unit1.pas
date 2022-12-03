unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Panel2: TPanel;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  A:array[1..3] of string;
  B:array[1..3] of string;
  C:array[1..3] of string;
  track :string;
  flag:Boolean;

implementation

{$R *.fmx}

procedure checker ;
var
 Button8: TButton;
begin
 // while True do
//     if A[1] = A[2] then
//      ShowMessage('THEY MATCH!');

//======================= HORIZONTAL==================
//check horizotal on the first row
if (A[1] = A[2]) AND (A[2] = A[3]) then
     ShowMessage('win');

     //change color

    //if track = 'x' then
     //ShowMessage('Plsyer 2 Wins the game!') else
     //ShowMessage('Plsyer 1 Wins the game!');


//check horizotal on the second row
if (B[1] = B[2]) AND (B[2] = B[3]) then
   ShowMessage('win');



//check horizotal on the second row
if (C[1] = C[2]) AND (C[2] = C[3]) then
  ShowMessage('win');

//========================== VERTICAL ==================


//check vertical on the  1st column
if (A[1] = B[1]) AND (B[1] = C[1]) then
    ShowMessage('win');
 //  if track = 'x' then
 //    ShowMessage('Plsyer 2 Wins the game!') else
  //   ShowMessage('Plsyer 1 Wins the game!');



//check vertical on the  2st column
if (A[2] = B[2]) AND (B[2] = C[2]) then
    ShowMessage('win');
  // if track = 'x' then
  //   ShowMessage('Plsyer 2 Wins the game!') else
  //   ShowMessage('Plsyer 1 Wins the game!');


//check vertical on the  1st column
if (A[3] = B[3]) AND (B[3] = C[3]) then
     ShowMessage('win');
  // if track = 'x' then
    // ShowMessage('Plsyer 2 Wins the game!') else
    // ShowMessage('Plsyer 1 Wins the game!');

//========================== DIAGONAL ==================

//check the diagonal#1
 if (A[1] = B[2]) AND (B[2] = C[3]) then
       ShowMessage('win');
    // if track = 'x' then
    // ShowMessage('Plsyer 2 Wins the game!') else
     //ShowMessage('Plsyer 1 Wins the game!');


//check the diagonal#1
 if (A[3] = B[2]) AND (B[2] = C[1]) then
     ShowMessage('win');
  // if track = 'x' then
    // ShowMessage('Plsyer 2 Wins the game!') else
    // ShowMessage('Plsyer 1 Wins the game!');

end;

procedure TForm1.Button10Click(Sender: TObject);
begin

     A[3] := track;
     Button10.Text:=track;
     Button10.Enabled := False;
     checker;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
     B[1] := track;
     Button11.Text:=track;
     Button11.Enabled := False;
     checker;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
     B[2] := track;
     Button12.Text:=track;
     Button12.Enabled := False;
     checker;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
     B[3] := track;
     Button13.Text:=track;
     Button13.Enabled := False;
     checker;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
     C[1] := track;
     Button14.Text:=track;
     Button14.Enabled := False;
     checker;
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
     C[2] := track;
     Button15.Text:=track;
     Button15.Enabled := False;
     checker;
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
     C[3] := track;
     Button16.Text:=track;
     Button16.Enabled := False;
     checker;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin

       A[2] := 'c';
       B[2] := 'c';

       if A[2] = B[2] then
       ShowMessage('THEY MATCH!');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 A[2] := 'c';
 B[2] := 'c';
 C[2] := 'c';
       if (A[2] = B[2]) AND (B[2] = C[2]) then
       ShowMessage('THEY MATCH!');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
     //while all this happens ,an infite-loop runs in the form-create.
     track:= 'o';
     A[1] := track;
     Button3.Text:='O';
     Button3.Enabled := False;
     checker;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  track:= 'x';
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
 //while all this happens ,an infite-loop runs in the form-create.
     track:= 'o';
     A[2] := track;
     Button5.Text:='O';
     Button5.Enabled := False;
     checker;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
     track:= 'o';
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
track:= 'x';
end;

procedure TForm1.Button8Click(Sender: TObject);
begin

     A[1] := track;
     Button8.Text:=track;
     Button8.Enabled := False;
     checker;

end;

procedure TForm1.Button9Click(Sender: TObject);
begin
     A[2] := track;
     Button9.Text:=track;
     Button9.Enabled := False;
     checker;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
A[1] := 'a';
A[2] := 'b';
A[3] := 'c';

B[1] := 'd';
B[2] := 'e';
B[3] := 'f';

C[1] := 'd';
C[2] := 'e';
C[3] := 'f';



//while True do
  //   if A[1] = A[2] then
   //    ShowMessage('THEY MATCH!');
end;

end.
