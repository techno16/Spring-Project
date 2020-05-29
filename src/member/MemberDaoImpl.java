package member;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import member.MemberCommand;

public class MemberDaoImpl extends SqlSessionDaoSupport implements MemberDao {

	@Override
	public void insertMember(MemberCommand member) {
		// TODO Auto-generated method stub
		getSqlSession().insert("insertMember",member);
	}

}
