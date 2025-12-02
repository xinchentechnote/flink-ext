# build flink-runtime
cd ./submodules/flink/flink-runtime
export JAVA_HOME=/usr/java/jdk-11.0.9
export PATH=$JAVA_HOME/bin:$PATH
export MAVEN_HOME=$HOME/software/apache-maven-3.8.6
export PATH=$MAVEN_HOME/bin:$PATH
mvn --version
mvn clean
mvn spotless:apply install -DskipTests
cd -
# update flink-dist
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
