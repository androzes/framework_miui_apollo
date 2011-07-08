.class Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$WindowRunnnable;
.super Ljava/lang/Object;
.source "TFAbsHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowRunnnable"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;


# direct methods
.method private constructor <init>(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1713
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$WindowRunnnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1713
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$WindowRunnnable;-><init>(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$WindowRunnnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->access$200(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)I

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$WindowRunnnable;->mOriginalAttachCount:I

    .line 1718
    return-void
.end method

.method public sameWindow()Z
    .locals 2

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$WindowRunnnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$WindowRunnnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->access$300(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)I

    move-result v0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$WindowRunnnable;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
