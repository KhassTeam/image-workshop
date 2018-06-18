unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ComCtrls, ExtCtrls, StdCtrls, jpeg, ToolWin, CategoryButtons,
  AppEvnts, Math, ExtDlgs, GIFImg, PngImage, Spin, TeCanvas;

type
  TForm1 = class(TForm)
    Page1: TPageControl;
    tabSaved: TTabSheet;
    tabCurrent: TTabSheet;
    imgSaved: TImage;
    imgCurrent: TImage;
    CategoryButtons1: TCategoryButtons;
    Selection: TShape;
    OpenPictureDialog1: TOpenPictureDialog;
    SavePictureDialog1: TSavePictureDialog;
    FontDialog1: TFontDialog;
    Timer1: TTimer;
    Page2: TPageControl;
    tabEffects: TTabSheet;
    CategoryPanelGroup1: TCategoryPanelGroup;
    CategoryPanel12: TCategoryPanel;
    SpeedButton11: TSpeedButton;
    chbRed: TCheckBox;
    chbGreen: TCheckBox;
    chbBlue: TCheckBox;
    chbGrayscale: TCheckBox;
    CategoryPanel11: TCategoryPanel;
    SpeedButton10: TSpeedButton;
    lblRotate2: TLabel;
    lblRotate3: TLabel;
    tbRotate: TTrackBar;
    CategoryPanel10: TCategoryPanel;
    SpeedButton9: TSpeedButton;
    lblSharpen1: TLabel;
    lblSharpen2: TLabel;
    tbSharpen: TTrackBar;
    CategoryPanel9: TCategoryPanel;
    SpeedButton8: TSpeedButton;
    lblEmboss3: TLabel;
    lblEmboss4: TLabel;
    lblEmboss1: TLabel;
    lblEmboss2: TLabel;
    tbEmboss1: TTrackBar;
    tbEmboss2: TTrackBar;
    CategoryPanel8: TCategoryPanel;
    SpeedButton7: TSpeedButton;
    lblMBlur3: TLabel;
    lblMBlur4: TLabel;
    lblMBlur1: TLabel;
    lblMBlur2: TLabel;
    tbMBlur1: TTrackBar;
    tbMBlur2: TTrackBar;
    CategoryPanel7: TCategoryPanel;
    SpeedButton6: TSpeedButton;
    lblBrightness1: TLabel;
    lblBrightness2: TLabel;
    tbBrightness: TTrackBar;
    CategoryPanel6: TCategoryPanel;
    SpeedButton5: TSpeedButton;
    lblBevel2: TLabel;
    lblBevel3: TLabel;
    tbBevel: TTrackBar;
    CategoryPanel2: TCategoryPanel;
    SpeedButton1: TSpeedButton;
    lblEdge3: TLabel;
    lblEdge4: TLabel;
    lblEdge1: TLabel;
    lblEdge2: TLabel;
    tbEdge1: TTrackBar;
    tbEdge2: TTrackBar;
    rbEdge1: TRadioButton;
    rbEdge2: TRadioButton;
    chbEdge: TCheckBox;
    CategoryPanel5: TCategoryPanel;
    SpeedButton4: TSpeedButton;
    lblDisarrange1: TLabel;
    lblDisarrange2: TLabel;
    tbDisarrange: TTrackBar;
    CategoryPanel4: TCategoryPanel;
    SpeedButton3: TSpeedButton;
    lblNoise1: TLabel;
    lblNoise2: TLabel;
    tbNoise: TTrackBar;
    CategoryPanel3: TCategoryPanel;
    SpeedButton2: TSpeedButton;
    CategoryPanel1: TCategoryPanel;
    tabSettings: TTabSheet;
    CategoryPanelGroup2: TCategoryPanelGroup;
    CategoryPanel24: TCategoryPanel;
    CategoryPanel13: TCategoryPanel;
    CategoryPanel14: TCategoryPanel;
    CategoryPanel15: TCategoryPanel;
    Label17: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Label18: TLabel;
    seTelorance: TSpinEdit;
    Label19: TLabel;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Label20: TLabel;
    bcBrush: TButtonColor;
    Label21: TLabel;
    seBrush1: TSpinEdit;
    seBrush2: TSpinEdit;
    Label22: TLabel;
    chbNoise: TCheckBox;
    bcBevel: TButtonColor;
    lblBevel1: TLabel;
    ColorDialog1: TColorDialog;
    chbNegate: TCheckBox;
    CategoryPanel16: TCategoryPanel;
    SpeedButton12: TSpeedButton;
    lblBlur1: TLabel;
    lblBlur2: TLabel;
    tbBlur: TTrackBar;
    img1: TImage;
    bcRotate: TButtonColor;
    lblRotate1: TLabel;
    Timer2: TTimer;
    ColorDialog2: TColorDialog;
    CategoryPanel17: TCategoryPanel;
    SpeedButton13: TSpeedButton;
    lblPixelation: TLabel;
    lblPixelation2: TLabel;
    tbPixelation: TTrackBar;
    CategoryPanel18: TCategoryPanel;
    SpeedButton14: TSpeedButton;
    CategoryPanel19: TCategoryPanel;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    SpeedButton24: TSpeedButton;
    SpeedButton25: TSpeedButton;
    SpeedButton26: TSpeedButton;
    RadioButton1: TRadioButton;
    CategoryPanel20: TCategoryPanel;
    TrackBar1: TTrackBar;
    Label1: TLabel;
    SpinEdit1: TSpinEdit;
    Label2: TLabel;
    Label3: TLabel;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    CategoryPanel21: TCategoryPanel;
    SpeedButton27: TSpeedButton;
    SpeedButton28: TSpeedButton;
    SpeedButton29: TSpeedButton;
    TrackBar2: TTrackBar;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure tbBlurChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure imgCurrentMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imgCurrentMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CategoryPanel1Collapse(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure CategoryButtons1SelectedCategoryChange(Sender: TObject;
      const Category: TButtonCategory);
    procedure chbRedClick(Sender: TObject);
    procedure chbGrayscaleClick(Sender: TObject);
    procedure Page1Change(Sender: TObject);
    procedure tbNoiseChange(Sender: TObject);
    procedure tbDisarrangeChange(Sender: TObject);
    procedure tbEdge1Change(Sender: TObject);
    procedure tbEdge2Change(Sender: TObject);
    procedure tbBevelChange(Sender: TObject);
    procedure tbBrightnessChange(Sender: TObject);
    procedure tbMBlur1Change(Sender: TObject);
    procedure tbMBlur2Change(Sender: TObject);
    procedure tbEmboss1Change(Sender: TObject);
    procedure tbEmboss2Change(Sender: TObject);
    procedure tbSharpenChange(Sender: TObject);
    procedure tbRotateChange(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure chbEdgeClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure rbEdge2Click(Sender: TObject);
    procedure rbEdge1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure bcBrushClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure seBrush1Change(Sender: TObject);
    procedure seBrush2Change(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure tbPixelationChange(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton26Click(Sender: TObject);
    procedure imgCurrentMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SelectionMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpinEdit3Change(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpeedButton29Click(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  TBrs = object
    Shape: TShapeType;
    Color: TColor;
    Width, Height: Word;
  end;
  TPnt = record
    X, Y: Real;
  end;
  TRGB = array [1..3] of Byte;
  TRGBArray = array [0..5000, 0..3500] of TRGB;
  TMatrix = array [-180..+180, -180..+180] of SmallInt;
  TBooleanArray = array [0..5000, 0..3500] of Boolean;
  TBooleanMatrix = array [-180..+180, -180..+180] of Boolean;

Type
  MouseAct = Record
    MouseD, MouseU: Boolean ;
  End ;

const
  maNormal = 0;
  maBrush = 1;
  maMagicWand = 2;
  maSelection = 3;
  ma_Brush = 4;
  maRectangle = 5;
  maEllipse = 6;
  maBlur = 7;
  maSharpen = 8;
  Cursors: array [maNormal..maSelection] of TCursor = (crDefault, crDefault, crUpArrow, crCross);

var
  Form1: TForm1;
  History: array [1..10000] of TImage;
  HistoryIndex, HistoryMaxIndex: Word;
  SelectionX1, SelectionY1, SelectionX2, SelectionY2: Word;
  Speed: ShortInt;
  imgActive: TImage;
  SelectorShape: TShapeType;
  MouseAction: ShortInt;
  SelPropotional, Load, BRect, BEll: Boolean;
  A: Array [1..10000, 1..10000] of Integer;
  XS, YS : Integer ;

var
  Sum: Int64;
  Matrix: TMatrix;
  Pixels, Pixels2: TRGBArray;
  BooleanMatrix: TBooleanMatrix;
  Marked: TBooleanArray;
  MinX, MinY, MaxX, MaxY: Integer;
  Pixel1, Pixel2: TColor;
  BBrush, BSelection: MouseAct ;

implementation

{$R *.dfm}

function ATan(xx, yy: Real): Real;
var
	xxx, yyy, Teta: Real;
begin
	xxx := Abs(xx);
  yyy := Abs(yy);
  if (xx >= 0) and (yy >= 0) and (xxx > yyy) then Teta := ArcTan(yyy / xxx);
  if (xx >= 0) and (yy >= 0) and (xxx < yyy) then Teta := Pi /2 - ArcTan(xxx / yyy);
  if (xx >= 0) and (yy >= 0) and (xxx = yyy) then Teta := Pi / 4;
	if (xx <  0) and (yy >= 0) and (xxx > yyy) then Teta := Pi - ArcTan(yyy / xxx);
  if (xx <  0) and (yy >= 0) and (xxx < yyy) then Teta := Pi /2 + ArcTan(xxx / yyy);
  if (xx <  0) and (yy >= 0) and (xxx = yyy) then Teta := Pi - Pi / 4;
	if (xx <  0) and (yy <  0) and (xxx > yyy) then Teta := Pi + ArcTan(yyy / xxx);
  if (xx <  0) and (yy <  0) and (xxx < yyy) then Teta := 3 * Pi / 2 - ArcTan(xxx / yyy);
	if (xx <  0) and (yy <  0) and (xxx = yyy) then Teta := Pi + Pi / 4;
  if (xx >= 0) and (yy <  0) and (xxx > yyy) then Teta := 2 * Pi - ArcTan(yyy / xxx);
	if (xx >= 0) and (yy <  0) and (xxx < yyy) then Teta := 3 * Pi / 2 + ArcTan(xxx / yyy);
  if (xx >= 0) and (yy <  0) and (xxx = yyy) then Teta := 2 * Pi - Pi / 4;
  ATan := Teta;
end;

function Max (A, B: Real): Real;
begin
  if A > B then
    Result := A
  else
    Result := B;
end;

function Pnt (X, Y: Real): TPnt;
begin
  Result.X := X;
  Result.Y := Y;
end;

function Dis (X1, Y1, X2, Y2: Integer): Real;
begin
  Dis := Sqrt ((X1 - X2) * (X1 - X2) + (Y1 - Y2) * (Y1 - Y2));
end;

function ColorAverage (Color1, Color2: TColor): TColor;
begin
  ColorAverage := Round ((Color1 + Color2) / 2);
end;

function MixColors (ColorsCount: Word; Colors: array of TColor; Percents: array of Word): TColor;
var
  I, Percent: Word;
  Color: Real;
begin
  Color := clBlack;
  Percent := 0;
  for I := 0 to ColorsCount - 1 do
    if Percent < 100 then
    begin
      Inc (Percent, Percents[I]);
      if Percent + Percents[I] > 100 then
        Percents[I] := 100 - Percents[I];
      Color := Color + Colors[I] * Percents[I] / 100;
    end;
  MixColors := Round (Color);
end;

procedure ColorChannels(Image1: TImage; var Image2: TImage; R, G, B: Real);
var
  X, Y: Word;
  Pixel: TColor;
  PR, PG, PB: Integer;
  Sum: Real;
  Bl: Boolean;
begin
  Sum := R + G + B;
  Bl := (Sum = 1) and (R < 1) and (G < 1) and (B < 1);
  for X := 0 to Image1.Picture.Width - 1 do
    for Y := 0 to Image1.Picture.Height - 1 do
    begin
      Pixel := Image1.Picture.Bitmap.Canvas.Pixels[X, Y];
      PR := GetRValue (Pixel);
      PG := GetGValue (Pixel);
      PB := GetBValue (Pixel);
      if Bl then
      begin
        Pixel := Round((R * PR) / Sum) + Round((G * PG) / Sum) + Round((B * PB) / Sum);
        Image2.Picture.Bitmap.Canvas.Pixels[X, Y] := RGB(Pixel, Pixel, Pixel)
      end
      else
        Image2.Picture.Bitmap.Canvas.Pixels[X, Y] := RGB(Round((R * PR) / Sum), Round((G * PG) / Sum), Round((B * PB) / Sum));
    end;
end;

procedure Noise (Image1: TImage; var Image2: TImage; Value: Integer; MonoChromatic: Boolean);
const
  Color: array [False..True, 1..3] of TColor = ((clRed , clGreen, clBlue), (clBlack, clGray, clSilver));
var
  R2, G2, B2: Byte;
  R1, G1, B1: Word;
  X, Y, Value2: Integer;
  Pixel1, Pixel2: TColor;
begin
  Randomize;
  Image2.Picture := Image1.Picture;
  for X := 0 to Image1.Picture.Width - 1 do
    for Y := 0 to Image1.Picture.Height - 1 do
    begin
      Pixel1 := Color[MonoChromatic, Random (3) + 1];
      Pixel2 := Image1.Picture.Bitmap.Canvas.Pixels[X, Y];
      R1 := GetRValue (Pixel1);
      G1 := GetGValue (Pixel1);
      B1 := GetBValue (Pixel1);
      R2 := GetRValue (Pixel2);
      G2 := GetGValue (Pixel2);
      B2 := GetBValue (Pixel2);
      Value2 := Random (Value + 1);
      R1 := Round (Value2 / 100 * R1 + (100 - Value2) / 100 * R2);
      G1 := Round (Value2 / 100 * G1 + (100 - Value2) / 100 * G2);
      B1 := Round (Value2 / 100 * B1 + (100 - Value2) / 100 * B2);
      if R1 > 255 then
        R1 := 255;
      if G1 > 255 then
        G1 := 255;
      if B1 > 255 then
        B1 := 255;
      Image2.Picture.Bitmap.Canvas.Pixels[X, Y] := RGB (R1, G1, B1);
    end;
end;

procedure Blur (Image1: TImage; var Image2: TImage; Units: TPoint);
var
  X, Y, X2, Y2, S: Integer;
  R, G, B: Int64;
  Pixel: TColor;
  M: Real;
begin
  S := 0;
  X := 0;
  Y := 0;
  M := Max (Units.X, Units.Y);
  for X2 := X - Units.X to X + Units.X do
    for Y2 := Y - Units.Y to Y + Units.Y do
      if Dis (X, Y, X2, Y2) <= M then
        Inc (S);
  Image2.Picture := Image1.Picture;
  for X := 0 to Image1.Picture.Width - 1 do
    for Y := 0 to Image1.Picture.Height - 1 do
    begin
      R := 0;
      G := 0;
      B := 0;
      for X2 := X - Units.X to X + Units.X do
        for Y2 := Y - Units.Y to Y + Units.Y do
          if Dis (X, Y, X2, Y2) <= M then
          begin
            Pixel := Image1.Picture.Bitmap.Canvas.Pixels[X2, Y2];
            R := R + GetRValue (Pixel);
            G := G + GetGValue (Pixel);
            B := B + GetBValue (Pixel);
          end;
      //S := ((Units.X * 2 + 1) * (Units.Y * 2 + 1));
      Image2.Picture.Bitmap.Canvas.Pixels[X, Y] := RGB (Round (R / S), Round (G / S), Round (B / S));
    end;
end;

function ColorToRGB (Color: TColor): TRGB;
begin
  Result[1] := GetRValue (Color);
  Result[2] := GetGValue (Color);
  Result[3] := GetBValue (Color);
end;

procedure Blur2 (Image1: TImage; var Image2: TImage; Units: TPoint);
var
  X, Y, X2, Y2, S, S2: Integer;
  //Pixels2: TPixels;
  R, G, B: Int64;
  M: Real;
begin
  S := 0;
  M := Max (Units.X, Units.Y);
  Image2.Picture := Image1.Picture;
  for X := 0 to Image1.Picture.Width - 1 do
    for Y := 0 to Image1.Picture.Height - 1 do
      Pixels[X, Y] := ColorToRGB (Image1.Picture.Bitmap.Canvas.Pixels[X, Y]);
  //Pixels2.Pixels := Image1.Picture.Bitmap.Canvas.Pixels;
  for X2 := X - Units.X to X + Units.X do
    for Y2 := Y - Units.Y to Y + Units.Y do
      if Dis (X, Y, X2, Y2) <= M then
        Inc (S);
  for X := 0 to Image1.Picture.Width - 1 do
    for Y := 0 to Image1.Picture.Height - 1 do
    begin
      R := 0;
      G := 0;
      B := 0;
      S2 := 0;
      for X2 := X - Units.X to X + Units.X do
        for Y2 := Y - Units.Y to Y + Units.Y do
          if Dis (X, Y, X2, Y2) <= M then
          begin
            if (X2 >= 0) and (Y2 >= 0) and (X2 < Image1.Picture.Width) and (Y2 < Image1.Picture.Height) then
            begin
              R := R + Pixels[X2, Y2, 1];
              G := G + Pixels[X2, Y2, 2];
              B := B + Pixels[X2, Y2, 3];
            end
            else
              Inc (S2);
          end;
      //S := ((Units.X * 2 + 1) * (Units.Y * 2 + 1));
      Image2.Picture.Bitmap.Canvas.Pixels[X, Y] := RGB (Round (R / (S - S2)), Round (G / (S - S2)), Round (B / (S - S2)));
    end;
end;

procedure DetermineColor (X, Y, Width, Height: Word; Matrix: TMatrix; Divisor: Real);
var
  Color: TRGB;
  X2, Y2: Integer;
begin
  Color := ColorToRGB (clBlack);
  for X2 := X - Width div 2 to X + Height div 2 do
    for Y2 := Y - Width div 2 to Y + Height div 2 do
    begin
      Color[1] := Color[1] + Pixels[X2, Y2, 1] * Matrix[X2 - X, Y2 - Y];
      Color[2] := Color[2] + Pixels[X2, Y2, 2] * Matrix[X2 - X, Y2 - Y];
      Color[3] := Color[3] + Pixels[X2, Y2, 3] * Matrix[X2 - X, Y2 - Y];
    end;
  //Pixels[X, Y] := RGB (Round (Color[1] / Divisor), Round (Color[2] / Divisor), Round (Color[3] / Divisor));
end;

function BlurMatrixX (Value: Word): TMatrix;
var
  I: Integer;
begin
  if Value <> 0 then
    for I := -Value to +Value do
      Result[0, I] := Value - Abs (I);
end;

function BlurMatrixY (Value: Word): TMatrix;
var
  I: Integer;
begin
  if Value <> 0 then
    for I := -Value to +Value do
      Result[I, 0] := Value - Abs (I);
end;

function BlurMatrix (Radius: TPoint): TMatrix;
var
  M: Real;
  X, Y: Integer;
begin
  M := Max (Radius.X, Radius.Y);
  Matrix := BlurMatrixX (Radius.X);
  Matrix := BlurMatrixY (Radius.Y);
  Sum := 0;
  for X := -Radius.X to +Radius.X do
    for Y := -Radius.Y to +Radius.Y do
    begin
      if Dis (X, Y, 0, 0) <= M then
      begin
        Result[X, Y] := Matrix[X, 0] * Matrix[0, Y];
        Sum := Sum + Result[X, Y];
      end
      else
        Result[X, Y] := 0;
    end;
end;

function BlurMatrix2 (Radius: TPoint): TMatrix;
var
  X, Y: Integer;
begin
  Matrix := BlurMatrixX (Radius.X);
  Matrix := BlurMatrixY (Radius.Y);
  Result := Matrix;
  Sum := 0;
  for X := -Radius.X to +Radius.X do
    for Y := -Radius.Y to +Radius.Y do
      if (X = 0) or (Y = 0) then
        Sum := Sum + Matrix[X, Y];
end;

function MotionBlurMatrix (Radius: TPoint; Angle: Real): TMatrix;
var
  X, Y, I: Integer;
begin
  Angle := DegToRad (Angle);
  for X := -Radius.X to +Radius.X do
    for Y := -Radius.Y to +Radius.Y do
      Result[X, Y] := 0;
  for I := 0 to Round (Max (Radius.X, Radius.Y)) do
  begin
    X := Round (Cos (Angle) * I);
    Y := Round (Sin (Angle) * I);
    Result[X, Y] := 1;
    Result[-X, -Y] := 1;
  end;
  Sum := 0;
  for X := -Radius.X to +Radius.X do
    for Y := -Radius.Y to +Radius.Y do
      Inc (Sum, Result[X, Y]);
end;

function MotionBlurMatrix2 (Radius: TPoint; Angle: Real): TMatrix;
var
  X, Y, I: Integer;
begin
  Angle := DegToRad (Angle);
  for X := -Radius.X to +Radius.X do
    for Y := -Radius.Y to +Radius.Y do
      Result[X, Y] := 0;
  for I := 0 to Round (Max (Radius.X, Radius.Y)) do
  begin
    X := Round (Cos (Angle) * I);
    Y := Round (Sin (Angle) * I);
    Result[X, Y] := 1;
  end;
  Sum := 0;
  for X := -Radius.X to +Radius.X do
    for Y := -Radius.Y to +Radius.Y do
      Inc (Sum, Result[X, Y]);
end;

function FindEdgesMatrix (Radius: TPoint): TMatrix;
var
  X, Y: Integer;
begin
  Sum := -1;
  for X := -Radius.X to +Radius.X do
    for Y := -Radius.Y to +Radius.Y do
    begin
      Result[X, Y] := -1;
      Inc (Sum);
    end;
  Result[0, 0] := Sum;
  Sum := 1;
end;

function FindEdgesMatrix2 (Radius: TPoint; Angle: Real): TMatrix;
var
  X, Y, M, N: Integer;
begin
  Sum := 1;
  Angle := DegToRad (Angle);
  M := Round (Max (Radius.X, Radius.Y));
  for X := -Radius.X to +Radius.X do
    for Y := -Radius.Y to +Radius.Y do
      if X = 0 then
        Matrix[X, Y] := M * 2
      else
        Matrix[X, Y] := -1;
  //Form1.Label3.Caption := '';
  N := 0;
  for X := -Radius.X to +Radius.X do
  begin
    for Y := -Radius.Y to +Radius.Y do
    begin
      Result[X, Y] := Matrix[Round (Cos (ATan (X, Y) + Angle) * Dis (X, Y, 0, 0)), Round (Sin (ATan (X, Y) + Angle) * Dis (X, Y, 0, 0))];
      if Result[X, Y] = M * 2 then
      begin
        Inc (N);
        if N > M * 2 + 1 then
          Result[X, Y] := -1;
      end;
      //Form1.Label3.Caption := Form1.Label3.Caption + IntToStr (Result[X, Y]) + ' ';
    end;
    //Form1.Label3.Caption := Form1.Label3.Caption + #13;
  end;
end;

function ShowEdgesMatrix (Radius: TPoint): TMatrix;
var
  X, Y: Integer;
begin
  Sum := -1;
  for X := -Radius.X to +Radius.X do
    for Y := -Radius.Y to +Radius.Y do
    begin
      Result[X, Y] := 1;
      Inc (Sum);
    end;
  Result[0, 0] := Round (-Sum + Max (Radius.X, Radius.Y));
  Sum := 1;
end;

function SharpenMatrix (Radius: TPoint): TMatrix;
var
  X, Y: Integer;
begin
  Sum := 0;
  for X := -Radius.X to +Radius.X do
    for Y := -Radius.Y to +Radius.Y do
    begin
      Result[X, Y] := -1;
      Inc (Sum);
    end;
  Result[0, 0] := Sum;
end;

function EmbossMatrix (Radius: TPoint; Angle: Real): TMatrix;
var
  X, Y: Integer;
begin
  Sum := 1;
  Angle := DegToRad (Angle);
  for X := -Radius.X to +Radius.X do
    for Y := -Radius.Y to +Radius.Y do
    begin
      if X = 0 then
        Matrix[X, Y] := 0;
      if X < 0 then
        Matrix[X, Y] := -1;
      if X > 0 then
        Matrix[X, Y] := 1;
    end;
  for X := -Radius.X to +Radius.X do
    for Y := -Radius.Y to +Radius.Y do
      Result[X, Y] := Matrix[Round (Cos (ATan (X, Y) + Angle) * Dis (X, Y, 0, 0)), Round (Sin (ATan (X, Y) + Angle) * Dis (X, Y, 0, 0))];
end;

function MatrixToBooleanMatrix (Matrix: TMatrix; Radius: TPoint): TBooleanMatrix;
var
  X, Y: SmallInt;
begin
  for X := -Radius.X to +Radius.X do
    for Y := -Radius.Y to +Radius.Y do
      Result[X, Y] := Matrix[X, Y] = 1;
end;

procedure Emboss (Image1: TImage; var Image2: TImage; Matrix: TMatrix; Radius: TPoint);
var
  K: Byte;
  R, G, B: Int64;
  X, Y, X2, Y2: Integer;
begin
  Image2.Picture := Image1.Picture;
  for X := 0 to Image1.Picture.Width - 1 do
    for Y := 0 to Image1.Picture.Height - 1 do
      Pixels[X, Y] := ColorToRGB (Image1.Picture.Bitmap.Canvas.Pixels[X, Y]);
  for X := 0 to Image1.Picture.Width - 1 do
    for Y := 0 to Image1.Picture.Height - 1 do
    begin
      R := 0;
      G := 0;
      B := 0;
      for X2 := X - Radius.X to X + Radius.X do
        for Y2 := Y - Radius.Y to Y + Radius.Y do
        begin
          if (X2 < 0) or (X2 > Image1.Picture.Width - 1) or (Y2 < 0) or (Y2 > Image1.Picture.Height - 1) then
          begin
            R := R + Matrix[X2 - X, Y2 - Y] * Pixels[X, Y, 1];
            G := G + Matrix[X2 - X, Y2 - Y] * Pixels[X, Y, 2];
            B := B + Matrix[X2 - X, Y2 - Y] * Pixels[X, Y, 3];
          end
          else
          begin
            R := R + Matrix[X2 - X, Y2 - Y] * Pixels[X2, Y2, 1];
            G := G + Matrix[X2 - X, Y2 - Y] * Pixels[X2, Y2, 2];
            B := B + Matrix[X2 - X, Y2 - Y] * Pixels[X2, Y2, 3];
          end;
        end;
      Inc (R, 128);
      Inc (G, 128);
      Inc (B, 128);
      if R < 0 then
        R := 0;
      if G < 0 then
        G := 0;
      if B < 0 then
        B := 0;
      if R > 255 then
        R := 255;
      if G > 255 then
        G := 255;
      if B > 255 then
        B := 255;
      K := Min (R, Min (G, B));
      Image2.Picture.Bitmap.Canvas.Pixels[X, Y] := RGB (K, K, K);
    end;
end;

procedure ShowEdges (Image1: TImage; var Image2: TImage; Matrix: TMatrix; Radius: TPoint; Divisor: Real);
var
  R, G, B: Int64;
  X, Y, X2, Y2: Integer;
begin
  begin
    Image2.Picture := Image1.Picture;
    for X := 0 to Image1.Picture.Width - 1 do
      for Y := 0 to Image1.Picture.Height - 1 do
        Pixels[X, Y] := ColorToRGB (Image1.Picture.Bitmap.Canvas.Pixels[X, Y]);
    for X := 0 to Image1.Picture.Width - 1 do
      for Y := 0 to Image1.Picture.Height - 1 do
      begin
        R := 0;
        G := 0;
        B := 0;
        for X2 := X - Radius.X to X + Radius.X do
          for Y2 := Y - Radius.Y to Y + Radius.Y do
          begin
            if (X2 < 0) or (X2 > Image1.Picture.Width - 1) or (Y2 < 0) or (Y2 > Image1.Picture.Height - 1) then
            begin
              R := R + Pixels[X, Y, 1];
              G := G + Pixels[X, Y, 2];
              B := B + Pixels[X, Y, 3];
            end
            else
            begin
              R := R + Matrix[X2 - X, Y2 - Y] * Pixels[X2, Y2, 1];
              G := G + Matrix[X2 - X, Y2 - Y] * Pixels[X2, Y2, 2];
              B := B + Matrix[X2 - X, Y2 - Y] * Pixels[X2, Y2, 3];
            end;
          end;
        R := Round (R / Divisor);
        G := Round (G / Divisor);
        B := Round (B / Divisor);
        if R < 0 then
          R := 0;
        if G < 0 then
          G := 0;
        if B < 0 then
          B := 0;
        if R > 255 then
          R := 255;
        if G > 255 then
          G := 255;
        if B > 255 then
          B := 255;
        Image2.Picture.Bitmap.Canvas.Pixels[X, Y] := RGB (Round (R / Divisor), Round (G / Divisor), Round (B / Divisor));
      end;
  end;
end;

procedure FindEdges (Image1: TImage; var Image2: TImage; Matrix: TMatrix; Radius: TPoint; Divisor: Real);
var
  R, G, B: Int64;
  X, Y, X2, Y2: Integer;
begin
  Image2.Picture := Image1.Picture;
  for X := 0 to Image1.Picture.Width - 1 do
    for Y := 0 to Image1.Picture.Height - 1 do
      Pixels[X, Y] := ColorToRGB (Image1.Picture.Bitmap.Canvas.Pixels[X, Y]);
  for X := 0 to Image1.Picture.Width - 1 do
    for Y := 0 to Image1.Picture.Height - 1 do
    begin
      R := 0;
      G := 0;
      B := 0;
      for X2 := X - Radius.X to X + Radius.X do
        for Y2 := Y - Radius.Y to Y + Radius.Y do
        begin
          if (X2 < 0) or (X2 > Image1.Picture.Width - 1) or (Y2 < 0) or (Y2 > Image1.Picture.Height - 1) then
          begin
            R := R - Pixels[X, Y, 1];
            G := G - Pixels[X, Y, 2];
            B := B - Pixels[X, Y, 3];
          end
          else
          begin
            R := R + Matrix[X2 - X, Y2 - Y] * Pixels[X2, Y2, 1];
            G := G + Matrix[X2 - X, Y2 - Y] * Pixels[X2, Y2, 2];
            B := B + Matrix[X2 - X, Y2 - Y] * Pixels[X2, Y2, 3];
          end;
        end;
      R := Round (R / Divisor);
      G := Round (G / Divisor);
      B := Round (B / Divisor);
      if R < 0 then
        R := 0;
      if G < 0 then
        G := 0;
      if B < 0 then
        B := 0;
      if R > 255 then
        R := 255;
      if G > 255 then
        G := 255;
      if B > 255 then
        B := 255;
      Image2.Picture.Bitmap.Canvas.Pixels[X, Y] := RGB (255 - R, 255 - G, 255 - B);
    end;
end;

procedure MotionBlur (Image1: TImage; var Image2: TImage; Matrix: TMatrix; Radius: TPoint; Divisor: Real);
var
  R, G, B, D: Int64;
  X, Y, X2, Y2: Integer;
begin
  Image2.Picture := Image1.Picture;
  BooleanMatrix := MatrixToBooleanMatrix (Matrix, Radius);
  for X := 0 to Image1.Picture.Width - 1 do
    for Y := 0 to Image1.Picture.Height - 1 do
      Pixels[X, Y] := ColorToRGB (Image1.Picture.Bitmap.Canvas.Pixels[X, Y]);
  for X := 0 to Image1.Picture.Width - 1 do
    for Y := 0 to Image1.Picture.Height - 1 do
    begin
      R := 0;
      G := 0;
      B := 0;
      D := 0;
      for X2 := X - Radius.X to X + Radius.X do
        for Y2 := Y - Radius.Y to Y + Radius.Y do
        begin
          if BooleanMatrix[X2 - X, Y2 - Y] then
          begin
            if (X2 < 0) or (X2 > Image1.Picture.Width - 1) or (Y2 < 0) or (Y2 > Image1.Picture.Height - 1) then
              Inc (D)
            else
            begin
              R := R + Pixels[X2, Y2, 1];
              G := G + Pixels[X2, Y2, 2];
              B := B + Pixels[X2, Y2, 3];
            end;
          end;
        end;
      Image2.Picture.Bitmap.Canvas.Pixels[X, Y] := RGB (Round (R / (Divisor - D)), Round (G / (Divisor - D)), Round (B / (Divisor - D)));
    end;
end;

procedure GaussianBlur (Image1: TImage; var Image2: TImage; Matrix: TMatrix; Radius: TPoint; Divisor: Real);
var
  R, G, B, D: Int64;
  X, Y, X2, Y2: Integer;
begin
  Image2.Picture := Image1.Picture;
  for X := 0 to Image1.Picture.Width - 1 do
    for Y := 0 to Image1.Picture.Height - 1 do
      Pixels[X, Y] := ColorToRGB (Image1.Picture.Bitmap.Canvas.Pixels[X, Y]);
  for X := 0 to Image1.Picture.Width - 1 do
    for Y := 0 to Image1.Picture.Height - 1 do
    begin
      R := 0;
      G := 0;
      B := 0;
      D := 0;
      for X2 := X - Radius.X to X + Radius.X do
        for Y2 := Y - Radius.Y to Y + Radius.Y do
        begin
          if (X2 < 0) or (X2 > Image1.Picture.Width - 1) or (Y2 < 0) or (Y2 > Image1.Picture.Height - 1) then
            Inc (D, Matrix[X2 - X, Y2 - Y])
          else
          begin
            R := R + Matrix[X2 - X, Y2 - Y] * Pixels[X2, Y2, 1];
            G := G + Matrix[X2 - X, Y2 - Y] * Pixels[X2, Y2, 2];
            B := B + Matrix[X2 - X, Y2 - Y] * Pixels[X2, Y2, 3];
          end;
        end;
      Image2.Picture.Bitmap.Canvas.Pixels[X, Y] := RGB (Round (R / (Divisor - D)), Round (G / (Divisor - D)), Round (B / (Divisor - D)));
    end;
end;

procedure Filter (Image1: TImage; var Image2: TImage; Matrix: TMatrix; Radius: TPoint; Divisor: Real);
var
  R, G, B, D: Int64;
  X, Y, X2, Y2: Integer;
begin
  Image2.Picture := Image1.Picture;
  for X := 0 to Image1.Picture.Width - 1 do
    for Y := 0 to Image1.Picture.Height - 1 do
      Pixels[X, Y] := ColorToRGB (Image1.Picture.Bitmap.Canvas.Pixels[X, Y]);
  for X := 0 to Image1.Picture.Width - 1 do
    for Y := 0 to Image1.Picture.Height - 1 do
    begin
      R := 0;
      G := 0;
      B := 0;
      D := 0;
      for X2 := X - Radius.X to X + Radius.X do
        for Y2 := Y - Radius.Y to Y + Radius.Y do
        begin
          if (X2 < 0) or (X2 > Image1.Picture.Width - 1) or (Y2 < 0) or (Y2 > Image1.Picture.Height - 1) then
            Inc (D, Matrix[X2 - X, Y2 - Y])
          else
          begin
            R := R + Matrix[X2 - X, Y2 - Y] * Pixels[X2, Y2, 1];
            G := G + Matrix[X2 - X, Y2 - Y] * Pixels[X2, Y2, 2];
            B := B + Matrix[X2 - X, Y2 - Y] * Pixels[X2, Y2, 3];
          end;
        end;
      R := Round (R / (Divisor - D));
      G := Round (G / (Divisor - D));
      B := Round (B / (Divisor - D));
      if R < 0 then
        R := 0;
      if G < 0 then
        G := 0;
      if B < 0 then
        B := 0;
      if R > 255 then
        R := 255;
      if G > 255 then
        G := 255;
      if B > 255 then
        B := 255;
      Image2.Picture.Bitmap.Canvas.Pixels[X, Y] := RGB ({255 - }R, {255 - }G, {255 - }B);
    end;
end;

procedure Blur3 (Image1: TImage; var Image2: TImage; Matrix: TMatrix; Radius: TPoint; Divisor: Real);
var
  R, G, B, D: Int64;
  X, Y, X2, Y2: Integer;
begin
  Image2.Picture := Image1.Picture;
  if Max (Radius.X, Radius.Y) > 0 then
  begin
    for X := 0 to Image1.Picture.Width - 1 do
      for Y := 0 to Image1.Picture.Height - 1 do
        Pixels[X, Y] := ColorToRGB (Image1.Picture.Bitmap.Canvas.Pixels[X, Y]);
    for X := 0 to Image1.Picture.Width - 1 do
      for Y := 0 to Image1.Picture.Height - 1 do
      begin
        R := 0;
        G := 0;
        B := 0;
        D := 0;
        for X2 := X - Radius.X to X + Radius.X do
        begin
          if (X2 < 0) or (X2 > Image1.Picture.Width - 1) then
            Inc (D, Matrix[X2 - X, 0])
          else
          begin
            R := R + Matrix[X2 - X, 0] * Pixels[X2, Y, 1];
            G := G + Matrix[X2 - X, 0] * Pixels[X2, Y, 2];
            B := B + Matrix[X2 - X, 0] * Pixels[X2, Y, 3];
          end;
        end;
        for Y2 := Y - Radius.Y to Y + Radius.Y do
        begin
          if Y2 <> Y then
          begin
            if (Y2 < 0) or (Y2 > Image1.Picture.Height - 1) then
              Inc (D, Matrix[0, Y2 - Y])
            else
            begin
              R := R + Matrix[0, Y2 - Y] * Pixels[X, Y2, 1];
              G := G + Matrix[0, Y2 - Y] * Pixels[X, Y2, 2];
              B := B + Matrix[0, Y2 - Y] * Pixels[X, Y2, 3];
            end;
          end;
        end;
        Image2.Picture.Bitmap.Canvas.Pixels[X, Y] := RGB (Round (R / (Divisor - D)), Round (G / (Divisor - D)), Round (B / (Divisor - D)));
      end;
  end;
end;

procedure Bevel (Image1: TImage; var Image2: TImage; Color: TColor; Units: TPoint);
var
  X, Y, X2, Y2, S, S2: Integer;
  R, G, B: Int64;
  Pixel: TColor;
  M: Real;
begin
  S := 0;
  M := Max (Units.X, Units.Y);
  Image2.Picture := Image1.Picture;
  for X := 0 to Image1.Picture.Width - 1 do
    for Y := 0 to Image1.Picture.Height - 1 do
    begin
      if not ((X >= Units.X) and (X <= Image1.Picture.Width - Units.X) and (Y >= Units.Y) and (Y <= Image1.Picture.Height - Units.Y)) then
      begin
        Pixels[X, Y] := ColorToRGB (Image1.Picture.Bitmap.Canvas.Pixels[X, Y]);
        Marked[X, Y] := True;
      end;
    end;
  for X2 := X - Units.X to X + Units.X do
    for Y2 := Y - Units.Y to Y + Units.Y do
      //if Dis (X, Y, X2, Y2) <= M then
        Inc (S);
  for X := 0 to Image1.Picture.Width - 1 do
    for Y := 0 to Image1.Picture.Height - 1 do
    begin
      if Marked[X, Y] then
      begin
        S2 := 0;
        for X2 := X - Units.X to X + Units.X do
          for Y2 := Y - Units.Y to Y + Units.Y do
            if Dis (X, Y, X2, Y2) <= M then
            begin
              if (X2 < 0) or (Y2 < 0) or (X2 >= Image1.Picture.Width) or (Y2 >= Image1.Picture.Height) then
                Inc (S2);
            end;
        //Pixel := Image1.Picture.Bitmap.Canvas.Pixels[X, Y];
        R := (S - S2) * Pixels[X, Y, 1] + S2 * GetRValue (Color);
        G := (S - S2) * Pixels[X, Y, 2] + S2 * GetGValue (Color);
        B := (S - S2) * Pixels[X, Y, 3] + S2 * GetBValue (Color);
        Image2.Picture.Bitmap.Canvas.Pixels[X, Y] := RGB (Round (R / S), Round (G / S), Round (B / S));
      end;
    end;
end;

procedure Rotate (Image1: TImage; var Image2: TImage; Angle: Real; Center: TPoint; Background: TColor);
var
  A, D: Real;
  X, Y, X3, Y3: Integer;
begin
  Image2.Picture := Image1.Picture;
  Angle := DegToRad (Angle);
  for X := 0 to Image2.Picture.Width - 1 do
    for Y := 0 to Image2.Picture.Height - 1 do
    begin
      A := ATan (X - Center.X, Y - Center.Y) + Angle;
      D := Dis(X, Y, Center.X, Center.Y);
      X3 := Round(Cos (A) * D) + Center.X;
      Y3 := Round(Sin (A) * D) + Center.Y;
      if (X3 < 0) or (Y3 < 0) or (X3 >= Image2.Picture.Width) or (Y3 >= Image2.Picture.Height) then
        Image2.Picture.Bitmap.Canvas.Pixels[X, Y] := Background
      else
        Image2.Picture.Bitmap.Canvas.Pixels[X, Y] := Image1.Picture.Bitmap.Canvas.Pixels[X3, Y3];
    end;
end;

procedure AverageBlur (Image1: TImage; var Image2: TImage);
var
  X, Y: Integer;
  Pixel: TColor;
  R, G, B: Int64;
begin
  R := 0;
  G := 0;
  B := 0;
  Image2.Picture := Image1.Picture;
  for X := 0 to Image1.Picture.Width - 1 do
    for Y := 0 to Image1.Picture.Height - 1 do
    begin
      Pixel := Image1.Picture.Bitmap.Canvas.Pixels[X, Y];
      R := R + GetRValue (Pixel);
      G := G + GetGValue (Pixel);
      B := B + GetBValue (Pixel);
    end;
  R := Round (R / (Image1.Picture.Width * Image1.Picture.Height));
  G := Round (G / (Image1.Picture.Width * Image1.Picture.Height));
  B := Round (B / (Image1.Picture.Width * Image1.Picture.Height));
  Pixel := RGB (R, G, B);
  for X := 0 to Image1.Picture.Width - 1 do
    for Y := 0 to Image1.Picture.Height - 1 do
      Image2.Picture.Bitmap.Canvas.Pixels[X, Y] := Pixel;
end;

procedure Lens (Image1: TImage; var Image2: TImage; R1, R2: Real; Center: TPoint);
var
  X, Y: Integer;
  Ra1, Ra2: Real;
begin
  Image2.Picture := Image1.Picture;
  for X := 0 to Image1.Picture.Width - 1 do
    for Y := 0 to Image1.Picture.Height - 1 do
    begin
      Ra1 := R1 * Abs (Round (ATan (X - Center.X, Y - Center.Y) * 180 / Pi) mod 90 - 45) / 45;
      Ra2 := R2 * Abs (Round (ATan (X - Center.X, Y - Center.Y) * 180 / Pi) mod 90 - 45) / 45;
      Image2.Picture.Bitmap.Canvas.Pixels[X, Y] := Image1.Picture.Bitmap.Canvas.Pixels[
      Round (Cos (ATan (X - Center.X, Y - Center.Y)) * Dis (X, Y, Center.X, Center.Y) * Ra1) + Center.X,
      Round (Sin (ATan (X - Center.X, Y - Center.Y)) * Dis (X, Y, Center.X, Center.Y) * Ra2) + Center.Y];
    end;
end;

procedure Disorganize (Image1: TImage; var Image2: TImage; Value: Integer);
var
  X, Y, X2, Y2: Integer;
begin
  Randomize;
  Image2.Picture := Image1.Picture;
  for X := 0 to Image1.Picture.Width - 1 do
    for Y := 0 to Image1.Picture.Height - 1 do
    begin
      repeat
        X2 := Random (Value * 2 + 1);
        Y2 := Random (Value * 2 + 1);
      until (X - Value + X2 >= 0) and (X - Value + X2 < Image2.Picture.Width) and (Y - Value + Y2 >= 0) and (Y - Value + Y2 < Image2.Picture.Height);
      Image2.Picture.Bitmap.Canvas.Pixels[X, Y] := Image1.Picture.Bitmap.Canvas.Pixels[X - Value + X2, Y - Value + Y2];
    end;
end;

procedure Brightness (Image1: TImage; var Image2: TImage; Value: Integer);
var
  X, Y: Integer;
  Pixel: TColor;
  R, G, B: SmallInt;
begin
  Image2.Picture := Image1.Picture;
  for X := 0 to Image1.Picture.Width - 1 do
    for Y := 0 to Image1.Picture.Height - 1 do
    begin
      Pixel := Image2.Picture.Bitmap.Canvas.Pixels[X, Y];
      R := GetRValue (Pixel) + Value;
      G := GetGValue (Pixel) + Value;
      B := GetBValue (Pixel) + Value;
      if R < 0 then
        R := 0;
      if G < 0 then
        G := 0;
      if B < 0 then
        B := 0;
      if R > 255 then
        R := 255;
      if G > 255 then
        G := 255;
      if B > 255 then
        B := 255;
      Image2.Picture.Bitmap.Canvas.Pixels[X, Y] := RGB (R, G, B);
    end;
end;

procedure Set_Bounds (Image1: TImage; X, Y: Word; Telorance: Byte);
var
  R, G, B: Byte;
  X2, Y2: ShortInt;
begin
  Marked[X, Y] := True;
  if X < MinX then
    MinX := X;
  if Y < MinY then
    MinY := Y;
  if X > MaxX then
    MaxX := X;
  if Y > MaxY then
    MaxY := Y;
  Pixel1 := Image1.Picture.Bitmap.Canvas.Pixels[X, Y];
  R := GetRValue (Pixel1);
  G := GetGValue (Pixel1);
  B := GetBValue (Pixel1);
  for X2 := -1 to +1 do
    for Y2 := -1 to +1 do
      if X + X2 >= 0 then
        if Y + Y2 >= 0 then
          if X + X2 <= Image1.Picture.Width - 1 then
            if Y + Y2 <= Image1.Picture.Height - 1 then
              if (Abs (X2) <> Abs (Y2)) or (X2 = 0) then
                if not Marked[X + X2, Y + Y2] then
                begin
                  Pixel2 := Image1.Picture.Bitmap.Canvas.Pixels[X + X2, Y + Y2];
                  if Abs (R - GetRValue (Pixel2)) <= Telorance then
                    if Abs (G - GetGValue (Pixel2)) <= Telorance then
                        if Abs (B - GetBValue (Pixel2)) <= Telorance then
                          Set_Bounds (Image1, X + X2, Y + Y2, Telorance);
                end;
end;

procedure Show_Bounds (var Image2: TImage);
var
  X, Y, X2, Y2: Integer;
  Count: ShortInt;
  Pixel: TColor;
begin
  for X := MinX to MaxX do
    for Y := MinY to MaxY do
    begin
      if Marked[X, Y] then
      begin
        Count := 0;
        for X2 := -1 to +1 do
          for Y2 := -1 to +1 do
            if Marked[X + X2, Y + Y2] then
              Inc (Count);
        if Count < 9 then
        begin
          Pixel := Image2.Picture.Bitmap.Canvas.Pixels[X, Y];
          Image2.Picture.Bitmap.Canvas.Pixels[X, Y] := RGB (255 - GetRValue (Pixel), 255 - GetGValue (Pixel), 255 - GetBValue (Pixel));
        end;
      end;
    end;
end;

Procedure EqulizationH(imgCurrent: TImage; C: Integer);
Var
  N, R, G, B : Integer ;
  hist, eqHist, histCum : Array [0..255] of Integer ;
  I: Integer;
  J, K : Integer;
begin
  for I := 0 to 255 do
    hist[I] := 0;
  N := ImgCurrent.Picture.Height * ImgCurrent.Picture.Width ;
  for I := 1 to ImgCurrent.Picture.Width do
    for J := 1 to ImgCurrent.Picture.Height do
    Begin
      if C = 1 then
        K := GetRValue(ImgCurrent.Canvas.Pixels[I, J])
      Else
      if C = 2 then
        K := GetGValue(ImgCurrent.Canvas.Pixels[I, J])
      Else
        K := GetBValue(ImgCurrent.Canvas.Pixels[I, J]);
      Inc (hist[k]) ;
    End;
  histCum[0] := hist[0];
  for K := 1 to 255 do
    histCum[k] := histCum[k-1] + hist[k] ;
  for K := 0 to 255 do
    eqHist[K] := Trunc((255 * histCum[K] - N)/ N) ;
  for J := 1 to ImgCurrent.Picture.Height do
    for I := 1 to ImgCurrent.Picture.Width do
    Begin
      R := eqHist[GetRValue(ImgCurrent.Canvas.Pixels[I, J])] ;
      G := eqHist[GetGValue(ImgCurrent.Canvas.Pixels[I, J])] ;
      B := eqHist[GetBValue(ImgCurrent.Canvas.Pixels[I, J])] ;
      if R > 255 then
        R := 255 ;
      if G > 255 then
        G := 255 ;
      if B > 255 then
        B := 255 ;

      if R < 0 then
        R := 0 ;
      if G < 0 then
        G := 0 ;
      if B < 0 then
        B := 0 ;

      ImgCurrent.Canvas.Pixels[I, J] := RGB(R, G, B) ;
    End;
end;


procedure Select(Image1: TImage; var Image2: TImage; X, Y: Word; Telorance: Byte);
begin
  MinX := 10000;
  MinY := 10000;
  MaxX := -1;
  MaxY := -1;
  Set_Bounds(Image1, X, Y, Telorance);
  Show_Bounds(Image2);
end;

function ColorToStr(Color: TColor): string;
begin
  Result := ColorToString(Color);
  if Result[1] = '$' then
    Result[1] := '#';
  if Copy(Result, 1, 2) = 'cl' then
    Delete (Result, 1, 2);
end;

procedure Negate(Image1: TImage; var Image2: TImage);
var
  X, Y: Word;
  Pixel: TColor;
begin
  Image2.Picture := Image1.Picture;
  for X := 0 to Image1.Picture.Width - 1 do
    for Y := 0 to Image1.Picture.Height - 1 do
    begin
      Pixel := Image1.Picture.Bitmap.Canvas.Pixels[X, Y];
      Image2.Picture.Bitmap.Canvas.Pixels[X, Y] := RGB (255 - GetRValue (Pixel), 255 - GetGValue (Pixel), 255 - GetBValue (Pixel));
    end;
end;

procedure Pixelate (Image1: TImage; var Image2: TImage; Units: TPoint);
var
  X, Y, X2, Y2: Integer;
  R, G, B, S: Int64;
  Pixel: TColor;
begin
  Image2.Picture := Image1.Picture;
  for X := 0 to (Image1.Picture.Width div Units.X){ - 1} do
    for Y := 0 to (Image1.Picture.Height div Units.Y){ - 1} do
    begin
      R := 0;
      G := 0;
      B := 0;
      S := 0;
      for X2 := X * Units.X to X * Units.X + Units.X - 1 do
      begin
        for Y2 := Y * Units.Y to Y * Units.Y + Units.Y - 1 do
          if (X2 < Image1.Picture.Width) and (Y2 < Image1.Picture.Height) then
          begin
            Pixel := Image1.Picture.Bitmap.Canvas.Pixels[X2, Y2];
            R := R + GetRValue (Pixel);
            G := G + GetGValue (Pixel);
            B := B + GetBValue (Pixel);
            Inc(S);
          end;
      end;
      R := Round (R / S);
      G := Round (G / S);
      B := Round (B / S);
      for X2 := X * Units.X to X * Units.X + Units.X - 1 do
        for Y2 := Y * Units.Y to Y * Units.Y + Units.Y - 1 do
          Image2.Picture.Bitmap.Canvas.Pixels[X2, Y2] := RGB (R, G, B);
    end;
end;

type
  TBytesArray = array of Byte;
var
  Bytes: TBytesArray;
  nBytes: Integer;

function BytesPerPixel(APixelFormat: TPixelFormat): Integer;
begin
  Result := -1;
  case APixelFormat of
    pf8bit: Result := 1;
    pf16bit: Result := 2;
    pf24bit: Result := 3;
    pf32bit: Result := 4;
  end;
end;

procedure BitmapToBytes(Bitmap: TBitmap; out Bytes: TBytesArray; var nBytes : Longint);
var
  BytesPerLine: Integer;
  Row, BPP: Integer;
  PPixels : Pointer;
  PBytes : ^TBytesArray;
begin
  BPP := BytesPerPixel(Bitmap.PixelFormat);
  if BPP < 1 then
    raise Exception.Create('Unknown pixel format');
  nBytes := Bitmap.Width * Bitmap.Height * BPP;
  SetLength(Bytes, nBytes);
  BytesPerLine := Bitmap.Width * BPP;
  for Row := 0 to Bitmap.Height-1 do
  begin
    PBytes := @Bytes[Row * BytesPerLine];
    PPixels := Bitmap.ScanLine[Row];
    CopyMemory(PBytes, PPixels, BytesPerLine);
  end;
end;

procedure BytesToBitmap(const Bytes: TBytesArray; Bitmap: TBitmap;
  APixelFormat: TPixelFormat; AWidth, AHeight: Integer);
var
  BytesPerLine: Integer;
  Row, BPP: Integer;
  PPixels, PBytes : Pointer;
begin
  BPP := BytesPerPixel(APixelFormat);
  if BPP < 1 then
    raise Exception.Create('Unknown pixel format');
  if (AWidth * AHeight * BPP) <> Length(Bytes) then
    raise Exception.Create('Bytes do not match image properties');
  Bitmap.Width := AWidth;
  Bitmap.Height := AHeight;
  Bitmap.PixelFormat := APixelFormat;
  BytesPerLine := Bitmap.Width * BPP;
  for Row := 0 to Bitmap.Height-1 do
  begin
    PBytes := @Bytes[Row * BytesPerLine];
    PPixels := Bitmap.ScanLine[Row];
    CopyMemory(PPixels, PBytes, BytesPerLine);
  end;
end;

procedure Median(Image1: TImage; var Image2: TImage; Radius: TPoint);
var
  R, G, B, D: Int64;
  X, Y, X2, Y2, Divisor: Integer;
  Bytes2: TBytesArray;
begin
  Divisor := (Radius.X * 2 + 1) * (Radius.Y * 2 + 1);
  Image2.Picture := Image1.Picture;
  BitmapToBytes(Image1.Picture.Bitmap, Bytes, nBytes);
  Bytes2 := Bytes;
  for X := 0 to Image1.Picture.Width - 1 do
    for Y := 0 to Image1.Picture.Height - 1 do
    begin
      R := 0;
      G := 0;
      B := 0;
      D := 0;
      for X2 := X - Radius.X to X + Radius.X do
        for Y2 := Y - Radius.Y to Y + Radius.Y do
        begin
          if (X2 < 0) or (X2 > Image1.Picture.Width - 1) or (Y2 < 0) or (Y2 > Image1.Picture.Height - 1) then
            Inc (D)
          else
          begin
            R := R + Bytes2[3 * (Y2 * Image1.Picture.Width + X2) + 2];
            G := G + Bytes2[3 * (Y2 * Image1.Picture.Width + X2) + 1];
            B := B + Bytes2[3 * (Y2 * Image1.Picture.Width + X2) + 0];
          end;
        end;
      R := Round (R / (Divisor - D));
      G := Round (G / (Divisor - D));
      B := Round (B / (Divisor - D));
      Bytes[3 * (Y * Image1.Picture.Width + X) + 2] := R;
      Bytes[3 * (Y * Image1.Picture.Width + X) + 1] := G;
      Bytes[3 * (Y * Image1.Picture.Width + X) + 0] := B;
    end;
  BytesToBitmap(Bytes, Image2.Picture.Bitmap, Image1.Picture.Bitmap.PixelFormat, Image1.Picture.Bitmap.Width, Image1.Picture.Bitmap.Height);
end;

procedure GBlur(Image1: TImage; var Image2: TImage; Matrix: TMatrix; Radius: TPoint; Divisor: Real);
var
  R, G, B, D: Int64;
  X, Y, X2, Y2: Integer;
  Bytes2: TBytesArray;
begin
  Image2.Picture := Image1.Picture;
  BitmapToBytes(Image1.Picture.Bitmap, Bytes, nBytes);
  Bytes2 := Bytes;
  for X := 0 to Image1.Picture.Width - 1 do
    for Y := 0 to Image1.Picture.Height - 1 do
    begin
      R := 0;
      G := 0;
      B := 0;
      D := 0;
      for X2 := X - Radius.X to X + Radius.X do
        for Y2 := Y - Radius.Y to Y + Radius.Y do
        begin
          if (X2 < 0) or (X2 > Image1.Picture.Width - 1) or (Y2 < 0) or (Y2 > Image1.Picture.Height - 1) then
          begin
            Inc (D, Matrix[X2 - X, Y2 - Y]);
          end
          else
          begin
            R := R + Matrix[X2 - X, Y2 - Y] * Bytes2[3 * (Y2 * Image1.Picture.Width + X2) + 2];
            G := G + Matrix[X2 - X, Y2 - Y] * Bytes2[3 * (Y2 * Image1.Picture.Width + X2) + 1];
            B := B + Matrix[X2 - X, Y2 - Y] * Bytes2[3 * (Y2 * Image1.Picture.Width + X2) + 0];
          end;
        end;
      begin
        R := Round (R / (Divisor - D));
        G := Round (G / (Divisor - D));
        B := Round (B / (Divisor - D));
      end;
      Bytes[3 * (Y * Image1.Picture.Width + X) + 2] := R;
      Bytes[3 * (Y * Image1.Picture.Width + X) + 1] := G;
      Bytes[3 * (Y * Image1.Picture.Width + X) + 0] := B;
    end;
  BytesToBitmap(Bytes, Image2.Picture.Bitmap, Image1.Picture.Bitmap.PixelFormat, Image1.Picture.Bitmap.Width, Image1.Picture.Bitmap.Height);
end;

procedure Value;
begin
  Inc(HistoryIndex);
  HistoryMaxIndex := HistoryIndex;
  History[HistoryIndex] := TImage.Create(Form1);
  History[HistoryIndex].Parent := Form1;
  History[HistoryIndex].Picture := Form1.imgCurrent.Picture;
  History[HistoryIndex].Visible := False;
  Form1.Page1.ActivePageIndex := 1;
  Form1.Selection.Visible := False;
  imgActive.Picture := Form1.imgCurrent.Picture;
end;

procedure SetLabelCaption (TrackBar1: TTrackBar; var Label1: TLabel);
begin
  Label1.Caption := IntToStr (TrackBar1.Position);
end;

procedure TForm1.bcBrushClick(Sender: TObject);
begin
  TButtonColor(Sender).Caption := ColorToStr(TButtonColor(Sender).SymbolColor);
end;

procedure TForm1.CategoryButtons1SelectedCategoryChange(Sender: TObject;
  const Category: TButtonCategory);
var
  imgJpeg: TJPEGImage;
  imgGIF: TGIFImage;
  imgPng: TPngImage;
  S: string;
  I, J, N: Integer;
begin
  N:= 1;
  case Category.Index of
    1: if OpenPictureDialog1.Execute then
       begin
          imgSaved.Picture.LoadFromFile(OpenPictureDialog1.FileName);
          S := LowerCase(Copy(OpenPictureDialog1.FileName, Length(OpenPictureDialog1.FileName) - 3, 4));
          if S[1] = '.' then
            Delete(S, 1, 1);
          if S = 'bmp' then
            imgCurrent.Picture.LoadFromFile(OpenPictureDialog1.FileName);
          if (S = 'jpg') or (S = 'jpeg') then
          begin
            imgJpeg := TJpegImage.Create;
            imgJpeg.LoadFromFile(OpenPictureDialog1.FileName);
            imgSaved.Picture.Bitmap.Assign(ImgJpeg);
            imgCurrent.Picture.Bitmap.Assign(ImgJpeg);
          end;
          if S = 'gif' then
          begin
            imgGIF := TGIFImage.Create;
            imgGIF.LoadFromFile(OpenPictureDialog1.FileName);
            imgSaved.Picture.Bitmap.Assign(ImgGIF);
            imgCurrent.Picture.Bitmap.Assign(ImgGIF);
          end;
          if S = 'png' then
          begin
            imgPng := TPngImage.Create;
            imgPng.LoadFromFile(OpenPictureDialog1.FileName);
            imgSaved.Picture.Bitmap.Assign(ImgPng);
            imgCurrent.Picture.Bitmap.Assign(ImgPng);
          end;
          HistoryIndex := 1;
          HistoryMaxIndex := 1;
          History[HistoryIndex] := TImage.Create(Form1);
          History[HistoryIndex].Parent := Form1;
          History[HistoryIndex].Picture := imgCurrent.Picture;
          History[HistoryIndex].Visible := False;
          Page1.ActivePageIndex := 1;
          imgActive.Picture := imgCurrent.Picture;
          Load := True;
       end;
    2:
      if SavePictureDialog1.Execute then
      begin
        if (SavePictureDialog1.FilterIndex = 3) or (SavePictureDialog1.FilterIndex = 4) then
        begin
          imgJpeg := TJpegImage.Create;
          imgJpeg.Assign(imgActive.Picture.Bitmap);
          imgJpeg.SaveToFile(SavePictureDialog1.FileName + '.jpg');
        end;
        if SavePictureDialog1.FilterIndex = 1 then
        begin
          imgGIF := TGIFImage.Create;
          imgGIF.Assign(imgActive.Picture.Bitmap);
          imgGIF.SaveToFile(SavePictureDialog1.FileName + '.gif');
        end;
        if SavePictureDialog1.FilterIndex = 2 then
        begin
          imgPng := TPngImage.Create;
          imgPng.Assign(imgActive.Picture.Bitmap);
          imgPng.SaveToFile(SavePictureDialog1.FileName + '.png');
        end;
       end;
    3:
      if SavePictureDialog1.Execute then
      begin
        if (SavePictureDialog1.FilterIndex = 3) or (SavePictureDialog1.FilterIndex = 4) then
        begin
          imgJpeg := TJpegImage.Create;
          imgJpeg.Assign(imgActive.Picture.Bitmap);
          imgJpeg.SaveToFile(SavePictureDialog1.FileName + '.jpg');
          imgSaved.Picture.LoadFromFile(SavePictureDialog1.FileName + '.jpg');
        end;
        if SavePictureDialog1.FilterIndex = 1 then
        begin
          imgGIF := TGIFImage.Create;
          imgGIF.Assign(imgActive.Picture.Bitmap);
          imgGIF.SaveToFile(SavePictureDialog1.FileName + '.gif');
          imgSaved.Picture.LoadFromFile(SavePictureDialog1.FileName + '.gif');
        end;
        if SavePictureDialog1.FilterIndex = 2 then
        begin
          imgPng := TPngImage.Create;
          imgPng.Assign(imgActive.Picture.Bitmap);
          imgPng.SaveToFile(SavePictureDialog1.FileName + '.png');
          imgSaved.Picture.LoadFromFile(SavePictureDialog1.FileName + '.png');
        end;
        if SavePictureDialog1.FilterIndex = 5 then
        begin
          imgCurrent.Picture.Bitmap.SaveToFile(SavePictureDialog1.FileName + '.bmp');
          imgSaved.Picture.LoadFromFile(SavePictureDialog1.FileName + '.bmp');
        end;
       end;
    5:
      if HistoryIndex > 1 then
      begin
        Dec(HistoryIndex);
        imgCurrent.Picture := History[HistoryIndex].Picture;
      end;
    6:
      if HistoryIndex < HistoryMaxIndex then
      begin
        Inc(HistoryIndex);
        imgCurrent.Picture := History[HistoryIndex].Picture;
      end;
    8:
      Begin
        N:= 2;
        imgCurrent.Width:= imgCurrent.Width * N;
        imgCurrent.Picture.Free;
        for I := 1 to imgSaved.Picture.Width * N do
          for J := 1 to imgSaved.Picture.Height * N do
          Begin
            imgCurrent.Canvas.Pixels[I, J]:= imgSaved.Canvas.Pixels[I div N, J div N];
          End;

      End;
    9: ;
    10:
       Begin
         for I := 1 to imgSaved.Picture.Width * N do
           for J := 1 to imgSaved.Picture.Height * N do
             imgCurrent.Canvas.Pixels[I, J]:= imgSaved.Canvas.Pixels[I, J];
       End;

    12: MouseAction := maNormal;
    13: MouseAction := maBlur;
    14: MouseAction := maSharpen ;
    15: MouseAction := maBrush;
    16: MouseAction := maMagicWand;
    17: Begin
          MouseAction := maSelection;
          BBrush.MouseD := False ;
          if BSelection.MouseU = False then
            BSelection.MouseD := True ;
        End;
    19: MouseAction := maEllipse;
    20: MouseAction := maRectangle;
    22:
      if ColorDialog1.Execute then
        CategoryButtons1.Categories[22].GradientColor := ColorDialog1.Color;
    23:
      if ColorDialog2.Execute then
        CategoryButtons1.Categories[23].GradientColor := ColorDialog2.Color;
    25:
      ShowMessage('Image Workshop 3.2.5' + #10#13 + 'by Seyyed Shayan Hoseyni and  Erfan Alimohammadi' + #10#13 + '© 2010 - 2011, all rights reserved');
  end;
  Selection.Visible := False;
  Timer2.Enabled := True;
end;

procedure TForm1.CategoryPanel1Collapse(Sender: TObject);
begin
  Speed := -Speed;
  Timer1.Enabled := True;
  imgSaved.Visible := False;
  imgCurrent.Visible := False;
end;

procedure TForm1.chbGrayscaleClick(Sender: TObject);
begin
  chbRed.Checked := False;
  chbGreen.Checked := False;
  chbBlue.Checked := False;
end;

procedure TForm1.chbRedClick(Sender: TObject);
begin
  chbGrayscale.Checked := False;
end;

procedure TForm1.chbEdgeClick(Sender: TObject);
begin
  tbEdge1.Enabled := chbEdge.Checked;
  lblEdge1.Enabled := chbEdge.Checked;
  lblEdge2.Enabled := chbEdge.Checked;
end;

procedure TForm1.imgCurrentMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  J, I2, K: Integer;
begin
  for K := 1 to imgCurrent.Picture.Width do
  for I2 := 1 to imgCurrent.Picture.Height do
  begin
    a[K,i2]:= imgCurrent.Canvas.Pixels[K,i2];
  end;

  if Load then
  begin
    imgCurrent.Picture := TImage(Sender).Picture;
    Page1.ActivePageIndex := 1;
    Selection.Visible := False;
    TImage(Sender).Cursor := crDefault;
    case MouseAction of
      maNormal: ;
      maBrush: ;
      maBlur: ;
      maSharpen: ;
        //if TImage(Sender) = imgCurrent then
          //img1.Picture.Bitmap.Canvas.MoveTo(Round(X * TImage(Sender).Picture.Bitmap.Width / TImage(Sender).Picture.Width), Round(Y * TImage(Sender).Picture.Bitmap.Height / TImage(Sender).Picture.Height));
      maMagicWand:
      begin
        {img1.Picture := imgActive.Picture;
        for X2 := 0 to img1.Picture.Width - 1 do
          for Y2 := 0 to img1.Picture.Height - 1 do
            Marked[X2, Y2] := False;
        Select(img1, imgCurrent, Round(X * img1.Picture.Bitmap.Width / img1.Picture.Width), Round(Y * img1.Picture.Bitmap.Height / img1.Picture.Height), seTelorance.Value);}
      end;
      maSelection:
        with Selection do
        begin
          if BSelection.MouseD then
            BSelection.MouseU := TRUE ;
          SelPropotional := ssShift in Shift;
          if ssShift in Shift then
            case Shape of
              stRectangle: Shape := stSquare;
              stEllipse: Shape := stCircle;
            end
          else
            case Shape of
              stSquare: Shape := stRectangle;
              stCircle: Shape := stEllipse;
            end;
          SelectionX1 := X;
          SelectionY1 := Y;
          Left := X;
          Top := Y;
          Width := 1;
          Height := 1;
          Visible := True;
          for J := 1 to 10 do
            BringToFront;
          TImage(Sender).Cursor := crCross;
        end;
      end;
      XS := X ;
      YS := Y ;
  end;
  if BBrush.MouseD then
    BBrush.MouseU := True ;
end;

procedure TForm1.imgCurrentMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
Var
  SZ, I, I2 : Integer ;
  R, G, B, k, c, rr, gg, bb, J, J2, S : Integer ;
begin
  {for I := 1 to imgCurrent.Picture.Width do
  for I2 := 1 to imgCurrent.Picture.Height do
  begin
    a[i,i2]:= imgCurrent.Canvas.Pixels[i,i2];
  end;}

  if ssLeft in Shift then
  begin
    imgCurrent.Picture := TImage(Sender).Picture;
    Page1.ActivePageIndex := 1;
    case MouseAction of
      //maNormal: ;
      maBrush:
      begin
        SZ := seBrush1.Value;
        imgCurrent.Canvas.Pen.Color:= bcBrush.SymbolColor ;
        imgCurrent.Canvas.Brush.Style:=bsSolid;
        imgCurrent.canvas.Brush.Color:= bcBrush.SymbolColor;
        //form1.Caption := IntToStr(X) + ' ' + IntToStr(Y) ;
        imgCurrent.Canvas.Ellipse(X, Y, X + SZ, Y + SZ);
      end;

      maBlur:
      Begin
        S := Trackbar1.Position ;
        SZ := SpinEdit1.Value ;
        for I := -sz to sz do
          for I2 := -sz to sz do
          begin
            if I * I + I2 * I2 <= SZ * SZ then
            Begin
              R := 0 ;
              G := 0 ;
              B := 0 ;
              k := 0 ;
              for J := I + x - S to I + x + S do
                for j2 := I2 + y - S to I2 + y + S do
                //if (J >= 0) and (J <= imgCurrent.Picture.Width - 1) and (J2 >= 0) and (J2 <= imgCurrent.Picture.Height - 1) then
                Begin
                  k := k + 1 ;
                  R := R + GetRValue(A[J, J2]) ;
                  G := G + GetGValue(A[J, J2]) ;
                  B := B + GetBValue(A[J, J2]) ;
                End;
              R := Round(R / k);
              B := Round(B / k);
              G := Round(G / k);
              if r>255 then
                r:=255;
              if g>255 then
               g:=255;
              if b>255 then
                b:=255;
              if r<0 then
                r:=0;
              if g<0 then
                g:=0;
              if b<0 then
                b:=0;
              ImgCurrent.Canvas.Pixels[x + I, y + I2] := RGB(R, G, B) ;
            End;
        End;
      End;

      maSharpen:
      Begin
        S := Trackbar1.Position ;
        SZ := SpinEdit1.Value ;
        for I := X - Sz to X + Sz do
          for I2 := Y - Sz to Y + Sz do
          Begin
            R := 0 ;
            G := 0 ;
            B := 0 ;
            for J := I - 1 to I + 1 do
              for j2 := I2 - 1 to I2 + 1 do
              Begin
                if (J = i) and (J2 = i2) then
                  c:=16
                else
                  c:=-1;
                r:=r + getrvalue(a[J, J2])*c;
                g:=g + getgvalue(a[J, J2])*c;
                b:=b + getbvalue(a[J, J2])*c;
              End;
              rr:=abs(r) div 8;
              gg:=abs(g) div 8;
              bb:=abs(b) div 8;
              if rr<0 then
                rr:=0;
              if gg<0 then
                gg:=0;
              if bb<0 then
                bb:=0;
              if rr>255 then
                rr:=255;
              if gg>255 then
                gg:=255;
              if bb>255 then
                bb:=255;
              imgCurrent.Canvas.Pixels[i,i2]:=rgb(rr,gg,bb);
            End;
      End;
        {if TImage(Sender) = imgCurrent then
        begin
          img1.Picture.Bitmap.Canvas.LineTo(Round(X * TImage(Sender).Picture.Bitmap.Width / TImage(Sender).Picture.Width), Round(Y * TImage(Sender).Picture.Bitmap.Height / TImage(Sender).Picture.Height));
          imgCurrent.Picture := img1.Picture;
        end;}
 //    maMagicWand: ;
      maSelection:
      with Selection do
      begin
        Left := Min(SelectionX1, X);
        Top := Min(SelectionY1, Y);
        Width := Abs (X - SelectionX1) + 1;
        Height := Abs (Y - SelectionY1) + 1;
        SelectionX2 := X;
        SelectionY2 := Y;
        {if (Shape = stSquare) or (Shape = stCircle) then
        begin
          Width := Min(Abs(X - SelectionX) + 1, Abs(Y - SelectionY) + 1);
          Height := Width;
        end;}
      end;
    end;
  end;
end;

procedure TForm1.imgCurrentMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  TImage(Sender).Cursor := crDefault;
  {BBrush.MouseU := False ;
  BSelection.MouseU := False ;}
  imgCurrent.Canvas.Brush.Color := ColorDialog2.Color ;
  imgCurrent.Canvas.Pen.Color := ColorDialog1.Color ;
  case MouseAction of
    maRectangle: imgCurrent.Canvas.Rectangle(XS, YS, X, Y);
    maEllipse: imgCurrent.Canvas.Ellipse(XS, YS, X, Y);
  end;
  if MouseAction > maNormal then
    Value;
end;

procedure TForm1.Page1Change(Sender: TObject);
{var
  Image: TImage;}
begin
  {Image := TImage.Create(Self);
  if imgActive.Picture = imgSaved.Picture then
    Image.Picture := imgSaved.Picture
  else
    Image.Picture := imgCurrent.Picture;
  imgActive.Picture := Image.Picture;}
  if Page1.ActivePageIndex = 0 then
    imgActive.Picture := imgSaved.Picture;
  if Page1.ActivePageIndex = 1 then
    imgActive.Picture := imgCurrent.Picture ;
end;

procedure TForm1.rbEdge1Click(Sender: TObject);
begin
  chbEdge.Enabled := True;
end;

procedure TForm1.rbEdge2Click(Sender: TObject);
begin
  chbEdge.Checked := False;
  chbEdge.Enabled := False;
end;

procedure TForm1.seBrush1Change(Sender: TObject);
begin
  seBrush2.Value := seBrush1.Value;
end;

procedure TForm1.seBrush2Change(Sender: TObject);
begin
  seBrush1.Value := seBrush2.Value;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Speed := 3;
  imgActive := TImage.Create(Self);
  imgActive.Parent := Self;
  imgActive.Visible := False;
  imgActive.Center := True;
  imgActive.Proportional := True;
  imgActive.Picture := imgCurrent.Picture;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case MouseAction of
    maNormal: ;
    maSelection:
    case Key of
      VK_UP: Selection.Top := Selection.Top - 1;
      VK_DOWN: Selection.Top := Selection.Top + 1;
      VK_LEFT: Selection.Left := Selection.Top + 1;
      VK_RIGHT: Selection.Left := Selection.Top - 1;
      VK_ESCAPE: Selection.Visible := False;
      VK_DELETE:
        {if Selection.Visible then
        begin
          imgCurrent.Canvas.Pen.Color := ColorDialog1.Color;
          imgCurrent.Canvas.Brush.Color := ColorDialog2.Color;
          SelectionX1 := Selection.Left;
          SelectionY1 := Selection.Top;
          SelectionX2 := Selection.Left + Selection.Width;
          SelectionY2 := Selection.Top + Selection.Height;
          case Selection.Shape of
            stRectangle: imgCurrent.Picture.Bitmap.Canvas.Rectangle(Round(SelectionX1 * imgCurrent.Picture.Bitmap.Width / imgCurrent.Width), Round(SelectionY1 * imgCurrent.Picture.Bitmap.Height / imgCurrent.Height), Round(SelectionX2 * imgCurrent.Picture.Bitmap.Width / imgCurrent.Width), Round(SelectionY2 * imgCurrent.Picture.Bitmap.Height / imgCurrent.Height));
            stEllipse: imgCurrent.Picture.Bitmap.Canvas.Ellipse(Round(SelectionX1 * imgCurrent.Picture.Bitmap.Width / imgCurrent.Width), Round(SelectionY1 * imgCurrent.Picture.Bitmap.Height / imgCurrent.Height), Round(SelectionX2 * imgCurrent.Picture.Bitmap.Width / imgCurrent.Width), Round(SelectionY2 * imgCurrent.Picture.Bitmap.Height / imgCurrent.Height));
          end;
        end;}
    end;
  end;
end;

procedure TForm1.SelectionMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (X >= 1) and (X <= Selection.Width - 1) and (Y >= 1) and (Y <= Selection.Height - 1) then
    Selection.Visible := False;
end;

procedure TForm1.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Selection.Shape := stRectangle;
end;

procedure TForm1.Shape2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Selection.Shape := stEllipse;
end;

procedure TForm1.SpeedButton10Click(Sender: TObject);
begin
  img1.Picture := imgActive.Picture;
  Rotate(img1, imgCurrent, -tbRotate.Position, Point(Round(imgActive.Picture.Bitmap.Width / 2), Round(imgActive.Picture.Bitmap.Height / 2)), bcRotate.SymbolColor);
  Value;
end;

procedure TForm1.SpeedButton11Click(Sender: TObject);
var
  R, G, B: Real;
begin
  R := 0;
  G := 0;
  B := 0;
  if chbRed.Checked then
    R := 1;
  if chbGreen.Checked then
    G := 1;
  if chbBlue.Checked then
    B := 1;
  if chbGrayscale.Checked then
  begin
    R := 0.30;
    G := 0.59;
    B := 0.11;
  end;
  if R + G + B > 0 then
  begin
    ColorChannels(imgActive, imgCurrent, R, G, B);
    Value;
  end;
  if chbNegate.Checked then
  begin
    Negate(imgActive, imgCurrent);
    Value;
  end;
end;

procedure TForm1.SpeedButton12Click(Sender: TObject);
begin
  Matrix := BlurMatrix(Point(tbBlur.Position, tbBlur.Position));
  GBlur(imgActive, imgCurrent, Matrix, Point(tbBlur.Position, tbBlur.Position), Sum);
  Value;
end;

procedure TForm1.SpeedButton13Click(Sender: TObject);
begin
  Pixelate(imgActive, imgCurrent, Point(tbPixelation.Position, tbPixelation.Position));
  Value;
end;

procedure TForm1.SpeedButton14Click(Sender: TObject);
{Var
  N, R, G, B : Integer ;
  hist, eqHist, histCum : Array [0..255] of Integer ;
  I: Integer;
  J, K : Integer; }
begin
 { for I := 0 to 255 do
    hist[I] := 0;
  N := ImgCurrent.Picture.Height * ImgCurrent.Picture.Width ;
  for I := 1 to ImgCurrent.Picture.Width do
    for J := 1 to ImgCurrent.Picture.Height do
    Begin
      K := GetRValue(ImgCurrent.Canvas.Pixels[I, J]);
      Inc (hist[k]) ;
    End;
  histCum[0] := hist[0];
  for K := 1 to 255 do
    histCum[k] := histCum[k-1] + hist[k] ;
  for K := 0 to 255 do
    eqHist[K] := Trunc((255 * histCum[K] - N)/ N) ;
  for J := 1 to ImgCurrent.Picture.Height do
    for I := 1 to ImgCurrent.Picture.Width do
    Begin
      R := eqHist[GetRValue(ImgCurrent.Canvas.Pixels[I, J])] ;
      G := eqHist[GetGValue(ImgCurrent.Canvas.Pixels[I, J])] ;
      B := eqHist[GetBValue(ImgCurrent.Canvas.Pixels[I, J])] ;
      if R > 255 then
        R := 255 ;
      if G > 255 then
        G := 255 ;
      if B > 255 then
        B := 255 ;

      if R < 0 then
        R := 0 ;
      if G < 0 then
        G := 0 ;
      if B < 0 then
        B := 0 ;

      ImgCurrent.Canvas.Pixels[I, J] := RGB(R, G, B) ;
    End;   }
  EqulizationH(imgCurrent, 1);
  EqulizationH(imgCurrent, 2);
  EqulizationH(imgCurrent, 3);
  Value;
end;


procedure TForm1.SpeedButton1Click(Sender: TObject);
var
   i,i2,r,g,b,rr,gg,bb,c,s,i3,i4:integer;
begin
  if rbEdge1.Checked then
  begin
    if chbEdge.Checked then
    begin
      Matrix := FindEdgesMatrix2(Point (tbEdge2.Position, tbEdge2.Position), tbEdge1.Position);
      FindEdges(imgActive, imgCurrent, Matrix, Point (tbEdge2.Position, tbEdge2.Position), Sum);
    end
    else
    begin
      Matrix := FindEdgesMatrix(Point (tbEdge2.Position, tbEdge2.Position));
      FindEdges(imgActive, imgCurrent, Matrix, Point (tbEdge2.Position, tbEdge2.Position), Sum);
    end;
  end
  else
  if rbEdge2.Checked = TRUE then
  begin
    Matrix := ShowEdgesMatrix(Point (tbEdge2.Position, tbEdge2.Position));
    ShowEdges(imgActive, imgCurrent, Matrix, Point (tbEdge2.Position, tbEdge2.Position), Sum);
  end
  Else
  if RadioButton1.Checked = TRUE then
  Begin
    for I := 1 to imgCurrent.Picture.Width do
    for I2 := 1 to imgCurrent.Picture.Height do
    begin
      a[i,i2]:=imgCurrent.Canvas.Pixels[i,i2];
    end;

    for I := 1 to imgCurrent.Picture.Width do
    for I2 := 1 to imgCurrent.Picture.Height do
    begin
      s:=1;
      r:=0;
      g:=0;
      b:=0;
      for i3 := i-s to i+s do
      for I4 := i2-s to i2+s do
      begin
        //m:=m+1;
        if (i3=i) and (i4=i2) then
          c:=8
        else
          c:=-1;
        r:=r + getrvalue(a[i3,i4])*c;
        g:=g + getgvalue(a[i3,i4])*c;
        b:=b + getbvalue(a[i3,i4])*c;
      end;
      rr:=abs(r) div 1;
      gg:=abs(g) div 1;
      bb:=abs(b) div 1;

     {if rr<0 then
        rr:=1;
      if gg<0 then
        gg:=1;
      if bb<0 then
        bb:=1;

      if rr>255 then
        rr:=255;
      if gg>255 then
       gg:=255;
      if bb>255 then
        bb:=255; }
      imgCurrent.Canvas.Pixels[i,i2]:=rgb(rr,gg,bb);
  End;
  End;
  Value;
end;

Var
  N1: Array [1..9] of TColor;
  P1, P2: TColor;

procedure TForm1.SpeedButton26Click(Sender: TObject);
var
  I, I2, C, J, J2: Integer;
Procedure Sort ;
Var
  b,d:integer;
  Z: TColor;
begin
 for b:=1 to c do
 begin
 for d:=1 to c - 1 do
  begin
    P1 := N1[d];
    P2 := N1[d + 1];
    if GetRValue(P1) + GetGValue(P1) + GetBValue(P1) < GetRValue(P2) + GetGValue(P2) + GetBValue(P2) then
    begin
     z:=n1[d];
     n1[d]:=n1[d+1];
     n1[d+1]:=z;
    end;
  end;
 end;
end;
begin
  for I := 0 to imgCurrent.Picture.Width - 1 do
    for I2 := 0 to imgCurrent.Picture.Height - 1 do
      A[I, I2] := imgCurrent.Picture.Bitmap.Canvas.Pixels[I, I2] ;

  for I := 0 to imgCurrent.Picture.Width - 1 do
    for I2 := 0 to imgCurrent.Picture.Height - 1 do
    Begin
      c := 0 ;
      for J := I - 1 to I + 1 do
        for J2 := I2 - 1 to I2 + 1 do
          if (J >= 0) and (J <= imgCurrent.Picture.Width - 1) and (J2 >= 0) and (J2 <= imgCurrent.Picture.Height - 1) then
          Begin
            c := c + 1;
            N1[C] := A[J, J2];
          End;
      Sort;
      imgCurrent.Canvas.Pixels[I, I2] := N1[(C + 1) div 2];
    End;
  //Median(imgActive, imgCurrent, Point(tbBlur.Position, tbBlur.Position));
  Value;
End;

procedure TForm1.SpeedButton29Click(Sender: TObject);
var
  I, J, R, S, P: Integer;
begin
  S:= TrackBar2.Position;
  for I := 1 to imgCurrent.Picture.Width do
    for J := 1 to imgCurrent.Picture.Height do
    Begin
      P:= imgCurrent.Canvas.Pixels[I, J];
      R:= (GetRValue(P) + GetGValue(P) + GetBValue(P)) div  3;
      if R >= S then
        imgCurrent.Canvas.Pixels[I, J]:= RGB(255, 255, 255)
      Else
        imgCurrent.Canvas.Pixels[I, J]:= RGB(0, 0, 0);
    End;
  Value;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  AverageBlur(imgActive, imgCurrent);
  Value;
end;
{var
  I,I2:integer;
  c,d,r,g,b,s,rr,bb,gg:integer;
  i3: Integer;
  I4, m: Integer;
begin
  for I := 1 to imgCurrent.Picture.Width do
  for I2 := 1 to imgCurrent.Picture.Height do
  begin
    a[i,i2]:= imgCurrent.Canvas.Pixels[i,i2];
  end;

  for I := 1 to imgCurrent.Picture.Width do
  for I2 := 1 to imgCurrent.Picture.Height do
  begin
    s:=2;
    m:=0;
    r:=0;
    g:=0;
    b:=0;
    for i3 := i-s to i+s do
    for I4 := i2-s to i2+s do
    begin
      m:=m+1;
      c:=a[i3,i4];
      r:=(r+getrvalue(a[i3,i4]));
      g:=(g+getgvalue(a[i3,i4]));
      b:=(b+getbvalue(a[i3,i4]));
    end;
    //label1.Caption:=inttostr(m);
    rr:=r div m;
    gg:=g div m;
    bb:=b div m;
    imgCurrent.Canvas.Pixels[i,i2]:=rgb(rr,gg,bb);
  end;
  Value;
end;}

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  Noise(imgActive, imgCurrent, tbNoise.Position, chbNoise.Checked);
  Value;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
  Disorganize(imgActive, imgCurrent, tbDisarrange.Position);
  Value;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
  Bevel(imgActive, imgCurrent, bcBevel.SymbolColor, Point (tbBevel.Position , tbBevel.Position));
  Value;
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
  Brightness(imgActive, imgCurrent, tbBrightness.Position);
  Value;
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
begin
  Matrix := MotionBlurMatrix(Point(tbMBlur1.Position, tbMBlur1.Position), tbMBlur2.Position);
  MotionBlur(imgActive, imgCurrent, Matrix, Point (tbMBlur1.Position, tbMBlur1.Position), Sum);
  Value;
end;

procedure TForm1.SpeedButton8Click(Sender: TObject);
begin
  Matrix := EmbossMatrix(Point(tbEmboss1.Position, tbEmboss1.Position), tbEmboss2.Position);
  Emboss(imgActive, imgCurrent, Matrix, Point(tbEmboss1.Position, tbEmboss1.Position));
  Value;
end;

procedure TForm1.SpeedButton9Click(Sender: TObject);
begin
  Matrix := SharpenMatrix(Point(tbSharpen.Position, tbSharpen.Position));
  Filter(imgActive, imgCurrent, Matrix, Point(tbSharpen.Position, tbSharpen.Position), 1);
  Value;
end;

procedure TForm1.SpinEdit1Change(Sender: TObject);
begin
  SpinEdit3.Value := SpinEdit1.Value ;
end;

procedure TForm1.SpinEdit3Change(Sender: TObject);
begin
  SpinEdit1.Value := SpinEdit3.Value ;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  S: string;
begin
  if (Page2.Width + Speed <= 250) and (Page2.Width + Speed >= 82) then
    Page2.Width := Page2.Width + Speed
  else
  begin
    Timer1.Enabled := False;
    if CategoryPanel1.Caption = 'Hide' then
      S := 'Show'
    else
      S := 'Hide';
    CategoryPanel1.Caption := S;
    CategoryPanel24.Caption := S;
    imgSaved.Visible := True;
    imgCurrent.Visible := True;
  end;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
  CategoryButtons1.SelectedItem := CategoryButtons1.Categories[0];
end;

procedure TForm1.TrackBar2Change(Sender: TObject);
begin
 SetLabelCaption (TTrackBar (Sender), Label7);
end;

procedure TForm1.tbEmboss1Change(Sender: TObject);
begin
  SetLabelCaption (TTrackBar (Sender), lblEmboss2);
end;

procedure TForm1.tbEmboss2Change(Sender: TObject);
begin
  SetLabelCaption (TTrackBar (Sender), lblEmboss4);
end;

procedure TForm1.tbSharpenChange(Sender: TObject);
begin
  SetLabelCaption (TTrackBar (Sender), lblSharpen2);
end;

procedure TForm1.tbRotateChange(Sender: TObject);
begin
  SetLabelCaption (TTrackBar (Sender), lblRotate3);
end;

procedure TForm1.tbEdge2Change(Sender: TObject);
begin
  SetLabelCaption (TTrackBar (Sender), lblEdge4);
end;

procedure TForm1.tbBlurChange(Sender: TObject);
begin
  SetLabelCaption (TTrackBar (Sender), lblBlur2);
end;

procedure TForm1.tbNoiseChange(Sender: TObject);
begin
  SetLabelCaption (TTrackBar (Sender), lblNoise2);
end;

procedure TForm1.tbPixelationChange(Sender: TObject);
begin
  SetLabelCaption (TTrackBar (Sender), lblPixelation2);
end;

procedure TForm1.tbDisarrangeChange(Sender: TObject);
begin
  SetLabelCaption (TTrackBar (Sender), lblDisarrange2);
end;

procedure TForm1.tbBevelChange(Sender: TObject);
begin
  SetLabelCaption (TTrackBar (Sender), lblBevel3);
end;

procedure TForm1.tbEdge1Change(Sender: TObject);
begin
  SetLabelCaption (TTrackBar (Sender), lblEdge2);
end;

procedure TForm1.tbBrightnessChange(Sender: TObject);
begin
  SetLabelCaption (TTrackBar (Sender), lblBrightness2);
end;

procedure TForm1.tbMBlur1Change(Sender: TObject);
begin
  SetLabelCaption (TTrackBar (Sender), lblMBlur2);
end;

procedure TForm1.tbMBlur2Change(Sender: TObject);
begin
  SetLabelCaption (TTrackBar (Sender), lblMBlur4);
end;

end.
