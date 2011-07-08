.class Lcom/android/server/status/StatusBarService$29;
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
    .line 3086
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$29;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 3087
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$29;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mNotificationCallbacks:Lcom/android/server/status/StatusBarService$NotificationCallbacks;

    invoke-interface {v0}, Lcom/android/server/status/StatusBarService$NotificationCallbacks;->onClearAll()V

    .line 3088
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$29;->this$0:Lcom/android/server/status/StatusBarService;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/status/StatusBarService;->access$1400(Lcom/android/server/status/StatusBarService;ILandroid/os/IBinder;Z)V

    .line 3089
    return-void
.end method
