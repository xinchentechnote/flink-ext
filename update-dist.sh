tar -zxvf flink-1.18.0-bin-scala_2.12.tgz
jar uf flink-1.18.0/lib/flink-dist-1.18.0.jar -C ./submodules/flink/flink-runtime/target/classes org/apache/flink/runtime/rest/IpWhiteListConfiguration.class
jar uf flink-1.18.0/lib/flink-dist-1.18.0.jar -C ./submodules/flink/flink-runtime/target/classes 'org/apache/flink/runtime/rest/IpWhiteListConfiguration$1.class'
jar uf flink-1.18.0/lib/flink-dist-1.18.0.jar -C ./submodules/flink/flink-runtime/target/classes 'org/apache/flink/runtime/rest/IpWhiteListConfiguration$CidrMatcher.class'
jar uf flink-1.18.0/lib/flink-dist-1.18.0.jar -C ./submodules/flink/flink-runtime/target/classes 'org/apache/flink/runtime/rest/IpWhiteListConfiguration$IpMatcher.class'
jar uf flink-1.18.0/lib/flink-dist-1.18.0.jar -C ./submodules/flink/flink-runtime/target/classes 'org/apache/flink/runtime/rest/IpWhiteListConfiguration$WildcardMatcher.class'
jar uf flink-1.18.0/lib/flink-dist-1.18.0.jar -C ./submodules/flink/flink-runtime/target/classes org/apache/flink/runtime/rest/IpWhiteListHandler.class
jar uf flink-1.18.0/lib/flink-dist-1.18.0.jar -C ./submodules/flink/flink-runtime/target/classes org/apache/flink/runtime/rest/RestServerEndpoint.class
jar uf flink-1.18.0/lib/flink-dist-1.18.0.jar -C ./submodules/flink/flink-runtime/target/classes 'org/apache/flink/runtime/rest/RestServerEndpoint$1.class'
jar uf flink-1.18.0/lib/flink-dist-1.18.0.jar -C ./submodules/flink/flink-runtime/target/classes 'org/apache/flink/runtime/rest/RestServerEndpoint$RestHandlerUrlComparator.class'
jar uf flink-1.18.0/lib/flink-dist-1.18.0.jar -C ./submodules/flink/flink-runtime/target/classes 'org/apache/flink/runtime/rest/RestServerEndpoint$RestHandlerUrlComparator$CaseInsensitiveOrderComparator.class'
jar uf flink-1.18.0/lib/flink-dist-1.18.0.jar -C ./submodules/flink/flink-runtime/target/classes 'org/apache/flink/runtime/rest/RestServerEndpoint$State.class'
jar tf flink-1.18.0/lib/flink-dist-1.18.0.jar | grep -E "(IpWhiteList|RestServerEndpoint)"
