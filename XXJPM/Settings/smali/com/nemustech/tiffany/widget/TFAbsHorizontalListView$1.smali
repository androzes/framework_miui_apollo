.class Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$1;
.super Ljava/lang/Object;
.source "TFAbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$performClick:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$PerformClick;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;Landroid/view/View;Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$PerformClick;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2169
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$1;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iput-object p2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$1;->val$child:Landroid/view/View;

    iput-object p3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$1;->val$performClick:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$PerformClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2170
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$1;->val$child:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2171
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$1;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setPressed(Z)V

    .line 2172
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$1;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 2173
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$1;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$1;->val$performClick:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$PerformClick;

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->post(Ljava/lang/Runnable;)Z

    .line 2175
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$1;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTouchMode:I

    .line 2176
    return-void
.end method
