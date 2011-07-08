.class public Lcom/nemustech/tiffany/world/TFDelayLoader;
.super Ljava/lang/Object;
.source "TFDelayLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final TAG:Ljava/lang/String; = "TFDelayLoader"

.field static final loaderInstance:Lcom/nemustech/tiffany/world/TFDelayLoader;

.field private static mWorld:Lcom/nemustech/tiffany/world/TFWorld;


# instance fields
.field private mArrayHolder:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/nemustech/tiffany/world/TFHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mArrayModel:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/nemustech/tiffany/world/TFModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/nemustech/tiffany/world/TFDelayLoader;

    invoke-direct {v0}, Lcom/nemustech/tiffany/world/TFDelayLoader;-><init>()V

    sput-object v0, Lcom/nemustech/tiffany/world/TFDelayLoader;->loaderInstance:Lcom/nemustech/tiffany/world/TFDelayLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance(Lcom/nemustech/tiffany/world/TFWorld;)Lcom/nemustech/tiffany/world/TFDelayLoader;
    .locals 1
    .parameter "world"

    .prologue
    .line 16
    sput-object p0, Lcom/nemustech/tiffany/world/TFDelayLoader;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    .line 17
    sget-object v0, Lcom/nemustech/tiffany/world/TFDelayLoader;->loaderInstance:Lcom/nemustech/tiffany/world/TFDelayLoader;

    return-object v0
.end method


# virtual methods
.method genTextures(Ljavax/microedition/khronos/opengles/GL10;Ljava/util/LinkedList;Ljava/util/LinkedList;)V
    .locals 5
    .parameter "gl"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/microedition/khronos/opengles/GL10;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/nemustech/tiffany/world/TFModel;",
            ">;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/nemustech/tiffany/world/TFHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, arrayModel:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/nemustech/tiffany/world/TFModel;>;"
    .local p3, arrayHolder:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/nemustech/tiffany/world/TFHolder;>;"
    const/4 v4, 0x1

    .line 21
    iput-object p2, p0, Lcom/nemustech/tiffany/world/TFDelayLoader;->mArrayModel:Ljava/util/LinkedList;

    .line 22
    iput-object p3, p0, Lcom/nemustech/tiffany/world/TFDelayLoader;->mArrayHolder:Ljava/util/LinkedList;

    .line 24
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFDelayLoader;->mArrayModel:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nemustech/tiffany/world/TFModel;

    .line 25
    .local v2, m:Lcom/nemustech/tiffany/world/TFModel;
    invoke-virtual {v2, p1, v4}, Lcom/nemustech/tiffany/world/TFModel;->genTextures(Ljavax/microedition/khronos/opengles/GL10;Z)V

    goto :goto_0

    .line 27
    .end local v2           #m:Lcom/nemustech/tiffany/world/TFModel;
    :cond_0
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFDelayLoader;->mArrayHolder:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nemustech/tiffany/world/TFHolder;

    .line 28
    .local v0, h:Lcom/nemustech/tiffany/world/TFHolder;
    invoke-virtual {v0, p1, v4}, Lcom/nemustech/tiffany/world/TFHolder;->genTextures(Ljavax/microedition/khronos/opengles/GL10;Z)V

    goto :goto_1

    .line 29
    .end local v0           #h:Lcom/nemustech/tiffany/world/TFHolder;
    :cond_1
    return-void
.end method

.method load()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 33
    .local v0, loaderThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 34
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const-string v5, "TFDelayLoader"

    .line 37
    const-string v3, "TFDelayLoader"

    const-string v3, "thread run started"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    sget-object v3, Lcom/nemustech/tiffany/world/TFDelayLoader;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iput-boolean v4, v3, Lcom/nemustech/tiffany/world/TFWorld;->mTextureIsLoading:Z

    .line 40
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFDelayLoader;->mArrayModel:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nemustech/tiffany/world/TFModel;

    .line 41
    .local v2, m:Lcom/nemustech/tiffany/world/TFModel;
    invoke-virtual {v2, v4}, Lcom/nemustech/tiffany/world/TFModel;->loadTextures(Z)V

    goto :goto_0

    .line 43
    .end local v2           #m:Lcom/nemustech/tiffany/world/TFModel;
    :cond_0
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFDelayLoader;->mArrayHolder:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nemustech/tiffany/world/TFHolder;

    .line 44
    .local v0, h:Lcom/nemustech/tiffany/world/TFHolder;
    invoke-virtual {v0, v4}, Lcom/nemustech/tiffany/world/TFHolder;->loadTextures(Z)V

    goto :goto_1

    .line 47
    .end local v0           #h:Lcom/nemustech/tiffany/world/TFHolder;
    :cond_1
    sget-object v3, Lcom/nemustech/tiffany/world/TFDelayLoader;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/nemustech/tiffany/world/TFWorld;->mTextureIsLoading:Z

    .line 48
    const-string v3, "TFDelayLoader"

    const-string v3, "thread run ended"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method
