.class Lcom/nemustech/tiffany/widget/TFSweepActionListView$ContextMenuViewWrapper;
.super Landroid/widget/FrameLayout;
.source "TFSweepActionListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFSweepActionListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextMenuViewWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;


# direct methods
.method public constructor <init>(Lcom/nemustech/tiffany/widget/TFSweepActionListView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$ContextMenuViewWrapper;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    .line 1126
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1127
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$ContextMenuViewWrapper;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->closeAllActionBar(Z)Z

    .line 1151
    :cond_0
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$ContextMenuViewWrapper;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->closeAllActionBar(Z)Z

    .line 1138
    :cond_0
    return v1
.end method
