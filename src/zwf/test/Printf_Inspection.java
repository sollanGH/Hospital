package zwf.test;


	import java.io.File;
import java.io.FileOutputStream;
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



	/**
	 * 职工流水账pdf文件，表格
	 * 动态画
	 * @author yuhf
	 *
	 */
	public class Printf_Inspection {


	    /**
	     * @throws Exception
	     */
	    public void addTable(String path,ZGLSZBean_Inspection zBean) throws Exception{

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
	        table.setTotalWidth(new float[]{100,100,100,100,100,100,100,100,100,100,100}); 

	        //表格与标题空40 左右高度
	        PdfPCell cell_0 = mergeCol("", font, 11,0,Element.ALIGN_CENTER);
	        cell_0.setMinimumHeight(20);
	        cell_0.setBorder(Rectangle.NO_BORDER);
	        table.addCell(cell_0);


	        //科室
	        PdfPCell cell = new PdfPCell();
	        PdfPCell pdfCell_dwzh = getPDFCell("科室：",font);
	        pdfCell_dwzh.setBorder(Rectangle.NO_BORDER); //去除边框
	        table.addCell(pdfCell_dwzh);  
	        cell=mergeCol(zBean.getSncode(), font, 1,0,Element.ALIGN_CENTER); 
	        cell.setBorder(Rectangle.NO_BORDER);//去除边框
	        cell.setHorizontalAlignment(Element.ALIGN_LEFT);
	        table.addCell(cell);  

	        //--1
	        //姓名：
	        PdfPCell pdfCell_dwmc = getPDFCell("姓名：",font);
	        pdfCell_dwmc.setBorder(Rectangle.NO_BORDER);
	        table.addCell(pdfCell_dwmc); 
	        cell=mergeCol(zBean.getSnname(), font, 1,0,Element.ALIGN_CENTER); 
	        cell.setBorder(Rectangle.NO_BORDER);
	        cell.setHorizontalAlignment(Element.ALIGN_LEFT);
	        table.addCell(cell);  

	        //性别：
	        PdfPCell pdfCell_zgzh = getPDFCell("性别：",font);
	        pdfCell_zgzh.setBorder(Rectangle.NO_BORDER);
	        table.addCell(pdfCell_zgzh); 
	        cell=mergeCol(zBean.getSpcode(), font, 1,0,Element.ALIGN_CENTER); 
	        cell.setBorder(Rectangle.NO_BORDER);
	        cell.setHorizontalAlignment(Element.ALIGN_LEFT);
	        table.addCell(cell);  


	        // --2
	        //床号：
	        PdfPCell pdfCell_zgxm = getPDFCell("床号：",font);
	        pdfCell_zgxm.setBorder(Rectangle.NO_BORDER);
	        table.addCell(pdfCell_zgxm); 
	        cell=mergeCol(zBean.getSpname(), font, 1,0,Element.ALIGN_CENTER); 
	        cell.setBorder(Rectangle.NO_BORDER);
	        cell.setHorizontalAlignment(Element.ALIGN_LEFT);
	        table.addCell(cell);  

	        //住院号：
	        PdfPCell pdfCell_sjfw = getPDFCell("住院号：",font);
	        pdfCell_sjfw.setBorder(Rectangle.NO_BORDER);
	        table.addCell(pdfCell_sjfw); 
	        cell=mergeCol(zBean.getRqfw(), font, 2,0,Element.ALIGN_CENTER); 
	        cell.setBorder(Rectangle.NO_BORDER);
	        cell.setHorizontalAlignment(Element.ALIGN_LEFT);
	        table.addCell(cell);  

	        //打印日期：
	        /*PdfPCell pdfCell_dysj = getPDFCell("打印日期：",font);
	        pdfCell_dysj.setBorder(Rectangle.NO_BORDER);
	        table.addCell(pdfCell_dysj); 
	        cell=mergeCol(zBean.getDyrq(), font, 1); 
	        cell.setBorder(Rectangle.NO_BORDER);
	        cell.setHorizontalAlignment(Element.ALIGN_LEFT);
	        table.addCell(cell); */

	        //--3
	        PdfPCell mergeRow_sj = mergeRow("项目简称", font, 2);
	        //mergeRow_sj.disableBorderSide(15);
	        table.addCell(mergeRow_sj);
	        PdfPCell mergeRow_cllx = mergeCol("项目名称", font, 7,12,Element.ALIGN_CENTER);
	        mergeRow_cllx.setRowspan(2);
	        table.addCell(mergeRow_cllx);
	        PdfPCell mergeRow_hjny = mergeRow("结果", font, 2);
	        //mergeRow_hjny.disableBorderSide(15);
	        table.addCell(mergeRow_hjny);
	        PdfPCell mergeRow_sr = mergeRow("单位", font, 2);
	        //mergeRow_sr.disableBorderSide(15);
	        table.addCell(mergeRow_sr);
	        PdfPCell mergeCol_zc = mergeRow("参考范围", font, 2);
	        //mergeCol_zc.disableBorderSide(15);
	        table.addCell(mergeCol_zc);
	        /*PdfPCell mergeRow_ye = mergeRow("停嘱医生", font, 2);
	        table.addCell(mergeRow_ye);*/
	       /* PdfPCell mergeRow_dwmc = mergeRow("护士签字", font, 2);
	        table.addCell(mergeRow_dwmc);*/
	        /*PdfPCell mergeRow_bz = mergeRow("备注", font, 2);
	        table.addCell(mergeRow_bz);*/

	        //--4
	       /* PdfPCell pdfCell_gjj = getPDFCell("支出",font);
	        table.addCell(pdfCell_gjj);
	        PdfPCell pdfCell_lx = getPDFCell("利息",font);
	        table.addCell(pdfCell_lx);
	        PdfPCell pdfCell_hj = getPDFCell("合计",font);
	        table.addCell(pdfCell_hj);*/

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
	        	getPDFCell(isNull(item_map.get("KSRQ")), font).disableBorderSide(15);
	        	table.addCell(getPDFCell(isNull(item_map.get("KSRQ")), font));
	        	//mergeCol(isNull(item_map.get("YZNR")), font,7).disableBorderSide(15);
	            table.addCell(mergeCol(isNull(item_map.get("YZNR")), font,7,15,Element.ALIGN_CENTER));
	            getPDFCell(isNull(item_map.get("ZSQZ")), font).disableBorderSide(15);
	            table.addCell(getPDFCell(isNull(item_map.get("ZSQZ")), font));
	            getPDFCell(isNull(item_map.get("ZXSJ")), font).disableBorderSide(15);
	            table.addCell(getPDFCell(isNull(item_map.get("ZXSJ")), font));
	            getPDFCell(isNull(item_map.get("ZSHS")), font).disableBorderSide(15);
	            table.addCell(getPDFCell(isNull(item_map.get("ZSHS")), font));
	            //table.addCell(getPDFCell(isNull(item_map.get("ZSQZ1")), font));
	            //table.addCell(getPDFCell(isNull(item_map.get("HSQZ1")), font));
	            //table.addCell(getPDFCell(isNull(item_map.get("YE")), font));
	            //table.addCell(mergeCol(isNull(item_map.get("SNNAME")), font,2));
	            //table.addCell(getPDFCell("无", font));
	        }

	        
	        PdfPCell mergeRow_aaa = mergeCol("检查结论", font, 11,12,Element.ALIGN_LEFT);
	        mergeRow_aaa.setRowspan(2);
	        table.addCell(mergeRow_aaa);
	        for (Map<String, Object> item_map : zBean.getArray_list123()) {

	            table.addCell(mergeCol(isNull(item_map.get("ABCD")), font,11,15,Element.ALIGN_LEFT));	            
	        }
	        
	        
	        
	        
	        //文档写入内容  
	        doc.open();  
	        Paragraph title=new Paragraph("检验结果",font1);  
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
	    public static PdfPCell mergeCol(String str,Font font,int i,int j,int z) {  

	        PdfPCell cell=new PdfPCell(new Paragraph(str,font));  
	        cell.setMinimumHeight(25);  
	        cell.setHorizontalAlignment(z);  
	        cell.setVerticalAlignment(Element.ALIGN_MIDDLE); 
	      //设置最小单元格高度  
	        cell.setMinimumHeight(20); 
	        cell.disableBorderSide(j);
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
	        cell.disableBorderSide(12);
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
	        cell.disableBorderSide(15);
	        //设置最小单元格高度  
	        cell.setMinimumHeight(20);  
	        return cell;  
	    }  

	    /**
	     * bean
	     * @author yuhf
	     *Printf_Inspection
	     */
	    public static class ZGLSZBean_Inspection{

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
	        private List<Map<String,Object>> array_list123;
	        
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
			public List<Map<String, Object>> getArray_list123() {
				return array_list123;
			}
			public void setArray_list123(List<Map<String, Object>> array_list123) {
				this.array_list123 = array_list123;
			}

	    }
	    
	   /* public static void main(String[] args)  {
			
	    	 Printf_Long printf = new Printf_Long();
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
	    	
		}*/
	    
	}
	

