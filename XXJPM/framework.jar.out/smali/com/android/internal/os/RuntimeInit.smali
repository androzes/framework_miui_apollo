.class public Lcom/android/internal/os/RuntimeInit;
.super Ljava/lang/Object;
.source "RuntimeInit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/RuntimeInit$UncaughtHandler;
    }
.end annotation


# static fields
.field private static final DATA_PATH:Ljava/lang/String; = "/data"

.field private static final TAG:Ljava/lang/String; = "AndroidRuntime"

.field private static day:Ljava/lang/String;

.field private static hour:Ljava/lang/String;

.field private static initialized:Z

.field private static mApplicationObject:Landroid/os/IBinder;

.field private static volatile mCrashing:Z

.field private static mFreeMem:J

.field private static min:Ljava/lang/String;

.field private static month:Ljava/lang/String;

.field private static final sInReportException:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sec:Ljava/lang/String;

.field private static sysdump_time:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/os/RuntimeInit;->mCrashing:Z

    .line 68
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/internal/os/RuntimeInit;->mFreeMem:J

    .line 382
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/internal/os/RuntimeInit;->sInReportException:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 397
    invoke-static {}, Landroid/ddm/DdmRegister;->registerHandlers()V

    .line 398
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/android/internal/os/RuntimeInit;->mCrashing:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    sput-boolean p0, Lcom/android/internal/os/RuntimeInit;->mCrashing:Z

    return p0
.end method

.method static synthetic access$100()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$200()J
    .locals 2

    .prologue
    .line 55
    sget-wide v0, Lcom/android/internal/os/RuntimeInit;->mFreeMem:J

    return-wide v0
.end method

.method static synthetic access$202(J)J
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    sput-wide p0, Lcom/android/internal/os/RuntimeInit;->mFreeMem:J

    return-wide p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/internal/os/RuntimeInit;->month:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    sput-object p0, Lcom/android/internal/os/RuntimeInit;->month:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/internal/os/RuntimeInit;->day:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    sput-object p0, Lcom/android/internal/os/RuntimeInit;->day:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/internal/os/RuntimeInit;->hour:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    sput-object p0, Lcom/android/internal/os/RuntimeInit;->hour:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/internal/os/RuntimeInit;->min:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    sput-object p0, Lcom/android/internal/os/RuntimeInit;->min:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/internal/os/RuntimeInit;->sysdump_time:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    sput-object p0, Lcom/android/internal/os/RuntimeInit;->sysdump_time:Ljava/lang/String;

    return-object p0
.end method

