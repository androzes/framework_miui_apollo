.class Lcom/android/internal/location/LocationProviderProxy$Connection;
.super Ljava/lang/Object;
.source "LocationProviderProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/LocationProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/location/LocationProviderProxy;


# direct methods
.method private constructor <init>(Lcom/android/internal/location/LocationProviderProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/internal/location/LocationProviderProxy$Connection;->this$0:Lcom/android/internal/location/LocationProviderProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/location/LocationProviderProxy;Lcom/android/internal/location/LocationProviderProxy$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/internal/location/LocationProviderProxy$Connection;-><init>(Lcom/android/internal/location/LocationProviderProxy;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 70
    const-string v0, "LocationProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocationProviderProxy.onServiceConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy$Connection;->this$0:Lcom/android/internal/location/LocationProviderProxy;

    invoke-static {p2}, Landroid/location/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationProvider;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/location/LocationProviderProxy;->access$102(Lcom/android/internal/location/LocationProviderProxy;Landroid/location/ILocationProvider;)Landroid/location/ILocationProvider;

    .line 73
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy$Connection;->this$0:Lcom/android/internal/location/LocationProviderProxy;

    invoke-static {v0}, Lcom/android/internal/location/LocationProviderProxy;->access$100(Lcom/android/internal/location/LocationProviderProxy;)Landroid/location/ILocationProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy$Connection;->this$0:Lcom/android/internal/location/LocationProviderProxy;

    invoke-static {v0}, Lcom/android/internal/location/LocationProviderProxy;->access$300(Lcom/android/internal/location/LocationProviderProxy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/LocationProviderProxy$Connection;->this$0:Lcom/android/internal/location/LocationProviderProxy;

    invoke-static {v1}, Lcom/android/internal/location/LocationProviderProxy;->access$200(Lcom/android/internal/location/LocationProviderProxy;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    :cond_0
    monitor-exit p0

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "className"

    .prologue
    .line 80
    const-string v0, "LocationProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocationProviderProxy.onServiceDisconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy$Connection;->this$0:Lcom/android/internal/location/LocationProviderProxy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/location/LocationProviderProxy;->access$102(Lcom/android/internal/location/LocationProviderProxy;Landroid/location/ILocationProvider;)Landroid/location/ILocationProvider;

    .line 83
    monitor-exit p0

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
