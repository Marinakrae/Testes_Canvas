unit Urso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    imgDrawArea: TImage;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormPaint(Sender: TObject);
begin
  with imgDrawArea do
  begin
    Canvas.Pen.Width := 2;
    Canvas.Pen.Color := clBlack;

    //cabeca
    Canvas.Ellipse(100, 100, 300, 300);   //(x1, y1, x2, y2) - x1 e y1 são o ponto de início e os outros os de final do círculo
    //orelhas
    Canvas.Arc(100, 100, 170, 170, 165, 100, 100, 165); //(x1, y1, x2, y2, x3, y3, x4, y4) - os primeiros 4 são os valores do circulo, e os segundos, os pontos de inicio e fim do arco
    Canvas.Arc(230, 100, 300, 170, 300, 165, 235, 100);

    //focinho
    Canvas.Ellipse(150, 200, 250, 270);

    Canvas.Brush.Color := clBlack;

    //nariz
    Canvas.Ellipse(175, 205, 225, 230);
    //olhos
    Canvas.Ellipse(150, 160, 170, 180);
    Canvas.Ellipse(250, 160, 230, 180);
    //boca
    Canvas.Arc(175, 205, 200, 245, 175, 230, 200, 230);
    Canvas.Arc(200, 205, 225, 245, 200, 230, 225, 230);

  End;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
FormPaint(imgDrawArea);
end;

end.
