.class Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;
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
    .line 1976
    iput-object p1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 1972
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1974
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 14
    .parameter "event"

    .prologue
    .line 1977
    iget-object v13, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 1978
    .local v13, sensor:Landroid/hardware/Sensor;
    invoke-virtual {v13}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1980
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$2400(Lcom/android/internal/location/GpsLocationProvider;)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 1981
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$4700(Lcom/android/internal/location/GpsLocationProvider;)[[F

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$2400(Lcom/android/internal/location/GpsLocationProvider;)I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    aput v2, v0, v1

    .line 1982
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$4700(Lcom/android/internal/location/GpsLocationProvider;)[[F

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$2400(Lcom/android/internal/location/GpsLocationProvider;)I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v0, v1

    .line 1983
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$4700(Lcom/android/internal/location/GpsLocationProvider;)[[F

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$2400(Lcom/android/internal/location/GpsLocationProvider;)I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    aput v2, v0, v1

    .line 1984
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$5000(Lcom/android/internal/location/GpsLocationProvider;)[J

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$2400(Lcom/android/internal/location/GpsLocationProvider;)I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 1991
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$2000(Lcom/android/internal/location/GpsLocationProvider;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 1992
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$5100(Lcom/android/internal/location/GpsLocationProvider;)[J

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$2400(Lcom/android/internal/location/GpsLocationProvider;)I

    move-result v1

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    .line 1997
    :goto_0
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$5000(Lcom/android/internal/location/GpsLocationProvider;)[J

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v2, v2, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v2}, Lcom/android/internal/location/GpsLocationProvider;->access$2400(Lcom/android/internal/location/GpsLocationProvider;)I

    move-result v2

    aget-wide v1, v1, v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/location/GpsLocationProvider;->access$2002(Lcom/android/internal/location/GpsLocationProvider;J)J

    .line 1999
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$2408(Lcom/android/internal/location/GpsLocationProvider;)I

    .line 2000
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$2400(Lcom/android/internal/location/GpsLocationProvider;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2001
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/location/GpsLocationProvider;->access$2202(Lcom/android/internal/location/GpsLocationProvider;Z)Z

    .line 2004
    :cond_0
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$2200(Lcom/android/internal/location/GpsLocationProvider;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$2100(Lcom/android/internal/location/GpsLocationProvider;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$2300(Lcom/android/internal/location/GpsLocationProvider;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2005
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->access$6900(Lcom/android/internal/location/GpsLocationProvider$HybridGps;)V

    .line 2011
    :cond_1
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$6000(Lcom/android/internal/location/GpsLocationProvider;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$3200(Lcom/android/internal/location/GpsLocationProvider;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$2000(Lcom/android/internal/location/GpsLocationProvider;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v2, v2, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v2}, Lcom/android/internal/location/GpsLocationProvider;->access$3200(Lcom/android/internal/location/GpsLocationProvider;)J

    move-result-wide v2

    const-wide/16 v4, 0x5dc

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 2012
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v11, v11, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v11}, Lcom/android/internal/location/GpsLocationProvider;->access$2000(Lcom/android/internal/location/GpsLocationProvider;)J

    move-result-wide v11

    invoke-static/range {v0 .. v12}, Lcom/android/internal/location/GpsLocationProvider;->access$7000(Lcom/android/internal/location/GpsLocationProvider;IDDDFFFJ)V

    .line 2013
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call reportLocation() forcefully "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v2, v2, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v2}, Lcom/android/internal/location/GpsLocationProvider;->access$2000(Lcom/android/internal/location/GpsLocationProvider;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v2, v2, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v2}, Lcom/android/internal/location/GpsLocationProvider;->access$3200(Lcom/android/internal/location/GpsLocationProvider;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    :cond_2
    return-void

    .line 1994
    :cond_3
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$5100(Lcom/android/internal/location/GpsLocationProvider;)[J

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v1, v1, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$2400(Lcom/android/internal/location/GpsLocationProvider;)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v2, v2, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v2}, Lcom/android/internal/location/GpsLocationProvider;->access$5000(Lcom/android/internal/location/GpsLocationProvider;)[J

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v3, v3, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v3}, Lcom/android/internal/location/GpsLocationProvider;->access$2400(Lcom/android/internal/location/GpsLocationProvider;)I

    move-result v3

    aget-wide v2, v2, v3

    iget-object v4, p0, Lcom/android/internal/location/GpsLocationProvider$HybridGps$2;->this$1:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    iget-object v4, v4, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v4}, Lcom/android/internal/location/GpsLocationProvider;->access$2000(Lcom/android/internal/location/GpsLocationProvider;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    aput-wide v2, v0, v1

    goto/16 :goto_0
.end method
