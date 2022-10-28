package com.its.member.Service;

import com.its.member.DTO.MemberDTO;
import com.its.member.Repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.lang.reflect.Member;
import java.util.List;

@Service
public class MemberService {
    @Autowired
    private MemberRepository memberRepository;
    public boolean save(MemberDTO memberDTO) {
        int insertResult = memberRepository.save(memberDTO);

        if (insertResult > 0) {
            return true;
        } else {
            return false;
        }
    }

//    public boolean login(MemberDTO loginDTO) {
//        MemberDTO memberDTO = memberRepository.login(loginDTO);
//        if (memberDTO != null) {
//            return true;
//        } else {
//            return false;
//        }
//    }

    public boolean login(MemberDTO memberDTO) {
//        return memberRepository.login(memberDTO);
        MemberDTO login = memberRepository.login(memberDTO);
        if (login != null) {
            return true;
        } else {
            return false;
        }
    }

    public List<MemberDTO> list() {
        return memberRepository.list();
    }

    public MemberDTO find(Long findResult) {
        return memberRepository.findResult(findResult);
    }

    public int delete(int delete) {
        return memberRepository.delete(delete);
    }


    public MemberDTO update(String memberEmail) {
        return memberRepository.update(memberEmail);
    }


    public boolean updateLogin(MemberDTO memberDTO) {
        int result = memberRepository.updateLogin(memberDTO);
        if (result > 0) {
            return true;
        } else {
            return false;
        }
    }
}
