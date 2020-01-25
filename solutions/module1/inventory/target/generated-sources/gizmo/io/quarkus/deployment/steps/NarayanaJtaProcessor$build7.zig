// Class: io/quarkus/deployment/steps/NarayanaJtaProcessor$build7
//     Access =  public synthetic
//     Extends: java/lang/Object
//     Implements:
//         io/quarkus/runtime/StartupTask

// DO NOT MODIFY.  This is not actually a source file; it is a textual representation of generated code.
// Use only for debugging purposes.

// Auto-generated constructor
// Access: public
Method <init> : V
(
    // (no arguments)
) {
    ALOAD 0
    // Method descriptor: ()V
    INVOKESPECIAL java/lang/Object#<init>
    RETURN
    
}

// Access: public
Method deploy_0 : V
(
    arg 1 = Lio/quarkus/runtime/StartupContext;,
    arg 2 = [Ljava/lang/Object;
) {
    ** label1
    NEW java/util/Properties
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL java/util/Properties#<init>
    ASTORE 3
    ALOAD 2
    LDC (Integer) 1
    ALOAD 3
    AASTORE
    ALOAD 2
    LDC (Integer) 1
    AALOAD
    ASTORE 4
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "java.runtime.name"
    LDC (String) "OpenJDK Runtime Environment"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "sun.boot.library.path"
    LDC (String) "/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.222.b10-0.el8_0.x86_64/jre/lib/amd64"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "java.vm.version"
    LDC (String) "25.222-b10"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "java.vm.vendor"
    LDC (String) "Oracle Corporation"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "maven.multiModuleProjectDirectory"
    LDC (String) "/projects/cloud-native-workshop-v2m1-labs/inventory"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "java.vendor.url"
    LDC (String) "http://java.oracle.com/"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "path.separator"
    LDC (String) ":"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "guice.disable.misplaced.annotation.check"
    LDC (String) "true"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "java.vm.name"
    LDC (String) "OpenJDK 64-Bit Server VM"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "file.encoding.pkg"
    LDC (String) "sun.io"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "user.country"
    LDC (String) "US"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "sun.java.launcher"
    LDC (String) "SUN_STANDARD"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "sun.os.patch.level"
    LDC (String) "unknown"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "java.vm.specification.name"
    LDC (String) "Java Virtual Machine Specification"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "user.dir"
    LDC (String) "/projects"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "java.runtime.version"
    LDC (String) "1.8.0_222-b10"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "java.awt.graphicsenv"
    LDC (String) "sun.awt.X11GraphicsEnvironment"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "java.endorsed.dirs"
    LDC (String) "/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.222.b10-0.el8_0.x86_64/jre/lib/endorsed"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "os.arch"
    LDC (String) "amd64"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "java.io.tmpdir"
    LDC (String) "/tmp"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "line.separator"
    LDC (String) "
"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "java.vm.specification.vendor"
    LDC (String) "Oracle Corporation"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "os.name"
    LDC (String) "Linux"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "classworlds.conf"
    LDC (String) "/usr/local/maven/apache-maven-3.6.2/bin/m2.conf"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "sun.jnu.encoding"
    LDC (String) "ANSI_X3.4-1968"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "java.library.path"
    LDC (String) "/usr/java/packages/lib/amd64:/usr/lib64:/lib64:/lib:/usr/lib"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "maven.conf"
    LDC (String) "/usr/local/maven/apache-maven-3.6.2/conf"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "java.specification.name"
    LDC (String) "Java Platform API Specification"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "java.class.version"
    LDC (String) "52.0"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "sun.management.compiler"
    LDC (String) "HotSpot 64-Bit Tiered Compilers"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "skipTests"
    LDC (String) "true"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "os.version"
    LDC (String) "3.10.0-1062.4.3.el7.x86_64"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "library.jansi.path"
    LDC (String) "/usr/local/maven/apache-maven-3.6.2/lib/jansi-native"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "user.home"
    LDC (String) "/home/jboss"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "user.timezone"
    LDC (String) "Etc/UTC"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "java.awt.printerjob"
    LDC (String) "sun.print.PSPrinterJob"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "file.encoding"
    LDC (String) "ANSI_X3.4-1968"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "java.specification.version"
    LDC (String) "1.8"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "quarkus.profile"
    LDC (String) "prod"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "java.class.path"
    LDC (String) "/usr/local/maven/apache-maven-3.6.2/boot/plexus-classworlds-2.6.0.jar"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "user.name"
    LDC (String) "jboss"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "java.vm.specification.version"
    LDC (String) "1.8"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "sun.java.command"
    LDC (String) "org.codehaus.plexus.classworlds.launcher.Launcher -f /projects/cloud-native-workshop-v2m1-labs/inventory clean package -DskipTests -Dquarkus.profile=prod"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "java.home"
    LDC (String) "/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.222.b10-0.el8_0.x86_64/jre"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "sun.arch.data.model"
    LDC (String) "64"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "user.language"
    LDC (String) "en"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "java.specification.vendor"
    LDC (String) "Oracle Corporation"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "awt.toolkit"
    LDC (String) "sun.awt.X11.XToolkit"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "java.vm.info"
    LDC (String) "mixed mode"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "java.version"
    LDC (String) "1.8.0_222"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "securerandom.source"
    LDC (String) "file:/dev/./urandom"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "java.ext.dirs"
    LDC (String) "/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.222.b10-0.el8_0.x86_64/jre/lib/ext:/usr/java/packages/lib/ext"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "sun.boot.class.path"
    LDC (String) "/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.222.b10-0.el8_0.x86_64/jre/lib/resources.jar:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.222.b10-0.el8_0.x86_64/jre/lib/rt.jar:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.222.b10-0.el8_0.x86_64/jre/lib/sunrsasign.jar:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.222.b10-0.el8_0.x86_64/jre/lib/jsse.jar:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.222.b10-0.el8_0.x86_64/jre/lib/jce.jar:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.222.b10-0.el8_0.x86_64/jre/lib/charsets.jar:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.222.b10-0.el8_0.x86_64/jre/lib/jfr.jar:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.222.b10-0.el8_0.x86_64/jre/classes"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "java.vendor"
    LDC (String) "Oracle Corporation"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "maven.home"
    LDC (String) "/usr/local/maven/apache-maven-3.6.2"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "file.separator"
    LDC (String) "/"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "java.vendor.url.bug"
    LDC (String) "http://bugreport.sun.com/bugreport/"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "sun.io.unicode.encoding"
    LDC (String) "UnicodeLittle"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "sun.cpu.endian"
    LDC (String) "little"
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 4
    CHECKCAST java/util/Map
    LDC (String) "sun.cpu.isalist"
    LDC (String) ""
    // Method descriptor: (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    INVOKEINTERFACE java/util/Map#put
    POP
    ALOAD 2
    LDC (Integer) 2
    ALOAD 4
    AASTORE
    NEW io/quarkus/narayana/jta/runtime/NarayanaJtaRecorder
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/narayana/jta/runtime/NarayanaJtaRecorder#<init>
    ASTORE 5
    ALOAD 2
    LDC (Integer) 0
    ALOAD 5
    AASTORE
    ALOAD 2
    LDC (Integer) 2
    AALOAD
    ASTORE 6
    ALOAD 2
    LDC (Integer) 0
    AALOAD
    ASTORE 8
    ALOAD 8
    CHECKCAST io/quarkus/narayana/jta/runtime/NarayanaJtaRecorder
    ALOAD 6
    CHECKCAST java/util/Properties
    // Method descriptor: (Ljava/util/Properties;)V
    INVOKEVIRTUAL io/quarkus/narayana/jta/runtime/NarayanaJtaRecorder#setDefaultProperties
    // Field descriptor: Lio/quarkus/runtime/generated/RunTimeConfigRoot;
    GETSTATIC io/quarkus/runtime/generated/RunTimeConfig#runConfig
    // Field descriptor: Ljava/lang/Object;
    GETFIELD io/quarkus/runtime/generated/RunTimeConfigRoot#transactionManager
    ASTORE 7
    ALOAD 2
    LDC (Integer) 3
    ALOAD 7
    AASTORE
    ALOAD 2
    LDC (Integer) 3
    AALOAD
    ASTORE 9
    ALOAD 8
    CHECKCAST io/quarkus/narayana/jta/runtime/NarayanaJtaRecorder
    ALOAD 9
    CHECKCAST io/quarkus/narayana/jta/runtime/TransactionManagerConfiguration
    // Method descriptor: (Lio/quarkus/narayana/jta/runtime/TransactionManagerConfiguration;)V
    INVOKEVIRTUAL io/quarkus/narayana/jta/runtime/NarayanaJtaRecorder#setNodeName
    ALOAD 8
    CHECKCAST io/quarkus/narayana/jta/runtime/NarayanaJtaRecorder
    ALOAD 9
    CHECKCAST io/quarkus/narayana/jta/runtime/TransactionManagerConfiguration
    // Method descriptor: (Lio/quarkus/narayana/jta/runtime/TransactionManagerConfiguration;)V
    INVOKEVIRTUAL io/quarkus/narayana/jta/runtime/NarayanaJtaRecorder#setDefaultTimeout
    RETURN
    ** label2
    
}

// Access: public
Method deploy : V
(
    arg 1 = Lio/quarkus/runtime/StartupContext;
) {
    ** label1
    LDC (Integer) 4
    ANEWARRAY java/lang/Object
    ASTORE 2
    ALOAD 0
    ALOAD 1
    ALOAD 2
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;[Ljava/lang/Object;)V
    INVOKEVIRTUAL io/quarkus/deployment/steps/NarayanaJtaProcessor$build7#deploy_0
    RETURN
    ** label2
    
}

