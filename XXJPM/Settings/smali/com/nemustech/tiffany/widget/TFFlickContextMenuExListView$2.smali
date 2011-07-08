.class Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$2;
.super Ljava/lang/Object;
.source "TFFlickContextMenuExListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->fireAnimationListener(ZZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

.field final synthetic val$bOpen:Z

.field final synthetic val$bStart:Z

.field final synthetic val$direction:I

.field final synthetic val$itemIndex:I

.field final synthetic val$l:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuAnimationListener;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;ZZLcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuAnimationListener;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 602
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$2;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    iput-boolean p2, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$2;->val$bOpen:Z

    iput-boolean p3, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$2;->val$bStart:Z

    iput-object p4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$2;->val$l:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuAnimationListener;

    iput p5, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$2;->val$itemIndex:I

    iput p6, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$2;->val$direction:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$2;->val$bOpen:Z

    if-eqz v0, :cond_1

    .line 604
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$2;->val$bStart:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$2;->val$l:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuAnimationListener;

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$2;->val$itemIndex:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$2;->val$direction:I

    invoke-interface {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuAnimationListener;->onContextMenuOpenStart(II)V

    .line 610
    :goto_0
    return-void

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$2;->val$l:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuAnimationListener;

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$2;->val$itemIndex:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$2;->val$direction:I

    invoke-interface {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuAnimationListener;->onContextMenuOpenEnd(II)V

    goto :goto_0

    .line 607
    :cond_1
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$2;->val$bStart:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$2;->val$l:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuAnimationListener;

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$2;->val$itemIndex:I

    invoke-interface {v0, v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuAnimationListener;->onContextMenuCloseStart(I)V

    goto :goto_0

    .line 608
    :cond_2
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$2;->val$l:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuAnimationListener;

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$2;->val$itemIndex:I

    invoke-interface {v0, v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuAnimationListener;->onContextMenuCloseEnd(I)V

    goto :goto_0
.end method
