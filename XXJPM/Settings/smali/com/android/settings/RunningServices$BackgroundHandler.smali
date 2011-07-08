.class final Lcom/android/settings/RunningServices$BackgroundHandler;
.super Landroid/os/Handler;
.source "RunningServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RunningServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BackgroundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RunningServices;


# direct methods
.method public constructor <init>(Lcom/android/settings/RunningServices;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 908
    iput-object p1, p0, Lcom/android/settings/RunningServices$BackgroundHandler;->this$0:Lcom/android/settings/RunningServices;

    .line 909
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 910
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x2

    .line 914
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 924
    :goto_0
    return-void

    .line 916
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/RunningServices$BackgroundHandler;->this$0:Lcom/android/settings/RunningServices;

    iget-object v1, v1, Lcom/android/settings/RunningServices;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 917
    .local v0, cmd:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/RunningServices$BackgroundHandler;->this$0:Lcom/android/settings/RunningServices;

    iget-object v1, v1, Lcom/android/settings/RunningServices;->mState:Lcom/android/settings/RunningServices$State;

    iget-object v2, p0, Lcom/android/settings/RunningServices$BackgroundHandler;->this$0:Lcom/android/settings/RunningServices;

    iget-object v3, p0, Lcom/android/settings/RunningServices$BackgroundHandler;->this$0:Lcom/android/settings/RunningServices;

    iget-object v3, v3, Lcom/android/settings/RunningServices;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/RunningServices$State;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 918
    iget-object v1, p0, Lcom/android/settings/RunningServices$BackgroundHandler;->this$0:Lcom/android/settings/RunningServices;

    iget-object v1, v1, Lcom/android/settings/RunningServices;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 919
    invoke-virtual {p0, v4}, Lcom/android/settings/RunningServices$BackgroundHandler;->removeMessages(I)V

    .line 920
    invoke-virtual {p0, v4}, Lcom/android/settings/RunningServices$BackgroundHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 921
    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/settings/RunningServices$BackgroundHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 917
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 914
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
