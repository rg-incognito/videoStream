package com.video.stream.app.streamvideo;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class VideoStreamingController {

    @GetMapping("/message")
    public ResponseEntity<String> getWish() {
        System.out.println("I have request");
        return ResponseEntity.ok("I am done");
    }

}
