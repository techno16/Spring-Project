
package util;

public class PagingUtil {
	
	private int startCount;	 // ?�� ?��?���??��?�� 보여�? 게시�??�� ?��?�� 번호
	private int endCount;	 // ?�� ?��?���??��?�� 보여�? 게시�??�� ?�� 번호
	private StringBuffer pagingHtml;// ?��?���? ?��?��?�� ->?��?��,?��?��(<- ,->)

	/**
	 * currentPage : ?��?��?��?���?
	 * totalCount : ?���? 게시�? ?��
	 * blockCount : ?�� ?��?���??��  게시물의 ?��
	 * blockPage : ?�� ?��면에 보여�? ?��?���? ?��
	 * pageUrl : ?���? ?��?���? url
	 * addKey : �?�??��?�� key ?��?�� ?��?�� null 처리 (&num=23?��?��?���? ?��?��?�� �?)
	 * */
	public PagingUtil(int currentPage, int totalCount, int blockCount,
			int blockPage, String pageUrl) {
		this(null,null,currentPage,totalCount,blockCount,blockPage,pageUrl,null);
	}
	public PagingUtil(int currentPage, int totalCount, int blockCount,
			int blockPage, String pageUrl, String addKey) {
		this(null,null,currentPage,totalCount,blockCount,blockPage,pageUrl,addKey);
	}
	public PagingUtil(String keyField, String keyWord, int currentPage, int totalCount, int blockCount,
			int blockPage,String pageUrl) {
		this(null,null,currentPage,totalCount,blockCount,blockPage,pageUrl,null);
	}
	public PagingUtil(String keyField, String keyWord, int currentPage, int totalCount, int blockCount,
			int blockPage,String pageUrl,String addKey) {
		
		if(addKey == null) addKey = ""; //�?�??���? null ?��?�� ""처리
		
		// ?���? ?��?���? ?��-->122/10=12.2
		int totalPage = (int) Math.ceil((double) totalCount / blockCount);
		if (totalPage == 0) {
			totalPage = 1;
		}
		// ?��?�� ?��?���?�? ?���? ?��?���? ?��보다 ?���? ?���? ?��?���? ?���? ?��?��
		if (currentPage > totalPage) {
			currentPage = totalPage;
		}
		// ?��?�� ?��?���??�� 처음�? 마�?�? �??�� 번호 �??��?���?.
		startCount = (currentPage - 1) * blockCount + 1;
		endCount = currentPage * blockCount;
		// ?��?�� ?��?���??? 마�?�? ?��?���? �? 구하�?.
		int startPage = (int) ((currentPage - 1) / blockPage) * blockPage + 1;
		int endPage = startPage + blockPage - 1;
		// 마�?�? ?��?���?�? ?���? ?��?���? ?��보다 ?���? ?���? ?��?���? ?���? ?��?��
		if (endPage > totalPage) {
			endPage = totalPage;
		}
		// ?��?�� block ?��?���?
		pagingHtml = new StringBuffer();
		if (currentPage > blockPage) {
			if(keyWord==null){//�??�� 미사?��?��
				pagingHtml.append("<a href="+pageUrl+"?pageNum="+ (startPage - 1) + addKey +">");
			}else{
				pagingHtml.append("<a href="+pageUrl+"?keyField="+keyField+"&keyWord="+keyWord+"&pageNum="+ (startPage - 1) + addKey +">");
			}
			pagingHtml.append("?��?��");
			pagingHtml.append("</a>");
		}
		pagingHtml.append("&nbsp;|&nbsp;");
		//?��?���? 번호.?��?�� ?��?���??�� 빨간?��?���? 강조?���? 링크�? ?���?.
		for (int i = startPage; i <= endPage; i++) {
			if (i > totalPage) {
				break;
			}
			if (i == currentPage) {
				pagingHtml.append("&nbsp;<b> <font color='red'>");
				pagingHtml.append(i);
				pagingHtml.append("</font></b>");
			} else {
				if(keyWord==null){//�??�� 미사?��?��
					pagingHtml.append("&nbsp;<a href='"+pageUrl+"?pageNum=");
				}else{
					pagingHtml.append("&nbsp;<a href='"+pageUrl+"?keyField="+keyField+"&keyWord="+keyWord+"&pageNum=");
				}
				pagingHtml.append(i);
				pagingHtml.append(addKey+"'>");
				pagingHtml.append(i);
				pagingHtml.append("</a>");
			}
			pagingHtml.append("&nbsp;");
		}
		pagingHtml.append("&nbsp;&nbsp;|&nbsp;&nbsp;");
		// ?��?�� block ?��?���?
		if (totalPage - startPage >= blockPage) {
			if(keyWord==null){//�??�� 미사?��?��
				pagingHtml.append("<a href="+pageUrl+"?pageNum="+ (endPage + 1) + addKey +">");
			}else{
				pagingHtml.append("<a href="+pageUrl+"?keyField="+keyField+"&keyWord="+keyWord+"&pageNum="+ (endPage + 1) + addKey +">");
			}
			pagingHtml.append("?��?��");
			pagingHtml.append("</a>");
		}
	}
	public StringBuffer getPagingHtml() {
		return pagingHtml;
	}
	public int getStartCount() {
		return startCount;
	}
	public int getEndCount() {
		return endCount;
	}
}
