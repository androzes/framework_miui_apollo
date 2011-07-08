.class Lcom/nemustech/tiffany/widget/TFListActivity$2;
.super Ljava/lang/Object;
.source "TFListActivity.java"

# interfaces
.implements Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemClickListener;


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
    .line 155
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFListActivity$2;->this$0:Lcom/nemustech/tiffany/widget/TFListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/nemustech/tiffany/widget/TFAdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nemustech/tiffany/widget/TFAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, parent:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<*>;"
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListActivity$2;->this$0:Lcom/nemustech/tiffany/widget/TFListActivity;

    move-object v0, p1

    check-cast v0, Lcom/nemustech/tiffany/widget/TFListView;

    move-object v2, v0

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/nemustech/tiffany/widget/TFListActivity;->onListItemClick(Lcom/nemustech/tiffany/widget/TFListView;Landroid/view/View;IJ)V

    .line 158
    return-void
.end method
