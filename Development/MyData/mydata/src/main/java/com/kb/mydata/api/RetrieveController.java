package com.kb.mydata.api;

import com.kb.mydata.service.RetrieveService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequiredArgsConstructor
@RestController
@RequestMapping("/api/retrieve")
public class RetrieveController {
    private final RetrieveService retrieveService;

    @GetMapping("/account/{userId}")
    public ResponseEntity<?> accountList(@PathVariable("userId") Long userId){
        try{
            return new ResponseEntity<>(retrieveService.getAccountInfo(userId), HttpStatus.OK);
        } catch(Exception e){
            e.printStackTrace();
            return new ResponseEntity<>("계좌 조회 에러", HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
    @GetMapping("/transaction/{userId}")
    public ResponseEntity<?> transactionList(@PathVariable("userId") Long userId){
        try{
            return new ResponseEntity<>(retrieveService.getTransactionInfo(userId), HttpStatus.OK);
        } catch(Exception e){
            e.printStackTrace();
            return new ResponseEntity<>("입출금내역 조회 에러", HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
    @GetMapping("/stock/{userId}")
    public ResponseEntity<?> stockList(@PathVariable("userId") Long userId){
        try{
            return new ResponseEntity<>(retrieveService.getStockInfo(userId), HttpStatus.OK);
        } catch(Exception e){
            e.printStackTrace();
            return new ResponseEntity<>("주식 내역 조회 에러", HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
    @GetMapping("/fund/{userId}")
    public ResponseEntity<?> fundList(@PathVariable("userId") Long userId){
        try{
            return new ResponseEntity<>(retrieveService.getFundInfo(userId), HttpStatus.OK);
        } catch(Exception e){
            e.printStackTrace();
            return new ResponseEntity<>("펀드 내역 조회 에러", HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
    @GetMapping("/bond/{userId}")
    public ResponseEntity<?> bondList(@PathVariable("userId") Long userId){
        try{
            return new ResponseEntity<>(retrieveService.getBondInfo(userId), HttpStatus.OK);
        } catch(Exception e){
            e.printStackTrace();
            return new ResponseEntity<>("채권 내역 조회 에러", HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
