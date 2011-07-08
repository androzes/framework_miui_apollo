.class Lsiso/vt/VTManager$EventHandler;
.super Landroid/os/Handler;
.source "VTManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsiso/vt/VTManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private listener:Lsiso/vt/VTManager$VTStackStateListener;

.field final synthetic this$0:Lsiso/vt/VTManager;

.field private vtmanager:Lsiso/vt/VTManager;


# direct methods
.method public constructor <init>(Lsiso/vt/VTManager;Lsiso/vt/VTManager;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "vt"
    .parameter "looper"

    .prologue
    .line 360
    iput-object p1, p0, Lsiso/vt/VTManager$EventHandler;->this$0:Lsiso/vt/VTManager;

    .line 361
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 362
    iput-object p2, p0, Lsiso/vt/VTManager$EventHandler;->vtmanager:Lsiso/vt/VTManager;

    .line 363
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->vtmanager:Lsiso/vt/VTManager;

    iget-object v0, v0, Lsiso/vt/VTManager;->mStackStateListener:Lsiso/vt/VTManager$VTStackStateListener;

    iput-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    .line 366
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const-string v2, "EventHandler"

    .line 370
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lsiso/vt/VTManager;

    iput-object v0, p0, Lsiso/vt/VTManager$EventHandler;->vtmanager:Lsiso/vt/VTManager;

    .line 371
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->vtmanager:Lsiso/vt/VTManager;

    iget-object v0, v0, Lsiso/vt/VTManager;->mStackStateListener:Lsiso/vt/VTManager$VTStackStateListener;

    iput-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    .line 372
    const-string v0, "EventHandler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "listener is :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string v0, "EventHandler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vtmanager.mStackStateListener is :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsiso/vt/VTManager$EventHandler;->vtmanager:Lsiso/vt/VTManager;

    iget-object v1, v1, Lsiso/vt/VTManager;->mStackStateListener:Lsiso/vt/VTManager$VTStackStateListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const-string v0, "EventHandler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    if-eqz v0, :cond_0

    .line 376
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 445
    const-string v0, "Default case "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 378
    :sswitch_0
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->H324M_VT_START_CALL_SUCCESS:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto :goto_0

    .line 381
    :sswitch_1
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->H324M_VT_START_CALL_FAILURE:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto :goto_0

    .line 384
    :sswitch_2
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->H324M_VT_SESSION_STOP_SUCCESS:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto :goto_0

    .line 387
    :sswitch_3
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->H324M_VT_SESSION_STOP_FAILED:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto :goto_0

    .line 390
    :sswitch_4
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->H324M_VT_END_CALL_IN_PROGRESS:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto :goto_0

    .line 393
    :sswitch_5
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->H324M_VT_PROTOCOL_ERR_IND:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto :goto_0

    .line 396
    :sswitch_6
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->H324M_VT_CALL_DISCONNECTED:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto :goto_0

    .line 404
    :sswitch_7
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->H324M_REC_FAIL:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto :goto_0

    .line 407
    :sswitch_8
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->H324M_REC_SUCCESS:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto :goto_0

    .line 413
    :sswitch_9
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->H324M_REC_CANCEL_SUCCESS:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto :goto_0

    .line 416
    :sswitch_a
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->H324M_REC_TIMEOUT:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto :goto_0

    .line 423
    :sswitch_b
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->H324M_IC_START_SUCESS:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto :goto_0

    .line 427
    :sswitch_c
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->H324M_IC_START_FAILURE:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto :goto_0

    .line 430
    :sswitch_d
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->H324M_IC_STOP_SUCESS:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto :goto_0

    .line 433
    :sswitch_e
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->H324M_IC_STOP_FAILURE:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto :goto_0

    .line 436
    :sswitch_f
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->VTMNGR_FIRST_FRAME_INDICATION:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto :goto_0

    .line 439
    :sswitch_10
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->VTMNGR_SURFACE_INIT_FAILURE:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto/16 :goto_0

    .line 442
    :sswitch_11
    iget-object v0, p0, Lsiso/vt/VTManager$EventHandler;->listener:Lsiso/vt/VTManager$VTStackStateListener;

    sget-object v1, Lsiso/vt/VTManager$StackState;->VTMNGR_CAMERA_START_FAILURE:Lsiso/vt/VTManager$StackState;

    invoke-interface {v0, v1}, Lsiso/vt/VTManager$VTStackStateListener;->onStateChanged(Lsiso/vt/VTManager$StackState;)V

    goto/16 :goto_0

    .line 376
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_1
        0xb -> :sswitch_2
        0xc -> :sswitch_3
        0xd -> :sswitch_4
        0xe -> :sswitch_5
        0xf -> :sswitch_6
        0x15 -> :sswitch_b
        0x16 -> :sswitch_c
        0x17 -> :sswitch_d
        0x18 -> :sswitch_e
        0x33 -> :sswitch_7
        0x34 -> :sswitch_8
        0x35 -> :sswitch_7
        0x36 -> :sswitch_9
        0x37 -> :sswitch_7
        0x39 -> :sswitch_a
        0x64 -> :sswitch_f
        0x65 -> :sswitch_c
        0x66 -> :sswitch_10
        0x67 -> :sswitch_11
    .end sparse-switch
.end method
