.class final Lcom/android/internal/location/GpsLocationProvider$GpsLocationProviderThread;
.super Ljava/lang/Thread;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GpsLocationProviderThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/location/GpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/internal/location/GpsLocationProvider;)V
    .locals 1
    .parameter

    .prologue
    .line 2252
    iput-object p1, p0, Lcom/android/internal/location/GpsLocationProvider$GpsLocationProviderThread;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    .line 2253
    const-string v0, "GpsLocationProvider"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2254
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2257
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2258
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$GpsLocationProviderThread;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$8400(Lcom/android/internal/location/GpsLocationProvider;)V

    .line 2259
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2260
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$GpsLocationProviderThread;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    new-instance v1, Lcom/android/internal/location/GpsLocationProvider$ProviderHandler;

    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider$GpsLocationProviderThread;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/internal/location/GpsLocationProvider$ProviderHandler;-><init>(Lcom/android/internal/location/GpsLocationProvider;Lcom/android/internal/location/GpsLocationProvider$1;)V

    invoke-static {v0, v1}, Lcom/android/internal/location/GpsLocationProvider;->access$8502(Lcom/android/internal/location/GpsLocationProvider;Landroid/os/Handler;)Landroid/os/Handler;

    .line 2262
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$GpsLocationProviderThread;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$8700(Lcom/android/internal/location/GpsLocationProvider;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2263
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 2264
    return-void
.end method
