package com.its.member.controller;

import com.its.member.DTO.MemberDTO;
import com.its.member.Service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.lang.reflect.Member;
import java.util.List;


@Controller
public class MemberController {
    @Autowired
    private MemberService memberService;

    @GetMapping("/save")
    public String getSave() {
        return "memberSave";
    }

    @PostMapping("/save")
    public String postSave(@ModelAttribute MemberDTO memberDTO, Model model) {
        boolean result = memberService.save(memberDTO);
        model.addAttribute("result", result);
        return "memberLogin";
    }

    @GetMapping("/login")
    public String getLogin() {
        return "memberLogin";
    }


    @PostMapping("/login")
    public String postLogin(@ModelAttribute MemberDTO memberDTO, Model model, HttpSession session) {
        System.out.println("memberDTO = " + memberDTO + ", model = " + model + ", session = " + session);
        MemberDTO loginResult = memberService.login(memberDTO);
        model.addAttribute("modelEmail", memberDTO.getMemberEmail());
        // 세션에 로그인한 사용자의 이메일을 저장
        session.setAttribute("loginEmail", memberDTO.getMemberEmail());
        return "memberMain";
    }

    @GetMapping("/members")
    public String getMembers(Model model) {
        List<MemberDTO> memberList = memberService.list();
        model.addAttribute("memberList", memberList);
        return "memberList";
    }

    @GetMapping("/member")
    public String getMember(@RequestParam("id") Long find, Model model) {
        MemberDTO findResult = memberService.find(find);
        model.addAttribute("findResult", findResult);
        return "memberDetail";
    }


    @GetMapping("/delete")
    public String getDelete(@RequestParam("id") int delete, Model model) {
        int deleteResult = memberService.delete(delete);

        // 1. 삭제 후 목록을 DB에서 가져오고 memberList.jsp로 간다
//        List<MemberDTO> list = memberService.list();
//        model.addAttribute("memberList", list);
//        return "memberList";

        // 2. redirect 방식을 이용하여 /members 주소 요청
        return "redirect:/members";
    }

    @GetMapping("/update")
    public String update(Model model, HttpSession session) {
        // session 값 가져오기
        String memberEmail = (String) session.getAttribute("loginEmail");
        System.out.println("memberEmail = " + memberEmail);
        // abstract = 추상메서드(실행 블록이 없는 메서드)
        // memberEmail로 DB에서 해당 회원의 전체 정보 조회
        MemberDTO result = memberService.update(memberEmail);
        model.addAttribute("member", result);
        System.out.println("result = " + result);
//        List<MemberDTO> updateList = memberService.update();
//        model.addAttribute("update", updateList);
        return "memberUpdate";
    }

    @PostMapping("/update")
    public String postUpdate(@ModelAttribute MemberDTO memberDTO) {
        boolean result = memberService.updateLogin(memberDTO);
         if (result) {
            // 로그인 회원의 memberDetail.jsp
            return "redirect:/member?id=" + memberDTO.getId();
         } else {
             return "index";
         }

    }


}
