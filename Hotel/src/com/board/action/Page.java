package com.board.action;


public class Page {
		  private static Page page = new Page();
		  private int startRow, endRow;
		  private StringBuffer sb;
		 
		  private Page() {}
		   
		  public static Page getInstance() {
		    if(page == null) {
		      page = new Page();
		    }
		    return page;
		  }
		   
		  // pageSize:����Ʈ row ����, pageBlock: �ϴ� ������ ����
		  public synchronized void paging(int pageNum, int totalCount, int pageSize, int pageBlock) {
		    // totalPage : �� ������ ��
		    int totalPage = (int)Math.ceil((double)totalCount/pageSize);    // Math.ceil() : �ø�
		    // startRow, endRow : �� �������� start, end row ���
		    startRow = (pageNum - 1) * pageSize + 1;
		    endRow = pageNum * pageSize;
		     
		    // ������ �켱����: ���׿�����(casting ��) > ���������(* ��)
		    // ���� �������� ���� �ϴܺο� ����� start, end ������ ����Ѵ�.
		    // ���� ���, 3�������� 1~10������ �ӿ� ���Եȴ�.
		    int startPage = (int)((pageNum - 1)/pageBlock) * pageBlock + 1;
		    int endPage = startPage + pageBlock - 1;
		     
		    // ���� ���� ������ �������� ���� ������ ���������� ���ٸ�,
		    // ���� ���, �� 77���������� ���������� ���� �������� 80�����̹Ƿ� 77�� �������ش�.
		    if(endPage > totalPage) {
		      endPage = totalPage;
		    }
		     
		    // html�ڵ� ������ StringBuffer�ν��Ͻ� ����
		    sb = new StringBuffer();
		     
		    if(startPage < pageBlock) {    // ���� ���, startPage=1, pageBlock=10�̶��, '<'��� �ʿ����.
//		      sb.append("<img src='images/hot.gif' width='30' height='9'>");
		    } else {    // ���� ���, startPage=11, pageBlock=10�̶��, '<'��� �ʿ�.
//		      sb.append("<img src='images/hot.gif' width='30' height='9' ");
		      sb.append("<span width='30' height='9' ");
		      sb.append("onclick='location.href=\"list.bbs?pageNum=");
		      sb.append(startPage - pageBlock);   // ���� ���, startPage-pageBlock=11-10=1 �̶��, 1�������� ���ư�
		      sb.append("\"' style='cursor:pointer'>&lt;</span>");
		      sb.append("&nbsp;&nbsp;|&nbsp;&nbsp;");
		    }
		     
		    // pageBlock�� ���ԵǴ� ������ ���� ����ϰ�, ��ũ�� �޾��ش�.
		    for(int i = startPage; i <= endPage; i++) {
		      if(i == pageNum) {
		        sb.append("&nbsp;&nbsp;<b><font color='#91B7EF'>");
		        sb.append(i);
		        sb.append("</font></b>");
		      } else {
		        sb.append("&nbsp;&nbsp;<a href='list.bbs?pageNum=");
		        sb.append(i);
		        sb.append("'>");
		        sb.append(i);
		        sb.append("</a>");
		      }
		    }
		     
		    // '>'��� ��������, '<'��ɰ� �ݴ�� �����Ѵ�.
		    if(endPage < totalPage) {
		      sb.append("&nbsp;&nbsp;|&nbsp;&nbsp;");
//		      sb.append("<img src='images/hot.gif' width='30' height='9' ");
		      sb.append("<span width='30' height='9' ");
		      sb.append("onclick='location.href=\"list.bbs?pageNum=");
		      sb.append(startPage + pageBlock);
		      sb.append("\"' style='cursor:pointer'>&gt;</span>");
		    } else {
//		      sb.append("<img src='images/hot.gif' width='30' height='9'>");
		    }
		  }
		   
		  public StringBuffer getSb() {
		    return sb;
		  }
		 
		  public int getStartRow() {
		    return startRow;
		  }
		 
		  public int getEndRow() {
		    return endRow;
		  }


}
