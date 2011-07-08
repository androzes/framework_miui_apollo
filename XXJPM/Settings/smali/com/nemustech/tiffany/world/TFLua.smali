.class public Lcom/nemustech/tiffany/world/TFLua;
.super Ljava/lang/Object;
.source "TFLua.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/world/TFLua$Invocation;
    }
.end annotation


# static fields
.field public static final LUA_GCCOLLECT:I = 0x2

.field public static final LUA_GCCOUNT:I = 0x3

.field public static final LUA_GCCOUNTB:I = 0x4

.field public static final LUA_GCRESTART:I = 0x1

.field public static final LUA_GCSETPAUSE:I = 0x6

.field public static final LUA_GCSETSTEPMUL:I = 0x7

.field public static final LUA_GCSTEP:I = 0x5

.field public static final LUA_GCSTOP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TFLua"


# instance fields
.field public final mL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const-string v0, "tflua"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Lcom/nemustech/tiffany/world/TFLua;->n_newLua()I

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFLua;->mL:I

    .line 14
    return-void
.end method

.method public static synchronized native declared-synchronized cm_dump_stack(I)V
.end method

.method public static synchronized native declared-synchronized cm_invoke_proxy(IILjava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public static synchronized native declared-synchronized cm_unref_proxy(II)V
.end method

.method public static declared-synchronized createProxy(IILjava/lang/String;)Ljava/lang/Object;
    .locals 8
    .parameter "L"
    .parameter "ref"
    .parameter "interfaces"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 84
    const-class v5, Lcom/nemustech/tiffany/world/TFLua;

    monitor-enter v5

    const/16 v6, 0x2f

    const/16 v7, 0x2e

    :try_start_0
    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, clspaths:Ljava/lang/String;
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, ", "

    invoke-direct {v4, v1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .local v4, st:Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    .line 89
    .local v2, count:I
    new-array v0, v2, [Ljava/lang/Class;

    .line 90
    .local v0, classes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 91
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v0, v3

    .line 90
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92
    :cond_0
    new-instance v3, Lcom/nemustech/tiffany/world/TFLua$Invocation;

    .end local v3           #i:I
    invoke-direct {v3, p0, p1}, Lcom/nemustech/tiffany/world/TFLua$Invocation;-><init>(II)V

    .line 93
    .local v3, i:Lcom/nemustech/tiffany/world/TFLua$Invocation;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v6, v0, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    monitor-exit v5

    return-object v6

    .line 84
    .end local v0           #classes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v1           #clspaths:Ljava/lang/String;
    .end local v2           #count:I
    .end local v3           #i:Lcom/nemustech/tiffany/world/TFLua$Invocation;
    .end local v4           #st:Ljava/util/StringTokenizer;
    :catchall_0
    move-exception v6

    monitor-exit v5

    throw v6
.end method

.method public static synchronized native declared-synchronized lua_gc(III)I
.end method

.method private static synchronized native declared-synchronized n_addObject(ILjava/lang/String;Ljava/lang/Object;)V
.end method

.method private static synchronized native declared-synchronized n_closeLua(I)V
.end method

.method private static synchronized native declared-synchronized n_newLua()I
.end method

.method private static synchronized native declared-synchronized n_removeObject(ILjava/lang/String;)V
.end method

.method private static synchronized native declared-synchronized n_runString(ILjava/lang/String;)I
.end method


# virtual methods
.method public addObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "name"
    .parameter "o"

    .prologue
    .line 27
    iget v0, p0, Lcom/nemustech/tiffany/world/TFLua;->mL:I

    invoke-static {v0, p1, p2}, Lcom/nemustech/tiffany/world/TFLua;->n_addObject(ILjava/lang/String;Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public addTFObject(Ljava/lang/String;Lcom/nemustech/tiffany/world/TFObject;)V
    .locals 0
    .parameter "name"
    .parameter "o"

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/world/TFLua;->addObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public addTFWorld(Ljava/lang/String;Lcom/nemustech/tiffany/world/TFWorld;)V
    .locals 0
    .parameter "name"
    .parameter "world"

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/world/TFLua;->addObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 17
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 18
    const-string v0, "TFLua"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finalized "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget v0, p0, Lcom/nemustech/tiffany/world/TFLua;->mL:I

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFLua;->n_closeLua(I)V

    .line 20
    return-void
.end method

.method public removeObject(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 30
    iget v0, p0, Lcom/nemustech/tiffany/world/TFLua;->mL:I

    invoke-static {v0, p1}, Lcom/nemustech/tiffany/world/TFLua;->n_removeObject(ILjava/lang/String;)V

    .line 31
    return-void
.end method

.method public runString(Ljava/lang/String;)I
    .locals 1
    .parameter "code"

    .prologue
    .line 23
    iget v0, p0, Lcom/nemustech/tiffany/world/TFLua;->mL:I

    invoke-static {v0, p1}, Lcom/nemustech/tiffany/world/TFLua;->n_runString(ILjava/lang/String;)I

    move-result v0

    return v0
.end method
