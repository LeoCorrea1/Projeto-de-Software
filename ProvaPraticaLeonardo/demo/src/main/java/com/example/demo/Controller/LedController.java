package com.example.demo.Controller;

import com.example.demo.Service.ArduinoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LedController {
    private final ArduinoService service;
    private String statusAtual = "DESLIGADO";

    public LedController(ArduinoService service) {
        this.service = service;
    }

    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("historico", service.listarHistorico());
        model.addAttribute("status", statusAtual);
        return "index";
    }

    @PostMapping("/acao")
    public String controlar(@RequestParam char comando) {
        service.controlarLed(comando);
        statusAtual = (comando == '1') ? "LIGADO" : "DESLIGADO";
        return "redirect:/";
    }
}

