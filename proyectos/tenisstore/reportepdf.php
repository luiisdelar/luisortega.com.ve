<?php

require('libpdf/fpdf.php');
$pdf = new FPDF();
$pdf->AddPage();
$pdf->SetFont('Arial','B',10);

$fila1 = array('Total en ventas', $_POST['fila1b']);
$fila2 = array('Producto mas vendido', $_POST['fila2b'],$_POST['fila2c']);
$fila3 = array('Factura mayor monto', $_POST['fila3b'],$_POST['fila3c'],$_POST['fila3d']);
$fila4 = array('Productos agotados', $_POST['fila4b']);
$fila5 = array('Empleado con mas facturas',$_POST['fila5b'],$_POST['fila5c']);
$fila6 = array('Empleados registrados',$_POST['fila6b']);
$fila7 = array('Clientes registrados',$_POST['fila7b']);

$pdf->SetFont('Arial','B',15);
    $w = $pdf->GetStringWidth("Reporte")+6;
    $pdf->SetX((210-$w)/2);
    $pdf->SetDrawColor(0,80,180);
    $pdf->SetFillColor(230,230,0);
    $pdf->SetTextColor(0,0,0);
    $pdf->SetLineWidth(1);
    $pdf->Cell($w,9,"Reporte",1,1,'C',true);
    $pdf->Ln(10);

    $pdf->SetFont('Arial','B',10);    

foreach($fila1 as $col)
    $pdf->Cell(50,7,$col,1);
$pdf->Ln();

foreach($fila2 as $col)
    $pdf->Cell(50,7,$col,1);
$pdf->Ln();

foreach($fila3 as $col)
    $pdf->Cell(50,7,$col,1);
$pdf->Ln();

foreach($fila4 as $col)
    $pdf->Cell(50,7,$col,1);
$pdf->Ln();


foreach($fila5 as $col)
    $pdf->Cell(50,7,$col,1);
$pdf->Ln();


foreach($fila6 as $col)
    $pdf->Cell(50,7,$col,1);
$pdf->Ln();


foreach($fila7 as $col)
    $pdf->Cell(50,7,$col,1);
$pdf->Ln();


$pdf->Output();

?>