.class Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation$1;
.super Ljava/lang/Object;
.source "TFFlickContextMenuListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->computeAnimation(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation$1;->this$2:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation$1;->this$2:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->access$300(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;)V

    .line 328
    return-void
.end method
