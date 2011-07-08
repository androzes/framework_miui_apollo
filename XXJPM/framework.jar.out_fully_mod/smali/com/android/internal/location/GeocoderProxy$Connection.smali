.class Lcom/android/internal/location/GeocoderProxy$Connection;
.super Ljava/lang/Object;
.source "GeocoderProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/GeocoderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/location/GeocoderProxy;


# direct methods
.method private constructor <init>(Lcom/android/internal/location/GeocoderProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/internal/location/GeocoderProxy$Connection;->this$0:Lcom/android/internal/location/GeocoderProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/location/GeocoderProxy;Lcom/android/internal/location/GeocoderProxy$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/internal/location/GeocoderProxy$Connection;-><init>(Lcom/android/internal/location/GeocoderProxy;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 55
    const-string v0, "GeocoderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/location/GeocoderProxy$Connection;->this$0:Lcom/android/internal/location/GeocoderProxy;

    invoke-static {p2}, Landroid/location/IGeocodeProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeocodeProvider;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/location/GeocoderProxy;->access$102(Lcom/android/internal/location/GeocoderProxy;Landroid/location/IGeocodeProvider;)Landroid/location/IGeocodeProvider;

    .line 58
    monitor-exit p0

    .line 59
    return-void

    .line 58
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
    .line 62
    const-string v0, "GeocoderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/location/GeocoderProxy$Connection;->this$0:Lcom/android/internal/location/GeocoderProxy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/location/GeocoderProxy;->access$102(Lcom/android/internal/location/GeocoderProxy;Landroid/location/IGeocodeProvider;)Landroid/location/IGeocodeProvider;

    .line 65
    monitor-exit p0

    .line 66
    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
