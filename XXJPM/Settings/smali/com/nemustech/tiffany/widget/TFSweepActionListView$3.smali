.class Lcom/nemustech/tiffany/widget/TFSweepActionListView$3;
.super Ljava/lang/Object;
.source "TFSweepActionListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/widget/TFSweepActionListView;->fireSweepActionListener(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

.field final synthetic val$iItemIndex:I

.field final synthetic val$l:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFSweepActionListView;Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1671
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$3;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    iput-object p2, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$3;->val$l:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;

    iput p3, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$3;->val$iItemIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$3;->val$l:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$3;->val$iItemIndex:I

    invoke-interface {v0, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;->onSweepActionCanceled(I)V

    .line 1673
    return-void
.end method
