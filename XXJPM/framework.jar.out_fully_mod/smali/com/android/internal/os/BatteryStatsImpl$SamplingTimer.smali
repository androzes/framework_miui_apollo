.class public final Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
.super Lcom/android/internal/os/BatteryStatsImpl$Timer;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SamplingTimer"
.end annotation


# instance fields
.field mCurrentReportedCount:I

.field mCurrentReportedTotalTime:J

.field mInDischarge:Z

.field mTrackingReportedValues:Z

.field mUnpluggedReportedCount:I

.field mUnpluggedReportedTotalTime:J

.field mUpdateVersion:I


# direct methods
.method constructor <init>(Ljava/util/ArrayList;ZLandroid/os/Parcel;)V
    .locals 4
    .parameter
    .parameter "inDischarge"
    .parameter "in"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;",
            ">;Z",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, unpluggables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 576
    invoke-direct {p0, v2, p1, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(ILjava/util/ArrayList;Landroid/os/Parcel;)V

    .line 577
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    .line 578
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    .line 579
    invoke-virtual {p3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTime:J

    .line 580
    invoke-virtual {p3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTime:J

    .line 581
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    .line 582
    iput-boolean p2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mInDischarge:Z

    .line 583
    return-void

    :cond_0
    move v0, v2

    .line 581
    goto :goto_0
.end method

.method constructor <init>(Ljava/util/ArrayList;ZZ)V
    .locals 1
    .parameter
    .parameter "inDischarge"
    .parameter "trackReportedValues"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 587
    .local p1, unpluggables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(ILjava/util/ArrayList;)V

    .line 588
    iput-boolean p3, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    .line 589
    iput-boolean p2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mInDischarge:Z

    .line 590
    return-void
.end method


# virtual methods
.method protected computeCurrentCountLocked()I
    .locals 3

    .prologue
    .line 654
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCount:I

    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mInDischarge:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    sub-int/2addr v1, v2

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected computeRunTimeLocked(J)J
    .locals 6
    .parameter "curBatteryRealtime"

    .prologue
    .line 649
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTotalTime:J

    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mInDischarge:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTime:J

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTime:J

    sub-long/2addr v2, v4

    :goto_0
    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getUpdateVersion()I
    .locals 1

    .prologue
    .line 603
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUpdateVersion:I

    return v0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 641
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mCurrentReportedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mUnpluggedReportedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCurrentReportedTotalTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mUnpluggedReportedTotalTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 646
    return-void
.end method

.method public plug(JJ)V
    .locals 1
    .parameter "batteryUptime"
    .parameter "batteryRealtime"

    .prologue
    .line 636
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->plug(JJ)V

    .line 637
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mInDischarge:Z

    .line 638
    return-void
.end method

.method readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x1

    .line 675
    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 676
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTime:J

    .line 677
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    .line 678
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    .line 679
    return-void

    .line 678
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStale()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 593
    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    .line 594
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTime:J

    .line 595
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    .line 596
    return-void
.end method

.method public setUpdateVersion(I)V
    .locals 0
    .parameter "version"

    .prologue
    .line 599
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUpdateVersion:I

    .line 600
    return-void
.end method

.method public unplug(JJ)V
    .locals 2
    .parameter "batteryUptime"
    .parameter "batteryRealtime"

    .prologue
    .line 627
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->unplug(JJ)V

    .line 628
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    if-eqz v0, :cond_0

    .line 629
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTime:J

    .line 630
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    .line 632
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mInDischarge:Z

    .line 633
    return-void
.end method

.method public updateCurrentReportedCount(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 607
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mInDischarge:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    if-nez v0, :cond_0

    .line 609
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    .line 611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    .line 613
    :cond_0
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    .line 614
    return-void
.end method

.method public updateCurrentReportedTotalTime(J)V
    .locals 4
    .parameter "totalTime"

    .prologue
    .line 617
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mInDischarge:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 619
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTime:J

    .line 621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    .line 623
    :cond_0
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTime:J

    .line 624
    return-void
.end method

.method writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V
    .locals 2
    .parameter "out"
    .parameter "batteryRealtime"

    .prologue
    .line 668
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 669
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 670
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 671
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 672
    return-void

    .line 671
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 2
    .parameter "out"
    .parameter "batteryRealtime"

    .prologue
    .line 659
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 660
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 661
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 663
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 664
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 665
    return-void

    .line 664
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
