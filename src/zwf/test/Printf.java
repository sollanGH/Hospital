package zwf.test;


	import java.io.File;
import java.io.FileOutputStream;
/*import java.text.DecimalFormat;
import java.text.SimpleDateFormat;*/
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

	import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Rectangle;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
/*import com.sun.org.apache.regexp.internal.recompile;*/


	/**
	 * 职工流水账pdf文件，表格
	 * 动态画
	 * @author yuhf
	 *
	 */
	public class Printf {


	    /**
	     * @throws Exception
	     */
	    public void addTable(String path,ZGLSZBean zBean) throws Exception{

	        @SuppressWarnings("unused")
			String ORGNAME = "";
	        @SuppressWarnings("unused")
			String OCNAME = "";

	        Rectangle rectangle = new Rectangle(PageSize.A4); //设置纸张的大小对象
	        Document doc = new Document(rectangle.rotate()); //纸张横向

	         //创建BaseFont对象，指明字体，编码方式,是否嵌入  
	        BaseFont bf = BaseFont.createFont("STSong-Light", "UniGB-UCS2-H",BaseFont.NOT_EMBEDDED);
	         //创建Font对象，将基础字体对象，字体大小，字体风格  
	        Font font=new Font(bf,10,Font.NORMAL);  
	        Font font1=new Font(bf,15,Font.BOLD);  

	        //创建文件
	        File file = new File(path);
	        PdfWriter writer = PdfWriter.getInstance(doc, new FileOutputStream(file));


	        //设置页眉页脚
	        Rectangle rect = new Rectangle(36, 54, 520, 788);
	        rect.setBorderColor(BaseColor.BLACK);
	        writer.setBoxSize("art", rect);

	        //创建PdfTable对象  10列表格
	        PdfPTable table=new PdfPTable(11);
	        //设置各列的列宽  
	        table.setTotalWidth(new float[]{100,100,100,90,100,100,100,100,120,120,100}); 

	        //表格与标题空40 左右高度
	        PdfPCell cell_0 = mergeCol("", font, 11);
	        cell_0.setMinimumHeight(20);
	        cell_0.setBorder(Rectangle.NO_BORDER);
	        table.addCell(cell_0);


	        //单位账户
	        PdfPCell cell = new PdfPCell();
	        PdfPCell pdfCell_dwzh = getPDFCell("单位账户：",font);
	        pdfCell_dwzh.setBorder(Rectangle.NO_BORDER); //去除边框
	        table.addCell(pdfCell_dwzh);  
	        cell=mergeCol(zBean.getSncode(), font, 3); 
	        cell.setBorder(Rectangle.NO_BORDER);//去除边框
	        cell.setHorizontalAlignment(Element.ALIGN_LEFT);
	        table.addCell(cell);  

	        //--1
	        //单位名称：
	        PdfPCell pdfCell_dwmc = getPDFCell("单位名称：",font);
	        pdfCell_dwmc.setBorder(Rectangle.NO_BORDER);
	        table.addCell(pdfCell_dwmc); 
	        cell=mergeCol(zBean.getSnname(), font, 3); 
	        cell.setBorder(Rectangle.NO_BORDER);
	        cell.setHorizontalAlignment(Element.ALIGN_LEFT);
	        table.addCell(cell);  

	        //单位名称：
	        PdfPCell pdfCell_zgzh = getPDFCell("职工账号：",font);
	        pdfCell_zgzh.setBorder(Rectangle.NO_BORDER);
	        table.addCell(pdfCell_zgzh); 
	        cell=mergeCol(zBean.getSpcode(), font, 2); 
	        cell.setBorder(Rectangle.NO_BORDER);
	        cell.setHorizontalAlignment(Element.ALIGN_LEFT);
	        table.addCell(cell);  


	        // --2
	        //职工姓名：
	        PdfPCell pdfCell_zgxm = getPDFCell("职工姓名：",font);
	        pdfCell_zgxm.setBorder(Rectangle.NO_BORDER);
	        table.addCell(pdfCell_zgxm); 
	        cell=mergeCol(zBean.getSpname(), font, 3); 
	        cell.setBorder(Rectangle.NO_BORDER);
	        cell.setHorizontalAlignment(Element.ALIGN_LEFT);
	        table.addCell(cell);  

	        //日期范围：
	        PdfPCell pdfCell_sjfw = getPDFCell("日期范围：",font);
	        pdfCell_sjfw.setBorder(Rectangle.NO_BORDER);
	        table.addCell(pdfCell_sjfw); 
	        cell=mergeCol(zBean.getRqfw(), font, 3); 
	        cell.setBorder(Rectangle.NO_BORDER);
	        cell.setHorizontalAlignment(Element.ALIGN_LEFT);
	        table.addCell(cell);  

	        //打印日期：
	        PdfPCell pdfCell_dysj = getPDFCell("打印日期：",font);
	        pdfCell_dysj.setBorder(Rectangle.NO_BORDER);
	        table.addCell(pdfCell_dysj); 
	        cell=mergeCol(zBean.getDyrq(), font, 2); 
	        cell.setBorder(Rectangle.NO_BORDER);
	        cell.setHorizontalAlignment(Element.ALIGN_LEFT);
	        table.addCell(cell); 

	        //--3
	        PdfPCell mergeRow_sj = mergeRow("时间", font, 2);
	        table.addCell(mergeRow_sj);
	        PdfPCell mergeRow_cllx = mergeRow("处理类型", font, 2);
	        table.addCell(mergeRow_cllx);
	        PdfPCell mergeRow_hjny = mergeRow("汇缴年月", font, 2);
	        table.addCell(mergeRow_hjny);
	        PdfPCell mergeRow_sr = mergeRow("收入", font, 2);
	        table.addCell(mergeRow_sr);
	        PdfPCell mergeCol_zc = mergeCol("支出", font, 3);
	        table.addCell(mergeCol_zc);
	        PdfPCell mergeRow_ye = mergeRow("余额", font, 2);
	        table.addCell(mergeRow_ye);
	        PdfPCell mergeRow_dwmc = mergeRow("单位名称", font, 2);
	        mergeRow_dwmc.setColspan(2);
	        table.addCell(mergeRow_dwmc);
	        PdfPCell mergeRow_bz = mergeRow("备注", font, 2);
	        table.addCell(mergeRow_bz);

	        //--4
	        PdfPCell pdfCell_gjj = getPDFCell("支出",font);
	        table.addCell(pdfCell_gjj);
	        PdfPCell pdfCell_lx = getPDFCell("利息",font);
	        table.addCell(pdfCell_lx);
	        PdfPCell pdfCell_hj = getPDFCell("合计",font);
	        table.addCell(pdfCell_hj);

	        for (Map<String, Object> item_map : zBean.getArray_list()) {

	            /*table.addCell(getPDFCell(isNull(item_map.get("QRRQ")), font));
	            table.addCell(getPDFCell(isNull(item_map.get("CLLXNAME")), font)); 
	            table.addCell(getPDFCell(isNull(item_map.get("HJNY")), font));
	            table.addCell(getPDFCell(isNullByZero(item_map.get("SR")), font));
	            table.addCell(getPDFCell(isNullByZero(item_map.get("ZC")), font));//支出
	            table.addCell(getPDFCell(isNullByZero(item_map.get("LX")), font));//利息
	            table.addCell(getPDFCell(addHj(item_map.get("ZC"), item_map.get("LX")), font));//合计自己算
	            table.addCell(getPDFCell(isNull(item_map.get("YE")), font));//余额
	            table.addCell(mergeCol(isNull(item_map.get("SNNAME")), font,2));
	            table.addCell(getPDFCell("无", font));*/
	        	table.addCell(getPDFCell(isNull(item_map.get("QRRQ")), font));
	            table.addCell(getPDFCell(isNull(item_map.get("CLLXNAME")), font)); 
	            table.addCell(getPDFCell(isNull(item_map.get("HJNY")), font));
	            table.addCell(getPDFCell(isNullByZero(item_map.get("SR")), font));
	            table.addCell(getPDFCell(isNullByZero(item_map.get("ZC")), font));//支出
	            table.addCell(getPDFCell(isNullByZero(item_map.get("LX")), font));//利息
	            table.addCell(getPDFCell(addHj(item_map.get("ZC"), item_map.get("LX")), font));//合计自己算
	            table.addCell(getPDFCell(isNull(item_map.get("YE")), font));//余额
	            table.addCell(mergeCol(isNull(item_map.get("SNNAME")), font,2));
	            table.addCell(getPDFCell("无", font));
	        }


	        //文档写入内容  
	        doc.open();  
	        Paragraph title=new Paragraph("公积金职工流水账",font1);  
	        title.setAlignment(Paragraph.ALIGN_CENTER);  
	        doc.add(title);  
	        doc.add(table);  
	        doc.close();       
	    }

	    /**
	     *  合并列的静态函数
	     * @param str 内容
	     * @param font 字体样式
	     * @param i 合并几个单元格，列
	     * @return
	     */
	    public static PdfPCell mergeCol(String str,Font font,int i) {  

	        PdfPCell cell=new PdfPCell(new Paragraph(str,font));  
	        cell.setMinimumHeight(25);  
	        cell.setHorizontalAlignment(Element.ALIGN_CENTER);  
	        cell.setVerticalAlignment(Element.ALIGN_MIDDLE); 
	      //设置最小单元格高度  
	        cell.setMinimumHeight(20); 

	        //将该单元格所在行包括该单元格在内的i列单元格合并为一个单元格  
	        cell.setColspan(i);  

	        return cell;  
	    }  


	    /**
	     * 合并行的静态函数 
	     * @param str 内容
	     * @param font 字体
	     * @param i 合并多少行
	     * @return
	     */
	    public static PdfPCell mergeRow(String str,Font font,int i) {  

	        //创建单元格对象，将内容及字体传入  
	        PdfPCell cell=new PdfPCell(new Paragraph(str,font));  
	        //设置单元格内容居中  
	        cell.setHorizontalAlignment(Element.ALIGN_CENTER);  
	        cell.setVerticalAlignment(Element.ALIGN_MIDDLE);  
	        //将该单元格所在列包括该单元格在内的i行单元格合并为一个单元格  
	        cell.setRowspan(i);  
	      //设置最小单元格高度  
	        cell.setMinimumHeight(20); 
	        return cell;  
	    }  

	    /**
	     * 判断 object是不是null
	     * @param object
	     * @return 是null 返回“”
	     */
	    public String isNull(Object object){

	        return  object == null ? "" : object.toString().trim();
	    }

	    /**
	     * 判断 object是不是null
	     * @param object
	     * @return 返回 “0”
	     */
	    public String isNullByZero(Object object){
	        return  object == null ? "0" : object.toString().trim();
	    }

	    /**
	     * 根据支出 +利息 = 合计
	     * @param zc
	     * @param lx
	     * @return 合计
	     */
	    public String addHj(Object zc,Object lx){

	        String  string_zc= this.isNullByZero(zc).trim();
	        double double_zc = Double.parseDouble(string_zc);

	        String string_lx = this.isNullByZero(lx).trim();
	        double double_lx = Double.parseDouble(string_lx);


	        double double_hj = double_zc + double_lx ;
	        return double_hj + "";
	    }

	    /**
	     * 删除边框
	     * @param cell
	     */
	    public static void delectBorder(PdfPCell cell){
	         cell.setBorder(Rectangle.NO_BORDER);
	    }


	    //获取指定内容与字体的单元格  
	    public static PdfPCell getPDFCell(String string, Font font)   
	    {  
	        //创建单元格对象，将内容与字体放入段落中作为单元格内容  
	        PdfPCell cell=new PdfPCell(new Paragraph(string,font));  

	        cell.setHorizontalAlignment(Element.ALIGN_CENTER);  
	        cell.setVerticalAlignment(Element.ALIGN_MIDDLE);  

	        //设置最小单元格高度  
	        cell.setMinimumHeight(20);  
	        return cell;  
	    }  

	    /**
	     * bean
	     * @author yuhf
	     *
	     */
	    public static class ZGLSZBean{

	        //单位账户
	        private String sncode;
	        //单位名称
	        private String snname;
	        //职工账号
	        private String spcode;
	        //职工姓名
	        private String spname;
	        //日期范围
	        private String rqfw;
	        //打印日期
	        private String dyrq;
	        //显示 列表数据
	        private List<Map<String,Object>> array_list;
	        public String getSncode() {
	            return sncode;
	        }
	        public void setSncode(String sncode) {
	            this.sncode = sncode;
	        }
	        public String getSnname() {
	            return snname;
	        }
	        public void setSnname(String snname) {
	            this.snname = snname;
	        }
	        public String getSpcode() {
	            return spcode;
	        }
	        public void setSpcode(String spcode) {
	            this.spcode = spcode;
	        }
	        public String getSpname() {
	            return spname;
	        }
	        public void setSpname(String spname) {
	            this.spname = spname;
	        }
	        public String getRqfw() {
	            return rqfw;
	        }
	        public void setRqfw(String rqfw) {
	            this.rqfw = rqfw;
	        }
	        public String getDyrq() {
	            return dyrq;
	        }
	        public void setDyrq(String dyrq) {
	            this.dyrq = dyrq;
	        }
	        public List<Map<String, Object>> getArray_list() {
	            return array_list;
	        }
	        public void setArray_list(List<Map<String, Object>> array_list) {
	            this.array_list = array_list;
	        }

	    }
	    
	    public static void main(String[] args)  {
			
	    	 Printf printf = new Printf();
	    	 ZGLSZBean zglszBean = new ZGLSZBean();
	    	 zglszBean.setDyrq("1");
	    	 zglszBean.setRqfw("1");
	    	 zglszBean.setSncode("1");
	    	 zglszBean.setSnname("1");
	    	 zglszBean.setSpcode("1");
	    	 zglszBean.setSpname("1");
	    	 List<Map<String, Object>> listMap = new ArrayList<Map<String,Object>>();
	    	
	    	 for(int i=0;i<=2;i++){
	    		 
	    		 Map<String, Object> map = new HashMap<String, Object>(); 	
	    		     	 
		    	 map.put("QRRQ", i);
		    	 map.put("CLLXNAME", i);
		    	 map.put("HJNY", i);
		    	 map.put("SR", i);
		    	 map.put("ZC", i);
		    	 map.put("LX", i);
		    	 map.put("YE", i);
		    	 map.put("SNNAME", i);
		    	 listMap.add(map);
		    	 zglszBean.setArray_list(listMap);
	    	 }
	    	 	    	 
	    	 
	    	 
			
			//System.out.println(listMap);
	    	 try {
				printf.addTable("H:\\登记表.pdf", zglszBean);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	
		}
	    
	}
	

