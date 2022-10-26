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
    public String postLogin(@ModelAttribute MemberDTO memberDTO, Model model) {
        MemberDTO loginResult = memberService.login(memberDTO);
        model.addAttribute("loginResult", loginResult);
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
        model.addAttribute("deleteResult", deleteResult);

        return "memberList";
    }


}
