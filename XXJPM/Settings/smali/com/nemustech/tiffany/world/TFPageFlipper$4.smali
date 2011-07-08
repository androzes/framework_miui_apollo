.class Lcom/nemustech/tiffany/world/TFPageFlipper$4;
.super Ljava/lang/Object;
.source "TFPageFlipper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFPageFlipper;->exitPageFlipper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFPageFlipper;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$4;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 306
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$4;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    invoke-static {v3}, Lcom/nemustech/tiffany/world/TFPageFlipper;->access$900(Lcom/nemustech/tiffany/world/TFPageFlipper;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 307
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 308
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$4;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    invoke-static {v3}, Lcom/nemustech/tiffany/world/TFPageFlipper;->access$900(Lcom/nemustech/tiffany/world/TFPageFlipper;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nemustech/tiffany/world/TFPagePanel;

    .line 309
    .local v2, panel:Lcom/nemustech/tiffany/world/TFPagePanel;
    invoke-virtual {v2}, Lcom/nemustech/tiffany/world/TFPagePanel;->deleteAllImageResource()V

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    .end local v2           #panel:Lcom/nemustech/tiffany/world/TFPagePanel;
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 313
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$4;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    invoke-static {v3}, Lcom/nemustech/tiffany/world/TFPageFlipper;->access$900(Lcom/nemustech/tiffany/world/TFPageFlipper;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 316
    :cond_1
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$4;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    invoke-static {v3}, Lcom/nemustech/tiffany/world/TFPageFlipper;->access$600(Lcom/nemustech/tiffany/world/TFPageFlipper;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/nemustech/tiffany/world/TFPageFlipper$4$1;

    invoke-direct {v4, p0}, Lcom/nemustech/tiffany/world/TFPageFlipper$4$1;-><init>(Lcom/nemustech/tiffany/world/TFPageFlipper$4;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 324
    return-void
.end method
