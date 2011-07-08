.class Lcom/broadcom/bt/service/fm/FmReceiver$1;
.super Lcom/broadcom/bt/service/fm/IFmReceiverCallback$Stub;
.source "FmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/fm/FmReceiver;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 836
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onAudioModeEvent(I)V
    .locals 1
    .parameter "audioMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 804
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onAudioModeEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    :cond_0
    monitor-exit p0

    return-void

    .line 804
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onAudioPathEvent(I)V
    .locals 1
    .parameter "audioPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 811
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onAudioPathEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 813
    :cond_0
    monitor-exit p0

    return-void

    .line 811
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onEstimateNflEvent(I)V
    .locals 1
    .parameter "nfl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 818
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onEstimateNoiseFloorLevelEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    :cond_0
    monitor-exit p0

    return-void

    .line 818
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onLiveAudioQualityEvent(I)V
    .locals 1
    .parameter "rssi"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 825
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onLiveAudioQualityEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 827
    :cond_0
    monitor-exit p0

    return-void

    .line 825
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRdsDataEvent(IILjava/lang/String;)V
    .locals 1
    .parameter "rdsDataType"
    .parameter "rdsIndex"
    .parameter "rdsText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 797
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onRdsDataEvent(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    :cond_0
    monitor-exit p0

    return-void

    .line 797
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRdsModeEvent(II)V
    .locals 1
    .parameter "rdsMode"
    .parameter "alternateFreqHopEnabled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 789
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onRdsModeEvent(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 791
    :cond_0
    monitor-exit p0

    return-void

    .line 789
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSeekCompleteEvent(IIZ)V
    .locals 1
    .parameter "freq"
    .parameter "rssi"
    .parameter "seeksuccess"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 781
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onSeekCompleteEvent(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    :cond_0
    monitor-exit p0

    return-void

    .line 781
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStatusEvent(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .parameter "freq"
    .parameter "rssi"
    .parameter "radioIsOn"
    .parameter "rdsProgramType"
    .parameter "rdsProgramService"
    .parameter "rdsRadioText"
    .parameter "rdsProgramTypeName"
    .parameter "isMute"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 769
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onStatusEvent(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 775
    :cond_0
    monitor-exit p0

    return-void

    .line 769
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onVolumeEvent(II)V
    .locals 1
    .parameter "status"
    .parameter "volume"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 838
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onVolumeEvent(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    :cond_0
    monitor-exit p0

    return-void

    .line 838
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onWorldRegionEvent(I)V
    .locals 1
    .parameter "worldRegion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 832
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onWorldRegionEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    :cond_0
    monitor-exit p0

    return-void

    .line 832
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
