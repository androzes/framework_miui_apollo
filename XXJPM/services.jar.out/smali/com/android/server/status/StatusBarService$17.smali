.class Lcom/android/server/status/StatusBarService$17;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/status/StatusBarService;->setupQuickPanelMusicView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/server/status/StatusBarService;)V
    .locals 0
    .parameter

    .prologue
    .line 1824
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$17;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 1825
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x2040034

    if-ne v1, v2, :cond_0

    .line 1826
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1844
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 1828
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/status/StatusBarService$17;->this$0:Lcom/android/server/status/StatusBarService;

    iget-boolean v1, v1, Lcom/android/server/status/StatusBarService;->mFFLongPressed:Z

    if-eqz v1, :cond_1

    .line 1829
    iget-object v1, p0, Lcom/android/server/status/StatusBarService$17;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v1}, Lcom/android/server/status/StatusBarService;->access$1000(Lcom/android/server/status/StatusBarService;)V

    goto :goto_0

    .line 1831
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.next"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1832
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1837
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/status/StatusBarService$17;->this$0:Lcom/android/server/status/StatusBarService;

    iget-boolean v1, v1, Lcom/android/server/status/StatusBarService;->mFFLongPressed:Z

    if-eqz v1, :cond_0

    .line 1838
    iget-object v1, p0, Lcom/android/server/status/StatusBarService$17;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v1}, Lcom/android/server/status/StatusBarService;->access$1000(Lcom/android/server/status/StatusBarService;)V

    goto :goto_0

    .line 1826
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
