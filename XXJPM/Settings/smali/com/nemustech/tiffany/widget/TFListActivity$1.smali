.class Lcom/nemustech/tiffany/widget/TFListActivity$1;
.super Ljava/lang/Object;
.source "TFListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFListActivity;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFListActivity$1;->this$0:Lcom/nemustech/tiffany/widget/TFListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListActivity$1;->this$0:Lcom/nemustech/tiffany/widget/TFListActivity;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListActivity;->mList:Lcom/nemustech/tiffany/widget/TFListView;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListActivity$1;->this$0:Lcom/nemustech/tiffany/widget/TFListActivity;

    iget-object v1, v1, Lcom/nemustech/tiffany/widget/TFListActivity;->mList:Lcom/nemustech/tiffany/widget/TFListView;

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->focusableViewAvailable(Landroid/view/View;)V

    .line 25
    return-void
.end method
