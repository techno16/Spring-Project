
package util;

public class PagingUtil {
	
	private int startCount;	 // ? ??΄μ§??? λ³΄μ¬μ€? κ²μκΈ?? ?? λ²νΈ
	private int endCount;	 // ? ??΄μ§??? λ³΄μ¬μ€? κ²μκΈ?? ? λ²νΈ
	private StringBuffer pagingHtml;// ??΄μ§? ??±? ->?΄? ,?€?(<- ,->)

	/**
	 * currentPage : ??¬??΄μ§?
	 * totalCount : ? μ²? κ²μλ¬? ?
	 * blockCount : ? ??΄μ§??  κ²μλ¬Όμ ?
	 * blockPage : ? ?λ©΄μ λ³΄μ¬μ€? ??΄μ§? ?
	 * pageUrl : ?ΈμΆ? ??΄μ§? url
	 * addKey : λΆ?κ°?? ?Έ key ?? ?? null μ²λ¦¬ (&num=23???Όλ‘? ? ?¬?  κ²?)
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
		
		if(addKey == null) addKey = ""; //λΆ?κ°??€κ°? null ?Ό? ""μ²λ¦¬
		
		// ? μ²? ??΄μ§? ?-->122/10=12.2
		int totalPage = (int) Math.ceil((double) totalCount / blockCount);
		if (totalPage == 0) {
			totalPage = 1;
		}
		// ??¬ ??΄μ§?κ°? ? μ²? ??΄μ§? ?λ³΄λ€ ?¬λ©? ? μ²? ??΄μ§? ?λ‘? ?€? 
		if (currentPage > totalPage) {
			currentPage = totalPage;
		}
		// ??¬ ??΄μ§?? μ²μκ³? λ§μ?λ§? κΈ?? λ²νΈ κ°?? Έ?€κΈ?.
		startCount = (currentPage - 1) * blockCount + 1;
		endCount = currentPage * blockCount;
		// ?? ??΄μ§??? λ§μ?λ§? ??΄μ§? κ°? κ΅¬νκΈ?.
		int startPage = (int) ((currentPage - 1) / blockPage) * blockPage + 1;
		int endPage = startPage + blockPage - 1;
		// λ§μ?λ§? ??΄μ§?κ°? ? μ²? ??΄μ§? ?λ³΄λ€ ?¬λ©? ? μ²? ??΄μ§? ?λ‘? ?€? 
		if (endPage > totalPage) {
			endPage = totalPage;
		}
		// ?΄?  block ??΄μ§?
		pagingHtml = new StringBuffer();
		if (currentPage > blockPage) {
			if(keyWord==null){//κ²?? λ―Έμ¬?©?
				pagingHtml.append("<a href="+pageUrl+"?pageNum="+ (startPage - 1) + addKey +">");
			}else{
				pagingHtml.append("<a href="+pageUrl+"?keyField="+keyField+"&keyWord="+keyWord+"&pageNum="+ (startPage - 1) + addKey +">");
			}
			pagingHtml.append("?΄? ");
			pagingHtml.append("</a>");
		}
		pagingHtml.append("&nbsp;|&nbsp;");
		//??΄μ§? λ²νΈ.??¬ ??΄μ§?? λΉ¨κ°??Όλ‘? κ°μ‘°?κ³? λ§ν¬λ₯? ? κ±?.
		for (int i = startPage; i <= endPage; i++) {
			if (i > totalPage) {
				break;
			}
			if (i == currentPage) {
				pagingHtml.append("&nbsp;<b> <font color='red'>");
				pagingHtml.append(i);
				pagingHtml.append("</font></b>");
			} else {
				if(keyWord==null){//κ²?? λ―Έμ¬?©?
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
		// ?€? block ??΄μ§?
		if (totalPage - startPage >= blockPage) {
			if(keyWord==null){//κ²?? λ―Έμ¬?©?
				pagingHtml.append("<a href="+pageUrl+"?pageNum="+ (endPage + 1) + addKey +">");
			}else{
				pagingHtml.append("<a href="+pageUrl+"?keyField="+keyField+"&keyWord="+keyWord+"&pageNum="+ (endPage + 1) + addKey +">");
			}
			pagingHtml.append("?€?");
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
