.class Lcom/android/server/KeyInputQueue$1;
.super Landroid/os/Handler;
.source "KeyInputQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/KeyInputQueue;-><init>(Landroid/content/Context;Lcom/android/server/KeyInputQueue$HapticFeedbackCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/KeyInputQueue;


# direct methods
.method constructor <init>(Lcom/android/server/KeyInputQueue;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/server/KeyInputQueue$1;->this$0:Lcom/android/server/KeyInputQueue;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 322
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 332
    :goto_0
    return-void

    .line 325
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.screencapture.capture"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 326
    .local v0, captureStartIntent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const-string v1, "type"

    const-string v2, "homekey"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    iget-object v1, p0, Lcom/android/server/KeyInputQueue$1;->this$0:Lcom/android/server/KeyInputQueue;

    invoke-static {v1}, Lcom/android/server/KeyInputQueue;->access$000(Lcom/android/server/KeyInputQueue;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
    .end packed-switch
.end method
