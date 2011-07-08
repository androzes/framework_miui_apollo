.class Lcom/android/server/status/StatusBarService$19;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/status/StatusBarService;->setupQuickPanelRecordView()V
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
    .line 1924
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$19;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const-string v3, "recordFunction"

    .line 1925
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.sec.android.RecordReceiver"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1926
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/status/StatusBarService$19;->this$0:Lcom/android/server/status/StatusBarService;

    iget v1, v1, Lcom/android/server/status/StatusBarService;->mRecorderStatus:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 1927
    const-string v1, "recordFunction"

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1931
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/status/StatusBarService$19;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v1, v1, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1937
    return-void

    .line 1928
    :cond_1
    iget-object v1, p0, Lcom/android/server/status/StatusBarService$19;->this$0:Lcom/android/server/status/StatusBarService;

    iget v1, v1, Lcom/android/server/status/StatusBarService;->mRecorderStatus:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 1929
    const-string v1, "recordFunction"

    const/4 v1, 0x4

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method
