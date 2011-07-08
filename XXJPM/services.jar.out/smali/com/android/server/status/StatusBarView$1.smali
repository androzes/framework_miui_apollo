.class Lcom/android/server/status/StatusBarView$1;
.super Ljava/lang/Object;
.source "StatusBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarView;


# direct methods
.method constructor <init>(Lcom/android/server/status/StatusBarView;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/server/status/StatusBarView$1;->this$0:Lcom/android/server/status/StatusBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/server/status/StatusBarView$1;->this$0:Lcom/android/server/status/StatusBarView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarView;->access$002(Lcom/android/server/status/StatusBarView;I)I

    .line 195
    iget-object v0, p0, Lcom/android/server/status/StatusBarView$1;->this$0:Lcom/android/server/status/StatusBarView;

    iget-object v0, v0, Lcom/android/server/status/StatusBarView;->mService:Lcom/android/server/status/StatusBarService;

    invoke-virtual {v0}, Lcom/android/server/status/StatusBarService;->showScreenBrightness()V

    .line 196
    iget-object v0, p0, Lcom/android/server/status/StatusBarView$1;->this$0:Lcom/android/server/status/StatusBarView;

    iget-object v0, v0, Lcom/android/server/status/StatusBarView;->mService:Lcom/android/server/status/StatusBarService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/status/StatusBarService;->updateExpandedViewPos(I)V

    .line 197
    iget-object v0, p0, Lcom/android/server/status/StatusBarView$1;->this$0:Lcom/android/server/status/StatusBarView;

    iget-object v0, v0, Lcom/android/server/status/StatusBarView;->mService:Lcom/android/server/status/StatusBarService;

    invoke-virtual {v0}, Lcom/android/server/status/StatusBarService;->performCollapse()V

    .line 198
    return-void
.end method
