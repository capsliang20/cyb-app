package com.app.cyb.cybparent.controller.lmc;
/*
import com.alibaba.fastjson.JSON;
import com.app.cyb.cybparent.api.DemoService;
import com.app.cyb.cybparent.entity.Demo;
import com.app.cyb.cybparent.entity.ReturnType;
import com.app.cyb.cybparent.entity.lmc.Article;
import com.app.cyb.cybparent.entity.lmc.User;
import com.app.cyb.cybparent.util.MessageUtil;
import com.chenlb.mmseg4j.ComplexSeg;
import com.chenlb.mmseg4j.Dictionary;
import com.chenlb.mmseg4j.MMSeg;
import com.chenlb.mmseg4j.Word;
import lombok.extern.slf4j.Slf4j;
import org.apache.solr.client.solrj.SolrClient;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocumentList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@Slf4j
@RequestMapping(value = "search")
public class LMCController {
    @Resource
    DemoService demoService;

    @Resource
    JavaMailSender mailSender;

    @Autowired
    StringRedisTemplate redisTemplate;

    @Autowired
    private SolrClient solrClient;

    @RequestMapping(method = RequestMethod.GET)
    Map resultMap(HttpSession httpSession) {
        System.out.println(JSON.toJSONString(httpSession));
        System.out.println(httpSession.isNew());
        httpSession.invalidate();
        return new HashMap();
    }

    @RequestMapping(value = "demo",method = RequestMethod.GET)
    List<User> queryDemo(@RequestParam("name") String name){
        SolrQuery solrQuery = new SolrQuery("text:"+name+"");
        try {

            QueryResponse query = solrClient.query("user",solrQuery);
//            SolrDocumentList results = query.getResults();
            List<User> products = query.getBeans(User.class);
            return products;
        } catch (SolrServerException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    String splitKeyword(String name){
        StringBuilder words = new StringBuilder("*");
        Dictionary dic = Dictionary.getInstance();
        MMSeg mmSeg = new MMSeg(new StringReader(name), new ComplexSeg(dic));
        Word word = null;
        try {
            while ((word = mmSeg.next()) != null) {
                String w = word.getString();
                System.out.println(w);
                words.append(w+"*");
            }
        } catch (IOException e) {

        }
        return words.toString();
//        SolrQuery solrQuery = new SolrQuery("name:*"+name+"*");
//        try {
//            Demo newdemo=new Demo(4,"liang","12345678910","fgdg@qq.com");
//            solrClient.addBean("abcde",newdemo);
//            solrClient.commit("abcde");
//            QueryResponse query = solrClient.query("abcde",solrQuery);
////            SolrDocumentList results = query.getResults();
//            List<Demo> products = query.getBeans(Demo.class);
//            return products;
//        } catch (SolrServerException e) {
//            e.printStackTrace();
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//        return null;
    }

    //搜索用户，通过用户名name/////（或账号account
    @RequestMapping(value = "user",method = RequestMethod.GET)
    ReturnType queryUsers(@RequestParam("keyword") String keyword){
        Map data=new HashMap();
        SolrQuery solrQuery1 = new SolrQuery("name:"+keyword+"");
        solrQuery1.set("rows",999);
        SolrQuery solrQuery2 = new SolrQuery("name:*"+keyword+"*");
        solrQuery2.set("rows",999);
        SolrQuery solrQuery3 = new SolrQuery("title:*"+keyword+"*");
        solrQuery3.set("rows",999);
//        SolrQuery solrQuery = new SolrQuery("name:*"+name+"*");
        try {
            QueryResponse query = solrClient.query("user",solrQuery1);
//            SolrDocumentList results = query.getResults();
            data.put("user",query.getBeans(User.class));
            QueryResponse query2 = solrClient.query("abcde",solrQuery2);
            data.put("demo",query2.getBeans(Demo.class));
            QueryResponse query3 = solrClient.query("articles",solrQuery3);
            data.put("article",query3.getBeans(Article.class));
            return new ReturnType().ok("success",data);
        } catch (SolrServerException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return new ReturnType().failure("failure");
    }

    @RequestMapping(value = "email",method = RequestMethod.GET)
    String queryDemo(){
        MessageUtil.sendEmail(mailSender, "qwwaq@qq.com", "151515");
        return "sadasd";
    }

}
*/