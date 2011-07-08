.class Lcom/android/server/LocationManagerService$LocationWorkerHandler;
.super Landroid/os/Handler;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1567
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1567
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;-><init>(Lcom/android/server/LocationManagerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x1

    .line 1572
    :try_start_0
    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v6, v8, :cond_4

    .line 1575
    iget-object v6, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v6}, Lcom/android/server/LocationManagerService;->access$300(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1576
    :try_start_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/location/Location;

    .line 1577
    .local v2, location:Landroid/location/Location;
    invoke-virtual {v2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v5

    .line 1578
    .local v5, provider:Ljava/lang/String;
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v8, :cond_1

    move v4, v8

    .line 1580
    .local v4, passive:Z
    :goto_0
    if-nez v4, :cond_2

    .line 1582
    iget-object v7, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v7}, Lcom/android/server/LocationManagerService;->access$1500(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v1, v7, v8

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    .line 1583
    iget-object v7, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v7}, Lcom/android/server/LocationManagerService;->access$1500(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationProviderInterface;

    .line 1584
    .local v3, p:Landroid/location/LocationProviderInterface;
    invoke-interface {v3}, Landroid/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1585
    invoke-interface {v3, v2}, Landroid/location/LocationProviderInterface;->updateLocation(Landroid/location/Location;)V

    .line 1582
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1578
    .end local v1           #i:I
    .end local v3           #p:Landroid/location/LocationProviderInterface;
    .end local v4           #passive:Z
    :cond_1
    const/4 v7, 0x0

    move v4, v7

    goto :goto_0

    .line 1590
    .restart local v4       #passive:Z
    :cond_2
    iget-object v7, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v7, v5}, Lcom/android/server/LocationManagerService;->access$1600(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1591
    iget-object v7, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v7, v2, v4}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;Landroid/location/Location;Z)V

    .line 1593
    :cond_3
    monitor-exit v6

    .line 1599
    .end local v2           #location:Landroid/location/Location;
    .end local v4           #passive:Z
    .end local v5           #provider:Ljava/lang/String;
    :cond_4
    :goto_2
    return-void

    .line 1593
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1595
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 1597
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "LocationManagerService"

    const-string v7, "Exception in LocationWorkerHandler.handleMessage:"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
