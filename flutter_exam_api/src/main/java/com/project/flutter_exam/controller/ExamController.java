package com.project.flutter_exam.controller;

import com.project.flutter_exam.model.Place;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.function.EntityResponse;

import java.util.List;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "*")
public class ExamController {
    private final List<Place> allPlaces = List.of(
            new Place(1, "Đà Lạt", "pictures/da-lat.jpg", 5),
            new Place(2, "Hạ Long", "pictures/ha-long.jpg", 4),
            new Place(3, "Phú Quốc", "pictures/phu-quoc.jpg", 5),
            new Place(4, "Quy Nhơn", "pictures/quy-nhon.jpg", 4)
    );

    @GetMapping("/places")
    public List<Place> getAllPlaces() {
        return allPlaces;
    }
}
