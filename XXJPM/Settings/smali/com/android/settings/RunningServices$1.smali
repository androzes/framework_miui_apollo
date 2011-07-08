.class Lcom/android/settings/RunningServices$1;
.super Landroid/os/Handler;
.source "RunningServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RunningServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RunningServices;


# direct methods
.method constructor <init>(Lcom/android/settings/RunningServices;)V
    .locals 0
    .parameter

    .prologue
    .line 930
    iput-object p1, p0, Lcom/android/settings/RunningServices$1;->this$0:Lcom/android/settings/RunningServices;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 931
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 951
    :goto_0
    :pswitch_0
    return-void

    .line 933
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/RunningServices$1;->this$0:Lcom/android/settings/RunningServices;

    iget-object v2, v2, Lcom/android/settings/RunningServices;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 934
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/RunningServices$ActiveItem;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 935
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/RunningServices$ActiveItem;

    .line 936
    .local v0, ai:Lcom/android/settings/RunningServices$ActiveItem;
    iget-object v2, v0, Lcom/android/settings/RunningServices$ActiveItem;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 938
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 941
    :cond_0
    iget-object v2, p0, Lcom/android/settings/RunningServices$1;->this$0:Lcom/android/settings/RunningServices;

    invoke-virtual {v0, v2}, Lcom/android/settings/RunningServices$ActiveItem;->updateTime(Landroid/content/Context;)V

    goto :goto_1

    .line 943
    .end local v0           #ai:Lcom/android/settings/RunningServices$ActiveItem;
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/settings/RunningServices$1;->removeMessages(I)V

    .line 944
    invoke-virtual {p0, v4}, Lcom/android/settings/RunningServices$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 945
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/settings/RunningServices$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 948
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/RunningServices$ActiveItem;>;"
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/RunningServices$1;->this$0:Lcom/android/settings/RunningServices;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_2

    move v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Lcom/android/settings/RunningServices;->refreshUi(Z)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 931
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
