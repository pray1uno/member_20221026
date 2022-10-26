package com.its.member.Service;

import com.its.member.DTO.MemberDTO;
import com.its.member.Repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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


    public MemberDTO login(MemberDTO memberDTO) {
        return memberRepository.login(memberDTO);
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

}
