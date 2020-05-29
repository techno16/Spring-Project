package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import member.MemberCommand;
//��ȿ���˻�->��� Ư���Ѱ��� �Է��� ������ ��ȿ�Ѱ�(�ùٸ���)
//�� �Է¹޾Ҵ��� üũ���ִ� �˻�->Validater�������̽� ���

public class MemberValidator implements Validator {

	//1.��ȿ���˻縦 �Ұ����� ���������� �������ִ� �޼����ۼ�
	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		//����)return ��ȿ���˻縦 ��Ŭ������(DTO).class.
		//                    isAssignableFrom(�Ű�������)
		return MemberCommand.class.isAssignableFrom(clazz);
	}

	//��ȿ���˻縦 �Ҷ� ȣ��Ǵ� �޼���
	//1.Object target->target��ü�� ���� ������ �����ϰڴ�.
	//2.errors��ü->������� �߻��ƴ����� ���� ���������� ������ü
	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
      //��ȿ���˻� ��Ģ->������ �ִ��� üũ
		//1.������ü�� 2.����Ű(������ ����κ�),3�����ڵ尪(����Ȱ�)
	   ValidationUtils.rejectIfEmptyOrWhitespace(errors, "id", "error.required");
	   ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "error.required");
	   ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password2", "error.required");
	   ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "error.required");
	   ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "error.required");
	   ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phone", "error.required");
	   ValidationUtils.rejectIfEmptyOrWhitespace(errors, "birth", "error.required");
	}
}

