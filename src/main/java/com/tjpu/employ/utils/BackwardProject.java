package com.tjpu.employ.utils;

import org.mybatis.generator.api.MyBatisGenerator;
import org.mybatis.generator.api.ProgressCallback;
import org.mybatis.generator.api.VerboseProgressCallback;
import org.mybatis.generator.config.Configuration;
import org.mybatis.generator.config.xml.ConfigurationParser;
import org.mybatis.generator.internal.DefaultShellCallback;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class BackwardProject {
        public static void main(String[] args) {
                List<String> warnings = new ArrayList<String> ();
                try {
                        boolean overwrite = true;
                        File configFile = new File
                                ("src/main/resources/mbg.xml");
                        ConfigurationParser cp = new ConfigurationParser (warnings);
                        Configuration config = cp.parseConfiguration (configFile);
                        DefaultShellCallback callback = new DefaultShellCallback (overwrite);
                        MyBatisGenerator myBatisGenerator = new MyBatisGenerator (config,
                                callback, warnings);
                        ProgressCallback progressCallback = new VerboseProgressCallback ();
                        // myBatisGenerator.generate(null);
                        myBatisGenerator.generate (progressCallback);
                } catch (Exception e) {
                        e.printStackTrace ();
                }
        }
}
