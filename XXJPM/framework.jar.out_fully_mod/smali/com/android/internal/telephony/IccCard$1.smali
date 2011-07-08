.class Lcom/android/internal/telephony/IccCard$1;
.super Landroid/os/Handler;
.source "IccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccCard;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccCard;)V
    .locals 0
    .parameter

    .prologue
    .line 698
    iput-object p1, p0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .parameter "msg"

    .prologue
    .line 702
    const/4 v14, 0x7

    .line 706
    .local v14, serviceClassX:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    const/16 v17, 0x6

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    const/16 v17, 0xb

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    const/16 v17, 0x9

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 710
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    const/16 v18, 0x3

    invoke-virtual/range {v16 .. v18}, Lcom/android/internal/telephony/IccCard;->getSimLockInfo(II)V

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    const/16 v18, 0x9

    invoke-virtual/range {v16 .. v18}, Lcom/android/internal/telephony/IccCard;->getSimLockInfo(II)V

    .line 714
    :cond_1
    const-string v16, "IccCard"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "handleMessage: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[IccCard] Unknown Event "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    .end local p0
    .end local p1
    :cond_2
    :goto_0
    return-void

    .line 719
    .restart local p0
    .restart local p1
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/IccCard;->updateStateProperty()V

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    const-string v17, "NOT_READY"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 725
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/android/internal/telephony/IccCard;->access$002(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    const-string v17, "SC"

    const-string v18, ""

    const/16 v19, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move v3, v14

    move-object/from16 v4, v19

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    const-string v17, "FD"

    const-string v18, ""

    const/16 v19, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move v3, v14

    move-object/from16 v4, v19

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 737
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/android/internal/telephony/IccCard;->access$002(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    const-string v17, "SC"

    const-string v18, ""

    const/16 v19, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move v3, v14

    move-object/from16 v4, v19

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 744
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/AsyncResult;

    .line 746
    .local v5, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard;->getIccCardStatusDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 752
    .end local v5           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/AsyncResult;

    .line 754
    .restart local v5       #ar:Landroid/os/AsyncResult;
    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/Message;

    invoke-static/range {p1 .. p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v16

    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    const/16 v17, 0x5

    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 765
    .end local v5           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/AsyncResult;

    .line 766
    .restart local v5       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard;->getIccCardStatusDone(Landroid/os/AsyncResult;)V

    .line 767
    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/Message;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 770
    .end local v5           #ar:Landroid/os/AsyncResult;
    .restart local p0
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/AsyncResult;

    .line 771
    .restart local v5       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccCard;->access$100(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 774
    .end local v5           #ar:Landroid/os/AsyncResult;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/AsyncResult;

    .line 775
    .restart local v5       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccCard;->access$200(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 778
    .end local v5           #ar:Landroid/os/AsyncResult;
    :pswitch_8
    const-string v16, "IccCard"

    const-string v17, "Event EVENT_CHANGE_FACILITY_LOCK_DONE Received"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/AsyncResult;

    .line 780
    .restart local v5       #ar:Landroid/os/AsyncResult;
    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-nez v16, :cond_4

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/IccCard;->access$400(Lcom/android/internal/telephony/IccCard;)Z

    move-result v17

    invoke-static/range {v16 .. v17}, Lcom/android/internal/telephony/IccCard;->access$302(Lcom/android/internal/telephony/IccCard;Z)Z

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "EVENT_CHANGE_FACILITY_LOCK_DONE: mIccPinLocked= "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/IccCard;->access$300(Lcom/android/internal/telephony/IccCard;)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/internal/telephony/IccCard;->access$500(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 785
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/android/internal/telephony/IccCard;->access$602(Lcom/android/internal/telephony/IccCard;Z)Z

    .line 786
    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/Message;

    invoke-static/range {p0 .. p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v16

    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 788
    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p0, v0

    check-cast p0, Landroid/os/Message;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 791
    .restart local p0
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error change facility lock with exception "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccCard;->access$002(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 805
    .end local v5           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/AsyncResult;

    .line 807
    .restart local v5       #ar:Landroid/os/AsyncResult;
    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-nez v16, :cond_6

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/IccCard;->access$800(Lcom/android/internal/telephony/IccCard;)Z

    move-result v17

    invoke-static/range {v16 .. v17}, Lcom/android/internal/telephony/IccCard;->access$702(Lcom/android/internal/telephony/IccCard;Z)Z

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "EVENT_CHANGE_FACILITY_FDN_DONE: mIccFdnEnabled="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/IccCard;->access$700(Lcom/android/internal/telephony/IccCard;)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/internal/telephony/IccCard;->access$500(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 815
    :cond_5
    :goto_1
    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/Message;

    invoke-static/range {p1 .. p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v16

    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 817
    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Landroid/os/Message;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->sendToTarget()V

    .line 819
    new-instance v10, Landroid/content/Intent;

    const-string v16, "android.intent.action.FDN_MODE_CHANGED"

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 820
    .local v10, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 812
    .end local v10           #intent:Landroid/content/Intent;
    .restart local p1
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error change facility fdn with exception "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 824
    .end local v5           #ar:Landroid/os/AsyncResult;
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/AsyncResult;

    .line 825
    .restart local v5       #ar:Landroid/os/AsyncResult;
    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-eqz v16, :cond_7

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error in change sim password with exception"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/android/internal/telephony/IccCard;->access$002(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 833
    :cond_7
    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/Message;

    invoke-static/range {p0 .. p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v16

    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 835
    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p0, v0

    check-cast p0, Landroid/os/Message;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 839
    .end local v5           #ar:Landroid/os/AsyncResult;
    .restart local p0
    :pswitch_b
    const/4 v8, 0x0

    .line 843
    .local v8, eccString:Ljava/lang/StringBuffer;
    new-instance v8, Ljava/lang/StringBuffer;

    .end local v8           #eccString:Ljava/lang/StringBuffer;
    const-string v16, ""

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 848
    .restart local v8       #eccString:Ljava/lang/StringBuffer;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v5, v0

    .line 850
    .restart local v5       #ar:Landroid/os/AsyncResult;
    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-eqz v16, :cond_9

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "EVENT_GET_ECC_DONE ar.exception"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/IccCard;->access$900(Lcom/android/internal/telephony/IccCard;)Z

    move-result v16

    if-nez v16, :cond_8

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v16, v0

    const/16 v17, 0x6fb7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0xc

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-static/range {v16 .. v17}, Lcom/android/internal/telephony/IccCard;->access$902(Lcom/android/internal/telephony/IccCard;Z)Z

    goto/16 :goto_0

    .line 857
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/IccCard;->access$900(Lcom/android/internal/telephony/IccCard;)Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    const-string v17, ""

    invoke-static/range {v16 .. v17}, Lcom/android/internal/telephony/IccCard;->access$1002(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)Ljava/lang/String;

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setEmergencyNumbers()V

    goto/16 :goto_0

    .line 869
    .restart local p0
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/IccCard;->access$900(Lcom/android/internal/telephony/IccCard;)Z

    move-result v16

    if-nez v16, :cond_c

    .line 870
    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    check-cast v0, Ljava/util/ArrayList;

    move-object v7, v0

    .line 872
    .local v7, datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const/4 v9, 0x0

    .local v9, i:I
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    .local v13, s:I
    :goto_2
    if-ge v9, v13, :cond_f

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "r "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    .line 876
    .local v12, record:[B
    const/16 v16, 0x0

    const/16 v17, 0x3

    move-object v0, v12

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->bcdToString([BII)Ljava/lang/String;

    move-result-object v15

    .line 877
    .local v15, tempEccString:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_b

    .line 878
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_a

    .line 879
    const/16 v16, 0x2c

    move-object v0, v8

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 880
    :cond_a
    invoke-virtual {v8, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 883
    const/16 v16, 0x2f

    move-object v0, v8

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 884
    move-object v0, v12

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v16, v16, v17

    aget-byte v16, v12, v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 872
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 888
    .end local v7           #datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .end local v9           #i:I
    .end local v12           #record:[B
    .end local v13           #s:I
    .end local v15           #tempEccString:Ljava/lang/String;
    :cond_c
    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v6, v0

    .line 890
    .local v6, data:[B
    move-object v0, v6

    array-length v0, v0

    move/from16 v16, v0

    div-int/lit8 v11, v16, 0x3

    .line 892
    .local v11, numOfEcc:I
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_3
    if-ge v9, v11, :cond_f

    .line 893
    mul-int/lit8 v16, v9, 0x3

    const/16 v17, 0x3

    move-object v0, v6

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->bcdToString([BII)Ljava/lang/String;

    move-result-object v15

    .line 894
    .restart local v15       #tempEccString:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_e

    .line 895
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_d

    .line 896
    const/16 v16, 0x2c

    move-object v0, v8

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 897
    :cond_d
    invoke-virtual {v8, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 892
    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 903
    .end local v6           #data:[B
    .end local v11           #numOfEcc:I
    .end local v15           #tempEccString:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/internal/telephony/IccCard;->access$1002(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)Ljava/lang/String;

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setEmergencyNumbers()V

    goto/16 :goto_0

    .line 914
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v8           #eccString:Ljava/lang/StringBuffer;
    .end local v9           #i:I
    .restart local p0
    .restart local p1
    :pswitch_c
    const-string v16, "IccCard"

    const-string v17, "EVENT_SIM_LOCK_INFO_DONE"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/AsyncResult;

    .line 916
    .restart local v5       #ar:Landroid/os/AsyncResult;
    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-eqz v16, :cond_10

    .line 917
    const-string v16, "IccCard"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error in get SIM LOCK INFO"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 921
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$1;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/SimLockInfoResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/internal/telephony/IccCard;->mResultSIMLOCKINFO:Lcom/android/internal/telephony/SimLockInfoResult;

    goto/16 :goto_0

    .line 717
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
