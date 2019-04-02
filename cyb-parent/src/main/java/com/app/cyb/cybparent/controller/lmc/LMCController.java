package com.app.cyb.cybparent.controller.lmc;

import com.app.cyb.cybparent.api.DemoService;
import com.app.cyb.cybparent.entity.Demo;
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
import java.io.IOException;
import java.util.List;

@RestController
@Slf4j
@RequestMapping(value = "lmc")
public class LMCController {
    @Resource
    DemoService demoService;

    @Resource
    JavaMailSender mailSender;

    @Autowired
    StringRedisTemplate redisTemplate;

    @Autowired
    private SolrClient solrClient;

//    @RequestMapping(method = RequestMethod.GET)
//    Map resultMap(HttpSession httpSession) {
//        System.out.println(JSON.toJSONString(httpSession));
//        System.out.println(httpSession.isNew());
//        httpSession.invalidate();
//        return new HashMap();
//    }

    @RequestMapping(value = "lmc",method = RequestMethod.GET)
    List<Demo> queryDemo(@RequestParam("demo") String name){
        SolrQuery solrQuery = new SolrQuery("name:*"+name+"*");
        try {
            Demo newdemo=new Demo(4,"liang","12345678910","fgdg@qq.com");
            solrClient.addBean(newdemo);
            solrClient.commit();
            QueryResponse query = solrClient.query(solrQuery);
//            SolrDocumentList results = query.getResults();
            List<Demo> products = query.getBeans(Demo.class);
            return products;
        } catch (SolrServerException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }
//
//    @RequestMapping(value = "email",method = RequestMethod.GET)
//    String queryDemo(){
//        MessageUtil.sendEmail(mailSender, "qwwaq@qq.com", "151515");
//        return "sadasd";
//    }

}
