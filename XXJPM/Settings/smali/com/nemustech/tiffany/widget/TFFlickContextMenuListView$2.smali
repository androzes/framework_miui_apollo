.class Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$2;
.super Ljava/lang/Object;
.source "TFFlickContextMenuListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->fireAnimationListener(ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;

.field final synthetic val$bOpen:Z

.field final synthetic val$bStart:Z

.field final synthetic val$itemIndex:I

.field final synthetic val$l:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuAnimationListener;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;ZZLcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuAnimationListener;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 527
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$2;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;

    iput-boolean p2, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$2;->val$bOpen:Z

    iput-boolean p3, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$2;->val$bStart:Z

    iput-object p4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$2;->val$l:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuAnimationListener;

    iput p5, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$2;->val$itemIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 528
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$2;->val$bOpen:Z

    if-eqz v0, :cond_1

    .line 529
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$2;->val$bStart:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$2;->val$l:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuAnimationListener;

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$2;->val$itemIndex:I

    invoke-interface {v0, v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuAnimationListener;->onContextMenuOpenStart(I)V

    .line 535
    :goto_0
    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$2;->val$l:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuAnimationListener;

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$2;->val$itemIndex:I

    invoke-interface {v0, v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuAnimationListener;->onContextMenuOpenEnd(I)V

    goto :goto_0

    .line 532
    :cond_1
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$2;->val$bStart:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$2;->val$l:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuAnimationListener;

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$2;->val$itemIndex:I

    invoke-interface {v0, v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuAnimationListener;->onContextMenuCloseStart(I)V

    goto :goto_0

    .line 533
    :cond_2
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$2;->val$l:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuAnimationListener;

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$2;->val$itemIndex:I

    invoke-interface {v0, v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuAnimationListener;->onContextMenuCloseEnd(I)V

    goto :goto_0
.end method
