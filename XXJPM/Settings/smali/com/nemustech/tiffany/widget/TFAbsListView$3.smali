.class Lcom/nemustech/tiffany/widget/TFAbsListView$3;
.super Ljava/lang/Object;
.source "TFAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/widget/TFAbsListView;->clearScrollingCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V
    .locals 0
    .parameter

    .prologue
    .line 2849
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$3;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2850
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$3;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mCachingStarted:Z

    if-eqz v0, :cond_2

    .line 2851
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$3;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iput-boolean v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mCachingStarted:Z

    .line 2852
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$3;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->access$1600(Lcom/nemustech/tiffany/widget/TFAbsListView;Z)V

    .line 2853
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$3;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->access$1700(Lcom/nemustech/tiffany/widget/TFAbsListView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2854
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$3;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->access$1800(Lcom/nemustech/tiffany/widget/TFAbsListView;Z)V

    .line 2856
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$3;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2857
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$3;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invalidate()V

    .line 2859
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$3;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iput-boolean v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mCachingStarted:Z

    .line 2861
    :cond_2
    return-void
.end method
