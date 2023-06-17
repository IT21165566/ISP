/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pos.pro;

import com.lowagie.text.DocumentException;
import com.lowagie.text.PageSize;
import com.lowagie.text.Paragraph;
import com.lowagie.text.pdf.PdfPTable;
import com.lowagie.text.pdf.PdfWriter;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.text.Document;

/**
 *
 * @author SadishanMegasooriya
 */
public class InvoicePdf {
    
//     public static void main(String[] args) {
//        try {
//            Class.forName("com.mysql.jdbc.Driver");
//            Statement s = db.mycon().createStatement();
//            ResultSet rs = s.executeQuery("select * from invoice");
//
//            Document document = new Document(PageSize.A4) {};
//            PdfWriter.getInstance(document, new FileOutputStream("invoice.pdf"));
//            document.open();
//
//            // Add a heading
//            Paragraph heading = new Paragraph("Invoice");
//            heading.setAlignment(Paragraph.ALIGN_CENTER);
//            document.add(heading);
//
//            // Add a table
//            PdfPTable table = new PdfPTable(7);
//            table.setWidthPercentage(100);
//
//            // Add column headings
//            table.addCell("Invoice ID");
//            table.addCell("Customer ID");
//            table.addCell("Customer Name");
//            table.addCell("Total Qty");
//            table.addCell("Total Bill");
//            table.addCell("Status");
//            table.addCell("Balance");
//
//            // Add data rows
//            while (rs.next()) {
//                table.addCell(rs.getString("INID"));
//                table.addCell(rs.getString("Cid"));
//                table.addCell(rs.getString("Customer_Name"));
//                table.addCell(rs.getString("Total_Qty"));
//                table.addCell(rs.getString("Total_Bill"));
//                table.addCell(rs.getString("Status"));
//                table.addCell(rs.getString("Balance"));
//            }
//
//            document.add(table);
//            document.close();
//            s.close();
//
//            System.out.println("Invoice PDF created successfully!");
//
//        } catch (FileNotFoundException e) {
//            System.out.println(e);
//        } catch (Exception e) {
//            System.out.println(e);
//        }
//    }
    
}
