.class public final Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
.super Landroid/os/BatteryStats$Uid$Proc;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl$Uid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Proc"
.end annotation


# instance fields
.field mForegroundTime:J

.field mLastForegroundTime:J

.field mLastStarts:I

.field mLastSystemTime:J

.field mLastUserTime:J

.field mLoadedForegroundTime:J

.field mLoadedStarts:I

.field mLoadedSystemTime:J

.field mLoadedUserTime:J

.field mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

.field mStarts:I

.field mSystemTime:J

.field mUnpluggedForegroundTime:J

.field mUnpluggedStarts:I

.field mUnpluggedSystemTime:J

.field mUnpluggedUserTime:J

.field mUserTime:J

.field final synthetic this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V
    .locals 4
    .parameter

    .prologue
    .line 2035
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    invoke-direct {p0}, Landroid/os/BatteryStats$Uid$Proc;-><init>()V

    .line 2036
    iget-object v1, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2037
    iget-object v1, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->getCpuSpeedSteps()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    .line 2038
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2039
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    iget-object v3, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;-><init>(Ljava/util/ArrayList;)V

    aput-object v2, v1, v0

    .line 2038
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2041
    :cond_0
    return-void
.end method


# virtual methods
.method public addCpuTimeLocked(II)V
    .locals 4
    .parameter "utime"
    .parameter "stime"

    .prologue
    .line 2110
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    .line 2111
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    .line 2112
    return-void
.end method

.method public addForegroundTimeLocked(J)V
    .locals 2
    .parameter "ttime"

    .prologue
    .line 2115
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    .line 2116
    return-void
.end method

.method public addSpeedStepTimes([J)V
    .locals 4
    .parameter "values"

    .prologue
    .line 2188
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 2189
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    aget-object v1, v1, v0

    aget-wide v2, p1, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;->addCountAtomic(J)V

    .line 2188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2191
    :cond_0
    return-void
.end method

.method public getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1

    .prologue
    .line 2106
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public getForegroundTime(I)J
    .locals 4
    .parameter "which"

    .prologue
    .line 2157
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 2158
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastForegroundTime:J

    .line 2167
    .local v0, val:J
    :cond_0
    :goto_0
    return-wide v0

    .line 2160
    .end local v0           #val:J
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    .line 2161
    .restart local v0       #val:J
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 2162
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedForegroundTime:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 2163
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 2164
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedForegroundTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getStarts(I)I
    .locals 2
    .parameter "which"

    .prologue
    .line 2173
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 2174
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastStarts:I

    .line 2183
    .local v0, val:I
    :cond_0
    :goto_0
    return v0

    .line 2176
    .end local v0           #val:I
    :cond_1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    .line 2177
    .restart local v0       #val:I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 2178
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedStarts:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 2179
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 2180
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedStarts:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getSystemTime(I)J
    .locals 4
    .parameter "which"

    .prologue
    .line 2141
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 2142
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastSystemTime:J

    .line 2151
    .local v0, val:J
    :cond_0
    :goto_0
    return-wide v0

    .line 2144
    .end local v0           #val:J
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    .line 2145
    .restart local v0       #val:J
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 2146
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedSystemTime:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 2147
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 2148
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedSystemTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getTimeAtCpuSpeedStep(II)J
    .locals 2
    .parameter "speedStep"
    .parameter "which"

    .prologue
    .line 2195
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 2196
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;->getCountLocked(I)I

    move-result v0

    int-to-long v0, v0

    .line 2198
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getUserTime(I)J
    .locals 4
    .parameter "which"

    .prologue
    .line 2125
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 2126
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastUserTime:J

    .line 2135
    .local v0, val:J
    :cond_0
    :goto_0
    return-wide v0

    .line 2128
    .end local v0           #val:J
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    .line 2129
    .restart local v0       #val:J
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 2130
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedUserTime:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 2131
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 2132
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedUserTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public incStartsLocked()V
    .locals 1

    .prologue
    .line 2119
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    .line 2120
    return-void
.end method

.method public plug(JJ)V
    .locals 0
    .parameter "batteryUptime"
    .parameter "batteryRealtime"

    .prologue
    .line 2051
    return-void
.end method

.method readFromParcelLocked(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    .line 2081
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    .line 2082
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    .line 2083
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    .line 2084
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    .line 2085
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedUserTime:J

    .line 2086
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedSystemTime:J

    .line 2087
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedForegroundTime:J

    .line 2088
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedStarts:I

    .line 2089
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastUserTime:J

    .line 2090
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastSystemTime:J

    .line 2091
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastForegroundTime:J

    .line 2092
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastStarts:I

    .line 2093
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedUserTime:J

    .line 2094
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedSystemTime:J

    .line 2095
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedForegroundTime:J

    .line 2096
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedStarts:I

    .line 2098
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2099
    .local v0, bins:I
    new-array v2, v0, [Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    .line 2100
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2101
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-direct {v3, v4, p1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;-><init>(Ljava/util/ArrayList;Landroid/os/Parcel;)V

    aput-object v3, v2, v1

    .line 2100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2103
    :cond_0
    return-void
.end method

.method public unplug(JJ)V
    .locals 2
    .parameter "batteryUptime"
    .parameter "batteryRealtime"

    .prologue
    .line 2044
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedUserTime:J

    .line 2045
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedSystemTime:J

    .line 2046
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedStarts:I

    .line 2047
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedForegroundTime:J

    .line 2048
    return-void
.end method

.method writeToParcelLocked(Landroid/os/Parcel;)V
    .locals 9
    .parameter "out"

    .prologue
    .line 2054
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long v3, v5, v7

    .line 2055
    .local v3, uSecRealtime:J
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v5, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryRealtimeLocked(J)J

    move-result-wide v0

    .line 2057
    .local v0, batteryRealtime:J
    iget-wide v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 2058
    iget-wide v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 2059
    iget-wide v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 2060
    iget v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2061
    iget-wide v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedUserTime:J

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 2062
    iget-wide v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedSystemTime:J

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 2063
    iget-wide v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedForegroundTime:J

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 2064
    iget v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedStarts:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2065
    iget-wide v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastUserTime:J

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 2066
    iget-wide v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastSystemTime:J

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 2067
    iget-wide v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastForegroundTime:J

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 2068
    iget v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastStarts:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2069
    iget-wide v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedUserTime:J

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 2070
    iget-wide v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedSystemTime:J

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 2071
    iget-wide v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedForegroundTime:J

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 2072
    iget v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedStarts:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2074
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    array-length v5, v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2075
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 2076
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;

    aget-object v5, v5, v2

    invoke-virtual {v5, p1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 2075
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2078
    :cond_0
    return-void
.end method
