.class Lcom/broadcom/bt/service/fm/FmReceiverEventLoop$1;
.super Landroid/os/Handler;
.source "FmReceiverEventLoop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 236
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 262
    :goto_0
    return-void

    .line 240
    :pswitch_0
    const-string v0, "FmReceiverEventLoop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BTAPP TIMEOUT ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->access$000(Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;)V

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->access$100(Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_1
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 257
    :goto_2
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->sendStatusEventCallbackFromLocalStore()V

    goto :goto_0

    .line 256
    :cond_0
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    goto :goto_2

    .line 249
    :catch_0
    move-exception v0

    goto :goto_1

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
