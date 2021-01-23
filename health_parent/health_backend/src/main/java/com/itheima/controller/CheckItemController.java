package com.itheima.controller;

import com.itheima.constant.MessageConstant;
import com.itheima.entity.Result;
import com.itheima.pojo.CheckItem;
import com.itheima.service.CheckItemService;
import com.alibaba.dubbo.config.annotation.Reference;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/checkitem")
public class CheckItemController {

    @Reference // 查找服务
    private CheckItemService checkItemService;

    // 新增检查项
    @RequestMapping("/add")
    public Result add(@RequestBody CheckItem checkItem) {

        try {
            checkItemService.add(checkItem);
        } catch (Exception e) {
            e.printStackTrace();
            // 服务调用失败
            return new Result(false, MessageConstant.ADD_CHECKGROUP_FAIL);
        }

        return new Result(false, MessageConstant.ADD_CHECKGROUP_SUCCESS);
    }

//    @RequestMapping("/add")
//    public Result add(byte[] data) {
//
//
//
//        try {
//            String res = new String(data,"UTF-8");
//            System.out.println("zhousuhua ======= res="+res);
////            checkItemService.add(checkItem);
//        } catch (Exception e) {
//            e.printStackTrace();
//            // 服务调用失败
//            return new Result(false, MessageConstant.ADD_CHECKGROUP_FAIL);
//        }
//
//        return new Result(false, MessageConstant.ADD_CHECKGROUP_SUCCESS);
//    }

}
