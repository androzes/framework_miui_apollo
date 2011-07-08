.class Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$1$1;
.super Ljava/lang/Object;
.source "TFFlickContextMenuListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$1;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$1;

.field final synthetic val$flickLeftToRight:Z


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$1;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$1$1;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$1;

    iput-boolean p2, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$1$1;->val$flickLeftToRight:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$1$1;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$1;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$1;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;

    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$1$1;->val$flickLeftToRight:Z

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->access$900(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;Z)V

    .line 438
    return-void
.end method
