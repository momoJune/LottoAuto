package com.blue.zziboo.lottofreeauto;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/hello")
public class LottoController {

    @GetMapping
    public String hello() {
        System.out.println("컨트롤러");
        return "hello";
    }

}