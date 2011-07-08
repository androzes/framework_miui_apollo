.class public final Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
.super Landroid/os/BatteryStats$Uid$Sensor;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl$Uid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Sensor"
.end annotation


# instance fields
.field final mHandle:I

.field mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final synthetic this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;I)V
    .locals 0
    .parameter
    .parameter "handle"

    .prologue
    .line 1912
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    invoke-direct {p0}, Landroid/os/BatteryStats$Uid$Sensor;-><init>()V

    .line 1913
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mHandle:I

    .line 1914
    return-void
.end method

.method private readTimerFromParcel(Ljava/util/ArrayList;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 3
    .parameter
    .parameter "in"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;",
            ">;",
            "Landroid/os/Parcel;",
            ")",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;"
        }
    .end annotation

    .prologue
    .line 1918
    .local p1, unpluggables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_0

    .line 1919
    const/4 v1, 0x0

    .line 1927
    :goto_0
    return-object v1

    .line 1922
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mHandle:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1923
    .local v0, pool:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    if-nez v0, :cond_1

    .line 1924
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #pool:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1925
    .restart local v0       #pool:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mHandle:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1927
    :cond_1
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Parcel;)V

    goto :goto_0
.end method


# virtual methods
.method public getHandle()I
    .locals 1

    .prologue
    .line 1945
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mHandle:I

    return v0
.end method

.method public bridge synthetic getSensorTime()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 1908
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->getSensorTime()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getSensorTime()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .prologue
    .line 1940
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method readFromParcelLocked(Ljava/util/ArrayList;Landroid/os/Parcel;)V
    .locals 1
    .parameter
    .parameter "in"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;",
            ">;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1931
    .local p1, unpluggables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->readTimerFromParcel(Ljava/util/ArrayList;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 1932
    return-void
.end method

.method writeToParcelLocked(Landroid/os/Parcel;J)V
    .locals 1
    .parameter "out"
    .parameter "batteryRealtime"

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {p1, v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    .line 1936
    return-void
.end method
