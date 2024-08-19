package com.ejemplo.controller;

import com.ejemplo.dao.MedallasDAO;
import com.ejemplo.model.Medallas;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MedallasController {

    @Autowired
    private MedallasDAO medallasDAO;

    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("medallas", medallasDAO.findAll());
        return "index";
    }

    @PostMapping("/addMedallas")
    public String addMedallas(@RequestParam String pais, @RequestParam int oro, @RequestParam int plata, @RequestParam int bronce) {
        Medallas medallas = new Medallas();
        medallas.setPais(pais);
        medallas.setOro(oro);
        medallas.setPlata(plata);
        medallas.setBronce(bronce);
        medallasDAO.save(medallas);
        return "redirect:/";
    }
}

