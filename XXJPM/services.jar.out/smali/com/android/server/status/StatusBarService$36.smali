.class Lcom/android/server/status/StatusBarService$36;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarService;
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
    .line 3766
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$36;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    const-string v4, "state"

    .line 3767
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$36;->this$0:Lcom/android/server/status/StatusBarService;

    iget-boolean v0, v0, Lcom/android/server/status/StatusBarService;->mDataStatus:Z

    iget-object v1, p0, Lcom/android/server/status/StatusBarService$36;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v1}, Lcom/android/server/status/StatusBarService;->access$2800(Lcom/android/server/status/StatusBarService;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "state"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3768
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$36;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v0}, Lcom/android/server/status/StatusBarService;->access$2800(Lcom/android/server/status/StatusBarService;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "state"

    iget-object v1, p0, Lcom/android/server/status/StatusBarService$36;->this$0:Lcom/android/server/status/StatusBarService;

    iget-boolean v1, v1, Lcom/android/server/status/StatusBarService;->mDataStatus:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3770
    :cond_0
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$36;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/status/StatusBarService$36;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v1}, Lcom/android/server/status/StatusBarService;->access$2800(Lcom/android/server/status/StatusBarService;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3771
    return-void

    :cond_1
    move v1, v3

    .line 3768
    goto :goto_0
.end method
