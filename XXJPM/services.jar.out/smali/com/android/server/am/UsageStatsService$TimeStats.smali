.class Lcom/android/server/am/UsageStatsService$TimeStats;
.super Ljava/lang/Object;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeStats"
.end annotation


# instance fields
.field count:I

.field times:[I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    .line 102
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/16 v3, 0xa

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/am/UsageStatsService$TimeStats;->count:I

    .line 121
    iget-object v1, p0, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    .line 122
    .local v1, localTimes:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v1, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    return-void
.end method


# virtual methods
.method add(I)V
    .locals 5
    .parameter "val"

    .prologue
    const/16 v4, 0x9

    .line 109
    invoke-static {}, Lcom/android/server/am/UsageStatsService;->access$000()[I

    move-result-object v0

    .line 110
    .local v0, bins:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 111
    aget v2, v0, v1

    if-ge p1, v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    .line 117
    :goto_1
    return-void

    .line 110
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    aget v3, v2, v4

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v4

    goto :goto_1
.end method

.method incCount()V
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/android/server/am/UsageStatsService$TimeStats;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/UsageStatsService$TimeStats;->count:I

    .line 106
    return-void
.end method

.method writeToParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "out"

    .prologue
    .line 128
    iget v2, p0, Lcom/android/server/am/UsageStatsService$TimeStats;->count:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-object v1, p0, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    .line 130
    .local v1, localTimes:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 131
    aget v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_0
    return-void
.end method
