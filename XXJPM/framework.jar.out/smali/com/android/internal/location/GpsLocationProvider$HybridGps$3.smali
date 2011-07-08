.class Lcom/android/internal/location/GpsLocationProvider$HybridGps$3;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/GpsLocationProvider$HybridGps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;


# direct methods
.method constructor <init>(Lcom/android/internal/location/GpsLocationProvider$HybridGps;)V
    .locals 0
    .parameter

    .prologue
    .line 2026
    iput-object p1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 2021
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2024
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 2027
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 2028
    .local v0, sensor:Landroid/hardware/Sensor;
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 2030
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$2500(Lcom/android/internal/location/GpsLocationProvider;)I

    move-result v1

    if-ge v1, v6, :cond_1

    .line 2031
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$4800(Lcom/android/internal/location/GpsLocationProvider;)[[F

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v2, v2, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v2}, Lcom/android/internal/location/GpsLocationProvider;->access$2500(Lcom/android/internal/location/GpsLocationProvider;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    aput v2, v1, v5

    .line 2032
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$4800(Lcom/android/internal/location/GpsLocationProvider;)[[F

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v2, v2, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v2}, Lcom/android/internal/location/GpsLocationProvider;->access$2500(Lcom/android/internal/location/GpsLocationProvider;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    aput v2, v1, v4

    .line 2033
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$4800(Lcom/android/internal/location/GpsLocationProvider;)[[F

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v2, v2, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v2}, Lcom/android/internal/location/GpsLocationProvider;->access$2500(Lcom/android/internal/location/GpsLocationProvider;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    aput v2, v1, v3

    .line 2034
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$4800(Lcom/android/internal/location/GpsLocationProvider;)[[F

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v2, v2, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v2}, Lcom/android/internal/location/GpsLocationProvider;->access$2500(Lcom/android/internal/location/GpsLocationProvider;)I

    move-result v2

    aget-object v1, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v3, v3, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v3}, Lcom/android/internal/location/GpsLocationProvider;->access$2700(Lcom/android/internal/location/GpsLocationProvider;)I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    .line 2036
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$2508(Lcom/android/internal/location/GpsLocationProvider;)I

    .line 2037
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$2500(Lcom/android/internal/location/GpsLocationProvider;)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 2038
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1, v4}, Lcom/android/internal/location/GpsLocationProvider;->access$2302(Lcom/android/internal/location/GpsLocationProvider;Z)Z

    .line 2041
    :cond_0
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$2200(Lcom/android/internal/location/GpsLocationProvider;)Z

    move-result v1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$2100(Lcom/android/internal/location/GpsLocationProvider;)Z

    move-result v1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$2300(Lcom/android/internal/location/GpsLocationProvider;)Z

    move-result v1

    if-ne v1, v4, :cond_1

    .line 2042
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$3;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->access$6900(Lcom/android/internal/location/GpsLocationProvider$HybridGps;)V

    .line 2046
    :cond_1
    return-void
.end method
