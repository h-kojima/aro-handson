// Class: io/quarkus/deployment/steps/SmallRyeHealthProcessor$build4
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
    NEW io/quarkus/smallrye/health/runtime/SmallRyeHealthRecorder
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/smallrye/health/runtime/SmallRyeHealthRecorder#<init>
    ASTORE 3
    ALOAD 2
    LDC (Integer) 0
    ALOAD 3
    AASTORE
    // Method descriptor: ()Ljava/lang/Thread;
    INVOKESTATIC java/lang/Thread#currentThread
    // Method descriptor: ()Ljava/lang/ClassLoader;
    INVOKEVIRTUAL java/lang/Thread#getContextClassLoader
    ASTORE 4
    LDC (String) "io.smallrye.health.ResponseProvider"
    LDC (Boolean) true
    ALOAD 4
    // Method descriptor: (Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    INVOKESTATIC java/lang/Class#forName
    ASTORE 5
    ALOAD 2
    LDC (Integer) 0
    AALOAD
    CHECKCAST io/quarkus/smallrye/health/runtime/SmallRyeHealthRecorder
    ALOAD 5
    // Method descriptor: (Ljava/lang/Class;)V
    INVOKEVIRTUAL io/quarkus/smallrye/health/runtime/SmallRyeHealthRecorder#registerHealthCheckResponseProvider
    RETURN
    ** label2
    
}

// Access: public
Method deploy : V
(
    arg 1 = Lio/quarkus/runtime/StartupContext;
) {
    ** label1
    LDC (Integer) 1
    ANEWARRAY java/lang/Object
    ASTORE 2
    ALOAD 0
    ALOAD 1
    ALOAD 2
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;[Ljava/lang/Object;)V
    INVOKEVIRTUAL io/quarkus/deployment/steps/SmallRyeHealthProcessor$build4#deploy_0
    RETURN
    ** label2
    
}

