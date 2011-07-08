.class Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuViewWrapper;
.super Landroid/widget/FrameLayout;
.source "TFFlickContextMenuListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextMenuViewWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;


# direct methods
.method public constructor <init>(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 810
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuViewWrapper;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;

    .line 811
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 812
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 832
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuViewWrapper;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;

    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->access$1000(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;)Landroid/view/GestureDetector;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 833
    .local v0, retVal:Z
    if-eqz v0, :cond_0

    .line 834
    const/4 v1, 0x1

    .line 836
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 820
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuViewWrapper;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->access$1000(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 821
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 822
    const/4 v0, 0x1

    return v0
.end method
