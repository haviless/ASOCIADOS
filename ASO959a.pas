//---------------------------------------------------------------------------------------------------------------------------
// Unidad                   : ASO959a
// Formulario               : fResNombHist

// Fecha de Creación        : 15/02/2017
// Autor                    : Equipo de Desarrollo.
// Objetivo                 : Historial de Cambios.
//
// Fecha de Actualización   :
// HPC_201701_ASO           : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
//---------------------------------------------------------------------------------------------------------------------------

Unit ASO959a;

Interface

Uses

   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, Buttons, Wwdbigrd, Grids, Wwdbgrid, StdCtrls,
   wwdbdatetimepicker, Mask, wwdbedit, wwcheckbox, DBCtrls, db;

Type
   TfResNombHist = Class(TForm)
      grpResoluciones: TGroupBox;
    dbgResolucionesHist: TwwDBGrid;
      BitSalir: TBitBtn;

      Procedure BitSalirClick(Sender: TObject);
   Private
    { Private declarations }
   Public
      xinsert, xNroResNomb, xNroResCese, xFechaResNomb, xFechaResCese: String;

    { Public declarations }
   End;

Var
   fResNombHist: TfResNombHist;
   xReingreso: boolean;

Implementation

Uses ASODM, ASO260;

{$R *.dfm}



Procedure TfResNombHist.BitSalirClick(Sender: TObject);
Begin
   close;
End;

End.