.method private static final commonInit()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v7, "1"

    .line 143
    new-instance v3, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;

    invoke-direct {v3, v6}, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;-><init>(Lcom/android/internal/os/RuntimeInit$1;)V

    invoke-static {v3}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 145
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->getQwertyKeyboard()I

    move-result v0

    .line 148
    .local v0, hasQwerty:I
    if-ne v0, v5, :cond_0

    .line 149
    const-string v3, "qwerty"

    const-string v4, "1"

    invoke-static {v3, v7}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    :cond_0
    new-instance v3, Lcom/android/internal/os/RuntimeInit$1;

    invoke-direct {v3}, Lcom/android/internal/os/RuntimeInit$1;-><init>()V

    invoke-static {v3}, Lorg/apache/harmony/luni/internal/util/TimezoneGetter;->setInstance(Lorg/apache/harmony/luni/internal/util/TimezoneGetter;)V

    .line 161
    invoke-static {v6}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 170
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/logging/LogManager;->reset()V

    .line 171
    new-instance v3, Lcom/android/internal/logging/AndroidConfig;

    invoke-direct {v3}, Lcom/android/internal/logging/AndroidConfig;-><init>()V

    .line 176
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, userAgent:Ljava/lang/String;
    const-string v3, "http.agent"

    invoke-static {v3, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    const-string v3, "ro.kernel.android.tracing"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, trace:Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 187
    const-string v3, "AndroidRuntime"

    const-string v4, "NOTE: emulator trace profiling enabled"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-static {}, Landroid/os/Debug;->enableEmulatorTraceOutput()V

    .line 191
    :cond_1
    sput-boolean v5, Lcom/android/internal/os/RuntimeInit;->initialized:Z

    .line 192
    return-void
.end method

.method public static final native finishInit()V
.end method

.method private static getDefaultUserAgent()Ljava/lang/String;
    .locals 6

    .prologue
    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 200
    .local v2, result:Ljava/lang/StringBuilder;
    const-string v4, "Dalvik/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v4, "java.vm.version"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v4, " (Linux; U; Android "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 205
    .local v3, version:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    move-object v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const-string v4, "REL"

    sget-object v5, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 209
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 210
    .local v1, model:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 211
    const-string v4, "; "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .end local v1           #model:Ljava/lang/String;
    :cond_0
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 216
    .local v0, id:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 217
    const-string v4, " Build/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_1
    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 205
    .end local v0           #id:Ljava/lang/String;
    :cond_2
    const-string v4, "1.0"

    goto :goto_0
.end method

.method public static native getQwertyKeyboard()I
.end method

.method private static invokeStaticMain(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .parameter "className"
    .parameter "argv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 237
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    const/high16 v5, 0x3f40

    invoke-virtual {v4, v5}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 242
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 251
    .local v0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_1
    const-string v4, "main"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, [Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 260
    .local v2, m:Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    .line 261
    .local v3, modifiers:I
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 262
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Main method is not public and static on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 243
    .end local v0           #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #m:Ljava/lang/reflect/Method;
    .end local v3           #modifiers:I
    :catch_0
    move-exception v1

    .line 244
    .local v1, ex:Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing class when invoking static main "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 252
    .end local v1           #ex:Ljava/lang/ClassNotFoundException;
    .restart local v0       #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 253
    .local v1, ex:Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing static main on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 255
    .end local v1           #ex:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v4

    move-object v1, v4

    .line 256
    .local v1, ex:Ljava/lang/SecurityException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem getting static main on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 272
    .end local v1           #ex:Ljava/lang/SecurityException;
    .restart local v2       #m:Ljava/lang/reflect/Method;
    .restart local v3       #modifiers:I
    :cond_1
    new-instance v4, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;

    invoke-direct {v4, v2, p1}, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;-><init>(Ljava/lang/reflect/Method;[Ljava/lang/String;)V

    throw v4
.end method

.method public static final native isComputerOn()I
.end method

.method public static final main([Ljava/lang/String;)V
    .locals 0
    .parameter "argv"

    .prologue
    .line 276
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->commonInit()V

    .line 282
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->finishInit()V

    .line 285
    return-void
.end method

.method public static final setApplicationObject(Landroid/os/IBinder;)V
    .locals 0
    .parameter "app"

    .prologue
    .line 389
    sput-object p0, Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;

    .line 390
    return-void
.end method

.method public static final native turnComputerOn()V
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .parameter "tag"
    .parameter "t"

    .prologue
    .line 370
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    sget-object v2, Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;

    new-instance v3, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v3, p1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2, p0, v3}, Landroid/app/IActivityManager;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 374
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 376
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 377
    .local v0, t2:Ljava/lang/Throwable;
    const-string v1, "AndroidRuntime"

    const-string v2, "Error reporting WTF"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static final zygoteInit([Ljava/lang/String;)V
    .locals 10
    .parameter "argv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    const-string v9, "--"

    .line 307
    new-instance v6, Lcom/android/internal/os/AndroidPrintStream;

    const/4 v7, 0x4

    const-string v8, "System.out"

    invoke-direct {v6, v7, v8}, Lcom/android/internal/os/AndroidPrintStream;-><init>(ILjava/lang/String;)V

    invoke-static {v6}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 308
    new-instance v6, Lcom/android/internal/os/AndroidPrintStream;

    const/4 v7, 0x5

    const-string v8, "System.err"

    invoke-direct {v6, v7, v8}, Lcom/android/internal/os/AndroidPrintStream;-><init>(ILjava/lang/String;)V

    invoke-static {v6}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 310
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->commonInit()V

    .line 311
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->zygoteInitNative()V

    .line 313
    const/4 v1, 0x0

    .line 314
    .local v1, curArg:I
    :goto_0
    array-length v6, p0

    if-ge v1, v6, :cond_0

    .line 315
    aget-object v0, p0, v1

    .line 317
    .local v0, arg:Ljava/lang/String;
    const-string v6, "--"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 318
    add-int/lit8 v1, v1, 0x1

    .line 328
    .end local v0           #arg:Ljava/lang/String;
    :cond_0
    array-length v6, p0

    if-ne v1, v6, :cond_3

    .line 329
    const-string v6, "AndroidRuntime"

    const-string v7, "Missing classname argument to RuntimeInit!"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :goto_1
    return-void

    .line 320
    .restart local v0       #arg:Ljava/lang/String;
    :cond_1
    const-string v6, "--"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 322
    const-string v6, "--nice-name="

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 323
    const/16 v6, 0x3d

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 324
    .local v3, niceName:Ljava/lang/String;
    invoke-static {v3}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 314
    .end local v3           #niceName:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    .end local v0           #arg:Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v1, 0x1

    .end local v1           #curArg:I
    .local v2, curArg:I
    aget-object v5, p0, v1

    .line 337
    .local v5, startClass:Ljava/lang/String;
    array-length v6, p0

    sub-int/2addr v6, v2

    new-array v4, v6, [Ljava/lang/String;

    .line 339
    .local v4, startArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    array-length v7, v4

    invoke-static {p0, v2, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 340
    invoke-static {v5, v4}, Lcom/android/internal/os/RuntimeInit;->invokeStaticMain(Ljava/lang/String;[Ljava/lang/String;)V

    move v1, v2

    .line 341
    .end local v2           #curArg:I
    .restart local v1       #curArg:I
    goto :goto_1
.end method

.method public static final native zygoteInitNative()V
.end method
