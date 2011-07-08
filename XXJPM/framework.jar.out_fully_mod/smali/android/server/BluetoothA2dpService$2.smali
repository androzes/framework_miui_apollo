.class Landroid/server/BluetoothA2dpService$2;
.super Landroid/os/Handler;
.source "BluetoothA2dpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothA2dpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothA2dpService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothA2dpService;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const-string v4, "BluetoothA2dpService"

    .line 274
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 282
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 285
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$300(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static {v2, v0}, Landroid/server/BluetoothA2dpService;->access$400(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothA2dpService;->getSinkPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$1100(Landroid/server/BluetoothA2dpService;[I)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 292
    const-string v2, "BluetoothA2dpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auto-connecting to sink "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v2, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothA2dpService;->connectSink(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 299
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :pswitch_1
    const-string v2, "BluetoothA2dpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received MESSAGE_DISABLE_BT, count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v2, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$1200(Landroid/server/BluetoothA2dpService;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 301
    iget-object v2, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    iget v4, p1, Landroid/os/Message;->arg1:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2, v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 302
    .local v1, msg1:Landroid/os/Message;
    iget-object v2, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x190

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v1           #msg1:Landroid/os/Message;
    :cond_1
    move v3, v5

    .line 300
    goto :goto_1

    .line 306
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 307
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    const-string v2, "BluetoothA2dpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delayed-connecting to sink "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v2, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const/16 v3, 0x1f4

    invoke-static {v2, v0, v5, v3}, Landroid/server/BluetoothA2dpService;->access$1300(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;II)Z

    goto/16 :goto_0

    .line 274
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 285
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method
