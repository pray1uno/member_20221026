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

//    @PostMapping("/login")
//    public String postLogin(@RequestParam("memberEmail") String memberEmail,
//                            @RequestParam("memberPassword") String memberPassword) {
//        boolean loginResult = memberService.login(memberEmail, memberPassword);
//        if (loginResult) {
//            return "memberMain";
//        } else {
//            return "memberLogin";
//        }
//    }


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


}
