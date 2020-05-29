package controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import member.MemberDao;
import member.MemberCommand;
import validator.MemberValidator;

//글쓰기(회원가입)->수정

@Controller
public class InsertController {

	//로그객체->매개변수값,객체값을 출력용도,에러메세지확용
	private Logger log=Logger.getLogger(this.getClass());
	
	//DB연동->멤버변수에 @Autowired부여->Setter Method작성no
	@Autowired
	private MemberDao memberDao;

	//  /insert.do=insertForm.jsp(Get방식)
	//@RequestMapping("요청명령어")
	//@RequestMapping(value="요청명령어",
	//                          method="GET방식 or POST방식")
	
	@RequestMapping(value="/insert.do",method=RequestMethod.GET)
	public String form(){
		log.debug("회원가입  페이지로 이동");
		return "memberJoin"; //return "이동할 페이지명"
		                             //확장자는 생략(.jsp)
	}
	
	//입력받은값을 초기화->다시 입력을 받을 수 있도록 처리
	/*@ModelAttribute
	 *public DTO자료형(MemberCommand) formBacking(){
	 *  return new DTO자료형();
	 *} 
	 * 
	 */
	
	@ModelAttribute
	public MemberCommand formBacking(){
		return new MemberCommand();
	}
	
	
	@RequestMapping(value="/insert.do",method=RequestMethod.POST)
	
	public String submit(MemberCommand memberCommand, BindingResult result ){
	    //로그객체로 출력
		if(log.isDebugEnabled()){
			log.debug("memberCommand="+memberCommand);
		}
		//유효성 검사를 실행
		new MemberValidator().validate(memberCommand, result );
		//에러가 발생이 되었다면->처음부터 다시 입력하라
		//history.back() 대용
		if(result.hasErrors()){
			return form();//"insertForm"->insertForm.jsp이동
		}
		
		//정상적으로 입력을 했다면
		memberDao.insertMember(memberCommand);
		
		//글목록으로 이동-> /list.do->SelectList.jsp
		return "redirect:/main.do"; //SelectListController->~
	}
}
