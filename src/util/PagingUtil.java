
package util;

public class PagingUtil {
	
	private int startCount;	 // ?•œ ?˜?´ì§??—?„œ ë³´ì—¬ì¤? ê²Œì‹œê¸??˜ ?‹œ?‘ ë²ˆí˜¸
	private int endCount;	 // ?•œ ?˜?´ì§??—?„œ ë³´ì—¬ì¤? ê²Œì‹œê¸??˜ ? ë²ˆí˜¸
	private StringBuffer pagingHtml;// ?˜?´ì§? ?ƒ?„±? ->?´? „,?‹¤?Œ(<- ,->)

	/**
	 * currentPage : ?˜„?¬?˜?´ì§?
	 * totalCount : ? „ì²? ê²Œì‹œë¬? ?ˆ˜
	 * blockCount : ?•œ ?˜?´ì§??˜  ê²Œì‹œë¬¼ì˜ ?ˆ˜
	 * blockPage : ?•œ ?™”ë©´ì— ë³´ì—¬ì¤? ?˜?´ì§? ?ˆ˜
	 * pageUrl : ?˜¸ì¶? ?˜?´ì§? url
	 * addKey : ë¶?ê°?? ?¸ key ?—†?„ ?•Œ?Š” null ì²˜ë¦¬ (&num=23?˜•?‹?œ¼ë¡? ? „?‹¬?•  ê²?)
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
		
		if(addKey == null) addKey = ""; //ë¶?ê°??‚¤ê°? null ?¼?•Œ ""ì²˜ë¦¬
		
		// ? „ì²? ?˜?´ì§? ?ˆ˜-->122/10=12.2
		int totalPage = (int) Math.ceil((double) totalCount / blockCount);
		if (totalPage == 0) {
			totalPage = 1;
		}
		// ?˜„?¬ ?˜?´ì§?ê°? ? „ì²? ?˜?´ì§? ?ˆ˜ë³´ë‹¤ ?¬ë©? ? „ì²? ?˜?´ì§? ?ˆ˜ë¡? ?„¤? •
		if (currentPage > totalPage) {
			currentPage = totalPage;
		}
		// ?˜„?¬ ?˜?´ì§??˜ ì²˜ìŒê³? ë§ˆì?ë§? ê¸??˜ ë²ˆí˜¸ ê°?? ¸?˜¤ê¸?.
		startCount = (currentPage - 1) * blockCount + 1;
		endCount = currentPage * blockCount;
		// ?‹œ?‘ ?˜?´ì§??? ë§ˆì?ë§? ?˜?´ì§? ê°? êµ¬í•˜ê¸?.
		int startPage = (int) ((currentPage - 1) / blockPage) * blockPage + 1;
		int endPage = startPage + blockPage - 1;
		// ë§ˆì?ë§? ?˜?´ì§?ê°? ? „ì²? ?˜?´ì§? ?ˆ˜ë³´ë‹¤ ?¬ë©? ? „ì²? ?˜?´ì§? ?ˆ˜ë¡? ?„¤? •
		if (endPage > totalPage) {
			endPage = totalPage;
		}
		// ?´? „ block ?˜?´ì§?
		pagingHtml = new StringBuffer();
		if (currentPage > blockPage) {
			if(keyWord==null){//ê²??ƒ‰ ë¯¸ì‚¬?š©?‹œ
				pagingHtml.append("<a href="+pageUrl+"?pageNum="+ (startPage - 1) + addKey +">");
			}else{
				pagingHtml.append("<a href="+pageUrl+"?keyField="+keyField+"&keyWord="+keyWord+"&pageNum="+ (startPage - 1) + addKey +">");
			}
			pagingHtml.append("?´? „");
			pagingHtml.append("</a>");
		}
		pagingHtml.append("&nbsp;|&nbsp;");
		//?˜?´ì§? ë²ˆí˜¸.?˜„?¬ ?˜?´ì§??Š” ë¹¨ê°„?ƒ‰?œ¼ë¡? ê°•ì¡°?•˜ê³? ë§í¬ë¥? ? œê±?.
		for (int i = startPage; i <= endPage; i++) {
			if (i > totalPage) {
				break;
			}
			if (i == currentPage) {
				pagingHtml.append("&nbsp;<b> <font color='red'>");
				pagingHtml.append(i);
				pagingHtml.append("</font></b>");
			} else {
				if(keyWord==null){//ê²??ƒ‰ ë¯¸ì‚¬?š©?‹œ
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
		// ?‹¤?Œ block ?˜?´ì§?
		if (totalPage - startPage >= blockPage) {
			if(keyWord==null){//ê²??ƒ‰ ë¯¸ì‚¬?š©?‹œ
				pagingHtml.append("<a href="+pageUrl+"?pageNum="+ (endPage + 1) + addKey +">");
			}else{
				pagingHtml.append("<a href="+pageUrl+"?keyField="+keyField+"&keyWord="+keyWord+"&pageNum="+ (endPage + 1) + addKey +">");
			}
			pagingHtml.append("?‹¤?Œ");
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
