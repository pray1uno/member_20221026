package com.its.member.Repository;

import com.its.member.DTO.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MemberRepository {
    @Autowired
    private SqlSessionTemplate sql;

    public int save(MemberDTO memberDTO) {
        return sql.insert("Member.memberSave", memberDTO);
    }


    public MemberDTO login(MemberDTO loginResult) {
        return sql.selectOne("Member.memberLogin", loginResult);

    }

//    public MemberDTO login(String memberEmail, String memberPassword) {
//        MemberDTO memberDTO = new MemberDTO();
//        memberDTO.setMemberEmail(memberEmail);
//        memberDTO.setMemberPassword(memberPassword);
//        return sql.selectOne("Member.memberLogin", memberDTO);
//    }

    public List<MemberDTO> list() {
        return sql.selectList("Member.memberList");
    }

    public MemberDTO findResult(Long findResult) {
        return sql.selectOne("Member.memberFind", findResult);
    }


    public int delete(int delete) {
        return sql.delete("Member.memberDelete", delete);
    }



}
