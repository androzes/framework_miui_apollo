.class Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewWrapper;
.super Landroid/widget/FrameLayout;
.source "TFFlickContextMenuExListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextMenuViewWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;


# direct methods
.method public constructor <init>(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 971
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewWrapper;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    .line 972
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 973
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 993
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewWrapper;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$1100(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/view/GestureDetector;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 994
    .local v0, retVal:Z
    if-eqz v0, :cond_0

    .line 995
    const/4 v1, 0x1

    .line 997
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
    .line 981
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewWrapper;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$1100(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 982
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 983
    const/4 v0, 0x1

    return v0
.end method
